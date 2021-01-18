unit ukatalog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TTypRelacjiKat = (trkNadrzedny, trkPodrzedny, trkTenSam, trlBrak);

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
begin
  Result := trlBrak;
  takieSame := True;
  for i := 0 to aKatalog.Sciezka.Count - 1 do
  begin
    if (AnsiUpperCase(fLstKatSc[i]) <> AnsiUpperCase(aKatalog.Sciezka[i])) then
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
      Result := trkPodrzedny
    else
      Result := trkNadrzedny;
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

end.

