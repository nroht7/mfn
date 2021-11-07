unit umgrpoz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, contnrs, upozsl;

type

  TSposobWyszukiwania = (swFragment, swPoczatek, swCalosc);

  { TManagerPozycji }

  TManagerPozycji = class
  private
    fLstPoz: TObjectList;
    fFiltr: string;
    fWielkLiter: boolean;
    fSposobWysz: TSposobWyszukiwania;

    function GetFiltr: string;
    function GetIloscPoz: integer;
    function GetIloscWszystPoz: integer;
    function GetIloscWybPoz: integer;
    function GetPoz(AIndex: integer): TPozycjaSlownika;
    function GetPozWidoczna(AIndex: integer): boolean;
    function GetZazn(AIndex: integer): boolean;
    function GetZaznNazwa(ANazwa: string): boolean;
    procedure SetFiltr(AValue: string);
    procedure SetPoz(AIndex: integer; AValue: TPozycjaSlownika);
    procedure SetZazn(AIndex: integer; AValue: boolean);
    function NazwaPasujeDoFiltra(ANazwa: string): boolean;
    function GetIloscFiltrowanychPozycji: integer;
    procedure SetZaznNazwa(ANazwa: string; AValue: boolean);
    procedure UstawStanWszystkichPozycji(AStan: boolean);
    procedure UstawStanWszystkichPozycjiWidocznych(AStan: boolean);
  public
    constructor Create;
    destructor Destroy; override;

    function DodajPozycje(APoz: TPozycjaSlownika): boolean;
    function DodajWielePozycji(AListaPoz: TObjectList): integer;
    function AktywnyFiltr: boolean;
    procedure WyczyscFiltr;
    function JestTakaPozycja(APoz: TPozycjaSlownika): boolean; virtual;
    function JestTakaPozycjaId(AId: longint): boolean;
    function JestTakaPozycjaNazwa(ANazwa: string): boolean;
    function GetPozycjaWgId(AId: longint): TPozycjaSlownika;
    function GetPozycjaWgNazwy(ANazwa: string): TPozycjaSlownika;
    procedure ZaznaczWszystkiePozycje;
    procedure OdznaczWszystkiePozycje;
    procedure ZaznaczWszystkiePozycjeWidoczne;
    procedure OdznaczWszystkiePozycjeWidoczne;
    procedure UsunWszystkiePozycje;

    property Filtr: string read GetFiltr write SetFiltr;
    property RozrozniajWielokoscLiter: boolean read fWielkLiter write fWielkLiter;
    property SposobWyszukiwania: TSposobWyszukiwania read fSposobWysz write fSposobWysz;
    property IloscPozycji: integer read GetIloscPoz;
    property IloscWszystkichPozycji: integer read GetIloscWszystPoz;
    property IloscWybranychPozycji: integer read GetIloscWybPoz;
    property Pozycja[AIndex: integer]: TPozycjaSlownika read GetPoz write SetPoz;
    property ZaznaczonaPozycja[AIndex: integer]: boolean read GetZazn write SetZazn;
    property ZaznaczonaPozWgNazwy[ANazwa: string]: boolean
      read GetZaznNazwa write SetZaznNazwa;
    property WidocznaPozycja[AIndex: integer]: boolean read GetPozWidoczna;

  end;

implementation

{ TManagerPozycji }

constructor TManagerPozycji.Create;
begin
  inherited;

  fLstPoz := TObjectList.Create;
  fWielkLiter := False;
  fSposobWysz := swFragment;
end;

destructor TManagerPozycji.Destroy;
begin
  fLstPoz.Clear;
  FreeAndNil(fLstPoz);

  inherited;
end;

function TManagerPozycji.GetFiltr: string;
begin
  Result := fFiltr;
end;

function TManagerPozycji.GetIloscPoz: integer;
begin
  if AktywnyFiltr then
    Result := GetIloscFiltrowanychPozycji
  else
    Result := GetIloscWszystPoz;
end;

function TManagerPozycji.GetIloscWszystPoz: integer;
begin
  Result := fLstPoz.Count;
end;

function TManagerPozycji.GetIloscWybPoz: integer;
var
  i: integer;
  poz: TPozycjaSlownika;
  iloscWyb: integer;
begin
  iloscWyb := 0;

  for i := 0 to fLstPoz.Count - 1 do
  begin
    poz := TPozycjaSlownika(fLstPoz.Items[i]);
    if poz.Zaznaczona then
      Inc(iloscWyb);
  end;

  Result := iloscWyb;
