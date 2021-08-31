unit usqlqryb;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TWhereOperator = (woAnd, woOr);
  { TSqlQueryBuilder }

  TSqlQueryBuilder = class(TObject)
  private
    fLstField: TStringList;
    fLstJoin:  TStringList;
    fLstWhere: TStringList;
    fLstOrder: TStringList;
    fFrom:     string;
    fOperator : TWhereOperator;

    function ListToString(aLst: TStringList; aSeparator: string): string;
    function WhereOperatorToString: string;
  public
    constructor Create;
    destructor Destroy; override;

    function AddField(aField: string): integer;
    function AddFields(aFields: string): integer;
    function AddJoin(aJoin: string): integer;
    function AddWhere(aWhere: string): integer;
    function AddWhereFormat(const Fmt: string; const Args: array of const): integer;
    function AddOrder(aOrder: string): integer;
    procedure SetOrder(aOrder: string);

    function IsWhere : boolean;

    procedure ClearAll;
    procedure ClearFields;
    procedure ClearJoin;
    procedure ClearWhere;
    procedure ClearOrder;

    function AsString: string;

    property From: string Read fFrom Write fFrom;
    property WhereOperator : TWhereOperator read fOperator write fOperator;
  end;

implementation

{ TSqlQueryBuilder }

constructor TSqlQueryBuilder.Create;
begin
  fOperator:= woAnd;

  fLstField := TStringList.Create;
  fLstField.CaseSensitive := False;
  fLstField.Delimiter := ',';
  fLstField.Duplicates := dupIgnore;

  fLstJoin := TStringList.Create;
  fLstJoin.CaseSensitive := False;
  fLstJoin.Delimiter := ' ';
  fLstJoin.Duplicates := dupIgnore;

  fLstWhere := TStringList.Create;
  fLstWhere.CaseSensitive := False;
  fLstField.Delimiter := ',';
  fLstWhere.Duplicates := dupIgnore;

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
  result:= fLstWhere.Count > 0;
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
  join:  string;
  where: string;
  order: string;
begin
  if fLstField.Count = 0 then
    select := '*'
  else
    select := ListToString(fLstField, ', ');

  join  := ListToString(fLstJoin, ' ');
  where := ListToString(fLstWhere, WhereOperatorToString);
  order := ListToString(fLstOrder, ', ');

  Result := Format('SELECT %s FROM %s %s', [select, fFrom, join]);

  if where <> '' then
    Result := Result + ' WHERE ' + where;

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

function TSqlQueryBuilder.WhereOperatorToString: string;
begin
  if fOperator = woOr then
    result:= ' OR '
  else
    result:= 'AND ';
end;


end.
