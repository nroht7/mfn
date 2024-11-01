unit dmgl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, ZConnection, ZDataset, {ZSequence,} Controls, Variants, DB, Contnrs,
  ComboEx, ulnkopen;

type
  TTrybOtwarciaOkna = (tooPrzegladanie, tooWybor);
  TTrybWyboruPozycji = (twpJednaPoz, twpWielePoz);

  TFilmPlInfo = class
  private
    fIdFilmu: longint;
    fIdRip: longint;
  public
    property IdFilmu: longint read fIdFilmu write fIdFilmu;
    property IdRip: longint read fIdRip write fIdRip;
  end;

  TItemInfo = class
  private
    fIdItem : longint;
  public
    property Id : longint read fIdItem write fIdItem;
  end;

  { TDMG }

  TDMG = class(TDataModule)
    dsKat: TDataSource;
    ilCommon: TImageList;
    ilRozne: TImageList;
    ilRozszPl: TImageList;
    ilTypyPl: TImageList;
    ilStatus: TImageList;
    ilRozszPl32: TImageList;
    ilStars: TImageList;
    ilStars16: TImageList;
    tbTypyPl: TZTable;
    ZConn: TZConnection;
    tbKat: TZTable;
    rqLastId: TZReadOnlyQuery;
    tbRozszPl: TZTable;
    qLataDekFld: TZReadOnlyQuery;
    qLataDek: TZReadOnlyQuery;
    qCmd: TZQuery;
    qKatPod: TZReadOnlyQuery;
    tbPliki: TZTable;
    tbRejPl: TZTable;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    fLstDSDoZamkniecia: TObjectList;
    fUstawieniaLst: TStringList;
    fLnkOpen: TLinkOpen;
    function PrzygotujSqlDodajRekord(aTabela: string; aListaPol: TStringList): string;
  public
    property Ustawienia: TStringList read fUstawieniaLst write fUstawieniaLst;
    property LinkOpen: TLinkOpen read fLnkOpen;

    procedure OtworzPolaczenieZBazaDanych(ListaUstawien: TStringList; Force: boolean = False);
    procedure ZamknijPolaczenieZBazaDanych;
    function GetLastId: longint;
    procedure OdswiezDataSet(aDataSet: TDataSet);
    function OdswiezDataSet(aDataSet: TDataSet; aPole: string): boolean; overload;
    function OdswiezDataSet(aDataSet: TDataSet; aPole: string; wartosc: variant): boolean; overload;
    function OdswiezQueryZSql(aQuery: TZQuery; aSql, aPole: string): boolean;
    function OdswiezQueryZParam(aQuery: TZQuery; aParamName: string; aValue: variant): boolean; overload;
    function OdswiezQueryZParam(aQuery: TZReadOnlyQuery; aParamName: string; aValue: variant): boolean; overload;
    function UtworzListeKatalogow(var aLstKat: TObjectList): integer;
    function UtworzListeKatalogowPodrzednych(aIdFld:integer; var aLstKat: TObjectList): integer;
    function DodajRekord(aTabela: string; aListaPol: TStringList): longint;
    function GetLstOblTypowAsStr: string;
    procedure GetListaLatIDekadFolder(aIdFld: longint; var aLstLat: TStringList);
    procedure DataSetToComboBoxEx(DataSet: TDataSet; ComboBox: TComboBoxEx; PoleOpis: string; ImgIdx: integer);
    procedure DataSetToComboBoxExId(DataSet: TDataSet; ComboBox: TComboBoxEx; PoleOpis, PoleId: string; ImgIdx: integer);
    procedure DataSetToComboBoxExFilm(DataSet: TDataSet; ComboBox: TComboBoxEx; PoleOpis, PoleId: string; ImgIdx: integer);
    function GetOperatorLikeOrEqual(aLike: boolean): string;

  end;

var
  DMG: TDMG;

implementation

uses
  ukatalog, usqlqryb;

{$R *.frm}

{ TDMG }

procedure TDMG.DataModuleDestroy(Sender: TObject);
var
  i: integer;
  ds: TDataSet;
