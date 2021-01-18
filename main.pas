unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  ActnList, Menus, ComboEx, Buttons, DBGrids, RxDBGrid, rxcurredit, rxspin,
  RxTimeEdit, RxMDI, LSControls, IDEWindowIntf, SearchEdit,
  DBCtrls, StdCtrls, ukatalog, Contnrs, ukatmgr;

type

  { TFrmMain }

  TFrmMain = class(TForm)
    acPlikKoniec: TAction;
    acFolderSkanuj: TAction;
    acFolderWeryfikuj: TAction;
    acFiltrGatunki: TAction;
    acFiltrSerie: TAction;
    acFiltrAktorzy: TAction;
    acFiltrLata: TAction;
    acFiltrOceny: TAction;
    acFiltrTagi: TAction;
    acDaneGatunki: TAction;
    acDaneSerie: TAction;
    acDaneAktorzy: TAction;
    acDaneTagi: TAction;
    acPlikWlasciwosci: TAction;
    acKatWyz: TAction;
    acKatNiz: TAction;
    acKatWszystko: TAction;
    acFoldery: TAction;
    acKatOdswiez: TAction;
    acRodzajePlikow: TAction;
    ActionList2: TActionList;
    aDaneJezyki: TAction;
    ActionList1: TActionList;
    ComboBoxEx1: TComboBoxEx;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    edWybKat: TEdit;
    GroupBox1: TGroupBox;
    ilMenuS: TImageList;
    ilMenuL: TImageList;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListView1: TListView;
    lvKat: TListView;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    N1: TMenuItem;
    nbkFiltry: TNotebook;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Aktorzy: TPage;
    DbGrid: TPage;
    ListView: TPage;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Splitter5: TSplitter;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    tsPlikOpis: TTabSheet;
    tsPlikParam: TTabSheet;
    Tagi: TPage;
    pnlFiltryTytul: TPanel;
    pnlFiltry: TPanel;
    pcFilmy: TPageControl;
    pnlLeft: TPanel;
    pnlMain: TPanel;
    RxDBGrid1: TRxDBGrid;
    RxDBGrid2: TRxDBGrid;
    SearchEdit1: TSearchEdit;
    SearchEdit2: TSearchEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    StatusBar1: TStatusBar;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    tsFilmPodstawy: TTabSheet;
    tsFilmAKA: TTabSheet;
    tsFilmAktorzy: TTabSheet;
    tsFilmyLinki: TTabSheet;
    tsFilmOpis: TTabSheet;
    tsFilmKomentarz: TTabSheet;
    tsPlikInfo: TTabSheet;
    tsPlikFilm: TTabSheet;
    tsPlikTagi: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure acDaneAktorzyExecute(Sender: TObject);
    procedure acDaneGatunkiExecute(Sender: TObject);
    procedure acDaneSerieExecute(Sender: TObject);
    procedure acDaneTagiExecute(Sender: TObject);
    procedure acFiltrGatunkiExecute(Sender: TObject);
    procedure acFiltrLataExecute(Sender: TObject);
    procedure acFiltrOcenyExecute(Sender: TObject);
    procedure acFiltrSerieExecute(Sender: TObject);
    procedure acFolderSkanujExecute(Sender: TObject);
    procedure acFolderWeryfikujExecute(Sender: TObject);
    procedure acFolderyExecute(Sender: TObject);
    procedure acKatNizExecute(Sender: TObject);
    procedure acKatOdswiezExecute(Sender: TObject);
    procedure acKatWszystkoExecute(Sender: TObject);
    procedure acKatWyzExecute(Sender: TObject);
    procedure acPlikKoniecExecute(Sender: TObject);
    procedure acRodzajePlikowExecute(Sender: TObject);
    procedure aDaneJezykiExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvKatDblClick(Sender: TObject);
  private
    fKatMgr: TKatMgr;

    function UruchomAplikacje: boolean;
    function OdczytajUstawieniaPoczatkowe(plikIni: string): TStringList;
    procedure OdswiezWidokKatalogow;
    procedure UstawWybranyKatalog;

  public

  end;

var
  FrmMain: TFrmMain;

implementation

uses
  funkcje, inifiles, dmgl, dlgslownik, dlgaktorzy, dlgkatalogi, dlgskan, dlgRozszPl;

