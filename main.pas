unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  ActnList, Menus, ComboEx, Buttons, DBGrids, RxDBGrid, rxcurredit, rxspin,
  RxTimeEdit, RxMDI, LSControls,
  IDEWindowIntf, SearchEdit, DBCtrls, StdCtrls, ukatalog, Contnrs, DB, ukatmgr,
  Grids, DBActns, ShellAPI, Clipbrd, LCLIntf, LCLType, StrUtils;

type
  TWybranyFiltr = (twfOcena, twfRok, twfAktor, twfTag, twfGatunek, twfSeria);

  { TFrmMain }

  TFrmMain = class(TForm)
    acPlikKoniec: TAction;
    acFolderSkanuj: TAction;
    acFolderWeryfikuj: TAction;
    acFiltrGatunki: TAction;
    acFiltrSerie: TAction;
    acFiltrAktorzy: TAction;
    acFiltrLata:  TAction;
    acFiltrOceny: TAction;
    acFiltrTagi:  TAction;
    acDaneGatunki: TAction;
    acDaneSerie:  TAction;
    acDaneAktorzy: TAction;
    acDaneTagi:   TAction;
    acPlikWlasciwosci: TAction;
    acKatWyz:     TAction;
    acKatNiz:     TAction;
    acKatWszystko: TAction;
    acFoldery:    TAction;
    acKatOdswiez: TAction;
    acRodzajePlikow: TAction;
    acFolderCzysc: TAction;
    acFolderUzupelnij: TAction;
    acFilmUruchom: TAction;
    acFilmyEdycja: TAction;
    acDodajRekInfo: TAction;
    acFilmDodaj:  TAction;
    acFilmLista:  TAction;
    acDaneKraje:  TAction;
    acDaneRodzaje: TAction;
    acFilmRok:    TAction;
    acTagDodaj:   TAction;
    acTagUsun:    TAction;
    acLinkDodaj: TAction;
    acLinkUsun: TAction;
    acLinkOtworz: TAction;
    acOklSchowek: TAction;
    acOklWybierz: TAction;
    acOklUsun: TAction;
    acOklPowieksz: TAction;
    acAktDodaj: TAction;
    acAktUsun: TAction;
    acAktDodajTxt: TAction;
    acAktEdycja: TAction;
    acInnyTytDodaj: TAction;
    acInnyTytUsun: TAction;
    acInnyTytDodWiele: TAction;
    acWidokOdswiez: TAction;
    ActionList2:  TActionList;
    ActionList3:  TActionList;
    aDaneJezyki:  TAction;
    ActionList1:  TActionList;
    Aktorzy:      TPage;
    BitBtn1:      TBitBtn;
    btnDodajRekInfo: TBitBtn;
    cbxTypPl:     TComboBoxEx;
    chbxFiltrAktorWszystko: TCheckBox;
    DataSetCancel1: TDataSetCancel;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DBEdit1:      TDBEdit;
    DBEdit10:     TDBEdit;
    DBEdit11:     TDBEdit;
    DBEdit12:     TDBEdit;
    DBEdit13:     TDBEdit;
    DBEdit14:     TDBEdit;
    DBEdit15:     TDBEdit;
    DBEdit16:     TDBEdit;
    DBEdit2:      TDBEdit;
    DBEdit3:      TDBEdit;
    DBEdit4:      TDBEdit;
    DBEdit5:      TDBEdit;
    DBEdit6:      TDBEdit;
    DBEdit7:      TDBEdit;
    DBEdit8:      TDBEdit;
    DBEdit9:      TDBEdit;
    DbGrid:       TPage;
    DBGrid1:      TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1:      TDBMemo;
    DBMemo2:      TDBMemo;
    DBMemo3:      TDBMemo;
    DBMemo4:      TDBMemo;
    DBMemo5:      TDBMemo;
    DBMemo6: TDBMemo;
    DBText4:      TDBText;
    gbxOcena:     TGroupBox;
    GroupBox1:    TGroupBox;
    GroupBox2: TGroupBox;
    Image3:       TImage;
    Image4:       TImage;
    Image5:       TImage;
    ImgBrakOkl: TImage;
    ImgBrakZdjAkt: TImage;
    ImgOkladka: TImage;
    imgOcena:     TImage;
    ImgZdjAkt: TImage;
    Label13:      TLabel;
    Label14:      TLabel;
    Label15:      TLabel;
    Label22:      TLabel;
    Label24:      TLabel;
    Label25:      TLabel;
    Label26:      TLabel;
    Label27:      TLabel;
    Label28:      TLabel;
    lbFilmIlosc:  TLabel;
    lcbDubbing:   TDBLookupComboBox;
    lcbJezyk:     TDBLookupComboBox;
    lcbNapisy:    TDBLookupComboBox;
    lcbRodzaj:    TDBLookupComboBox;
    DBText3:      TDBText;
    ilOceny:      TImageList;
    Label23:      TLabel;
    DBNavigator1: TDBNavigator;
    DBText1:      TDBText;
    DBText2:      TDBText;
    DBText5:      TDBText;
    dsMain:       TDataSource;
    edWybKat:     TEdit;
    Label7:       TLabel;
    ListView2:    TListView;
    MenuItem22:   TMenuItem;
    MenuItem23:   TMenuItem;
    MenuItem24:   TMenuItem;
    MenuItem25:   TMenuItem;
    MenuItem26:   TMenuItem;
    MenuItem27:   TMenuItem;
    MenuItem28:   TMenuItem;
    ilMenuS:      TImageList;
    ilMenuL:      TImageList;
    Image1:       TImage;
    Image2:       TImage;
    ilFiltry:     TImageList;
    Label1:       TLabel;
    Label10:      TLabel;
    Label11:      TLabel;
    Label12:      TLabel;
    Label16:      TLabel;
    Label17:      TLabel;
    Label18:      TLabel;
    Label19:      TLabel;
    Label2:       TLabel;
    Label20:      TLabel;
    Label21:      TLabel;
    Label3:       TLabel;
    Label4:       TLabel;
    Label5:       TLabel;
    Label6:       TLabel;
    Label8:       TLabel;
    Label9:       TLabel;
    ListView:     TPage;
    ListView1:    TListView;
    lvKat:        TListView;
    MainMenu1:    TMainMenu;
    MenuItem1:    TMenuItem;
    MenuItem10:   TMenuItem;
    MenuItem11:   TMenuItem;
    MenuItem12:   TMenuItem;
    MenuItem13:   TMenuItem;
    MenuItem14:   TMenuItem;
    MenuItem15:   TMenuItem;
    MenuItem16:   TMenuItem;
    MenuItem17:   TMenuItem;
    MenuItem18:   TMenuItem;
    MenuItem19:   TMenuItem;
    MenuItem2:    TMenuItem;
    MenuItem20:   TMenuItem;
    MenuItem21:   TMenuItem;
    MenuItem29:   TMenuItem;
    MenuItem3:    TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem4:    TMenuItem;
    MenuItem5:    TMenuItem;
    MenuItem6:    TMenuItem;
    MenuItem7:    TMenuItem;
    MenuItem8:    TMenuItem;
    MenuItem9:    TMenuItem;
    N1:           TMenuItem;
    nbkFiltry:    TNotebook;
    OpenDlg: TOpenDialog;
    PageControl1: TPageControl;
    pnlAktZdj: TPanel;
    pnlAktTresc: TPanel;
    Panel3:       TPanel;
    Panel4:       TPanel;
    Panel5:       TPanel;
    Panel6:       TPanel;
    Panel7:       TPanel;
    Panel8:       TPanel;
    Panel9:       TPanel;
    pcDanePl:     TPageControl;
    pcFilmy:      TPageControl;
    pnlFilm:      TPanel;
    pcLeft:       TPageControl;
    Panel1:       TPanel;
    Panel2:       TPanel;
    pnlFiltrAkt: TPanel;
    pnlFiltry:    TPanel;
    pnlFiltryTytul: TPanel;
    pnlLeft:      TPanel;
    pmOceny:      TPopupMenu;
    pnOpisInfo:   TPanel;
    pmTagi: TPopupMenu;
    RxDBGrid1:    TRxDBGrid;
    gbgFiltrAkt:    TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    dbgAkt: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    RxSpinButton1: TRxSpinButton;
    sbnDubbingClear: TSpeedButton;
    sbnFilm:      TSpeedButton;
    sbnFilmOdswiez: TSpeedButton;
    sbnJezykClear: TSpeedButton;
    sbnNapisyClear: TSpeedButton;
    sedFiltrPl:   TSearchEdit;
    sedFiltrF:    TSearchEdit;
    sbnFiltrPlClear: TSpeedButton;
    sbnFiltrFiClear: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    sbnInfoDodaj: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    sbnFiltrAktorOdsw: TSpeedButton;
    Splitter3:    TSplitter;
    Splitter4:    TSplitter;
    Splitter5:    TSplitter;
    Splitter6: TSplitter;
    ToolBar3:     TToolBar;
    ToolBar4:     TToolBar;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    ToolBar8: TToolBar;
    ToolBar9: TToolBar;
    ToolButton10: TToolButton;
    ToolButton2:  TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton39: TToolButton;
    ToolButton4:  TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton5:  TToolButton;
    ToolButton7:  TToolButton;
    ToolButton9:  TToolButton;
    tsFilmAKA:    TTabSheet;
    tsFilmAktorzy: TTabSheet;
    tsFilmGatunki: TTabSheet;
    tsFilmKomentarz: TTabSheet;
    tsFilmOpis:   TTabSheet;
    tsFilmPodstawy: TTabSheet;
    tsFilmyLinki: TTabSheet;
    tsPlikTagi:   TTabSheet;
    ToolButton3:  TToolButton;
    ToolButton6:  TToolButton;
    tmrMain:      TTimer;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    Lata:         TPage;
    ToolButton22: TToolButton;
    tsOpisOgolny: TTabSheet;
    tsOpisPlik:   TTabSheet;
    tvFiltryLata: TTreeView;
    tsFiltry:     TTabSheet;
    tsBaza:       TTabSheet;
    Tagi:         TPage;
    ToolBar2:     TToolBar;
    ToolBar5:     TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    tbnOceny:     TToolButton;
    ToolButton20: TToolButton;
    tbnLata:      TToolButton;
    tbnAktorzy:   TToolButton;
    tbnTagi:      TToolButton;
    tbnGatunki:   TToolButton;
    tbnSerie:     TToolButton;
    ToolButton8:  TToolButton;
    tsPlikOpis:   TTabSheet;
    tsPlikParam:  TTabSheet;
    pnlMain:      TPanel;
    dbg:          TRxDBGrid;
    Splitter1:    TSplitter;
    Splitter2:    TSplitter;
    StatusBar1:   TStatusBar;
    tsPlikInfo:   TTabSheet;
    tsPlikFilm:   TTabSheet;
    ToolBar1:     TToolBar;
    ToolButton1:  TToolButton;
    procedure acAktDodajExecute(Sender: TObject);
    procedure acAktUsunExecute(Sender: TObject);
    procedure acDaneAktorzyExecute(Sender: TObject);
    procedure acDaneGatunkiExecute(Sender: TObject);
    procedure acDaneRodzajeExecute(Sender: TObject);
    procedure acDaneSerieExecute(Sender: TObject);
    procedure acDaneTagiExecute(Sender: TObject);
    procedure acDodajRekInfoExecute(Sender: TObject);
    procedure acFilmDodajExecute(Sender: TObject);
    procedure acFilmListaExecute(Sender: TObject);
    procedure acFilmRokExecute(Sender: TObject);
    procedure acFilmUruchomExecute(Sender: TObject);
    procedure acFiltrAktorzyExecute(Sender: TObject);
    procedure acFiltrGatunkiExecute(Sender: TObject);
    procedure acFiltrLataExecute(Sender: TObject);
    procedure acFiltrOcenyExecute(Sender: TObject);
    procedure acFiltrSerieExecute(Sender: TObject);
    procedure acFolderSkanujExecute(Sender: TObject);
    procedure acFolderWeryfikujExecute(Sender: TObject);
    procedure acFolderyExecute(Sender: TObject);
    procedure acInnyTytDodajExecute(Sender: TObject);
    procedure acInnyTytDodWieleExecute(Sender: TObject);
    procedure acInnyTytUsunExecute(Sender: TObject);
    procedure acKatNizExecute(Sender: TObject);
    procedure acKatOdswiezExecute(Sender: TObject);
    procedure acKatWszystkoExecute(Sender: TObject);
    procedure acKatWyzExecute(Sender: TObject);
    procedure acDaneKrajeExecute(Sender: TObject);
    procedure acLinkDodajExecute(Sender: TObject);
    procedure acLinkOtworzExecute(Sender: TObject);
    procedure acLinkUsunExecute(Sender: TObject);
    procedure acOklPowiekszExecute(Sender: TObject);
    procedure acOklSchowekExecute(Sender: TObject);
    procedure acOklUsunExecute(Sender: TObject);
    procedure acOklWybierzExecute(Sender: TObject);
    procedure acPlikKoniecExecute(Sender: TObject);
    procedure acPlikWlasciwosciExecute(Sender: TObject);
    procedure acRodzajePlikowExecute(Sender: TObject);
    procedure acWidokOdswiezExecute(Sender: TObject);
    procedure aDaneJezykiExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDodajRekInfoClick(Sender: TObject);
    procedure cbxTypPlChange(Sender: TObject);
    procedure dbgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
    procedure dsMainDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
    procedure lvKatDblClick(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure pcDanePlChange(Sender: TObject);
    procedure sbnDubbingClearClick(Sender: TObject);
    procedure sbnFilmClick(Sender: TObject);
    procedure sbnFiltrAktorOdswClick(Sender: TObject);
    procedure sbnFiltrFiClearClick(Sender: TObject);
    procedure sbnFiltrPlClearClick(Sender: TObject);
    procedure sbnJezykClearClick(Sender: TObject);
    procedure sbnNapisyClearClick(Sender: TObject);
    procedure sedFiltrPlExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure tmrMainTimer(Sender: TObject);
  private
    fKatMgr:        TKatMgr;
    fWybFiltr:      TWybranyFiltr;
    fLstLat:        TStringList;
    fIdRipWybPl:    longint;
    fAktualneInfo:  boolean;
    fAktualnyFilm:  boolean;
    fAktualneTagi:  boolean;
    fAktualneOpisy: boolean;
    fWczytanaOcena: byte;

    function UruchomAplikacje: boolean;
    function OdczytajUstawieniaPoczatkowe(plikIni: string): TStringList;
    function OdczytajUstawienia: TStringList;
    procedure OdswiezWidokKatalogow;
    procedure UstawWybranyKatalog;
    procedure OdswiezDane;
    function PrepareQuery: string;
    procedure PokazFiltrOceny;
    procedure PokazFiltrLata;
    procedure PokazDanePliku;
    procedure PokazDaneWybranejZakladki;
    procedure PokazDaneZaklInfo(Wymus: boolean);
    procedure PokazDaneZaklFilm;
    procedure PokazDaneZaklTag;
    procedure PokazDaneZaklOpis(Wymus: boolean);
    procedure PokazDaneWybranegoFilmu;
    function UstawOcene(Ocena: byte): boolean;
    procedure UstawOceneGraf(AOcena: byte);
    procedure OdswiezFiltrAktorow;
  public

  end;

var
  FrmMain: TFrmMain;

implementation

uses
  funkcje, inifiles, dmgl, dlgslownik, dlgaktorzy, dlgkatalogi, dlgskan, dlgRozszPl, dlgwlasc, usqlqryb,
  dmmain, dlgflmdod, dlgfilmlista, dlginfotxt, dlgrok, dlgczasfilm, dlgimgview, dlgpozsl, ulnkopen, dmakt,
  dlgpzlntxt;

{$R *.frm}

{ TFrmMain }

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  fLstLat := TStringList.Create;
  fLstLat.CaseSensitive := False;
  fLstLat.Duplicates := TDuplicates.dupIgnore;
  fIdRipWybPl := 0;
  fAktualneInfo := False;
  fAktualnyFilm := False;
  fAktualneTagi := False;
  fAktualneOpisy := False;
  fWczytanaOcena := 0;
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  if Assigned(fKatMgr) then
    FreeAndNil(fKatMgr);
  if Assigned(fLstLat) then
  begin
    fLstLat.Clear;
    FreeAndNil(fLstLat);
  end;
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
  if not UruchomAplikacje then
  begin
    MessageDlg('Nie udało się odnaleźć pliku z ustawieniami. Aplikacja nie może zostać uruchomiona',
      'Problem z uruchomieniem', mtError, [mbOK], 0);
    Close;
  end;
  acFiltrOceny.Execute;
  DMG.GetListaLatIDekadFolder(0, fLstLat);
  PokazFiltrLata;
  tbnOceny.Down := True;
  DMM.UstawStanObjListyAktDataSet(True);
  OdswiezWidokKatalogow;
  OdswiezFiltrAktorow;
end;

procedure TFrmMain.acPlikKoniecExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMain.acPlikWlasciwosciExecute(Sender: TObject);
var
  frm: TFrmWlasc;
begin
  frm := TFrmWlasc.Create(self);
  try
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acRodzajePlikowExecute(Sender: TObject);
var
  frm: TFrmRozszPl;
begin
  frm := TFrmRozszPl.Create(self);
  try
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acWidokOdswiezExecute(Sender: TObject);
var
  idWybPl: longint;
begin
  idWybPl := 0;
  if (DMM.qMain.Active) and (not DMM.qMain.IsEmpty) then
    idWybPl := DMM.qMain.FieldByName('IdPl').AsInteger;
  DMM.qMain.Close;
  DMM.qMain.Open;
  if idWybPl > 0 then
  begin
    if not DMM.qMain.Locate('IdPl', idWybPl, []) then
      MessageDlg('Problem', 'Nie udało się odnaleźć wybranego rekordu po podświeżeniu', mtError, [mbOK], 0);
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

procedure TFrmMain.BitBtn1Click(Sender: TObject);
var
  frm: TFrmInfoTxt;
begin
  frm := TFrmInfoTxt.Create(self);
  try
    frm.TytulOkna := 'Szczegółowe parametry filmu';
    frm.Info := DMM.qMainInfo.FieldByName('DaneIpf').AsString;
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.btnDodajRekInfoClick(Sender: TObject);
begin
  acDodajRekInfo.Execute;
  PokazDaneZaklOpis(True);
end;

procedure TFrmMain.cbxTypPlChange(Sender: TObject);
begin
  OdswiezDane;
end;

procedure TFrmMain.dbgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
var
  bmp: TBitmap;
begin
  if (Column.FieldName = 'ImgIdxRozszPl') then
  begin
    if (DMM.qMain.FieldByName('ImgIdxRozszPl').AsInteger >= 0) then
    begin
      bmp := TBitmap.Create;
      try
        DMG.ilRozszPl.GetBitmap(DMM.qMain.FieldByName('ImgIdxRozszPl').AsInteger, bmp);
        dbg.Canvas.Draw(Rect.Left + 4, Rect.Top + 2, bmp);
      finally
        FreeAndNil(bmp);
      end;
    end;
  end
  else
    dbg.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmMain.dsMainDataChange(Sender: TObject; Field: TField);
begin
  if (DMM.qMainInfo.Active) and (DMM.qMainInfo.State in [dsInsert, dsEdit]) then
    DMM.qMainInfo.Post;
  if (DMM.qMainFilm.Active) and (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
    DMM.qMainFilm.Post;
  if (DMM.qMainPlik.Active) and (DMM.qMainPlik.State in [dsInsert, dsEdit]) then
    DMM.qMainPlik.Post;

  DMM.qMainAkt.Close;
  DMM.qMainLinki.Close;
  DMM.qMainAkaF.Close;

  tmrMain.Enabled := True;
end;

procedure TFrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DMM.UstawStanObjListyAktDataSet(False);
end;

procedure TFrmMain.ListView1SelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
begin
  if Selected then
    OdswiezDane;
end;

procedure TFrmMain.lvKatDblClick(Sender: TObject);
begin
  acKatNiz.Execute;
end;

procedure TFrmMain.MenuItem23Click(Sender: TObject);
begin
  UstawOcene((Sender as TMenuItem).Tag);
end;

procedure TFrmMain.pcDanePlChange(Sender: TObject);
begin
  PokazDaneWybranejZakladki;
end;

procedure TFrmMain.sbnDubbingClearClick(Sender: TObject);
begin
  if (not DMM.qMainInfo.IsEmpty) then
  begin
    if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      DMM.qMainFilm.Edit;
    DMM.qMainFilm.FieldByName('DubingFilm').Clear;
    DMM.qMainFilm.Post;
  end;
end;

procedure TFrmMain.sbnFilmClick(Sender: TObject);
begin
  if (DMM.qMainFilmPl.IsEmpty) then
    acFilmDodaj.Execute
  else
    acFilmLista.Execute;
end;

procedure TFrmMain.sbnFiltrAktorOdswClick(Sender: TObject);
begin
  OdswiezFiltrAktorow;
end;

procedure TFrmMain.sbnFiltrFiClearClick(Sender: TObject);
begin
  sedFiltrF.Clear;
  OdswiezDane;
end;

procedure TFrmMain.sbnFiltrPlClearClick(Sender: TObject);
begin
  sedFiltrPl.Clear;
  OdswiezDane;
end;

procedure TFrmMain.sbnJezykClearClick(Sender: TObject);
begin
  if (not DMM.qMainFilm.IsEmpty) then
  begin
    if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      DMM.qMainFilm.Edit;
    DMM.qMainFilm.FieldByName('IdJzk').Clear;
    DMM.qMainFilm.Post;
  end;
end;

procedure TFrmMain.sbnNapisyClearClick(Sender: TObject);
begin
  if (not DMM.qMainFilm.IsEmpty) then
  begin
    if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      DMM.qMainFilm.Edit;
    DMM.qMainFilm.FieldByName('NapisyFilm').Clear;
    DMM.qMainFilm.Post;
  end;
end;

procedure TFrmMain.sedFiltrPlExecute(Sender: TObject);
begin
  OdswiezDane;
end;

procedure TFrmMain.SpeedButton1Click(Sender: TObject);
begin
  if (not DMM.qMainFilm.IsEmpty) then
  begin
    if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      DMM.qMainFilm.Edit;
    DMM.qMainFilm.FieldByName('IdKraju').Clear;
    DMM.qMainFilm.Post;
  end;
end;

procedure TFrmMain.SpeedButton2Click(Sender: TObject);
begin
  if (not DMM.qMainFilm.IsEmpty) then
  begin
    if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      DMM.qMainFilm.Edit;
    DMM.qMainFilm.FieldByName('IdSerii').Clear;
    DMM.qMainFilm.Post;
  end;
end;

procedure TFrmMain.SpeedButton3Click(Sender: TObject);
var
  pt: TPoint;
begin
  pt := Mouse.CursorPos;
  pmOceny.PopUp(pt.x, pt.y);
end;

procedure TFrmMain.SpeedButton5Click(Sender: TObject);
var
  frm : TFrmCzasFilm;
begin
  if (not DMM.qMainFilm.IsEmpty) then
  begin
  frm:= TFrmCzasFilm.Create(self);
  try
    if DMM.qMainFilm.FieldByName('DlugoscFilmu').IsNull then
      frm.Brak:= true
    else
      frm.Czas:= DMM.qMainFilm.FieldByName('DlugoscFilmu').AsInteger;
    if (frm.ShowModal = mrOk) then
    begin
      if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
        DMM.qMainFilm.Edit;
      if (frm.Brak) then
        DMM.qMainFilm.FieldByName('DlugoscFilmu').Clear
      else
      DMM.qMainFilm.FieldByName('DlugoscFilmu').AsInteger:= frm.Czas;
    end;
  finally
    FreeAndNil(frm);
  end;
  end;
end;

procedure TFrmMain.SpeedButton7Click(Sender: TObject);
begin
  if (not DMM.qMainInfo.IsEmpty) then
  begin
    if not (DMM.qMainInfo.State in [dsInsert, dsEdit]) then
      DMM.qMainInfo.Edit;
    DMM.qMainInfo.FieldByName('IdRodzaju').Clear;
    DMM.qMainInfo.Post;
  end;
end;

procedure TFrmMain.tmrMainTimer(Sender: TObject);
begin
  PokazDanePliku;
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

procedure TFrmMain.acDaneRodzajeExecute(Sender: TObject);
var
  frm: TFrmSlownik;
begin
  frm := TFrmSlownik.Create(self);
  try
    frm.TytulOkna := 'Rodzaje zawartości pliku';
    frm.AliasPol := 'Rodzaju';
    frm.Tabela := 'Rodzaje';
    frm.ShowModal;
    if (frm.SaZmiany) then
    begin
      DMG.OdswiezDataSet(DMM.qRodzaje);
    end;
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

procedure TFrmMain.acDodajRekInfoExecute(Sender: TObject);
var
  i: longint;
begin
  if (fIdRipWybPl > 0) then
  begin
    if (DMM.qMainInfo.IsEmpty) then
    begin
      i := DMM.DodajRekordInfo(fIdRipWybPl);

      DMM.qMainInfo.Close;
      DMM.qMainInfo.Open;
      ShowMessage(IntToStr(i));
    end
    else
      ShowMessage('Rekord już jest');
  end
  else
    ShowMessage('Brak powiązania!');
end;

procedure TFrmMain.acFilmDodajExecute(Sender: TObject);
var
  frm: TFrmFilmDodaj;
  idFilmu: longint;
begin
  if not DMM.qMain.IsEmpty then
  begin
    frm := TFrmFilmDodaj.Create(self);
    try
      frm.Plik := DMM.qMain.FieldByName('NazwaPl').AsString;
      if frm.ShowModal = mrOk then
      begin
        if DMM.CzyTytulFilmuIstniejeDlaRejPl(frm.TytulFilmu, fIdRipWybPl, 0) then
        begin
          MessageDlg('Informacja', 'Film o takim tytul już jest dla tego pliku', mtInformation, [mbOK], 0);
        end
        else
        begin
          idFilmu := DMM.DodajFilm(fIdRipWybPl, frm.TytulFilmu, frm.RokFilmu);
          PokazDaneZaklFilm;
        end;
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acFilmListaExecute(Sender: TObject);
var
  frm: TFrmFilmLista;
begin
  frm := TFrmFilmLista.Create(self);
  try
    frm.PlikSc := DMM.qMain.FieldByName('ScPl').AsString;
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acFilmRokExecute(Sender: TObject);
var
  frm: TFrmRok;
begin
  if not DMM.qMainFilm.IsEmpty then
  begin
    frm := TFrmRok.Create(self);
    try
      frm.Rok := DMM.qMainFilm.FieldByName('RokFilmu').AsInteger;
      if (frm.ShowModal = mrOk) then
      begin
        if (not (DMM.qMainFilm.State in [dsInsert, dsEdit])) then
          DMM.qMainFilm.Edit;
        if frm.Rok > 0 then
          DMM.qMainFilm.FieldByName('RokFilmu').AsInteger := frm.Rok
        else
          DMM.qMainFilm.FieldByName('RokFilmu').Clear;
      end;
    finally
      FreeAndNil(frm)
    end;
  end;
end;

procedure TFrmMain.acFilmUruchomExecute(Sender: TObject);
var
  s: string;
  idpl: longint;
begin
  if ((DMM.qMain.Active) and (not DMM.qMain.IsEmpty)) then
  begin
    if (DMM.qMain.FieldByName('StatusPl').AsString <> 'U') then
    begin
      s := DMM.qMain.FieldByName('ScPl').AsString;
      idpl := DMM.qMain.FieldByName('IdPl').AsInteger;
      if (FileExists(s)) then
      begin
        ShellExecute(0, PChar('open'), PChar(s),
          PChar(''), PChar(''), 1);
        {DMM.DodajOdtworzenieFilmu(DMM.qMain.FieldByName('IdRip').AsInteger);
        DMM.qMain.Close;
        DMM.qMain.Open;
        if not DMM.qMain.Locate('IdPl', idpl, []) then
          MessageDlg('Błąd', 'Nie udało się wyszukać pliku po zwiększeniu licznika odtworzeń', mtError, [mbOK], 0);}
        if (DMM.qMainInfo.IsEmpty) then
        begin
          if (fIdRipWybPl > 0) then
          begin
            DMM.qMainInfo.Append;
            DMM.qMainInfo.FieldByName('IdRip').AsInteger := fIdRipWybPl;
            DMM.qMainInfo.FieldByName('IloscUruchomienIpf').AsInteger := 1;
            DMM.qMainInfo.Post;
            if (pcDanePl.ActivePage = tsPlikParam) then
            begin
              PokazDaneZaklInfo(True);
            end
            else if (pcDanePl.ActivePage = tsPlikOpis) then
            begin
              PokazDaneZaklOpis(True);
            end;
          end
          else
            MessageDlg('Problem', 'Nie udało się dodać rekordu do InfoPlikiFilmy brak wybranego IDRIP', mtError, [mbOK], 0);
        end
        else
        begin
          if (not (DMM.qMainInfo.State in [dsInsert, dsEdit])) then
            DMM.qMainInfo.Edit;
          DMM.qMainInfo.FieldByName('IloscUruchomienIpf').AsInteger := DMM.qMainInfo.FieldByName('IloscUruchomienIpf').AsInteger + 1;
        end;
      end
      else
      begin
        DMM.UstawStatusPliku(DMM.qMain.FieldByName('IdPl').AsInteger, STATUS_USUNIETY);
        ShowMessage('Plik nie istnieje: ' + s);
        DMM.qMain.Close;
        DMM.qMain.Open;
        if not DMM.qMain.Locate('IdPl', idpl, []) then
          MessageDlg('Błąd', 'Nie udało się wyszukać pliku po zmianie statusu na usunięty', mtError, [mbOK], 0);
      end;
    end
    else
      ShowMessage('Plik ma status - usunięty');
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

procedure TFrmMain.acAktDodajExecute(Sender: TObject);
var
  frm: TFrmAktorzy;
  idAkt : longint;
  idFilmu : longint;
begin
  frm := TFrmAktorzy.Create(self);
  try
    frm.TrybOtwarcia:= tooWybor;
    if frm.ShowModal = mrOk then
    begin
      idAkt:= frm.WybraneIdAktora;
      if idAkt > 0 then
      begin
        idFilmu:= DMM.qMainAkt.FieldByName('IdFilmu').AsInteger;
        if DMA.DodajAktoraDoFilmu(IdAkt, IdFilmu) then
          DMG.OdswiezDataSet(DMM.qMainAkt, 'IdAkt');
      end
      else
        ShowMessage('Nie wybrano aktora');
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acAktUsunExecute(Sender: TObject);
var
  nazwa : string;
  idAkt : longint;
  idFilmu : longint;
begin
  if ((DMM.qMainAkt.Active) and (not DMM.qMainAkt.IsEmpty)) then
  begin
    nazwa:= DMM.qMainAkt.FieldByName('NazwaAkt').AsString;
    if MessageDlg('Potwierdzenie usunięcia aktora',Format('Czy napweno usunąć "%s" z filmu?', [nazwa]),mtConfirmation,[mbYes, mbCancel],0) = mrYes then
    begin
      idAkt:= DMM.qMainAkt.FieldByName('IdAkt').AsInteger;
      idFilmu:= DMM.qMainAkt.FieldByName('IdFilmu').AsInteger;
      DMA.UsunAktoraZFilmu(idAkt, idFilmu);
      DMG.OdswiezDataSet(DMM.qMainAkt);
    end;
  end;
end;

procedure TFrmMain.acFiltrLataExecute(Sender: TObject);
begin
  fWybFiltr := twfRok;
  pnlFiltryTytul.Caption := 'Lata';
  nbkFiltry.PageIndex := 2;
end;

procedure TFrmMain.acFiltrOcenyExecute(Sender: TObject);
begin
  fWybFiltr := twfOcena;
  pnlFiltryTytul.Caption := 'Oceny';
  nbkFiltry.PageIndex := 0;
  PokazFiltrOceny;
end;

procedure TFrmMain.acFiltrSerieExecute(Sender: TObject);
begin
  fWybFiltr := twfSeria;
  pnlFiltryTytul.Caption := 'Serie';
  nbkFiltry.PageIndex := 1;
end;

procedure TFrmMain.acFiltrAktorzyExecute(Sender: TObject);
begin
  fWybFiltr := twfAktor;
  pnlFiltryTytul.Caption := 'Aktorzy';
  nbkFiltry.PageIndex := 4;
end;


procedure TFrmMain.acFolderSkanujExecute(Sender: TObject);
var
  kat: TKatalog;
  frm: TFrmSkan;
begin
  kat := fKatMgr.WybranyKatalog;
  if Assigned(kat) then
  begin
    frm := TFrmSkan.Create(self);
    try
      frm.Katalog := kat;
      frm.RodzajOperacji := rosWeryfikacja;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end
  else
    MessageDlg('Brak wybranego katalogu', mtInformation, [mbOK], 0);
end;

procedure TFrmMain.acFolderWeryfikujExecute(Sender: TObject);
var
  kat: TKatalog;
  frm: TFrmSkan;
begin
  kat := fKatMgr.WybranyKatalog;
  if Assigned(kat) then
  begin
    frm := TFrmSkan.Create(self);
    try
      frm.Katalog := kat;
      frm.RodzajOperacji := rosWeryfikacja;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end
  else
    MessageDlg('Brak wybranego katalogu', mtInformation, [mbOK], 0);
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

procedure TFrmMain.acInnyTytDodajExecute(Sender: TObject);
var
  frm : TFrmPozSlownika;
begin
  frm:= TFrmPozSlownika.Create(self);
  try
    frm.TytulOkna:= 'Nowy inny tytuł';
    frm.Ikona:= 0;
    frm.OpisWidoczny:= False;
    if frm.ShowModal = mrOk then
    begin
      if (DMM.FilmMaTakiInnyTytul(DMM.qMainFilm.FieldByName('IdFilmu').AsInteger, frm.Nazwa)) then
      begin
        MessageDlg('Taki tytuł już jest',mtWarning,[mbOk],0)
      end
      else
      begin
        if DMM.qMainAkaF.State in [dsInsert,dsEdit] then
          DMM.qMainAkaF.Cancel;

        DMM.qMainAkaF.Append;
        DMM.qMainAkaF.FieldByName('IdFilmu').AsInteger:= DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
        DMM.qMainAkaF.FieldByName('NazwaAKAF').AsString:= frm.Nazwa;
        DMM.qMainAkaF.Post;
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acInnyTytDodWieleExecute(Sender: TObject);
var
  frm : TFrmPozLinTxt;
  s : string;
  i : integer;
  saNowePozycje: boolean;
  idFilmu: longint;
begin
  frm:= TFrmPozLinTxt.Create(self);
  try
    saNowePozycje:= False;
    frm.TytulOkna:= 'Dodaj inne tytuły';
    if (frm.ShowModal = mrOk) then
    begin
      if frm.OdczytajPozycje > 0 then
      begin
        for i:= 0 to frm.Pozycje.Count-1 do
        begin
          s:= frm.Pozycje.Strings[i];
          idFilmu:= DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
          if DMM.DodajInnyTytul(idFilmu, s) > 0 then
            saNowePozycje:= True;
        end;
        if (saNowePozycje) then
          DMG.OdswiezDataSet(DMM.qMainAkaF, 'IdAKAF');
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acInnyTytUsunExecute(Sender: TObject);
begin
  if not DMM.qMainAkaF.Active then
  begin
    MessageDlg('Tabela nie aktywna',mtError,[mbOk],0);
    Exit;
  end;

  if not  DMM.qMainAkaF.IsEmpty then
  begin
    if (MessageDlg(Format('Czy napewno usunąć tytuł:'+sLineBreak+'"%s"?',[DMM.qMainAkaF.FieldByName('NazwaAKAF').AsString]),mtConfirmation,[mbOk,mbCancel],0) = mrOk) then
    begin
      if DMM.qMainAkaF.State in [dsInsert,dsEdit] then
        DMM.qMainAkaF.Cancel;

      DMM.qMainAkaF.Delete;
    end;
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

procedure TFrmMain.acDaneKrajeExecute(Sender: TObject);
var
  frm: TFrmSlownik;
begin
  frm := TFrmSlownik.Create(self);
  try
    frm.TytulOkna := 'Kraje';
    frm.AliasPol := 'Kraju';
    frm.Tabela := 'Kraje';
    frm.ShowModal;
    DMG.OdswiezDataSet(DMM.qKraje);
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acLinkDodajExecute(Sender: TObject);
var
  frm : TFrmPozSlownika;
begin
  if not DMM.qMainLinki.Active then
  begin
    MessageDlg('Tabela nie aktywna',mtError,[mbOk],0);
    Exit;
  end;

  frm:= TFrmPozSlownika.Create(self);
  try
    frm.TytulOkna:= 'Nowy link';
    frm.Ikona:= 2;
    if frm.ShowModal = mrOk then
    begin
      if (DMM.FilmMaTakiLink(DMM.qMainFilm.FieldByName('IdFilmu').AsInteger, frm.Nazwa)) then
      begin
        MessageDlg('Taki link już jest',mtWarning,[mbOk],0)
      end
      else
      begin
        if DMM.qMainLinki.State in [dsInsert,dsEdit] then
          DMM.qMainLinki.Cancel;

        DMM.qMainLinki.Append;
        DMM.qMainLinki.FieldByName('IdFilmu').AsInteger:= DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
        DMM.qMainLinki.FieldByName('TrescLnk').AsString:= frm.Nazwa;
        if (frm.Opis <> '') then
        DMM.qMainLinki.FieldByName('OpisLnk').AsString:= frm.Opis;
        DMM.qMainLinki.Post;
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acLinkOtworzExecute(Sender: TObject);
var
  url: string;
begin
  if not DMM.qMainLinki.Active then
  begin
    MessageDlg('Tabela nie aktywna',mtError,[mbOk],0);
    Exit;
  end;

  if not DMM.qMainLinki.IsEmpty then
  begin
    url := DMM.qMainLinki.FieldByName('TrescLnk').AsString;
    if (url <> '') then
      DMG.LinkOpen.Open(url);
  end;
end;

procedure TFrmMain.acLinkUsunExecute(Sender: TObject);
begin
  if not DMM.qMainLinki.Active then
  begin
    MessageDlg('Tabela nie aktywna',mtError,[mbOk],0);
    Exit;
  end;

  if not  DMM.qMainLinki.IsEmpty then
  begin
    if (MessageDlg(Format('Czy napewno usunąć link:'+sLineBreak+'"%s"?',[DMM.qMainLinki.FieldByName('TrescLnk').AsString]),mtConfirmation,[mbOk,mbCancel],0) = mrOk) then
    begin
      if DMM.qMainLinki.State in [dsInsert,dsEdit] then
        DMM.qMainLinki.Cancel;

      DMM.qMainLinki.Delete;
    end;
  end;
end;

procedure TFrmMain.acOklPowiekszExecute(Sender: TObject);
var
  frm : TFrmImgView;
begin
  if ((not DMM.qMainFilm.IsEmpty) and (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '')) then
  begin
    frm:= TFrmImgView.Create(self);
    try
      frm.TytulOkna:= 'Podgląd okładki';
      frm.PlikObr:= DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString;;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acOklSchowekExecute(Sender: TObject);
var
  formatOk: boolean;
  plik: string;
  edycja, pytanie: boolean;
begin
  if not DMM.qMainFilm.IsEmpty then
  begin
    formatOk := False;
    if Clipboard.HasFormat(PredefinedClipboardFormat(pcfBitmap)) then
    begin
      ImgOkladka.Picture.Bitmap.LoadFromClipboardFormat(PredefinedClipboardFormat(pcfBitmap));
      formatOk := True;
    end
    else if Clipboard.HasFormat(PredefinedClipboardFormat(pcfBitmap)) then
    begin
      ImgOkladka.Picture.Bitmap.LoadFromClipboardFormat(PredefinedClipboardFormat(pcfBitmap));
      formatOk := True;
    end;
    if formatOk then
    begin
      pytanie:= True;
      if EndsStr(DirectorySeparator,DMG.Ustawienia.Values['okladki']) then
        plik := DMG.Ustawienia.Values['okladki'] + IntToStr(fIdRipWybPl) + '_okl1.jpg'
      else
        plik := DMG.Ustawienia.Values['okladki'] + IntToStr(fIdRipWybPl) + '_okl1.jpg';

      if (FileExists(plik)) then
      begin
        if (MessageDlg('Plik o podanej nazwie istnieje. Czy go nadpisać?',mtWarning,[mbOk, mbCancel],0) <> mrOk) then
          pytanie:= False
        else
          Exit;
      end;
      if ((pytanie) and (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '') and (FileExists(DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString))) then
      begin
        if (MessageDlg('Nadpisać istniejącą okładkę?',mtWarning,[mbOk, mbCancel],0) <> mrOk) then
          Exit;
      end;
      ShowMessage(plik);
      ImgOkladka.Picture.SaveToFile(plik, 'jpg');
      edycja := False;
      if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      begin
        DMM.qMainFilm.Edit;
        edycja := True;
      end;
      DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString := plik;
      if (edycja) then
        DMM.qMainFilm.Post;
    end
    else
      ShowMessage('Nieobsługiwany format.');
  end;
end;

procedure TFrmMain.acOklUsunExecute(Sender: TObject);
var
  usunPlik : boolean;
  edycja : boolean;
  sc : string;
begin
  usunPlik:= False;
  if ((not DMM.qMainFilm.IsEmpty) and (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '')) then
  begin
    sc:= DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString;
    if (MessageDlg('Czy napewno usunąć okładkę?',mtWarning,[mbOk,mbCancel],0) = mrOk) then
    begin
      if (FileExists(sc)) then
        usunPlik:= (MessageDlg('Usunąć plik okładki z dysku?',mtConfirmation,[mbOk, mbCancel],0) = mrOk);
      edycja := False;
      if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      begin
        DMM.qMainFilm.Edit;
        edycja := True;
      end;

      DMM.qMainFilm.FieldByName('OkladkaScFilmu').Clear;
      if usunPlik then
        DeleteFile(sc);
      if (edycja) then
        DMM.qMainFilm.Post;
    end;
  end;
end;

procedure TFrmMain.acOklWybierzExecute(Sender: TObject);
var
  edycja : boolean;
begin
  if not DMM.qMainFilm.IsEmpty then
  begin
    OpenDlg.InitialDir:= DMG.Ustawienia.Values['okladki'];
    edycja:= False;
    if (OpenDlg.Execute) then
    begin
      if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      begin
        DMM.qMainFilm.Edit;
        edycja := True;
      end;
      DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString := OpenDlg.FileName;
      ImgOkladka.Picture.LoadFromFile(OpenDlg.FileName);
      if (edycja) then
        DMM.qMainFilm.Post;
    end;
  end;
end;

function TFrmMain.UruchomAplikacje: boolean;
begin
  Result  := True;

  DMG.Ustawienia := OdczytajUstawienia;

  DMG.OtworzPolaczenieZBazaDanych(DMG.Ustawienia, True);

  fKatMgr := TKatMgr.Create;
end;

function TFrmMain.OdczytajUstawienia: TStringList;
var
  plikUst: string;
  lstUst:  TStringList;
begin
  plikUst := GetAppDir() + 'ustawienia.ini';
  // próba odczytu pliku ustawien z katalogu aplikacji
  if FileExists(plikUst) then
  begin
    lstUst := OdczytajUstawieniaPoczatkowe(plikUst);
  end
  else
  begin
    plikUst := GetConfigDir() + 'ustawienia.ini';
    // próba odczytu pliku ustawien z katalogu użytkownika
    if FileExists(plikUst) then
    begin
      lstUst := OdczytajUstawieniaPoczatkowe(plikUst);
    end
    else
    begin
      // jeśli brak pliku ustawień - ustawienia domyślne
      lstUst := TStringList.Create;
      //lstUst.Add(Format('database=%s%s', [GetAppDir(), 'mfn.db']));
      //lstUst.Add(Format('library=%s%s', [GetAppDir(), 'sqlite3.dll']));
      //lstUst.Add(Format('file_info=%s%s', [GetAppDir(), 'info']));
      //lstUst.Add(Format('okladki=%s%s', [GetAppDir(), 'obr'+DirectorySeparator+'okl']));
      //lstUst.Add(Format('aktorzy=%s%s', [GetAppDir(), 'obr'+DirectorySeparator+'akt']));

      //lstUst.Add(Format('database=%s%s', [GetAppDir(), 'mfn.fdb']));
      //lstUst.Add(Format('library=%s%s', [GetAppDir(), 'fbclient.dll']));
      //lstUst.Add('user=sysdba');
      //lstUst.Add('password=masterkey');
    end;
  end;

  if (lstUst.Values['database'] = '') then
    lstUst.Values['database'] := Format('%s%s', [GetAppDir(), 'mfn.db']);
  if (lstUst.Values['library'] = '') then
    lstUst.Values['library'] := Format('%s%s', [GetAppDir(), 'sqlite3.dll']);
  if (lstUst.Values['file_info'] = '') then
    lstUst.Values['file_info'] := Format('%s%s', [GetAppDir(), 'info']);
  if (lstUst.Values['okladki'] = '') then
    lstUst.Values['okladki'] := Format('%s%s', [GetAppDir(), 'obr'+DirectorySeparator+'okl'+DirectorySeparator]);
  if (lstUst.Values['aktorzy'] = '') then
    lstUst.Values['aktorzy'] := Format('%s%s', [GetAppDir(), 'obr'+DirectorySeparator+'akt'+DirectorySeparator]);

  DMG.LinkOpen.LokalicacjaPrzegladarki:= lstUst.Values['przegladarka'];
  DMG.LinkOpen.ParametryPrzegladarki:= lstUst.Values['parametry_przegladarki'];

  result:= lstUst;
end;

function TFrmMain.OdczytajUstawieniaPoczatkowe(plikIni: string): TStringList;
var
  ini: TIniFile;
  lstUstawien: TStringList;
begin
  lstUstawien := TStringList.Create;
  ini := TiniFile.Create(plikIni);
  try
    lstUstawien.Clear;
    lstUstawien.AddPair('database', ini.ReadString('podstawowe', 'database', ''));
    lstUstawien.AddPair('library', ini.ReadString('podstawowe', 'library', ''));
    lstUstawien.AddPair('file_info', ini.ReadString('podstawowe', 'file_info', ''));
    lstUstawien.AddPair('okladki', ini.ReadString('podstawowe', 'okladki', ''));
    lstUstawien.AddPair('aktorzy', ini.ReadString('podstawowe', 'aktorzy', ''));
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
      kat  := fKatMgr.ListaKatalogow.Items[i] as TKatalog;
      item := lvKat.Items.Add;
      item.Caption := kat.ToString;
      item.SubItems.Add(IntToStr(i));
      item.Data := kat;
      //item.SubItems.Add(IntToStr(kat.IdKatalogu));
      item.ImageIndex := 23;
    end;
  finally
    lvKat.EndUpdate;
  end;
  OdswiezDane;
end;

procedure TFrmMain.UstawWybranyKatalog;
var
  item: TListItem;
  //i: integer;
  kat:  TKatalog;
begin
  item := lvKat.ItemFocused;
  if Assigned(item) then
  begin
    ShowMessage(item.Caption);
    //i := StrToInt(item.SubItems[0]);

  end;
end;

procedure TFrmMain.OdswiezDane;
begin
  DMM.qMain.Close;
  DMM.qMain.SQL.Text := PrepareQuery;
  DMM.qMain.Open;
end;

function TFrmMain.PrepareQuery: string;
var
  qry: TSqlQueryBuilder;
begin
  qry := TSqlQueryBuilder.Create;
  try
    qry.AddFields('P.IdPl, P.IdFld, P.IdRip, P.IdTypPl, P.NazwaPl, P.ScPl, P.WzgScPl, P.IdRozszPl, P.RozmiarPl, P.StatusPl, R.IloscUruchomienRip, P.DataDodPl, P.DataModPl, P.OpisPl');
    qry.AddFields('R.Crc32Rip, R.Md5Rip, T.NazwaTypPl, O.NazwaRozszPl, O.ImgIdxRozszPl, I.WysokoscIpf, I.SzerokoscIpf');
    qry.From := 'Pliki P';

    qry.AddJoin('JOIN RejestrPlikow R ON R.IdRip = P.IdRip');
    qry.AddJoin('LEFT JOIN TypyPl T ON T.IdTypPl = P.IdTypPl');
    qry.AddJoin('LEFT JOIN RozszerzeniaPl O ON O.IdRozszPl = P.IdRozszPl');
    qry.AddJoin('LEFT JOIN InfoPlikiFilmy I ON I.IdRip = R.IdRip');

    qry.SetOrder('P.NazwaPl');

    if ((fKatMgr.Poziom > 0) and (fKatMgr.WybranyKatalog <> nil)) then
      qry.AddWhereFormat('P.IdFld = %d ', [fKatMgr.WybranyKatalog.IdKatalogu]);

    if ((fWybFiltr = twfOcena) and (ListView1.ItemIndex > 0)) then
    begin
      qry.AddWhereFormat('R.OcenaRip = %d ', [7 - ListView1.ItemIndex]);
    end;
    {else if ((fWybFiltr = twfRok) and (tvFiltryLata.Selected <> nil) and (tvFiltryLata.Selected.AbsoluteIndex > 0)) then
    begin
      if (tvFiltryLata.Selected.Level = 1) then
        qry.AddWhereFormat('R.OcenaRip = %d ', [7-ListView1.ItemIndex])
      else if (tvFiltryLata.Selected.Level = 2) then
        qry.AddWhereFormat('R.OcenaRip = %d ', [7-ListView1.ItemIndex])
    end;}

    if (cbxTypPl.ItemIndex > 0) then
    begin
      qry.AddWhereFormat('T.IdTypPl = %d ', [cbxTypPl.ItemIndex]);
    end;

    if (sedFiltrPl.Text <> '') then
    begin
      qry.AddWhereFormat('P.NazwaPl LIKE ''%s'' ', [sedFiltrPl.Text]);
    end;

    Result := qry.AsString;
  finally
    FreeAndNil(qry);
  end;

  {where:= '';
  select:= 'SELECT P.IdPl, P.IdFld, P.IdRip, P.IdTypPl, P.NazwaPl, P.ScPl, P.WzgScPl, P.IdRozszPl, P.RozmiarPl, P.StatusPl, P.IloscUruchomienPl, P.DataDodPl, P.DataModPl, P.OpisPl, ' +
    'R.Crc32Rip, R.Md5Rip, T.NazwaTypPl, O.NazwaRozszPl, O.ImgIdxRozszPl, I.WysokoscIpf, I.SzerokoscIpf ' +
    'FROM Pliki P ' +
    'JOIN RejestrPlikow R ON R.IdRip = P.IdRip ' +
    'LEFT JOIN TypyPl T ON T.IdTypPl = P.IdTypPl ' +
    'LEFT JOIN RozszerzeniaPl O ON O.IdRozszPl = P.IdRozszPl ' +
    'LEFT JOIN InfoPlikiFilmy I ON I.IdRip = R.IdRip ';
  order:= 'P.NazwaPl';

  if ((fKatMgr.Poziom > 0) and (fKatMgr.WybranyKatalog <> nil)) then
  begin
    if (where <> '') then where:= where + ' AND ';
    where:= where + Format('P.IdFld = %d ',[fKatMgr.WybranyKatalog.IdKatalogu]);
  end;                }

  {case fWybFiltr of
    twfOcena:
      item:= ListView1.Selected;
      if (item <> nil) and (StrToIntDef(item.SubItems[0],0) > 0) then
      begin
        where:= where + Format(' = %d'
      end;
  end;}

  {if (where <> '') then
    where:= 'WHERE ' + where;
  if (order <> '') then
    order:= 'ORDER BY '+order;
  result:= select + where + order;}
end;

procedure TFrmMain.PokazFiltrOceny;
const
  oceny: array[0..5] of string = ('Beznadziejny', 'Słaby', 'Taki sobie', 'Dobry', 'Bardzo dobry', 'Świetny');
var
  item: TListItem;
  i: integer;
begin
  nbkFiltry.PageIndex := 0;
  ListView1.Items.BeginUpdate;
  try
    ListView1.Items.Clear;

    item := ListView1.Items.Add;
    item.Caption := 'Wszystko';
    item.ImageIndex := 0;
    item.SubItems.Add('0');

    for i := 5 downto 0 do
    begin
      item := ListView1.Items.Add;
      item.Caption := oceny[i] + Format(' (%d)', [i + 1]);
      item.ImageIndex := 1;
      item.SubItems.Add(IntToStr(i + 1));
    end;
    {item := ListView1.Items.Add;
    item.Caption:= 'Świetny (6)';
    item.ImageIndex:= 8;
    item.Data:= Pointer(Integer(6));
    item := ListView1.Items.Add;
    item.Caption:= 'Bardzo dobry (5)';
    item.Data:= Pointer(Integer(5));
    item := ListView1.Items.Add;
    item.Caption:= 'Dobry (4)';
    item.Data:= Pointer(Integer(4));
    item := ListView1.Items.Add;
    item.Caption:= 'Taki sobie (3)';
    item.Data:= Pointer(Integer(3));
    item := ListView1.Items.Add;
    item.Caption:= 'Słaby (2)';
    item.Data:= Pointer(Integer(2));
    item := ListView1.Items.Add;
    item.Caption:= 'Beznadziejny (1)';
    item.Data:= Pointer(Integer(1));  }
  finally
    ListView1.Items.EndUpdate;
  end;

  ListView1.ItemIndex := 0;
end;

procedure TFrmMain.PokazFiltrLata;
var
  node: TTreeNode;
  wzDek: TTreeNode;
  i: integer;
  dekada: string;
begin
  tvFiltryLata.BeginUpdate;
  try
    tvFiltryLata.Items.Clear;
    node := tvFiltryLata.Items.AddFirst(nil, 'Wszystko');
    node.ImageIndex := 0;
    node.SelectedIndex := 0;

    for i := 0 to fLstLat.Count - 1 do
    begin
      dekada := fLstLat.ValueFromIndex[i];
      wzDek  := tvFiltryLata.Items.FindTopLvlNode(dekada);
      if wzDek = nil then
      begin
        wzDek := tvFiltryLata.Items.Add(nil, dekada);
        wzDek.ImageIndex := 2;
        wzDek.SelectedIndex := 2;
      end;
      node := tvFiltryLata.Items.AddChild(wzDek, fLstLat.Names[i]);
      node.ImageIndex := 2;
      node.SelectedIndex := 2;
    end;
  finally
    tvFiltryLata.EndUpdate;
  end;
  tvFiltryLata.Selected := tvFiltryLata.Items.GetFirstNode;
end;

procedure TFrmMain.PokazDanePliku;
begin
  tmrMain.Enabled := False;
  fAktualneInfo  := False;
  fAktualnyFilm  := False;
  fAktualneTagi  := False;
  fAktualneOpisy := False;

  if ((DMM.qMain.Active) and (not DMM.qMain.IsEmpty)) then
  begin
    fIdRipWybPl := DMM.qMain.FieldByName('IDRIP').AsInteger;

    DMM.qMainPlik.Close;
    DMM.qMainPlik.ParamByName('IDPLIK').AsInteger := DMM.qMain.FieldByName('IDPL').AsInteger;
    DMM.qMainPlik.Open;
    DMM.qMainInfo.Close;
    DMM.qMainInfo.ParamByName('IDRIP').AsInteger := fIdRipWybPl;
    DMM.qMainInfo.Open;
    PokazDaneWybranejZakladki;
  end
  else
  begin
    fIdRipWybPl := 0;
    DMM.qMainPlik.Close;
    DMM.qMainFilm.Close;
    DMM.qMainInfo.Close;
  end;
end;

procedure TFrmMain.PokazDaneWybranejZakladki;
begin
  if (pcDanePl.ActivePage = tsPlikParam) then
  begin
    PokazDaneZaklInfo(False);
  end
  else if (pcDanePl.ActivePage = tsPlikFilm) then
  begin
    PokazDaneZaklFilm;
  end
  else if (pcDanePl.ActivePage = tsPlikOpis) then
  begin
    PokazDaneZaklOpis(False);
  end;
end;

procedure TFrmMain.PokazDaneZaklInfo(Wymus: boolean);
var
  jestRekord: boolean;
begin
  jestRekord := False;

  if (not fAktualneInfo) or (Wymus) then
  begin
    if (fIdRipWybPl > 0) then
    begin

      jestRekord := not DMM.qMainInfo.IsEmpty;
    end;

    sbnInfoDodaj.Enabled := not jestRekord;
    lcbRodzaj.Enabled := jestRekord;
    fAktualneInfo := True;
  end;
end;

procedure TFrmMain.PokazDaneZaklFilm;
var
  jestRekordFilm: boolean;
  iloscF: integer;
  oc: longint;
begin
  if (not fAktualnyFilm) then
  begin
    ImgBrakOkl.Visible:= False;
    DMM.qMainFilmPl.Close;
    DMM.qMainFilm.Close;

    jestRekordFilm := False;
    if (fIdRipWybPl > 0) then
    begin
      DMM.qMainFilmPl.ParamByName('IDRIP').AsInteger := fIdRipWybPl;
      DMM.qMainFilmPl.Open;

      jestRekordFilm := not DMM.qMainFilmPl.IsEmpty;

      if (jestRekordFilm) then
      begin
        DMM.qMainFilmPl.First;
        DMM.qMainFilm.ParamByName('IdFilmu').AsInteger := DMM.qMainFilmPl.FieldByName('IdFilmu').AsInteger;
        DMM.qMainFilm.Open;
        PokazDaneWybranegoFilmu;
        sbnFilm.ImageIndex := 3;
        sbnFilm.Hint := 'Zarządzaj filmami';
        oc := DMM.qMainFilm.FieldByName('OcenaFilmu').AsInteger;
        UstawOceneGraf(oc);
      end
      else
      begin
        sbnFilm.ImageIndex := 1;
        sbnFilm.Hint := 'Dodaj film';
        UstawOceneGraf(0);
        ImgOkladka.Picture.Clear;
      end;

      iloscF := DMM.qMainFilmPl.RecordCount;
    end;

    pnlFilm.Visible := jestRekordFilm;
    //sbnFilm.Enabled := not jestRekordFilm;
    //sbnFilmUsun.Enabled := jestRekordFilm;
    //sbnFilmZmien.Enabled := jestRekordFilm;
    lbFilmIlosc.Caption := Format('Ilość: %d', [iloscF]);
    fAktualnyFilm := True;
  end;
end;

procedure TFrmMain.PokazDaneZaklTag;
begin
  if (not fAktualneTagi) then
  begin
    DMM.qMainTag.Close;
    if (fIdRipWybPl > 0) then
    begin
      DMM.qMainTag.ParamByName('IDRIP').AsInteger := fIdRipWybPl;
      DMM.qMainTag.Open;
      fAktualneTagi := True;
    end;
  end;
end;

procedure TFrmMain.PokazDaneZaklOpis(Wymus: boolean);
var
  jestRekordInfo: boolean;
begin
  if (not fAktualneOpisy) or (Wymus) then
  begin
    jestRekordInfo  := not DMM.qMainInfo.IsEmpty;
    pnOpisInfo.Visible := not jestRekordInfo;
    DBMemo5.Visible := jestRekordInfo;
  end;
end;

procedure TFrmMain.PokazDaneWybranegoFilmu;
var
  id: longint;
  sc : string;
begin
  if ((DMM.qMainFilmPl.Active) and (not DMM.qMainFilmPl.IsEmpty)) then
  begin
    id := DMM.qMainFilmPl.FieldByName('IdFilmu').AsInteger;
    if (id > 0) then
    begin
      // w większości to będzie tylko jeden film więc nie ma po co szukać bo to ten rekord
      // ale jeśli nie to szukam w wynikach (qMainFilmPl)
      if (DMM.qMainFilm.FieldByName('IdFilmu').AsInteger <> id) then
      begin
        if not DMM.qMainFilmPl.Locate('IdFilmu', id, []) then
          raise Exception.Create('Błąd podczas próby wszukania wybranego filmu id: ' + IntToStr(id));
      end;
      sc:= DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString;
      if (sc <> '') then
      begin
        if (FileExists(sc)) then
          ImgOkladka.Picture.LoadFromFile(sc)
        else
          ImgBrakOkl.Visible:= True;
      end
      else
        ImgOkladka.Picture.Clear;;
      {if (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '') and (FileExists(DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString)) then
        ImgOkladka.Picture.LoadFromFile(DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString)
      else
        ImgOkladka.Picture.Clear;}

      DMM.qMainAkt.Close;
      DMM.qMainAkt.ParamByName('IdFilmu').AsInteger:= id;
      DMM.qMainAkt.Open;
      DMM.qMainLinki.Close;
      DMM.qMainLinki.ParamByName('IdFilmu').AsInteger:= id;
      DMM.qMainLinki.Open;
      DMM.qMainAkaF.Close;
      DMM.qMainAkaF.ParamByName('IdFilmu').AsInteger:= id;
      DMM.qMainAkaF.Open;
    end
    else
    begin
      UstawOceneGraf(0);
      MessageDlg('Błąd', 'Film ma przypisany nieprawidłowy identyfikator', mtError, [mbOK], 0);
    end;
  end;
end;

function TFrmMain.UstawOcene(Ocena: byte): boolean;
begin
  Result := False;
  if ((not DMM.qMainFilm.IsEmpty) and (Ocena in [0..5])) then
  begin
    if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
      DMM.qMainFilm.Edit;
    DMM.qMainFilm.FieldByName('OcenaFilmu').AsInteger := Ocena;
    DMM.qMainFilm.Post;
    UstawOceneGraf(Ocena);
    Result := True;
  end;
end;

procedure TFrmMain.UstawOceneGraf(AOcena: byte);
var
  bmp: TBitmap;
begin
  if (fWczytanaOcena <> AOcena) then
  begin
    bmp := TBitmap.Create;
    try
      ilOceny.GetBitmap(AOcena, bmp);
      imgOcena.Picture.Bitmap := bmp;

    finally
      FreeAndNil(bmp);
    end;
    fWczytanaOcena := AOcena;
  end;
end;

procedure TFrmMain.OdswiezFiltrAktorow;
begin
  DMG.OdswiezDataSet(DMM.qMainFiltrAkt, 'IdAkt');
end;

end.
