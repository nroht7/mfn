unit uokrlat;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  TNachodzenieOkresu = (noPoczatek, noKoniec, noCalkowicie, noZawieraSie, noTakiSam, noBrak);
  TPasowanieOkresu = (poPoczatek, poKoniec, poBrak);

  { TOkresLat }

  TOkresLat = class
  private
    fRokPocz: integer;
    fRokKonc: integer;
  public
    constructor Create(Rok: integer); overload;
    constructor Create(RokPocz, RokKonc: integer); overload;

    property RokPoczatkowy: integer read fRokPocz write fRokPocz;
    property RokKoncowy: integer read fRokKonc write fRokKonc;

    function ZawieraSieWOkresie(Rok: integer): boolean;
    function RokPasujeDoOkresuZOkresleniem(Rok: integer): TPasowanieOkresu;
    function RokPasujeDoOkresu(Rok: integer): boolean;
    function DodajRokDoOkresuJesliPasuje(Rok: integer): boolean;
    function OkresNachodzi(Okres: TOkresLat): TNachodzenieOkresu;
    function PrzylaczOkres(Okres: TOkresLat): boolean;
    function InnyOkresPasujeDoOkresuZOkresleniem(Okres: TOkresLat): TPasowanieOkresu;
    function InnyOkresPasujeDoOkresu(Okres: TOkresLat): boolean;
    function JakoWarunekSql: string;
    function ToString: string;
  end;

implementation

{ TOkresLat }

constructor TOkresLat.Create(Rok: integer);
begin
  fRokPocz := Rok;
  fRokKonc := Rok;
end;

constructor TOkresLat.Create(RokPocz, RokKonc: integer);
begin
  fRokPocz := RokPocz;
  fRokKonc := RokKonc;
end;

function TOkresLat.ZawieraSieWOkresie(Rok: integer): boolean;
begin
  Result := ((Rok >= fRokPocz) and (Rok <= fRokKonc));
end;

function TOkresLat.RokPasujeDoOkresuZOkresleniem(Rok: integer): TPasowanieOkresu;
begin
  Result := poBrak;

  if (Rok = (fRokPocz - 1)) then
  begin
    Result := poPoczatek;
  end
  else if (Rok = (fRokKonc + 1)) then
  begin
    Result := poKoniec;
  end;
end;

function TOkresLat.RokPasujeDoOkresu(Rok: integer): boolean;
begin
  Result := RokPasujeDoOkresuZOkresleniem(Rok) <> poBrak;
end;

function TOkresLat.DodajRokDoOkresuJesliPasuje(Rok: integer): boolean;
var
  pasowanie: TPasowanieOkresu;
begin
  Result := False;

  pasowanie := RokPasujeDoOkresuZOkresleniem(Rok);
  if (pasowanie = poPoczatek) then
  begin
    fRokPocz := fRokPocz - 1;
    Result := True;
  end
  else if (Rok = (fRokKonc + 1)) then
  begin
    fRokKonc := fRokKonc + 1;
    Result := True;
  end
  else if ((Rok >= fRokPocz) and (Rok <= fRokKonc)) then
  begin
    Result := True;
  end;
end;

/// relacja okresu z parametru do bieżącego
/// np. jeśli okres z parametru zawiera zaczyna się wcześniej i kończy w trakcie bieżącego to jest to nachodzenie  - noPoczatek
/// a jeśli okres z parametru zaczyna się wcześniej i kończy pózniej to jest to nachodzenie - noCalkowicie
/// jeśli okres z parametru zaczyna się później i kończy wcześniej to jest to nadzochenie typu noZawieraSie
function TOkresLat.OkresNachodzi(Okres: TOkresLat): TNachodzenieOkresu;
begin
  Result := noBrak;
  if (Assigned(Okres)) then
  begin
    if ((Okres.RokPoczatkowy = fRokPocz) and (Okres.RokKoncowy = fRokKonc)) then
      Result := noTakiSam
    else if ((Okres.RokPoczatkowy < fRokPocz) and (Okres.RokKoncowy > fRokKonc)) then
      Result := noCalkowicie
    else if ((Okres.RokPoczatkowy > fRokPocz) and (Okres.RokKoncowy < fRokKonc)) then
      Result := noZawieraSie
    else if ((Okres.RokPoczatkowy < fRokPocz) and (Okres.RokKoncowy >= fRokPocz) and (Okres.RokKoncowy <= fRokKonc)) then
      Result := noPoczatek
    else if ((Okres.RokKoncowy > fRokPocz) and (Okres.RokPoczatkowy >= fRokPocz) and (Okres.RokPoczatkowy <= fRokKonc)) then
      Result := noKoniec;
  end;

end;

/// Przylacza Okres z parametru jesli pasuje do bieżącego
/// Okres może zostać dołączony jeśli:
/// - zawiera się całkowicie w bieżącym (wtedy funkcja zwraca true i nic się nie zmienia)
/// - nachodzi na początek bieżącego, wtedy okres bieżący zmienia rok na początkowy z okresu dołączanego
/// - nachodzi na koniec bieżącego, wtedy okres bieżący zmienia rok na końcowy z okresu dołączanego
/// Zwraca true jeśli okres zostanie przyłączony (spełnia warunki) lub false jeśli nie
function TOkresLat.PrzylaczOkres(Okres: TOkresLat): boolean;
begin
  Result := False;
  if (Assigned(Okres)) then
  begin
    case OkresNachodzi(Okres) of
      noZawieraSie, noTakiSam: Result := True;
      noPoczatek:
      begin
        fRokPocz := Okres.RokPoczatkowy;
        Result := True;
      end;
      noKoniec:
      begin
        fRokKonc := Okres.RokKoncowy;
        Result := True;
      end;
      noCalkowicie:
      begin
        fRokPocz := Okres.RokPoczatkowy;
        fRokKonc := Okres.RokKoncowy;
        Result := True;
      end;
    end;
  end;
end;

function TOkresLat.InnyOkresPasujeDoOkresuZOkresleniem(Okres: TOkresLat): TPasowanieOkresu;
begin
  Result := poBrak;
  if (Assigned(Okres)) then
  begin
    if (Okres.RokKoncowy = fRokPocz - 1) then
      Result := poPoczatek
    else if (Okres.RokPoczatkowy = fRokKonc + 1) then
      Result := poKoniec;
  end;
end;

function TOkresLat.InnyOkresPasujeDoOkresu(Okres: TOkresLat): boolean;
begin
  Result := InnyOkresPasujeDoOkresuZOkresleniem(Okres) <> poBrak;
end;

function TOkresLat.JakoWarunekSql: string;
begin
  if (fRokPocz = fRokKonc) then
    Result := Format(' = %d', [fRokPocz])
  else
    Result := Format(' BETWEEN %d AND %d', [fRokPocz, fRokKonc]);
end;

function TOkresLat.ToString: string;
begin
  if (fRokPocz = fRokKonc) then
    Result := IntToStr(fRokPocz)
  else
    Result := Format('%d-%d', [fRokPocz, fRokKonc]);
end;

end.