{$R *.frm}

{ TFrmMain }

procedure TFrmMain.acPlikKoniecExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.acRodzajePlikowExecute(Sender: TObject);
var
  frm : TFrmRozszPl;
begin
  frm:= TFrmRozszPl.Create(self);
  try
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.aDaneJezykiExecute(Sender: TObject);
var
  frm: TFrmSlownik;
begin
  frm := TFrmSlownik.Create(self);
  try
    frm.TytulOkna := 'Języki';
    frm.AliasPol := 'Jzk';
    frm.Tabela := 'Jezyki';
    //frm.Generator := 'SEQ_JEZYKI';
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  if Assigned(fKatMgr) then
    FreeAndNil(fKatMgr);
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  if not UruchomAplikacje then
  begin
    MessageDlg('Nie udało się odnaleźć pliku z ustawieniami. Aplikacja nie może zostać uruchomiona',
      'Problem z uruchomieniem', mtError, [mbOK], 0);
    Close;
  end;
  OdswiezWidokKatalogow;
end;

procedure TFrmMain.lvKatDblClick(Sender: TObject);
begin
  acKatNiz.Execute;
end;

procedure TFrmMain.acFiltrGatunkiExecute(Sender: TObject);
begin
  pnlFiltryTytul.Caption := 'Gatunki';
  nbkFiltry.PageIndex := 1;
end;

procedure TFrmMain.acDaneGatunkiExecute(Sender: TObject);
var
  frm: TFrmSlownik;
begin
  frm := TFrmSlownik.Create(self);
  try
    frm.TytulOkna := 'Gatunki';
    frm.AliasPol := 'GAT';
    frm.Tabela := 'Gatunki';
    //frm.Generator := 'SEQ_GATUNKI';
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acDaneSerieExecute(Sender: TObject);
var
  frm: TFrmSlownik;
begin
  frm := TFrmSlownik.Create(self);
  try
    frm.TytulOkna := 'Serie';
    frm.AliasPol := 'Serii';
    frm.Tabela := 'Serie';
    //frm.Generator := 'SEQ_SERIE';
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acDaneTagiExecute(Sender: TObject);
var
  frm: TFrmSlownik;
begin
  frm := TFrmSlownik.Create(self);
  try
    frm.TytulOkna := 'Tagi';
    frm.AliasPol := 'Tag';
    frm.Tabela := 'Tagi';
    //frm.Generator := 'SEQ_TAGI';
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acDaneAktorzyExecute(Sender: TObject);
var
  frm: TFrmAktorzy;
begin
  frm := TFrmAktorzy.Create(self);
  try
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acFiltrLataExecute(Sender: TObject);
begin
  pnlFiltryTytul.Caption := 'Lata';
  nbkFiltry.PageIndex := 0;
end;

procedure TFrmMain.acFiltrOcenyExecute(Sender: TObject);
begin
  pnlFiltryTytul.Caption := 'Oceny';
  nbkFiltry.PageIndex := 0;
end;

procedure TFrmMain.acFiltrSerieExecute(Sender: TObject);
begin
  pnlFiltryTytul.Caption := 'Serie';
  nbkFiltry.PageIndex := 1;
end;

procedure TFrmMain.acFolderSkanujExecute(Sender: TObject);
var
  kat :TKatalog;
  frm : TFrmSkan;
begin
  kat:= fKatMgr.WybranyKatalog;
  if Assigned(kat) then
  begin
    frm:= TFrmSkan.Create(self);
    try
      frm.Katalog:= kat;
      frm.RodzajOperacji:= rosSkan;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end
  else
    MessageDlg('Brak wybranego katalogu',mtInformation,[mbOk],0);
end;

procedure TFrmMain.acFolderWeryfikujExecute(Sender: TObject);
var
  kat :TKatalog;
  frm : TFrmSkan;
begin
  kat:= fKatMgr.WybranyKatalog;
  if Assigned(kat) then
  begin
    frm:= TFrmSkan.Create(self);
    try
      frm.Katalog:= kat;
      frm.RodzajOperacji:= rosWeryfikacja;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end
  else
    MessageDlg('Brak wybranego katalogu',mtInformation,[mbOk],0);
end;

procedure TFrmMain.acFolderyExecute(Sender: TObject);
var
  frm: TFrmKatalogi;
