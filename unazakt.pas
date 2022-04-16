unit unazakt;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  TRodzajNazwyAktora = (rnaAktor, rnaAka);

  { TNazwaAktora }

  TNazwaAktora = class
  private
    fIdAktora: longint;
    fNazwa: string;
    fRodzaj: TRodzajNazwyAktora;
  public
    constructor Create(AIdAkt: longint; ANazwa: string; ARodzaj: TRodzajNazwyAktora);
    constructor CreateActor(AIdAkt: longint; ANazwa: string);
    constructor CreateAKA(AIdAkt: longint; ANazwa: string);

    function ToAktor: boolean;
    function ToAka: boolean;
    function MoznaZmienicRodzaj: boolean;

    class function IntToRodzaj(ARodzaj: longint): TRodzajNazwyAktora;

    property IdAktora: longint read fIdAktora write fIdAktora;
    property Nazwa: string read fNazwa write fNazwa;
    property Rodzaj: TRodzajNazwyAktora read fRodzaj write fRodzaj;
  end;

implementation

{ TNazwaAktora }

constructor TNazwaAktora.Create(AIdAkt: longint; ANazwa: string; ARodzaj: TRodzajNazwyAktora);
begin
  inherited Create;

  fIdAktora := AIdAkt;
  fNazwa := Trim(ANazwa);
  fRodzaj := ARodzaj;
end;

constructor TNazwaAktora.CreateActor(AIdAkt: longint; ANazwa: string);
begin
  inherited Create;

  fIdAktora := AIdAkt;
  fNazwa := Trim(ANazwa);
  fRodzaj := rnaAktor;
end;

constructor TNazwaAktora.CreateAKA(AIdAkt: longint; ANazwa: string);
begin
  inherited Create;

  fIdAktora := AIdAkt;
  fNazwa := Trim(ANazwa);
  fRodzaj := rnaAka;
end;

function TNazwaAktora.ToAktor: boolean;
begin
  Result := (fRodzaj = rnaAktor);
end;

function TNazwaAktora.ToAka: boolean;
begin
  Result := (fRodzaj = rnaAka);
end;

function TNazwaAktora.MoznaZmienicRodzaj: boolean;
begin
  Result := (fIdAktora > 0);
end;

class function TNazwaAktora.IntToRodzaj(ARodzaj: longint): TRodzajNazwyAktora;
begin
  if (ARodzaj = 2) then
    Result := rnaAka
  else
    Result := rnaAktor;
end;

end.
