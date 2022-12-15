unit usqlqryb;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TLogicalJoinOperator = (woAnd, woOr);
  { TSqlQueryBuilder }

  TSqlQueryBuilder = class(TObject)
  private
    fLstField: TStringList;
    fLstJoin: TStringList;
    fLstWhere: TStringList;
    fLstOrder: TStringList;
    fLstGroup: TStringList;
    fLstHaving: TStringList;
    fFrom: string;
    fOperatorWhere: TLogicalJoinOperator;
    fOperatorHaving: TLogicalJoinOperator;

    function ListToString(aLst: TStringList; aSeparator: string): string;
    function LogicalJoinOperatorToString(aOperator: TLogicalJoinOperator): string;
    function GetTableFromJoin(aJoin: string): string;
  public
    constructor Create;
    destructor Destroy; override;

    function AddField(aField: string): integer;
    function AddFields(aFields: string): integer;
    function AddJoin(aJoin: string): integer;
    function AddWhere(aWhere: string): integer;
    function AddWhereFormat(const Fmt: string; const Args: array of const): integer;
    function AddGroup(aGroup: string): integer;
    function AddHaving(aHaving: string): integer;
    function AddOrder(aOrder: string): integer;
    procedure SetOrder(aOrder: string);

    function IsWhere: boolean;
    function IsJoin(aTableName: string): boolean;

    procedure ClearAll;
    procedure ClearFields;
    procedure ClearJoin;
    procedure ClearWhere;
    procedure ClearOrder;

    function AsString: string;

    property From: string read fFrom write fFrom;
    property WhereOperator: TLogicalJoinOperator read fOperatorWhere write fOperatorWhere;
    property HavingOperator: TLogicalJoinOperator read fOperatorHaving write fOperatorHaving;
  end;

implementation

{ TSqlQueryBuilder }

constructor TSqlQueryBuilder.Create;
begin
  fOperatorWhere := woAnd;
  fOperatorHaving := woAnd;

  fLstField := TStringList.Create;
  fLstField.CaseSensitive := False;
  fLstField.Delimiter := ',';
  fLstField.Duplicates := dupIgnore;
  fLstField.StrictDelimiter := True;

  fLstJoin := TStringList.Create;
  fLstJoin.CaseSensitive := False;
  fLstJoin.Delimiter := ' ';
  fLstJoin.Duplicates := dupIgnore;

  fLstWhere := TStringList.Create;
  fLstWhere.CaseSensitive := False;
  fLstField.Delimiter := ',';
  fLstWhere.Duplicates := dupIgnore;

  fLstGroup := TStringList.Create;
  fLstGroup.CaseSensitive := False;
  fLstGroup.Delimiter := ',';
  fLstGroup.Duplicates := dupIgnore;
  fLstGroup.StrictDelimiter := True;

  fLstHaving := TStringList.Create;
  fLstHaving.CaseSensitive := False;
  fLstHaving.Delimiter := ',';
  fLstHaving.Duplicates := dupIgnore;

  fLstOrder := TStringList.Create;
  fLstOrder.CaseSensitive := False;
  fLstOrder.Delimiter := ',';
  fLstOrder.Duplicates := dupIgnore;

end;

destructor TSqlQueryBuilder.Destroy;
begin
  fLstField.Clear;
  FreeAndNil(fLstField);
  fLstJoin.Clear;
  FreeAndNil(fLstJoin);
  fLstWhere.Clear;
  FreeAndNil(fLstWhere);
  fLstGroup.Clear;
  FreeAndNil(fLstGroup);
  fLstHaving.Clear;
  FreeAndNil(fLstHaving);
  fLstOrder.Clear;
  FreeAndNil(fLstOrder);

  inherited Destroy;
end;

function TSqlQueryBuilder.AddField(aField: string): integer;
begin
  Result := fLstField.Add(aField);
end;

function TSqlQueryBuilder.AddFields(aFields: string): integer;
var
  lst: TStringList;
  i: integer;
  iloscDod: integer;
begin
  iloscDod := 0;
  lst := TStringList.Create;
  try
    lst.CaseSensitive := False;
    lst.Delimiter := ',';
    lst.StrictDelimiter := True;

    lst.CommaText := aFields;
    for i := 0 to lst.Count - 1 do
    begin
      if (fLstField.IndexOf(lst.Strings[i]) < 0) then
      begin
        fLstField.Add(lst.Strings[i]);
        Inc(iloscDod);
      end;
    end;

  finally
    lst.Clear;
    FreeAndNil(lst);
  end;

  Result := iloscDod;
end;

function TSqlQueryBuilder.AddJoin(aJoin: string): integer;
begin
  if fLstJoin.IndexOf(aJoin) < 0 then
    Result := fLstJoin.Add(aJoin)
  else
    Result := -1;
end;

function TSqlQueryBuilder.AddWhere(aWhere: string): integer;
begin
  if fLstWhere.IndexOf(aWhere) < 0 then
    Result := fLstWhere.Add(aWhere)
  else
    Result := -1;