begin
  frm := TFrmKatalogi.Create(self);
  try
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acKatNizExecute(Sender: TObject);
var
  item: TListItem;
begin
  if (lvKat.Items.Count > 0) then
  begin
    item := lvKat.ItemFocused;
    if Assigned(item) then
    begin
      if fKatMgr.PrzejdzNizej(item.Caption) then
        OdswiezWidokKatalogow;
    end;
  end;
end;

procedure TFrmMain.acKatOdswiezExecute(Sender: TObject);
begin
  OdswiezWidokKatalogow;
end;

procedure TFrmMain.acKatWszystkoExecute(Sender: TObject);
begin
  if fKatMgr.PrzejdzDoPoczatku then
    OdswiezWidokKatalogow;
end;

procedure TFrmMain.acKatWyzExecute(Sender: TObject);
begin
  if fKatMgr.PrzejdzWyzej then
    OdswiezWidokKatalogow;
end;

function TFrmMain.UruchomAplikacje: boolean;
var
  plikUst: string;
  lstUst: TStringList;
begin
  Result := False;
  plikUst := GetAppDir() + 'ustawienia.ini';
  // próba odczytu pliku ustawien z katalogu aplikacji
  if FileExists(plikUst) then
  begin
    lstUst := OdczytajUstawieniaPoczatkowe(plikUst);
    Result := True;
  end
  else
  begin
    plikUst := GetConfigDir() + 'ustawienia.ini';
    // próba odczytu pliku ustawien z katalogu użytkownika
    if FileExists(plikUst) then
    begin
      lstUst := OdczytajUstawieniaPoczatkowe(plikUst);
      Result := True;
    end
    else
    begin
      // jeśli brak pliku ustawień - ustawienia domyślne
      lstUst := TStringList.Create;
      lstUst.Add(Format('database=%s%s', [GetAppDir(), 'mfn.s3db']));
      lstUst.Add(Format('library=%s%s', [GetAppDir(), 'sqlite3.dll']));
      //lstUst.Add(Format('database=%s%s', [GetAppDir(), 'mfn.fdb']));
      //lstUst.Add(Format('library=%s%s', [GetAppDir(), 'fbclient.dll']));
      //lstUst.Add('user=sysdba');
      //lstUst.Add('password=masterkey');
      Result := True;
    end;
  end;

  DMG.OtworzPolaczenieZBazaDanych(lstUst, True);

  if (Assigned(lstUst)) then
  begin
    lstUst.Clear;
    FreeAndNil(lstUst);
  end;

  fKatMgr := TKatMgr.Create;
end;

function TFrmMain.OdczytajUstawieniaPoczatkowe(plikIni: string): TStringList;
var
  ini: TIniFile;
  lstUstawien: TStringList;
begin
  lstUstawien := TStringList.Create;
  ini := TiniFile.Create(plikIni);
  try
    ini.ReadSection('db', lstUstawien);
  finally
    FreeAndNil(ini);
  end;

  Result := lstUstawien;
end;

procedure TFrmMain.OdswiezWidokKatalogow;
var
  item: TListItem;
  i: integer;
  kat: TKatalog;
begin
  acKatWyz.Enabled := fKatMgr.MoznaWyzej;
  edWybKat.Text := fKatMgr.WybranyKatalogOpis;
  lvKat.BeginUpdate;
  try
    lvKat.Items.Clear;
    fKatMgr.OdswiezListeKatalogow;
    for i := 0 to fKatMgr.ListaKatalogow.Count - 1 do
    begin
      kat := fKatMgr.ListaKatalogow.Items[i] as TKatalog;
      item := lvKat.Items.Add;
      item.Caption := kat.ToString;
      item.SubItems.Add(IntToStr(i));
      //item.SubItems.Add(IntToStr(kat.IdKatalogu));
      item.ImageIndex := 23;
    end;
  finally
    lvKat.EndUpdate;
  end;
end;

procedure TFrmMain.UstawWybranyKatalog;
var
  item: TListItem;
  i: integer;
  kat: TKatalog;
begin
  item := lvKat.ItemFocused;
  if Assigned(item) then
  begin
    ShowMessage(item.Caption);
    i := StrToInt(item.SubItems[0]);

  end;
end;

end.
