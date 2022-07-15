unit funkcje;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, crc;

function GetConfigDir(): string;
function GetAppDir(): string;
function CrcFileStr(filename: string): string;
function IsDigit(c: char): boolean;
function IsNumberInteger(s: string): boolean;
procedure SekToMin(ASek: integer; var m, s: byte);
procedure SekToGodz(ASek: integer; var g, m, s: byte);
function SekToMinStr(ASek: integer): string;
function SekToGodzStr(ASek: integer): string;


implementation

function GetConfigDir(): string;
begin
  Result := GetUserDir + '.mfn' + DirectorySeparator;
end;

function GetAppDir(): string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function CrcFile(filename: string): longword;
var
  crcvalue: longword;
  fin: file;
  NumRead: word;
  buf: array[1..2048] of byte;
begin
  crcvalue := crc32(0, nil, 0);
  AssignFile(fin, filename);
  Reset(Fin, 1);
  repeat
    BlockRead(fin, buf, Sizeof(buf), NumRead);
    crcvalue := crc32(crcvalue, @buf[1], NumRead);
  until (NumRead = 0);
  CloseFile(fin);
  Result := crcvalue;
end;

function CrcFileStr(filename: string): string;
var
  crcvalue: longword;
begin
  crcvalue := CrcFile(filename);
  Result := IntToHex(crcvalue, 8);
end;

function IsDigit(c: char): boolean;
begin
  Result := c in ['0'..'9'];
end;

function IsNumberInteger(s: string): boolean;
var
  i: integer;
begin
  if (s = '') then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
    for i := 1 to Length(s) do
    begin
      if not IsDigit(s[i]) then
      begin
        Result := False;
        break;
      end;
    end;
  end;
end;

procedure SekToMin(ASek: integer; var m, s: byte);
begin
  m := 0;
  s := 0;
  if (ASek > 0) then
  begin
    m := ASek div 60;
    s := ASek mod 60;
  end;
end;

procedure SekToGodz(ASek: integer; var g, m, s: byte);
begin
  g := 0;
  m := 0;
  s := 0;
  if (ASek > 0) then
  begin
    g := ASek div 3600;
    m := (ASek div 60) - g;
    s := ASek mod 60;
  end;
end;

function SekToMinStr(ASek: integer): string;
var
  m, s: byte;
  czas: string;
begin
  czas:= '';
  SekToMin(ASek, m, s);
  if (m > 0) then
    czas := czas + Format('%d min', [m]);
  if (czas <> '') then
    czas := czas + ' ';
  if (s > 0) then
    czas := czas + Format('%d sek', [s]);
  if czas <> '' then
    Result := czas
  else
    Result := '0 sek';
end;

function SekToGodzStr(ASek: integer): string;
var
  g, m, s: byte;
  czas: string;
begin
  czas:= '';
  SekToGodz(ASek, g, m, s);

  if (g > 0) then
    czas := czas + Format('%d g', [g]);
  if (czas <> '') then
    czas := czas + ' ';
  if (m > 0) then
    czas := czas + Format('%d m', [m]);
  if (czas <> '') then
    czas := czas + ' ';
  if (s > 0) then
    czas := czas + Format('%d s', [s]);

  if czas <> '' then
    Result := czas
  else
    Result := '0 sek';
end;

end.