end;

function TManagerPozycji.GetPoz(AIndex: integer): TPozycjaSlownika;
begin
  Result := TPozycjaSlownika(fLstPoz.Items[AIndex]);
end;

function TManagerPozycji.GetPozWidoczna(AIndex: integer): boolean;
var
  poz: TPozycjaSlownika;
begin
  poz := TPozycjaSlownika(fLstPoz.Items[AIndex]);
  if (AktywnyFiltr) then
    Result := NazwaPasujeDoFiltra(poz.Nazwa)
  else
    Result := True;
end;

function TManagerPozycji.GetZazn(AIndex: integer): boolean;
var
  poz: TPozycjaSlownika;
begin
  poz := TPozycjaSlownika(fLstPoz.Items[AIndex]);
  Result := poz.Zaznaczona;
end;

function TManagerPozycji.GetZaznNazwa(ANazwa: string): boolean;
var
  poz: TPozycjaSlownika;
begin
  poz := GetPozycjaWgNazwy(ANazwa);
  if Assigned(poz) then
    Result := poz.Zaznaczona
  else
    raise Exception.Create(Format(
      'Błąd podczas proby sprawdzenia właściwości ZaznaczonaPozWgNazwy w metodzie GetZaznNazwa'
      +
      sLineBreak + 'Wskazana pozycja "%s" nie istnieje', [ANazwa]));
end;

procedure TManagerPozycji.SetZaznNazwa(ANazwa: string; AValue: boolean);
var
  poz: TPozycjaSlownika;
begin
  poz := GetPozycjaWgNazwy(ANazwa);
  if Assigned(poz) then
    poz.Zaznaczona := AValue
  else
    raise Exception.Create(Format(
      'Błąd podczas proby ustawienia właściwości ZaznaczonaPozWgNazwy w metodzie SetZaznNazwa'
      +
      sLineBreak + 'Wskazana pozycja "%s" nie istnieje', [ANazwa]));
end;

procedure TManagerPozycji.UstawStanWszystkichPozycji(AStan: boolean);
var
  poz: TPozycjaSlownika;
  i: integer;
begin
  for i := 0 to fLstPoz.Count - 1 do
  begin
    poz := TPozycjaSlownika(fLstPoz.Items[i]);
    poz.Zaznaczona := AStan;
  end;
end;

procedure TManagerPozycji.UstawStanWszystkichPozycjiWidocznych(AStan: boolean);
var
  poz: TPozycjaSlownika;
  i: integer;
begin
  for i := 0 to fLstPoz.Count - 1 do
  begin
    if WidocznaPozycja[i] then
    begin
      poz := TPozycjaSlownika(fLstPoz.Items[i]);
      poz.Zaznaczona := AStan;
    end;
  end;
end;

procedure TManagerPozycji.SetFiltr(AValue: string);
begin
  fFiltr := Trim(AValue);
end;

procedure TManagerPozycji.SetPoz(AIndex: integer; AValue: TPozycjaSlownika);
var
  poz: TPozycjaSlownika;
begin
  poz := TPozycjaSlownika(fLstPoz.Items[AIndex]);
  fLstPoz.Items[AIndex] := AValue;
  if Assigned(poz) then
    FreeAndNil(poz);
end;

procedure TManagerPozycji.SetZazn(AIndex: integer; AValue: boolean);
var
  poz: TPozycjaSlownika;
begin
  poz := TPozycjaSlownika(fLstPoz.Items[AIndex]);
  poz.Zaznaczona := AValue;
end;

function TManagerPozycji.NazwaPasujeDoFiltra(ANazwa: string): boolean;
var
  filtrWart: string;
begin
  if AktywnyFiltr then
  begin
    filtrWart := fFiltr;

    if fWielkLiter then
    begin
      ANazwa := AnsiUpperCase(ANazwa);
      filtrWart := AnsiUpperCase(fFiltr);
    end;

    case fSposobWysz of
      swCalosc:
        Result := (filtrWart = ANazwa);
      swPoczatek:
        Result := (filtrWart = Copy(ANazwa, 1, Length(filtrWart)));
      swFragment:
        Result := (Pos(filtrWart, ANazwa) > 0);
    end;

  end
  else
    Result := True;
end;

function TManagerPozycji.GetIloscFiltrowanychPozycji: integer;
var
  poz: TPozycjaSlownika;
  i: integer;
