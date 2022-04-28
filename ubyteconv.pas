unit ubyteconv;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  KILOBYTE = 1024;
  MEGABYTE = 1024 * KILOBYTE;
  GIGABYTE = 1024 * MEGABYTE;

function ByteToKiloByte(AByte: int64): double;
function ByteToMegaByte(AByte: int64): double;
function ByteToGigaByte(AByte: int64): double;

function ByteToKiloByteStr(AByte: int64; AMscPoPrzec: byte): string;
function ByteToMegaByteStr(AByte: int64; AMscPoPrzec: byte): string;
function ByteToGigaByteStr(AByte: int64; AMscPoPrzec: byte): string;

function ByteToAutoSize(AByte: int64; AMscPoPrzec: byte): string;


implementation

function ByteToKiloByte(AByte: int64): double;
begin
  Result := AByte / KILOBYTE;
end;

function ByteToMegaByte(AByte: int64): double;
begin
  Result := AByte / MEGABYTE;
end;

function ByteToGigaByte(AByte: int64): double;
begin
  Result := AByte / GIGABYTE;
end;

function FormatMiejscPoPrzec(AMscPoPrzec: byte): string;
var
  format: string;
  i: integer;
begin
  format := '0';

  //bez przesady!
  if (AMscPoPrzec > 6) then
    AMscPoPrzec := 6;

  if (AMscPoPrzec > 0) then
  begin
    format := format + '.';
    for i := 0 to AMscPoPrzec - 1 do
      format := format + '0';
  end;
  Result := format;
end;

function ByteToKiloByteStr(AByte: int64; AMscPoPrzec: byte): string;
var
  format: string;
  wart: double;
begin
  wart := ByteToKiloByte(AByte);
  format := FormatMiejscPoPrzec(AMscPoPrzec);

  Result := FormatFloat(format, wart);
end;

function ByteToMegaByteStr(AByte: int64; AMscPoPrzec: byte): string;
var
  format: string;
  wart: double;
begin
  wart := ByteToMegaByte(AByte);
  format := FormatMiejscPoPrzec(AMscPoPrzec);

  Result := FormatFloat(format, wart);
end;

function ByteToGigaByteStr(AByte: int64; AMscPoPrzec: byte): string;
var
  format: string;
  wart: double;
begin
  wart := ByteToGigaByte(AByte);
  format := FormatMiejscPoPrzec(AMscPoPrzec);

  Result := FormatFloat(format, wart);
end;

function ByteToAutoSize(AByte: int64; AMscPoPrzec: byte): string;
begin
  //format := FormatMiejscPoPrzec(AMscPoPrzec);
  if (AByte >= GIGABYTE) then
    Result := ByteToGigaByteStr(AByte, AMscPoPrzec) + ' GB'
  else if (AByte >= MEGABYTE) then
    Result := ByteToMegaByteStr(AByte, AMscPoPrzec) + ' MB'
  else if (AByte >= KILOBYTE) then
    Result := ByteToKiloByteStr(AByte, AMscPoPrzec) + ' KB'
  else
    Result := IntToStr(AByte) + ' B';
end;

end.

