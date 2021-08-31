unit ulnkopen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TLinkOpen = class
  private
    fWybPrzeglExe: TFileName;
    fParam: string;
    fWybPrzeglOk: integer;
    function WybPrzegladarkaOk: boolean;
  public
    constructor Create;
    procedure Open(url: string);
    procedure OpenDefault(url: string);
    function NazwaWybPrzegl: string;

    property LokalicacjaPrzegladarki: TFileName read fWybPrzeglExe
      write fWybPrzeglExe;
    property ParametryPrzegladarki: string read fParam write fParam;
  end;


implementation

uses
  ShellAPI;

const
  SW_SHOWNORMAL = 1;
  SW_NORMAL = 1;

constructor TLinkOpen.Create;
begin
  fWybPrzeglExe := '';
  fParam := '';
  fWybPrzeglOk := 0;
end;

function TLinkOpen.NazwaWybPrzegl: string;
begin
  if WybPrzegladarkaOk then
    result := ExtractFileName(fWybPrzeglExe)
  else
    result := 'Domyślna przeglądarka systemowa';
end;

procedure TLinkOpen.Open(url: string);
var
  parametry : string;
begin
  parametry:= fParam + ' ' + url ;
  if WybPrzegladarkaOk then
  begin
    if fParam <> '' then
      ShellExecute(HInstance, 'open', PChar(fWybPrzeglExe), PChar(parametry), nil,
        SW_SHOWNORMAL)
    else
      ShellExecute(HInstance, 'open', PChar(fWybPrzeglExe), PChar(url), nil,
        SW_SHOWNORMAL);
  end
  else
    OpenDefault(url);
end;

procedure TLinkOpen.OpenDefault(url: string);
begin
  ShellExecute(HInstance, 'open', PChar(url), nil, nil, SW_NORMAL);
end;

function TLinkOpen.WybPrzegladarkaOk: boolean;
begin
  if fWybPrzeglOk <> 0 then
  begin
    result := (fWybPrzeglOk > 0);
  end
  else
  begin
    result := (fWybPrzeglExe <> '') and (FileExists(fWybPrzeglExe));
    if result then
      fWybPrzeglOk := 1
    else
      fWybPrzeglOk := -1;
  end;
end;

end.