begin
  Result := 0;
  for i := 0 to fLstPoz.Count - 1 do
  begin
    poz := TPozycjaSlownika(fLstPoz.Items[i]);
    if NazwaPasujeDoFiltra(poz.Nazwa) then
      Inc(Result);
  end;
end;

function TManagerPozycji.DodajPozycje(APoz: TPozycjaSlownika): boolean;
begin
  Result := False;
  if (Assigned(APoz)) then
  begin
    if not JestTakaPozycjaId(APoz.NrId) then
    begin
      fLstPoz.Add(APoz);
      Result := True;
    end;
  end;
end;

function TManagerPozycji.DodajWielePozycji(AListaPoz: TObjectList): integer;
var
  poz: TPozycjaSlownika;
  dodPoz: TPozycjaSlownika;
  i: integer;
begin
  Result := 0;
  if (Assigned(AListaPoz)) then
  begin
    for i := 0 to AListaPoz.Count - 1 do
    begin
      poz := TPozycjaSlownika(AListaPoz.Items[i]);
      dodPoz := TPozycjaSlownika.Create(poz.NrId, poz.Nazwa);
      dodPoz.Zaznaczona := poz.Zaznaczona;
      if DodajPozycje(dodPoz) then
      begin
        Inc(Result);
      end
      else
      begin
        FreeAndNil(dodPoz);
      end;
    end;
  end;
end;

function TManagerPozycji.AktywnyFiltr: boolean;
begin
  Result := fFiltr <> '';
end;

procedure TManagerPozycji.WyczyscFiltr;
begin
  fFiltr := '';
end;

function TManagerPozycji.JestTakaPozycja(APoz: TPozycjaSlownika): boolean;
var
  poz: TPozycjaSlownika;
  i: integer;
begin
  Result := False;
  if Assigned(APoz) then
  begin
    for i := 0 to fLstPoz.Count - 1 do
    begin
      poz := TPozycjaSlownika(fLstPoz.Items[i]);
      if (poz.NrId = APoz.NrId) and (AnsiUpperCase(poz.Nazwa) =
        AnsiUpperCase(APoz.Nazwa)) then
      begin
        Result := True;
        break;
      end;
    end;
  end;
end;

function TManagerPozycji.JestTakaPozycjaId(AId: longint): boolean;
var
  poz: TPozycjaSlownika;
begin
  poz := GetPozycjaWgId(AId);
  Result := Assigned(poz);
end;

function TManagerPozycji.JestTakaPozycjaNazwa(ANazwa: string): boolean;
var
  poz: TPozycjaSlownika;
begin
  poz := GetPozycjaWgNazwy(ANazwa);
  Result := Assigned(poz);
end;

function TManagerPozycji.GetPozycjaWgId(AId: longint): TPozycjaSlownika;
var
  i: integer;
  poz: TPozycjaSlownika;
begin
  Result := nil;
  if not Assigned(fLstPoz) then
  raise exception.Create('Obiekt listy nie istnieje');

  for i := 0 to fLstPoz.Count - 1 do
  begin
    poz := TPozycjaSlownika(fLstPoz.Items[i]);
    if poz.NrId = AId then
    begin
      Result := poz;
      break;
    end;
  end;
end;

function TManagerPozycji.GetPozycjaWgNazwy(ANazwa: string): TPozycjaSlownika;
var
  i: integer;
  poz: TPozycjaSlownika;
begin
  Result := nil;

  for i := 0 to fLstPoz.Count - 1 do
  begin
    poz := TPozycjaSlownika(fLstPoz.Items[i]);
    if AnsiUpperCase(poz.Nazwa) = AnsiUpperCase(ANazwa) then
    begin
      Result := poz;
      break;
    end;
  end;
end;

procedure TManagerPozycji.ZaznaczWszystkiePozycje;
begin
  UstawStanWszystkichPozycji(True);
end;

procedure TManagerPozycji.OdznaczWszystkiePozycje;
begin
  UstawStanWszystkichPozycji(False);
end;

procedure TManagerPozycji.ZaznaczWszystkiePozycjeWidoczne;
begin
  UstawStanWszystkichPozycjiWidocznych(True);

end;

procedure TManagerPozycji.OdznaczWszystkiePozycjeWidoczne;
begin
  UstawStanWszystkichPozycjiWidocznych(False);
end;

procedure TManagerPozycji.UsunWszystkiePozycje;
begin
  fLstPoz.Clear;
end;

end.
