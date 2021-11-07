unit upozdd;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  STAN_TRUE = 'True';
  STAN_FALSE = 'False';

type

  { TListaPozDoDodania }

  TListaPozDoDodania = class
  private
    fListaPoz: TStringList;
    fSeparator: string;
    function GetIloscPoz: integer;
    function GetIloscPozZazn: integer;
    function GetPoz(AIndex: integer): string;
    function GetZazn(AIndex: integer): boolean;
    procedure SetPoz(AIndex: integer; AValue: string);
    function BooleanToStanStr(AStan: boolean): string;
    procedure SetZazn(AIndex: integer; AValue: boolean);
    function StanStrToBoolean(AStan: string): boolean;
  public
    constructor Create;
    destructor Destroy; override;

    property Separator: string read fSeparator write fSeparator;
    property IloscPozycji: integer read GetIloscPoz;
    property IloscZaznaczonychPozycji: integer read GetIloscPozZazn;
    property Pozycja[AIndex: integer]: string read GetPoz write SetPoz;
    property Zaznaczona[AIndex: integer]: boolean read GetZazn write SetZazn;

    function UstawStanPoz(ANazwa: string; AStan: boolean): boolean;
    function StanPozycjiWgNazwy(ANazwa: string): boolean;
    function GetListaZaznaczonychPozycji(
      var AListaZaznaczonychPoz: TStringList): integer;
    function DodajWielePozycjiJakoTekst(ATekst: string; AStan: boolean): integer;
    function DodajPozycje(APozTxt: string; AStan: boolean): integer;
    procedure UsunWszystkiePozycje;
    procedure UstawStanWszystkichPozycji(AStan: boolean);

  end;

implementation

{ TListaPozDoDodania }

constructor TListaPozDoDodania.Create;
begin
  inherited;

  fSeparator := ',';
  fListaPoz := TStringList.Create;
  fListaPoz.Delimiter := fSeparator[1];
  fListaPoz.StrictDelimiter := True;
end;

destructor TListaPozDoDodania.Destroy;
begin
  fListaPoz.Clear;
  FreeAndNil(fListaPoz);

  inherited;
end;

function TListaPozDoDodania.UstawStanPoz(ANazwa: string; AStan: boolean): boolean;
var
  idx: integer;
  stan: boolean;
begin
  Result := False;
  idx := fListaPoz.IndexOfName(ANazwa);
  if (idx >= 0) then
  begin
    stan := StanStrToBoolean(fListaPoz.Values[ANazwa]);
    if (stan <> AStan) then
    begin
      fListaPoz.ValueFromIndex[idx] := BooleanToStanStr(AStan);
      Result := True;
    end;
  end;
end;

function TListaPozDoDodania.StanPozycjiWgNazwy(ANazwa: string): boolean;
var
  nazwa: string;
begin
  Result := False;
  nazwa := Trim(ANazwa);
  if (fListaPoz.IndexOfName(nazwa) >= 0) then
    Result := StanStrToBoolean(fListaPoz.Values[nazwa]);
end;

function TListaPozDoDodania.GetListaZaznaczonychPozycji(
  var AListaZaznaczonychPoz: TStringList): integer;
var
  i, ilosc: integer;
begin
  ilosc := 0;
  if not Assigned(AListaZaznaczonychPoz) then
    raise Exception.Create(
      'Błąd podczas próby pobrania listy zazanczonych pozycji - obiekt listy do wypełnienia nie istnieje');

  AListaZaznaczonychPoz.Clear;
  for i := 0 to fListaPoz.Count - 1 do
  begin
    if fListaPoz.ValueFromIndex[i] = STAN_TRUE then
    begin
      AListaZaznaczonychPoz.Add(fListaPoz.Names[i]);
      Inc(ilosc);
    end;
  end;

  Result := ilosc;
end;

function TListaPozDoDodania.GetIloscPoz: integer;
begin
  Result := fListaPoz.Count;
end;

