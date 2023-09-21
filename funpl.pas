unit funpl;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  TCallBack = procedure(Position, Size: longint); { export; }

function Crc32File(FileName: string): cardinal;
function Crc32File2(FileName: string): cardinal;
function DodajSeparatorKatNaKoncu(const FileName: string): string;

implementation

uses
  crc;

function Crc32File(FileName: string): cardinal;
var
  crcvalue: longword;
  fin: file;
  NumRead: word;
  buf: array[1..2048] of byte;
begin
  crcvalue := crc32(0, nil, 0);
  ///AssignFile (fin, Paramstr(1)); <- change this
  AssignFile(fin, filename); //<- to this
  Reset(Fin, 1);
  repeat
    BlockRead(fin, buf, Sizeof(buf), NumRead);
    crcvalue := crc32(crcvalue, @buf[1], NumRead);
  until (NumRead = 0);
  // writeln('crc32 = ', IntToHex(crcvalue, 8));  // show error, I skip this
  CloseFile(fin);
  Result := crcvalue;
end;

function Crc32File2(FileName: string): cardinal;
var
  Len: integer;
  buff: array[0..127] of byte;
begin
  Result := crc32(0, nil, 0); //Grund Hash von leeren Bytes erstellen
  with TFileStream.Create(FileName, fmOpenRead) do  //Datei öffnen
  begin
    try
      repeat
        Len := Read(buff, 128);  // 128 Byte aus datei Lesen
        Result := crc32(Result, @buff, len); // Hash Updaten
      until len < 128; // Solange lesen bis EOF
    finally
      Free;
    end;
  end;
end;

function DodajSeparatorKatNaKoncu(const FileName: string): string;
var
  s: string;
begin
  s := Trim(FileName);
  if (s <> '') then
  begin
    if LastDelimiter(DirectorySeparator, s) <> Length(s) then
      s := s + DirectorySeparator;
  end;
  Result := s;
end;

end.