end;

function TSqlQueryBuilder.AddWhereFormat(const Fmt: string; const Args: array of const): integer;
begin
  Result := AddWhere(Format(Fmt, Args));
end;

function TSqlQueryBuilder.AddGroup(aGroup: string): integer;
begin
  if fLstGroup.IndexOf(aGroup) < 0 then
    Result := fLstWhere.Add(aGroup)
  else
    Result := -1;
end;

function TSqlQueryBuilder.AddHaving(aHaving: string): integer;
begin
  if fLstHaving.IndexOf(aHaving) < 0 then
    Result := fLstWhere.Add(aHaving)
  else
    Result := -1;
end;

function TSqlQueryBuilder.AddOrder(aOrder: string): integer;
begin
  if fLstOrder.IndexOf(aOrder) < 0 then
    Result := fLstOrder.Add(aOrder)
  else
    Result := -1;
end;

procedure TSqlQueryBuilder.SetOrder(aOrder: string);
begin
  fLstOrder.Clear;
  fLstOrder.Add(aOrder);
end;

function TSqlQueryBuilder.IsWhere: boolean;
begin
  Result := fLstWhere.Count > 0;
end;

/// Sprawdza czy join do tabeli podanej w parametrze istnieje w zapytaniu
/// Sprawdzana jest jedynie pierwsza nazwa tabeli występująca po słowie JOIN w zapytaniu
/// Metoda sprawdza się najlepiej przy prostych join-ach (jeśli dodano całe podzapytanie już raczej nie)
function TSqlQueryBuilder.IsJoin(aTableName: string): boolean;
var
  i: integer;
  s: string;
begin
  Result := False;
  aTableName := Trim(AnsiUpperCase(aTableName));
  if (aTableName <> '') then
  begin
    for i := 0 to fLstJoin.Count - 1 do
    begin
      s := Trim(AnsiUpperCase(fLstJoin.Strings[i]));
      if (GetTableFromJoin(s) = aTableName) then
      begin
        Result := True;
        break;
      end;
    end;
  end;
end;

procedure TSqlQueryBuilder.ClearAll;
begin
  fLstField.Clear;
  fLstJoin.Clear;
  fLstWhere.Clear;
  fLstOrder.Clear;
end;

procedure TSqlQueryBuilder.ClearFields;
begin
  fLstField.Clear;
end;

procedure TSqlQueryBuilder.ClearJoin;
begin
  fLstJoin.Clear;
end;

procedure TSqlQueryBuilder.ClearWhere;
begin
  fLstWhere.Clear;
end;

procedure TSqlQueryBuilder.ClearOrder;
begin
  fLstOrder.Clear;
end;

function TSqlQueryBuilder.AsString: string;
var
  select: string;
  join: string;
  where: string;
  group: string;
  having: string;
  order: string;
begin
  if fLstField.Count = 0 then
    select := '*'
  else
    select := ListToString(fLstField, ', ');

  join := ListToString(fLstJoin, ' ');
  where := ListToString(fLstWhere, LogicalJoinOperatorToString(fOperatorWhere));
  group := ListToString(fLstGroup, ', ');
  having := ListToString(fLstHaving, LogicalJoinOperatorToString(fOperatorHaving));
  order := ListToString(fLstOrder, ', ');

  Result := Format('SELECT %s FROM %s %s', [select, fFrom, join]);

  if where <> '' then
    Result := Result + ' WHERE ' + where;

  if group <> '' then
    Result := Result + ' GROUP BY ' + group;

  if having <> '' then
    Result := Result + ' HAVING ' + having;

  if order <> '' then
    Result := Result + ' ORDER BY ' + order;
end;

function TSqlQueryBuilder.ListToString(aLst: TStringList; aSeparator: string): string;
var
  i: integer;
begin
  Result := '';

  if ((Assigned(aLst)) and (aLst.Count > 0)) then
  begin
    for i := 0 to aLst.Count - 1 do
    begin
      if Result <> '' then
        Result := Result + aSeparator;

      Result := Result + aLst.Strings[i];
    end;
  end;
end;

function TSqlQueryBuilder.LogicalJoinOperatorToString(aOperator: TLogicalJoinOperator): string;
begin
  if aOperator = woOr then
    Result := ' OR '
  else
    Result := 'AND ';
end;

function TSqlQueryBuilder.GetTableFromJoin(aJoin: string): string;
const
  cJOIN = 'JOIN ';
var
  s: string;
  idx: integer;
begin
  Result := '';
  aJoin := Trim(AnsiUpperCase(aJoin));
  idx := Pos(cJOIN, aJoin);
  if (idx > 0) then
  begin
    s := Copy(aJoin, idx + Length(cJOIN), Length(aJoin));
    idx := Pos(' ', s);
    if (idx > 0) then
    begin
      Result := Copy(s, 1, idx - 1);
    end;
  end;
end;


end.
