unit dmgl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset, ZSequence, Controls, Variants, DB, Contnrs;

type

  { TDMG }

  TDMG = class(TDataModule)
    dsKat: TDataSource;
    ilCommon: TImageList;
    ilRozne: TImageList;
    tbTypyPl: TZTable;
    ZConn: TZConnection;
    tbKat: TZTable;
    rqLastId: TZReadOnlyQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
  public
    procedure OtworzPolaczenieZBazaDanych(ListaUstawien: TStringList; Force: boolean = False);
    procedure ZamknijPolaczenieZBazaDanych;
    function GetLastId: longint;
    function OdswiezDataSet(aDataSet:TDataSet; aPole:string): boolean;
    function OdswiezQueryZSql(aQuery:TZQuery; aSql, aPole:string): boolean;
    function UtworzListeKatalogow(var aLstKat:TObjectList): integer;

  end;

var
  DMG: TDMG;

implementation

uses
  ukatalog;

{$R *.frm}

{ TDMG }

procedure TDMG.DataModuleDestroy(Sender: TObject);
begin
  ZamknijPolaczenieZBazaDanych;
end;

procedure TDMG.OtworzPolaczenieZBazaDanych(ListaUstawien: TStringList; Force: boolean = False);
begin
  if (Force or (not ZConn.Connected)) then
  begin
    if not Assigned(ListaUstawien) then
      raise Exception.Create('Błąd podczas otwierania połączenia z bazą danych:' + sLineBreak + 'Nie przekazano listy ustawień');

    if ZConn.Connected then
      ZConn.Connected := False;

    ZConn.Database := ListaUstawien.Values['database'];
    ZConn.LibraryLocation := ListaUstawien.Values['library'];
    //ZConn.User := ListaUstawien.Values['user'];
    //ZConn.Password := ListaUstawien.Values['password'];

    try
      ZConn.Connect;
    except
      on e: Exception do
      begin
        raise Exception.Create('Podczas próby połączenia z bazą danych wystąpił błąd:' + sLineBreak + e.Message);
      end;
    end;

    //tbTypyPl.Open;
    tbKat.Open;
  end;
end;

procedure TDMG.ZamknijPolaczenieZBazaDanych;
begin
  if (ZConn.Connected) then
  begin
    //tbTypyPl.Close;
    tbKat.Close;

    ZConn.Disconnect;
  end;
end;

function TDMG.GetLastId: longint;
begin
  result:= 0;
  try
    rqLastId.Close;
    rqLastId.Open;
    if not rqLastId.IsEmpty then
    begin
      rqLastId.First;
      result:= rqLastId.Fields[0].AsInteger;
    end;
    rqLastId.Close;
  except
    on e : exception do
    begin
      raise Exception.Create('Błąd podczas próby pobrania ostatniego identyfikatora:'+sLineBreak+e.Message);
    end;
  end;
end;

{Funkcja zwraca True jedynie jeśli uda się odnaleść poprzednią wartość pola i nic więcej
(wynik nie sprawdza otwarcia tabeli ani nawet czy pole zostało przekazane - jeśli nie zostało - zwróci False)}
function TDMG.OdswiezDataSet(aDataSet:TDataSet; aPole:string): boolean;
var
  wart : variant;
begin
  result:= False;

  if Assigned(aDataSet) then
  begin
    wart:= null;
    if (aPole <> '') and (not aDataSet.IsEmpty) then
      wart:= aDataSet.FieldByName(aPole).Value;

    aDataSet.Close;
    aDataSet.Open;

    if not VarIsNull(wart) then
      result:= aDataSet.Locate(aPole, wart, []);
  end;
end;

function TDMG.OdswiezQueryZSql(aQuery: TZQuery; aSql, aPole: string): boolean;
var
  wart : variant;
begin
  result:= False;

  if Assigned(aQuery) then
  begin
    wart:= null;
    if (aPole <> '') and (not aQuery.IsEmpty) then
      wart:= aQuery.FieldByName(aPole).Value;

    aQuery.Close;
    aQuery.SQL.Text:= aSql;
    aQuery.Open;

    if not VarIsNull(wart) then
      result:= aQuery.Locate(aPole, wart, []);
  end;
end;

function TDMG.UtworzListeKatalogow(var aLstKat:TObjectList): integer;
var
  kat: TKatalog;
begin
  result:= 0;
  if Assigned(aLstKat) then
  begin
    aLstKat.Clear;
    if (tbKat.Active) and (not tbKat.IsEmpty) then
    begin
      tbKat.First;
      while not tbKat.EOF do
      begin
        kat := TKatalog.Create(tbKat.FieldByName('SCFLD').AsString);
        kat.IdKatalogu := tbKat.FieldByName('IDFLD').AsInteger;
        aLstKat.Add(kat);
        Inc(result);

        tbKat.Next;
      end;
    end;
  end;
end;


end.

