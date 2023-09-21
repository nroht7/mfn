unit upldb;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TPlikDB }

  TPlikDB = class
    fIdFld: longint;
    fIdPl: longint;
    fScFld: string;
    fNazwaPl: string;
    fScWzgPl: string;
    fCrc32: string;
  private
    procedure SetNazwaPl(AValue: string);
    procedure SetScFld(AValue: string);
    procedure SetScWzgPl(AValue: string);
  public
    constructor Create;

    procedure SetFolder(AIdFld: longint; AScFld: string);
    procedure SetPlik(AIdPl: longint; ANazwaPl, AScWzgPl: string);
    function GetFolderPliku: string;
    function SaDaneFolderu: boolean;
    function AsString: string;

    property IdFolderu: longint read fIdFld write fIdFld;
    property SciezkaFolderu: string read fScFld write SetScFld;
    property IdPliku: longint read fIdPl write fIdPl;
    property NazwaPliku: string read fNazwaPl write SetNazwaPl;
    property WzglednaSciezkaPliku: string read fScWzgPl write SetScWzgPl;
    property Crc32 : string read fCrc32 write fCrc32;
  end;

implementation

{ TPlikDB }

uses
  funpl;

procedure TPlikDB.SetNazwaPl(AValue: string);
begin
  if fNazwaPl = AValue then Exit;
  fNazwaPl := Trim(AValue);
end;

procedure TPlikDB.SetScFld(AValue: string);
begin
  if fScFld = AValue then Exit;
  fScFld := DodajSeparatorKatNaKoncu(Trim(AValue));
end;

procedure TPlikDB.SetScWzgPl(AValue: string);
begin
  if fScWzgPl = AValue then Exit;
  fScWzgPl := DodajSeparatorKatNaKoncu(Trim(AValue));
end;

constructor TPlikDB.Create;
begin
  fIdFld := 0;
  fIdPl := 0;
  fScFld := '';
  fNazwaPl := '';
  fScWzgPl := '';
  fCrc32 := '';
end;

procedure TPlikDB.SetFolder(AIdFld: longint; AScFld: string);
begin
  fIdFld := AIdFld;
  fScFld := DodajSeparatorKatNaKoncu(Trim(AScFld));
end;

procedure TPlikDB.SetPlik(AIdPl: longint; ANazwaPl, AScWzgPl: string);
begin
  fIdPl := AIdPl;
  fNazwaPl := Trim(ANazwaPl);
  fScWzgPl := DodajSeparatorKatNaKoncu(AScWzgPl);
end;

function TPlikDB.GetFolderPliku: string;
begin
  Result := '';
  if (fScFld <> '') then
  begin
    Result := fScFld + fScWzgPl;
  end;
end;

function TPlikDB.SaDaneFolderu: boolean;
begin
  Result := (fIdFld > 0) and (fScFld <> '');
end;

function TPlikDB.AsString: string;
begin
  Result := fScFld + fScWzgPl + fNazwaPl;
end;

end.
