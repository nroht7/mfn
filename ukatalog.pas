unit ukatalog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TTypRelacjiKat = (trkNadrzedny, trkNadrzednyBezposrednio, trkPodrzedny, trkPodrzednyBezposrednio, trkTenSam, trlBrak);

  { TKatalog }

  TKatalog = class(TObject)
  private
    fLstKatSc: TStringList;
    fIdKat: longint;
  public
    constructor Create(aKatalog: string);
    destructor Destroy; override;

    function TypRelacjiDoKat(aKatalog: TKatalog): TTypRelacjiKat;
    function PokrewnyZKat(aKatalog: TKatalog): boolean;
    function ToString: string; override;
    procedure DodajKatalog(aKatalog:string);
    procedure UsunOstatniKatalog;
    function Count: integer;
    function GetPoziom(aPoziom: integer):string;
    function GetOstatniKatalog:string;
    function GetDoPoziomu(aPoziom:integer; aSeparatorNaKoncu:boolean):string;

    property Sciezka: TStringList read fLstKatSc;
    property IdKatalogu: longint read fIdKat write fIdKat;
  end;

implementation

{ TKatalog }

constructor TKatalog.Create(aKatalog: string);
begin
  fLstKatSc := TStringList.Create;
  fLstKatSc.CaseSensitive := False;
  fLstKatSc.Delimiter := DirectorySeparator;
  fLstKatSc.StrictDelimiter := True;
  fLstKatSc.DelimitedText := aKatalog;

end;

destructor TKatalog.Destroy;
begin
  if Assigned(fLstKatSc) then
  begin
    fLstKatSc.Clear;
    FreeAndNil(fLstKatSc);
  end;
end;

function TKatalog.TypRelacjiDoKat(aKatalog: TKatalog): TTypRelacjiKat;
var
  takieSame: boolean;
  i: integer;
  kat1,kat2 : string;
begin
  Result := trlBrak;
  takieSame := True;
  for i := 0 to aKatalog.Sciezka.Count - 1 do
  begin
    kat1:= AnsiUpperCase(fLstKatSc[i]);
    kat2:= AnsiUpperCase(aKatalog.Sciezka[i]);
    if (kat1 <> kat2) then
    begin
      takieSame := False;
      break;
    end;
  end;

  if takieSame then
  begin
    if fLstKatSc.Count = aKatalog.Sciezka.Count then
      Result := trkTenSam
    else if fLstKatSc.Count > aKatalog.Sciezka.Count then
    begin
      if fLstKatSc.Count - 1 = aKatalog.Sciezka.Count then
        Result := trkPodrzednyBezposrednio
      else
        result:= trkPodrzedny;
    end
    else
    begin
      if fLstKatSc.Count + 1 = aKatalog.Sciezka.Count then
        Result := trkNadrzednyBezposrednio
      else
        Result := trkNadrzedny;
    end;
  end;
end;

function TKatalog.PokrewnyZKat(aKatalog: TKatalog): boolean;
begin
  Result := TypRelacjiDoKat(aKatalog) <> trlBrak;
end;

function TKatalog.ToString: string;
begin
  Result := fLstKatSc.DelimitedText;
end;

procedure TKatalog.DodajKatalog(aKatalog: string);
begin
  aKatalog:=Trim(aKatalog);
  if (aKatalog <> '') then
    fLstKatSc.Add(aKatalog);
end;

procedure TKatalog.UsunOstatniKatalog;
begin
  if (fLstKatSc.Count > 0) then
    fLstKatSc.Delete(fLstKatSc.Count-1);
end;

function TKatalog.Count: integer;
begin
  result:= fLstKatSc.Count;
end;

function TKatalog.GetPoziom(aPoziom: integer): string;
begin
  result:= '';
  if (aPoziom < fLstKatSc.Count) then
  begin
    result:= fLstKatSc.Strings[aPoziom];
  end;
end;

function TKatalog.GetOstatniKatalog: string;
begin
  result:= '';
  if (fLstKatSc.Count > 0) then
    result:= fLstKatSc.Strings[fLstKatSc.Count-1];
end;

function TKatalog.GetDoPoziomu(aPoziom: integer; aSeparatorNaKoncu: boolean
  ): string;
var
  maxPoz : integer;
  i : integer;
  sc : string;
begin
  sc:= '';
  if (aPoziom < fLstKatSc.Count) then
    maxPoz:= aPoziom
  else
    maxPoz:= fLstKatSc.Count-1;

  for i:=0 to maxPoz do
  begin
    if (sc <> '') then
      sc:= sc + DirectorySeparator;
    sc:= sc + fLstKatSc.Strings[i];
  end;

  if (aSeparatorNaKoncu) then
    sc:= sc + DirectorySeparator;

  result:= sc;
end;

end.