begin
  for i := 0 to fLstDSDoZamkniecia.Count - 1 do
  begin
    ds := TDataSet(fLstDSDoZamkniecia.Items[i]);
    if ds.Active then
      ds.Close;
  end;

  fLstDSDoZamkniecia.Clear;
  FreeAndNil(fLstDSDoZamkniecia);

  if Assigned(fLnkOpen) then
    FreeAndNil(fLnkOpen);

  ZamknijPolaczenieZBazaDanych;

  if Assigned(fUstawieniaLst) then
  begin
    fUstawieniaLst.Clear;
    FreeAndNil(fUstawieniaLst);
  end;

end;

procedure TDMG.DataModuleCreate(Sender: TObject);
begin
  fLstDSDoZamkniecia := TObjectList.Create;
  fLnkOpen := TLinkOpen.Create;

  fLstDSDoZamkniecia.Add(tbRozszPl);
  fLstDSDoZamkniecia.Add(tbPliki);
  fLstDSDoZamkniecia.Add(tbRejPl);
  fLstDSDoZamkniecia.Add(tbKat);
  fLstDSDoZamkniecia.Add(qKatPod);
  fLstDSDoZamkniecia.Add(qCmd);
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
  Result := 0;
  try
    rqLastId.Close;
    rqLastId.Open;
    if not rqLastId.IsEmpty then
    begin
      rqLastId.First;
      Result := rqLastId.Fields[0].AsInteger;
    end;
    rqLastId.Close;
  except
    on e: Exception do
    begin
      raise Exception.Create('Błąd podczas próby pobrania ostatniego identyfikatora:' + sLineBreak + e.Message);
    end;
  end;
end;

procedure TDMG.OdswiezDataSet(aDataSet: TDataSet);
begin
  OdswiezDataSet(aDataSet, '');
end;

{Funkcja zwraca True jedynie jeśli uda się odnaleść poprzednią wartość pola i nic więcej
(wynik nie sprawdza otwarcia tabeli ani nawet czy pole zostało przekazane - jeśli nie zostało - zwróci False)}
function TDMG.OdswiezDataSet(aDataSet: TDataSet; aPole: string): boolean;
var
  wart: variant;
begin
  Result := False;

  if Assigned(aDataSet) then
  begin
    wart := null;
    if (aPole <> '') and (not aDataSet.IsEmpty) then
      wart := aDataSet.FieldByName(aPole).Value;

    try
      aDataSet.Close;
      aDataSet.Open;
    except
      on e: Exception do
      begin
        raise Exception.Create(Format('Podczas próby odświeżenia obiektu "%s" wystąpił błąd:', [aDataSet.Name]) + sLineBreak + e.Message);
      end;
    end;

    if not VarIsNull(wart) then
      Result := aDataSet.Locate(aPole, wart, []);
  end;
end;

function TDMG.OdswiezDataSet(aDataSet: TDataSet; aPole: string; wartosc: variant): boolean;
begin
  Result := False;

  if Assigned(aDataSet) then
  begin
    try
      aDataSet.Close;
      aDataSet.Open;
    except
      on e: Exception do
      begin
        raise Exception.Create(Format('Podczas próby odświeżenia obiektu "%s" wystąpił błąd:', [aDataSet.Name]) + sLineBreak + e.Message);
      end;
    end;

    if (aPole <> '') and (not VarIsNull(wartosc)) then
      Result := aDataSet.Locate(aPole, wartosc, [loCaseInsensitive]);
  end;
end;

function TDMG.OdswiezQueryZSql(aQuery: TZQuery; aSql, aPole: string): boolean;
var
  wart: variant;
begin
  Result := False;

  if Assigned(aQuery) then
  begin
    wart := null;
    if (aPole <> '') and (not aQuery.IsEmpty) then
      wart := aQuery.FieldByName(aPole).Value;

    aQuery.Close;
    aQuery.SQL.Text := aSql;
    aQuery.Open;

    if not VarIsNull(wart) then
      Result := aQuery.Locate(aPole, wart, []);
  end;
end;

function TDMG.OdswiezQueryZParam(aQuery: TZQuery; aParamName: string; aValue: variant): boolean;
begin
  Result := False;
  if Assigned(aQuery) then
  begin
    aQuery.Close;
    aQuery.ParamByName(aParamName).Value := aValue;
    aQuery.Open;
    Result := True;
  end;
end;

function TDMG.OdswiezQueryZParam(aQuery: TZReadOnlyQuery; aParamName: string; aValue: variant): boolean;
begin
  Result := False;
  if Assigned(aQuery) then
  begin
    aQuery.Close;
    aQuery.ParamByName(aParamName).Value := aValue;
    aQuery.Open;
    Result := True;
  end;
