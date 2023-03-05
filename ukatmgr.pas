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
    fLstKatGl: TObjectList;
    fLstKatPodrzednych : TObjectList;
    fWybKat: TKatalog;

    function CzyMoznaWyzej: boolean;
    function GetWybKatOpis: string;
    function UtworzListeKatZBazyDanych: integer;
    function UtworzListeKatGl: integer;
    function UtworzListeKatPod(aWybKat: TKatalog): integer;
    function GetIdKat(aKatalog: string): longint;
    function UtworzListeKatalogow: integer;
    procedure UstawPoziomZero;
  public
    constructor Create;
    destructor Destroy; override;

    property MoznaWyzej: boolean read CzyMoznaWyzej;
    property ListaKatalogow: TObjectList read fLstKat;
    property WybranyKatalogOpis: string read GetWybKatOpis;
    property WybranyKatalog: TKatalog read fWybKat;
    property Poziom: integer read fPoziom;

    function PrzejdzWyzej: boolean;
    function PrzejdzNizej(aKatalog: string): boolean;
    function PrzejdzDoPoczatku: boolean;
    function OdswiezListeKatalogow: integer;
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
  fLstKatGl := TObjectList.Create;
  fLstKatPodrzednych := TObjectList.Create;
  UtworzListeKatZBazyDanych;
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
  if Assigned(fLstKatPodrzednych) then
  begin
    fLstKatPodrzednych.Clear;
    FreeAndNil(fLstKatPodrzednych);
  end;
  if Assigned(fLstKatGl) then
  begin
    fLstKatGl.Clear;
    FreeAndNil(fLstKatGl);
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
    Result := UtworzListeKatGl
  else
    Result := UtworzListeKatPod(fWybKat);
end;

procedure TKatMgr.UstawPoziomZero;
begin
  fPoziom := 0;
  if Assigned(fWybKat) then
    FreeAndNil(fWybKat);
end;

function TKatMgr.UtworzListeKatZBazyDanych: integer;
var
  i : integer;
  kat: TKatalog;
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
  fLstKatPodrzednych.Clear;
  DMG.UtworzListeKatalogow(fLstKatGl);
  for i:=0  to fLstKatGl.Count-1 do
  begin
    kat:= TKatalog(fLstKatGl.Items[i]);
    DMG.UtworzListeKatalogowPodrzednych(kat.IdKatalogu, fLstKatPodrzednych);
  end;
  Result := fLstKatGl.Count;
end;

function TKatMgr.UtworzListeKatPod(aWybKat: TKatalog): integer;
var
  i : integer;
  kat, dodKat: TKatalog;
  s : string;
begin
  fLstKat.Clear;
  //TODO utworzyc liste katalogow na podstawie analizy rekordow dla danego katalogu i wybranego podkatalogu
  for i:=0 to fLstKatPodrzednych.Count-1 do
  begin
    kat:= TKatalog(fLstKatPodrzednych.Items[i]);
    if (kat.IdKatalogu = aWybKat.IdKatalogu) and (aWybKat.TypRelacjiDoKat(kat) = trkPodrzedny) then
    begin
      s:= kat.GetPoziom(fPoziom+1);
      if (s <> '') then
      begin
        dodKat:= TKatalog.Create(aWybKat.ToString);
        dodKat.DodajKatalog(s);
        dodKat.IdKatalogu:= aWybKat.IdKatalogu;
        fLstKat.Add(dodKat);
      end;
    end;
  end;
  Result := fLstKat.Count;
end;

function TKatMgr.UtworzListeKatGl: integer;
var
  i : integer;
  kat,katGl: TKatalog;
begin
  fLstKat.Clear;
  for i:=0 to fLstKatGl.Count-1 do
  begin
    katGl:= TKatalog(fLstKatGl.Items[i]);
    kat:= TKatalog.Create(katGl.ToString);
    kat.IdKatalogu:= katGl.IdKatalogu;
    fLstKat.Add(kat);
  end;
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
      fWybKat.IdKatalogu := GetIdKat(fWybKat.GetDoPoziomu(1,True));
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
    UstawPoziomZero;
    UtworzListeKatalogow;
    Result := True;
  end;
end;

function TKatMgr.OdswiezListeKatalogow: integer;
begin
  UstawPoziomZero;
  UtworzListeKatZBazyDanych;
  Result := UtworzListeKatalogow;
end;

end.
