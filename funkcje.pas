unit funkcje;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms;

function GetConfigDir(): string;
function GetAppDir(): string;

implementation

function GetConfigDir(): string;
begin
  Result := GetUserDir + '.mfn';
end;

function GetAppDir(): string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

end.

