unit funkcje;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, crc;

function GetConfigDir(): string;
function GetAppDir(): string;
function CrcFileStr(filename: string): string;

implementation

function GetConfigDir(): string;
begin
  Result := GetUserDir + '.mfn';
end;

function GetAppDir(): string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function CrcFile(filename: string): longword;
var
  crcvalue: longword;
  fin: File;
  NumRead: Word;
  buf: Array[1..2048] of byte;
begin
  crcvalue := crc32(0,nil,0);
  AssignFile (fin, filename);
  Reset (Fin,1);
  repeat
    BlockRead(fin, buf, Sizeof(buf), NumRead);
    crcvalue := crc32(crcvalue, @buf[1], NumRead);
  until (NumRead=0);
  CloseFile(fin);
  result := crcvalue;
end;

function CrcFileStr(filename: string): string;
var
  crcvalue: longword;
begin
  crcvalue:= CrcFile(filename);
  result:= IntToHex(crcvalue, 8)
end;

end.

