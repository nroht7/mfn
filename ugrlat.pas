unit ugrlat;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, contnrs;

type

  { TGrupowanieLat }

  TGrupowanieLat = class
  private
    fOkresyAktualne: boolean;
    fListaLat: TStringList;
    fLstOkresow: TObjectList;
    procedure DodajRokDoOkresu(Rok: integer);
  public
    constructor Create;
    destructor Destroy; override;

    procedure DodajRok(Rok: integer);
    procedure DodajDekade(RokPoczatkowy: integer);
    procedure UsunRok(Rok: integer);
    procedure UsunDekade(RokPoczatkowy: integer);
    function GenerujOkresy: integer;
    function GetWarunekWhere(PoleRok: string): string;
    procedure WyczyscWszystko;

    property ListaOkresow: TObjectList read fLstOkresow;
  end;

implementation

uses
  uokrlat;

{ TGrupowanieLat }

constructor TGrupowanieLat.Create;
begin
  fOkresyAktualne := False;
  fListaLat := TStringList.Create;
  fListaLat.Sorted := True;
  fListaLat.Duplicates := dupIgnore;
  fLstOkresow := TObjectList.Create;
end;

destructor TGrupowanieLat.Destroy;
begin
  fListaLat.Clear;
  FreeAndNil(fListaLat);
  fLstOkresow.Clear;
  FreeAndNil(fLstOkresow);

  inherited Destroy;
end;

procedure TGrupowanieLat.DodajRok(Rok: integer);
var
  rokStr: string;
begin
  rokStr := IntToStr(Rok);
  if (fListaLat.IndexOf(rokStr) < 0) then
  begin
    fOkresyAktualne := False;
    fListaLat.Add(rokStr);
  end;
end;

procedure TGrupowanieLat.DodajDekade(RokPoczatkowy: integer);
var
  rokStr: string;
  s: string;
  i: integer;
begin
  rokStr := IntToStr(RokPoczatkowy);
  s := Copy(rokStr, 1, 3);
  for i := 0 to 9 do
  begin
    DodajRok(StrToInt(s + IntToStr(i)));
  end;
end;

procedure TGrupowanieLat.UsunRok(Rok: integer);
var
  rokStr: string;
  idx: integer;
begin
  rokStr := IntToStr(Rok);
  idx := fListaLat.IndexOf(rokStr);
  if (idx >= 0) then
  begin
    fOkresyAktualne := False;
    fListaLat.Delete(idx);
  end;
end;

procedure TGrupowanieLat.UsunDekade(RokPoczatkowy: integer);
var
  rokStr: string;
  s: string;
  i: integer;
begin
  rokStr := IntToStr(RokPoczatkowy);
  s := Copy(rokStr, 1, 3);
  for i := 0 to 9 do
  begin
    UsunRok(StrToInt(s + IntToStr(i)));
  end;
end;

procedure TGrupowanieLat.DodajRokDoOkresu(Rok: integer);
var
  okres: TOkresLat;
  dodanoRok: boolean;
  i: integer;
begin
  dodanoRok := False;
  for i := fLstOkresow.Count - 1 downto 0 do
  begin
    okres := TOkresLat(fLstOkresow.Items[i]);
    if (okres.DodajRokDoOkresuJesliPasuje(Rok)) then
    begin
      dodanoRok := True;
      break;
    end;
  end;

  if not dodanoRok then
  begin
    okres := TOkresLat.Create(Rok);
    fLstOkresow.Add(okres);
  end;
end;

function TGrupowanieLat.GenerujOkresy: integer;
var
  i: integer;
begin
  fListaLat.Sort;
  fLstOkresow.Clear;
  for i := 0 to fListaLat.Count - 1 do
  begin
    DodajRokDoOkresu(StrToInt(fListaLat.Strings[i]));
  end;
  fOkresyAktualne := True;

  Result := fLstOkresow.Count;
end;

function TGrupowanieLat.GetWarunekWhere(PoleRok: string): string;
var
  i: integer;
  where: string;
  oper: string;
  okres: TOkresLat;

begin
  where := '';
  oper := ' OR ';
  if not fOkresyAktualne then
    GenerujOkresy;

  for i := 0 to fLstOkresow.Count - 1 do
  begin
    okres := TOkresLat(fLstOkresow.Items[i]);
    if (where <> '') then
      where := where + oper;
    where := where + '(' + PoleRok + okres.JakoWarunekSql + ')';
  end;

  if (fLstOkresow.Count > 1) then
    where := '(' + where + ')';
  Result := where;
end;

procedure TGrupowanieLat.WyczyscWszystko;
begin
  fListaLat.Clear;
  fLstOkresow.Clear;
  fOkresyAktualne := True;
end;

end.