function TListaPozDoDodania.GetIloscPozZazn: integer;
var
  i, ilosc: integer;
begin
  ilosc := 0;
  for i := 0 to fListaPoz.Count - 1 do
    if fListaPoz.ValueFromIndex[i] = STAN_TRUE then
      Inc(ilosc);

  Result := ilosc;
end;

function TListaPozDoDodania.GetPoz(AIndex: integer): string;
begin
  if ((AIndex >= 0) and (AIndex < fListaPoz.Count)) then
    Result := fListaPoz.Names[AIndex];
end;

function TListaPozDoDodania.GetZazn(AIndex: integer): boolean;
begin
  Result := False;
  if ((AIndex >= 0) and (AIndex < fListaPoz.Count)) then
  begin
    Result := StanStrToBoolean(fListaPoz.ValueFromIndex[AIndex]);
  end;
end;

procedure TListaPozDoDodania.SetPoz(AIndex: integer; AValue: string);
var
  stan: string;
begin
  if ((AIndex >= 0) and (AIndex < fListaPoz.Count)) then
  begin
    stan := fListaPoz.ValueFromIndex[AIndex];
    fListaPoz.Strings[AIndex] := Format('%s=%s', [AValue, stan]);
  end;
end;

function TListaPozDoDodania.BooleanToStanStr(AStan: boolean): string;
begin
  if AStan then
    Result := STAN_TRUE
  else
    Result := STAN_FALSE;
end;

procedure TListaPozDoDodania.SetZazn(AIndex: integer; AValue: boolean);
var
  stan: string;
  nazwa: string;
begin
  if ((AIndex >= 0) and (AIndex < fListaPoz.Count)) then
  begin
    if (StanStrToBoolean(fListaPoz.ValueFromIndex[AIndex]) <> AValue) then
    begin
      nazwa := fListaPoz.Names[AIndex];
      stan := BooleanToStanStr(AValue);
      fListaPoz.Strings[AIndex] := Format('%s=%s', [nazwa, stan]);
    end;
  end;
end;

function TListaPozDoDodania.StanStrToBoolean(AStan: string): boolean;
begin
  Result := (AStan = STAN_TRUE);
end;

function TListaPozDoDodania.DodajWielePozycjiJakoTekst(ATekst: string;
  AStan: boolean): integer;
var
  lst: TStringList;
  i: integer;
  s: string;
  iloscDodanych: integer;
begin
  iloscDodanych := 0;
  lst := TStringList.Create;
  try
    lst.Delimiter := fSeparator[1];
    lst.StrictDelimiter := True;
    lst.DelimitedText := ATekst;
    for i := 0 to lst.Count - 1 do
    begin
      s := Trim(lst.Strings[i]);
      if ((s <> '') and (fListaPoz.IndexOfName(s) < 0)) then
      begin
        fListaPoz.Values[s] := BooleanToStanStr(AStan);
        Inc(iloscDodanych);
      end;
    end;
  finally
    lst.Clear;
    FreeAndNil(lst);
  end;

  Result := iloscDodanych;
end;

function TListaPozDoDodania.DodajPozycje(APozTxt: string; AStan: boolean): integer;
var
  s: string;
  stan: string;
begin
  Result := -1;
  s := Trim(APozTxt);
  if ((s <> '') and (fListaPoz.IndexOfName(s) < 0)) then
  begin
    stan := BooleanToStanStr(AStan);
    Result := fListaPoz.Add(Format('%s=%s', [s, stan]));
  end;
end;

procedure TListaPozDoDodania.UsunWszystkiePozycje;
begin
  fListaPoz.Clear;
end;

procedure TListaPozDoDodania.UstawStanWszystkichPozycji(AStan: boolean);
var
  i: integer;
  stan: string;
begin
  stan := BooleanToStanStr(AStan);
  for i := 0 to fListaPoz.Count - 1 do
  begin
    fListaPoz.ValueFromIndex[i] := stan;
  end;
end;

end.