end;

function TDMG.UtworzListeKatalogow(var aLstKat: TObjectList): integer;
var
  kat: TKatalog;
begin
  Result := 0;
  if Assigned(aLstKat) then
  begin
    aLstKat.Clear;
    OdswiezDataSet(tbKat, '');
    if (tbKat.Active) and (not tbKat.IsEmpty) then
    begin
      tbKat.First;
      while not tbKat.EOF do
      begin
        kat := TKatalog.Create(tbKat.FieldByName('SCFLD').AsString);
        kat.IdKatalogu := tbKat.FieldByName('IDFLD').AsInteger;
        aLstKat.Add(kat);
        Inc(Result);

        tbKat.Next;
      end;
    end;
  end;
end;

function TDMG.UtworzListeKatalogowPodrzednych(aIdFld: integer;
  var aLstKat: TObjectList): integer;
var
  kat: TKatalog;
begin
  Result := 0;
  if Assigned(aLstKat) then
  begin
    OdswiezQueryZParam(qKatPod,'IDFLD',aIdFld);
    if (qKatPod.Active) and (not qKatPod.IsEmpty) then
    begin
      qKatPod.First;
      while not qKatPod.EOF do
      begin
        kat := TKatalog.Create(qKatPod.FieldByName('ScFld').AsString+qKatPod.FieldByName('WzgScPl').AsString);
        kat.IdKatalogu := aIdFld;
        aLstKat.Add(kat);
        Inc(Result);

        qKatPod.Next;
      end;
    end;
    qKatPod.Close;
  end;
end;

function TDMG.DodajRekord(aTabela: string; aListaPol: TStringList): longint;
var
  sql: string;
  qry: TZQuery;
begin
  Result := -1;
  if (aTabela <> '') and (Assigned(aListaPol)) and (aListaPol.Count > 0) then
  begin
    sql := PrzygotujSqlDodajRekord(aTabela, aListaPol);

    qry := TZQuery.Create(self);
    try
      qry.Connection := ZConn;
      qry.SQL.Text := sql;
      try
        qry.ExecSQL;

        Result := GetLastId;
      except
        on e: Exception do
        begin
          raise Exception.Create('Błąd podczas wykonywania edycji bazy danych o treści:' + sLineBreak + e.Message + sLineBreak + 'Zapytanie:' + sLineBreak + sql);
        end;
      end;
    finally
      FreeAndNil(qry);
    end;

  end;
end;

function TDMG.GetLstOblTypowAsStr: string;
begin
  OdswiezDataSet(tbRozszPl);
  Result := '';
  tbRozszPl.First;
  while not tbRozszPl.EOF do
  begin
    if Result <> '' then
      Result := Result + ';';
    Result := Result + '*' + tbRozszPl.FieldByName('NazwaRozszPl').AsString;

    tbRozszPl.Next;
  end;
  tbRozszPl.Close;
end;

procedure TDMG.GetListaLatIDekadFolder(aIdFld: longint; var aLstLat: TStringList);
var
  qry: TSqlQueryBuilder;
begin
  if (Assigned(aLstLat)) then
  begin
    qry := TSqlQueryBuilder.Create;
    try
      qry.AddFields('F.RokFilmu, (F.RokFilmu/10)*10 AS Dekada');
      qry.From := 'Pliki P';
      qry.AddJoin('JOIN RejestrPlikow R ON R.IdRip = P.IdRip');
      qry.AddJoin('JOIN PlikiFilmy PF ON PF.IdRip = R.IdRip');
      qry.AddJoin('JOIN Filmy F ON F.IdFilmu = PF.IdFilmu');
      qry.AddGroup('F.RokFilmu');
      qry.AddOrder('F.RokFilmu');

      if (aIdFld > 0) then
      begin
        qry.AddWhereFormat('P.IdFld = %d', [aIdFld]);
      end;

      qCmd.Close;
      qCmd.SQL.Text := qry.AsString;
      qCmd.Open;

      aLstLat.Clear;
      qCmd.First;
      while not qCmd.EOF do
      begin
        aLstLat.AddPair(qCmd.FieldByName('RokFilmu').AsString, qCmd.FieldByName('Dekada').AsString);

        qCmd.Next;
      end;
      qCmd.Close;

    finally
      FreeAndNil(qry);
    end;
  end;
