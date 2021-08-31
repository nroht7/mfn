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

end.
