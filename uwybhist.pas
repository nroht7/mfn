unit uwybhist;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  TOkresHostorii = (ohDzis, ohWczotaj, ohTydzien, ohMiesiac, ohWszystko);

  TOkresHistRec = record
    Poczatek: TDateTime;
    Koniec: TDateTime;
    Okreslony: boolean;
  end;

  { TWybranaHistoria }

  TWybranaHistoria = class
  private
    fOkrHist: TOkresHostorii;
    fFiltrNazwaPl: string;

    function GetOkresDzis: TOkresHistRec;
    function GetOkresIdx: integer;
    function GetOkresWczoraj: TOkresHistRec;
    function GetOkresTydzien: TOkresHistRec;
    function GetOkresMiesiac: TOkresHistRec;
    function GetOkresWstecz(IloscDni: integer): TOkresHistRec;
    function GetWybranyOkres: TOkresHistRec;
    procedure SetOkresIdx(AValue: integer);
  public
    constructor Create;

    function GetQuery: string;
    procedure CzyscFiltrNazwa;

    property Okres: TOkresHostorii read fOkrHist write fOkrHist;
    property OkresAsIndeks: integer read GetOkresIdx write SetOkresIdx;
    property FiltrNazwa: string read fFiltrNazwaPl write fFiltrNazwaPl;
  end;

implementation

uses
  usqlqryb;

{ TWybranaHistoria }

function TWybranaHistoria.GetOkresDzis: TOkresHistRec;
begin
  Result := GetOkresWstecz(0);
end;

function TWybranaHistoria.GetOkresIdx: integer;
begin
  case fOkrHist of
    ohDzis: Result := 0;
    ohWczotaj: Result := 1;
    ohTydzien: Result := 2;
    ohMiesiac: Result := 3;
    else
      Result := 4;
  end;
end;

function TWybranaHistoria.GetOkresWczoraj: TOkresHistRec;
var
  y, m, d: word;
begin
  DecodeDate(now - 1, y, m, d);
  Result.Poczatek := EncodeDate(y, m, d);
  DecodeDate(now, y, m, d);
  Result.Koniec := EncodeDate(y, m, d);
end;

function TWybranaHistoria.GetOkresTydzien: TOkresHistRec;
begin
  Result := GetOkresWstecz(6);
end;

function TWybranaHistoria.GetOkresMiesiac: TOkresHistRec;
begin
  Result := GetOkresWstecz(29);
end;

function TWybranaHistoria.GetOkresWstecz(IloscDni: integer): TOkresHistRec;
var
  y, m, d: word;
begin
  DecodeDate(now - IloscDni, y, m, d);
  Result.Poczatek := EncodeDate(y, m, d);
  DecodeDate(now + 1, y, m, d);
  Result.Koniec := EncodeDate(y, m, d);
  Result.Okreslony := True;
end;

function TWybranaHistoria.GetWybranyOkres: TOkresHistRec;
begin
  case fOkrHist of
    ohDzis: Result := GetOkresWstecz(0);
    ohWczotaj: Result := GetOkresWczoraj;
    ohTydzien: Result := GetOkresWstecz(6);
    ohMiesiac: Result := GetOkresWstecz(29);
    else
    begin
      Result := GetOkresWstecz(0);
      Result.Okreslony := False;
    end;
  end;
end;

procedure TWybranaHistoria.SetOkresIdx(AValue: integer);
begin
  case AValue of
    0: fOkrHist := ohDzis;
    1: fOkrHist := ohWczotaj;
    2: fOkrHist := ohTydzien;
    3: fOkrHist := ohMiesiac;
    else
      fOkrHist := ohWszystko;
  end;
end;

constructor TWybranaHistoria.Create;
begin
  fFiltrNazwaPl := '';
  fOkrHist := ohDzis;
end;

function TWybranaHistoria.GetQuery: string;
var
  qry: TSqlQueryBuilder;
  okresPocz, okresKonc: string;
  wybOkrHist: TOkresHistRec;
begin
  qry := TSqlQueryBuilder.Create;
  try
    qry.AddFields('H.IdHpl,H.IdPl,H.IdRip,H.DataUruchHpl,p.NazwaPl,P.ScPl');
    qry.From := 'HistoriaPliku H';
    qry.AddJoin('JOIN Pliki P ON P.IdPl = H.IdPl');

    wybOkrHist := GetWybranyOkres;
    if (wybOkrHist.Okreslony) then
    begin
      okresPocz := FormatDateTime('yyyy-mm-dd 00.00.00', wybOkrHist.Poczatek);
      okresKonc := FormatDateTime('yyyy-mm-dd 00.00.00', wybOkrHist.Koniec);
      qry.AddWhereFormat('DATETIME(DataUruchHpl, ''localtime'') BETWEEN ''%s'' AND ''%s''', [okresPocz, okresKonc]);
    end;

    if (Trim(fFiltrNazwaPl) <> '') then
      qry.AddWhereFormat('P.NazwaPl LIKE ''%%%s%%''', [Trim(fFiltrNazwaPl)]);

    Result := qry.AsString;
  finally
    FreeAndNil(qry);
  end;
end;

procedure TWybranaHistoria.CzyscFiltrNazwa;
begin
  fFiltrNazwaPl := '';
end;

end.
