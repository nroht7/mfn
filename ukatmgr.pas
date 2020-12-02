unit ukatmgr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Contnrs, Dialogs, DB, ukatalog;

type

  { TKatMgr }

  TKatMgr = class
  private
    fPoziom: integer;
    fLstKat: TObjectList;
    fWybKat: TKatalog;

    function CzyMoznaWyzej: boolean;
    function GetWybKatOpis: string;
    function UtworzListeKatZBazyDanych: integer;
    function UtworzListeKatPod(aWybKat: TKatalog): integer;
    function GetIdKat(aKatalog: string): longint;
    function UtworzListeKatalogow: integer;
  public
    constructor Create;
    destructor Destroy; override;

    property MoznaWyzej: boolean read CzyMoznaWyzej;
    property ListaKatalogow: TObjectList read fLstKat;
    property WybranyKatalogOpis: string read GetWybKatOpis;
    property WybranyKatalog: TKatalog read fWybKat;

    function PrzejdzWyzej: boolean;
    function PrzejdzNizej(aKatalog: string): boolean;
    function PrzejdzDoPoczatku: boolean;
  end;

implementation

uses
  dmgl;

{ TKatMgr }

constructor TKatMgr.Create;
begin
  inherited;

  fPoziom := 0;
  fWybKat := nil;
  fLstKat := TObjectList.Create;
  UtworzListeKatalogow;
end;

destructor TKatMgr.Destroy;
begin
  if Assigned(fWybKat) then
    FreeAndNil(fWybKat);

  if Assigned(fLstKat) then
  begin
    fLstKat.Clear;
    FreeAndNil(fLstKat);
  end;

  inherited;
end;

function TKatMgr.CzyMoznaWyzej: boolean;
begin
  Result := fPoziom > 0;
end;

function TKatMgr.GetWybKatOpis: string;
begin
  if (fPoziom = 0) then
  begin
    Result := '<Wszystko>';
  end
  else
  begin
    if Assigned(fWybKat) then
    begin
      Result := fWybKat.ToString;
    end
    else
    begin
      raise Exception.Create('Błąd podczas ustawiania aktywnego katalogu. Wybrany katalog = null');
    end;
  end;
end;

function TKatMgr.UtworzListeKatalogow: integer;
begin
  if fPoziom = 0 then
    Result := UtworzListeKatZBazyDanych
  else
    Result := UtworzListeKatPod(fWybKat);
end;

function TKatMgr.UtworzListeKatZBazyDanych: integer;
{var
  kat: TKatalog;}
begin
  {fLstKat.Clear;
  DMG.tbKat.DisableControls;
  try
    DMG.tbKat.First;
    while not DMG.tbKat.EOF do
    begin
      kat := Tkatalog.Create(DMG.tbKat.FieldByName('ScFld').AsString);
      kat.IdKatalogu := DMG.tbKat.FieldByName('IdFld').AsInteger;
      fLstKat.Add(kat);

      DMG.tbKat.Next;
    end;
  finally
    DMG.tbKat.EnableControls;
  end;}
  DMG.UtworzListeKatalogow(fLstKat);
  Result := fLstKat.Count;
end;

function TKatMgr.UtworzListeKatPod(aWybKat: TKatalog): integer;
begin
  fLstKat.Clear;
  //TODO utworzyc liste katalogow na podstawie analizy rekordow dla danego katalogu i wybranego podkatalogu
  Result := fLstKat.Count;
end;

function TKatMgr.GetIdKat(aKatalog: string): longint;
begin
  Result := 0;
  if DMG.tbKat.Locate('ScFld', aKatalog, [loCaseInsensitive]) then
    Result := DMG.tbKat.FieldByName('IdFld').AsInteger
  else
    raise Exception.Create('Błąd podczas wyszykiwania katalogu w bazie danych.' + sLineBreak + 'Nie znaleziono:' + sLineBreak + aKatalog);
end;

function TKatMgr.PrzejdzWyzej: boolean;
begin
  Result := False;
  if (fPoziom > 0) then
  begin
    Dec(fPoziom);
    if fPoziom > 0 then
      fWybKat.UsunOstatniKatalog
    else
      FreeAndNil(fWybKat);
    UtworzListeKatalogow;
    Result := True;
  end;
end;

function TKatMgr.PrzejdzNizej(aKatalog: string): boolean;
begin
  Result := False;
  aKatalog := Trim(aKatalog);
  if (aKatalog <> '') then
  begin
    Inc(fPoziom);
    if fPoziom = 1 then
    begin
      if Assigned(fWybKat) then
      begin
        FreeAndNil(fWybKat);
        MessageDlg('Nieprawidłowy katalog!', mtError, [mbOK], 0);
      end;
      fWybKat := TKatalog.Create(aKatalog);
      fWybKat.IdKatalogu := GetIdKat(aKatalog);
    end
    else
    begin
      fWybKat.DodajKatalog(aKatalog);
    end;
    UtworzListeKatalogow;
    Result := True;
  end;
end;

function TKatMgr.PrzejdzDoPoczatku: boolean;
begin
  Result := False;
  if (fPoziom <> 0) then
  begin
    fPoziom := 0;
    if Assigned(fWybKat) then
      FreeAndNil(fWybKat);
    UtworzListeKatZBazyDanych;
    Result := True;
  end;
end;

end.