end;

procedure TDMG.DataSetToComboBoxEx(DataSet: TDataSet; ComboBox: TComboBoxEx;
  PoleOpis: string; ImgIdx: integer);
var
  item: TComboExItem;
begin
  if (Assigned(ComboBox)) then
  begin
    ComboBox.Items.Clear;
    if (Assigned(DataSet)) then
    begin
      DataSet.DisableControls;
      try
        DataSet.First;
        while not DataSet.EOF do
        begin
          item := ComboBox.ItemsEx.Add;
          item.Caption := DataSet.FieldByName(PoleOpis).AsString;
          item.ImageIndex := ImgIdx;
          item.SelectedImageIndex := ImgIdx;

          DataSet.Next;
        end;
      finally
        DataSet.EnableControls;
      end;
    end;
  end;
end;

procedure TDMG.DataSetToComboBoxExId(DataSet: TDataSet; ComboBox: TComboBoxEx;
  PoleOpis, PoleId: string; ImgIdx: integer);
var
  item: TComboExItem;
  info: TItemInfo;
begin
  if (Assigned(ComboBox)) then
  begin
    ComboBox.Items.Clear;
    if (Assigned(DataSet)) then
    begin
      DataSet.DisableControls;
      try
        DataSet.First;
        while not DataSet.EOF do
        begin
          item := ComboBox.ItemsEx.Add;
          item.Caption := DataSet.FieldByName(PoleOpis).AsString;
          info := TItemInfo.Create;
          info.Id := DataSet.FieldByName(PoleId).AsInteger;
          item.Data := Pointer(info);
          item.ImageIndex := ImgIdx;
          item.SelectedImageIndex := ImgIdx;

          DataSet.Next;
        end;
      finally
        DataSet.EnableControls;
      end;
    end;
  end;
end;

procedure TDMG.DataSetToComboBoxExFilm(DataSet: TDataSet; ComboBox: TComboBoxEx; PoleOpis, PoleId: string; ImgIdx: integer);
var
  item: TComboExItem;
  fi: TFilmPlInfo;
begin
  if (Assigned(ComboBox)) then
  begin
    ComboBox.Items.Clear;
    if (Assigned(DataSet)) then
    begin
      DataSet.DisableControls;
      try
        DataSet.First;
        while not DataSet.EOF do
        begin
          item := ComboBox.ItemsEx.Add;
          item.Caption := DataSet.FieldByName(PoleOpis).AsString;
          fi := TFilmPlInfo.Create;
          fi.IdFilmu := DataSet.FieldByName(PoleId).AsInteger;
          item.Data := Pointer(fi);
          item.ImageIndex := ImgIdx;
          item.SelectedImageIndex := ImgIdx;

          DataSet.Next;
        end;
      finally
        DataSet.EnableControls;
      end;
    end;
  end;
end;

function TDMG.GetOperatorLikeOrEqual(aLike: boolean): string;
begin
  if (aLike) then
    Result := 'LIKE'
  else
    Result := '=';
end;

function TDMG.PrzygotujSqlDodajRekord(aTabela: string; aListaPol: TStringList): string;
var
  poleNazwa: string;
  poleWart: string;
  pola: string;
  wart: string;
  i: integer;
  toLiczba: boolean;
begin
  Result := '';
  pola := '';
  wart := '';

  if (aTabela <> '') and (Assigned(aListaPol)) and (aListaPol.Count > 0) then
  begin
    for i := 0 to aListaPol.Count - 1 do
    begin
      poleNazwa := aListaPol.Names[i];
      poleWart := aListaPol.ValueFromIndex[i];
      toLiczba := (poleNazwa[1] = '#');
      if (toLiczba) then
      begin
        Delete(poleNazwa, 1, 1);
      end;

      if (i > 0) then
      begin
        pola := pola + ',';
        wart := wart + ',';
      end;

      pola := pola + poleNazwa;
      if (toLiczba) then
      begin
        wart := wart + poleWart;
      end
      else
        wart := wart + '''' + poleWart + '''';
    end;

    Result := Format('INSERT INTO %s(%s) VALUES(%s)', [aTabela, pola, wart]);
  end;
end;


end.
