unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  ActnList, Menus, ComboEx, Buttons, DBGrids, RxDBGrid, rxcurredit, rxspin,
  RxTimeEdit, RxMDI, LSControls, IDEWindowIntf, SearchEdit, DBCtrls, StdCtrls,
  ukatalog, Contnrs, DB, ukatmgr, Grids, DBActns, Clipbrd, LCLIntf, LCLType,
  PairSplitter, StrUtils, umgrpoz, upozsl;

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
    acFolderCzysc: TAction;
    acFolderUzupelnij: TAction;
    acFilmUruchom: TAction;
    acFilmyEdycja: TAction;
    acDodajRekInfo: TAction;
    acFilmDodaj: TAction;
    acFilmLista: TAction;
    acDaneKraje: TAction;
    acDaneRodzaje: TAction;
    acFilmRok: TAction;
    acTagDodaj: TAction;
    acTagUsun: TAction;
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
    acGatDodaj: TAction;
    acGatUsun: TAction;
    acGatEdycja: TAction;
    acFiltrOdswiez: TAction;
    acFiltrWyczysc: TAction;
    acWidokOdswiez: TAction;
    ActionList2: TActionList;
    ActionList3: TActionList;
    aDaneJezyki: TAction;
    ActionList1: TActionList;
    Aktorzy: TPage;
    BitBtn1: TBitBtn;
    btnDodajRekInfo: TBitBtn;
    cbxTypPl: TComboBoxEx;
    chbxFiltrAktorWszystko: TCheckBox;
    DataSetCancel1: TDataSetCancel;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DbGrid: TPage;
    DBGrid1: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo4: TDBMemo;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    DBText10: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    dsMainAkt: TDataSource;
    edFiltrListView: TEdit;
    gbxOcena1: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    ImgOcenaPlF: TImage;
    ImgOcenaF: TImage;
    ImgBrakOkl: TImage;
    ImgBrakZdjAkt: TImage;
    imgOcena: TImage;
    ImgOkladka: TImage;
    ImgZdjAkt: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lbFiltrIlosc: TLabel;
    lbOcenaFOpis: TLabel;
    lbFilmIlosc: TLabel;
    lcbDubbing: TDBLookupComboBox;
    lcbJezyk: TDBLookupComboBox;
    lcbNapisy: TDBLookupComboBox;
    lcbRodzaj: TDBLookupComboBox;
    DBText3: TDBText;
    ilOceny: TImageList;
    Label23: TLabel;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText5: TDBText;
    dsMain: TDataSource;
    edWybKat: TEdit;
    Label7: TLabel;
    lvFiltrDekady: TListView;
    ListView2: TListView;
    lvFiltrLata: TListView;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    ilMenuS: TImageList;
    ilMenuL: TImageList;
    Image1: TImage;
    Image2: TImage;
    ilFiltry: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListView: TPage;
    lvFiltry: TListView;
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
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem29: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem30: TMenuItem;
    MenuItem31: TMenuItem;
    MenuItem32: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem35: TMenuItem;
    MenuItem36: TMenuItem;
    MenuItem37: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    N1: TMenuItem;
    nbkFiltry: TNotebook;
    OpenDlg: TOpenDialog;
    PageControl1: TPageControl;
    PairSplitter1: TPairSplitter;
    PairSplitterSide1: TPairSplitterSide;
    PairSplitterSide2: TPairSplitterSide;
    Panel10: TPanel;
    pmOcenyF: TPopupMenu;
    pnlFilmOcena: TPanel;
    pnlAktZdj: TPanel;
    pnlAktTresc: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    pcDanePl: TPageControl;
    pcFilmy: TPageControl;
    pnlFilm: TPanel;
    pcLeft: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlFiltrAkt: TPanel;
    pnlFiltrNagl: TPanel;
    pnlFiltry: TPanel;
    pnlFiltryTytul: TPanel;
    pnlLeft: TPanel;
    pmOceny: TPopupMenu;
    pnOpisInfo: TPanel;
    pmTagi: TPopupMenu;
    RxDBGrid1: TRxDBGrid;
    gbgFiltrAkt: TRxDBGrid;
    RxDBGrid3: TRxDBGrid;
    dbgAkt: TRxDBGrid;
    RxDBGrid4: TRxDBGrid;
    RxDBGrid5: TRxDBGrid;
    sbnDubbingClear: TSpeedButton;
    sbnFilm: TSpeedButton;
    sbnFilmOdswiez: TSpeedButton;
    sbnFiltrOdsw: TSpeedButton;
    sbnJezykClear: TSpeedButton;
    sbnNapisyClear: TSpeedButton;
    sedFiltrPl: TSearchEdit;
    sedFiltrF: TSearchEdit;
    sbnFiltrPlClear: TSpeedButton;
    sbnFiltrFiClear: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    sbnOcenaFilm: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    sbnInfoDodaj: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    sbnFiltrAktorOdsw: TSpeedButton;
    SpeedButton8: TSpeedButton;
    btnDodOceneFilmu: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Tagi: TPage;
    tmrFiltr: TTimer;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar6: TToolBar;
    ToolBar7: TToolBar;
    ToolBar8: TToolBar;
    ToolBar9: TToolBar;
    ToolButton10: TToolButton;
    ToolButton2: TToolButton;
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
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton4: TToolButton;
    ToolButton40: TToolButton;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton45: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    tsFilmAKA: TTabSheet;
    tsFilmAktorzy: TTabSheet;
    tsFilmGatunki: TTabSheet;
    tsFilmKomentarz: TTabSheet;
    tsFilmOpis: TTabSheet;
    tsFilmPodstawy: TTabSheet;
    tsFilmyLinki: TTabSheet;
    tsPlikTagi: TTabSheet;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    tmrMain: TTimer;
    ToolButton19: TToolButton;
    ToolButton21: TToolButton;
    Lata: TPage;
    ToolButton22: TToolButton;
    tsOpisOgolny: TTabSheet;
    tsOpisPlik: TTabSheet;
    tsFiltry: TTabSheet;
    tsBaza: TTabSheet;
    ToolBar2: TToolBar;
    ToolBar5: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    tbnOceny: TToolButton;
    ToolButton20: TToolButton;
    tbnLata: TToolButton;
    tbnAktorzy: TToolButton;
    tbnTagi: TToolButton;
    tbnGatunki: TToolButton;
    tbnSerie: TToolButton;
    ToolButton8: TToolButton;
    tsPlikOpis: TTabSheet;
    tsPlikParam: TTabSheet;
    pnlMain: TPanel;
    dbg: TRxDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    StatusBar1: TStatusBar;
    tsPlikInfo: TTabSheet;
    tsPlikFilm: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure acAktDodajExecute(Sender: TObject);
    procedure acAktDodajTxtExecute(Sender: TObject);
    procedure acAktEdycjaExecute(Sender: TObject);
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
    procedure acFiltrOdswiezExecute(Sender: TObject);
    procedure acFiltrSerieExecute(Sender: TObject);
    procedure acFiltrTagiExecute(Sender: TObject);
    procedure acFiltrWyczyscExecute(Sender: TObject);
    procedure acFolderSkanujExecute(Sender: TObject);
    procedure acFolderWeryfikujExecute(Sender: TObject);
    procedure acFolderyExecute(Sender: TObject);
    procedure acGatDodajExecute(Sender: TObject);
    procedure acGatEdycjaExecute(Sender: TObject);
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
    procedure acTagDodajExecute(Sender: TObject);
    procedure acTagUsunExecute(Sender: TObject);
    procedure acWidokOdswiezExecute(Sender: TObject);
    procedure aDaneJezykiExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnDodajRekInfoClick(Sender: TObject);
    procedure btnDodOceneFilmuClick(Sender: TObject);
    procedure cbxTypPlChange(Sender: TObject);
    procedure dbgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
    procedure dsMainAktDataChange(Sender: TObject; Field: TField);
    procedure dsMainDataChange(Sender: TObject; Field: TField);
    procedure edFiltrListViewChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvFiltrDekadyItemChecked(Sender: TObject; Item: TListItem);
    procedure lvFiltrDekadySelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
    procedure lvFiltrLataItemChecked(Sender: TObject; Item: TListItem);
    procedure lvFiltryItemChecked(Sender: TObject; Item: TListItem);
    procedure lvKatDblClick(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem33Click(Sender: TObject);
    procedure pcDanePlChange(Sender: TObject);
    procedure sbnDubbingClearClick(Sender: TObject);
    procedure sbnFilmClick(Sender: TObject);
    procedure sbnFiltrAktorOdswClick(Sender: TObject);
    procedure sbnFiltrFiClearClick(Sender: TObject);
    procedure sbnFiltrPlClearClick(Sender: TObject);
    procedure sbnJezykClearClick(Sender: TObject);
    procedure sbnNapisyClearClick(Sender: TObject);
    procedure sbnOcenaFilmClick(Sender: TObject);
    procedure sedFiltrPlExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure tmrFiltrTimer(Sender: TObject);
    procedure tmrMainTimer(Sender: TObject);
  private
    fKatMgr: TKatMgr;
    fWybFiltr: TWybranyFiltr;
    fLstFiltrow: TObjectList;
    fFiltrAktywny: array[0..5] of boolean;
    fIdRipWybPl: longint;
    fAktualneInfo: boolean;
    fAktualneParam: boolean;
    fAktualnyFilm: boolean;
    fAktualneTagi: boolean;
    fAktualneOpisy: boolean;
    fWczytanaOcena: byte;

    function UruchomAplikacje: boolean;
    function OdczytajUstawieniaPoczatkowe(plikIni: string): TStringList;
    function OdczytajUstawienia: TStringList;
    procedure OdswiezWidokKatalogow;
    procedure UstawWybranyKatalog;
    procedure OdswiezDane;
    function PrepareQuery: string;
    procedure UtworzFiltrOceny(MgrPozOcen: TManagerPozycji);
    procedure UtworzFiltrLata;
    procedure PokazDanePliku;
    procedure PokazZakladkiTypu(IdTypu: longint);
    procedure PokazDaneWybranejZakladki;
    procedure PokazDaneZaklInfo;
    procedure PokazDaneZaklParam(Wymus: boolean);
    procedure PokazDaneZaklFilm;
    procedure PokazDaneZaklTag;
    procedure PokazDaneZaklOpis(Wymus: boolean);
    procedure PokazDaneWybranegoFilmu;
    function UstawOcene(Ocena: byte): boolean;
    function UstawOceneFilm(Ocena: byte): boolean;
    procedure UstawOceneGraf(AOcena: byte); overload;
    procedure UstawOceneGraf(AOcena: byte; AImg: TImage; AImgLst: TImageList); overload;
    procedure OdswiezFiltrAktorow;
    function WybFiltrToDbIdx(filtr: TWybranyFiltr): integer;
    function WybFiltrToIdx(Filtr: TWybranyFiltr): integer;
    function WczytajTabDoFiltra(filtr: TWybranyFiltr; ds: TDataSet; postfix: string): integer;
    procedure UtworzFiltry;
    procedure WczytajPozycjeFiltru(MgrPoz: TManagerPozycji; lv: TListView; ImgIdx: integer);
    function GetMgrPozFiltra(filtr: TWybranyFiltr): TManagerPozycji;
    function FiltrAktywny(filtr: TWybranyFiltr): boolean;
    function WybranePozycjeFiltra(MgrPoz: TManagerPozycji; var LstWartosci: TStringList): integer;
    procedure UsunTagi;
    procedure PokazZdjecieAktora;
    function ZaznaczonaPozycjaListView(const lv: TListView): boolean;
    function ZaznaczoneWszystkiePozycjeListView(const lv: TListView): boolean;
    procedure OdswiezPozycjeFiltra(filtr: TWybranyFiltr);
    function PozFiltraToSql(Filtr: TWybranyFiltr; Pole: string): string;
    function PozFiltraLataToSql(Pole: string): string;
  public

  end;

var
  FrmMain: TFrmMain;

implementation

uses
  funkcje, inifiles, dmgl, dlgslownik, dlgaktorzy, dlgkatalogi, dlgskan, dlgRozszPl, dlgwlasc, usqlqryb,
  dmmain, dlgflmdod, dlgfilmlista, dlginfotxt, dlgrok, dlgczasfilm, dlgimgview, dlgpozsl, ulnkopen, dmakt,
  dlgpzlntxt, dlgslpoz, dlgakttxt, functrls, ugrlat;

{$R *.frm}


{ TFrmMain }

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  fLstFiltrow := TObjectList.Create;
  fIdRipWybPl := 0;
  fAktualneInfo := False;
  fAktualneParam := False;
  fAktualnyFilm := False;
  fAktualneTagi := False;
  fAktualneOpisy := False;
  fWczytanaOcena := 0;
end;

procedure TFrmMain.FormDestroy(Sender: TObject);
begin
  if Assigned(fKatMgr) then
    FreeAndNil(fKatMgr);
  if (Assigned(fLstFiltrow)) then
  begin
    fLstFiltrow.Clear;
    FreeAndNil(fLstFiltrow);
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
  tbnOceny.Down := True;
  UtworzFiltry;
  UtworzFiltrLata;
  DMM.UstawStanObjListyAktDataSet(True);
  OdswiezWidokKatalogow;
  OdswiezFiltrAktorow;
  acFiltrOceny.Execute;
end;

procedure TFrmMain.lvFiltrDekadyItemChecked(Sender: TObject; Item: TListItem);
var
  mgrPoz: TManagerPozycji;
  id: integer;
  i: integer;
  itemRok: TListItem;
  poz: TPozycjaSlownika;
  saZmiany: boolean;
  wzorzec: string;
begin
  saZmiany := False;
  mgrPoz := GetMgrPozFiltra(twfRok);

  if (lvFiltrDekady.Selected = nil) then
  begin
    wzorzec := Copy(item.Caption, 1, 3);
    if (ListViewMgrPozSetStateAllItem(lvFiltrLata, mgrPoz, wzorzec, Item.Checked) > 0) then
      saZmiany := True;
  end
  else if (lvFiltrDekady.Selected <> Item) then
  begin
    wzorzec := Copy(item.Caption, 1, 3);
    if (MgrPozSetStateAllItem(mgrPoz, wzorzec, Item.Checked) > 0) then
      saZmiany := True;
  end
  else
  begin
    for i := 0 to lvFiltrLata.Items.Count - 1 do
    begin
      itemRok := lvFiltrLata.Items[i];
      if (itemRok.Checked <> Item.Checked) then
      begin
        itemRok.Checked := Item.Checked;
        id := StrToInt(itemRok.SubItems.Strings[0]);
        poz := mgrPoz.GetPozycjaWgId(id);
        poz.Zaznaczona := itemRok.Checked;
        saZmiany := True;
      end;
    end;
  end;
  if (saZmiany) then
    OdswiezDane;
end;

procedure TFrmMain.lvFiltrDekadySelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
var
  mgrPoz: TManagerPozycji;
begin
  mgrPoz := GetMgrPozFiltra(twfRok);
  if Selected then
  begin
    mgrPoz.Filtr := Copy(Item.Caption, 1, 3);
  end
  else
  begin
    mgrPoz.Filtr := '';
  end;
  WczytajPozycjeFiltru(mgrPoz, lvFiltrLata, 54);
  lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltrLata.Items.Count, mgrPoz.IloscWszystkichPozycji]);
end;

procedure TFrmMain.lvFiltrLataItemChecked(Sender: TObject; Item: TListItem);
var
  poz: TPozycjaSlownika;
  pozDekada: TListItem;
  id: integer;
  mgrPoz: TManagerPozycji;
  wzorzec: string;
  stanLat: boolean;
begin
  id := StrToInt(Item.SubItems.Strings[0]);
  pozDekada := lvFiltrDekady.Selected;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  poz := mgrPoz.GetPozycjaWgId(id);
  poz.Zaznaczona := Item.Checked;
  if pozDekada <> nil then
    pozDekada.Checked := ZaznaczoneWszystkiePozycjeListView(lvFiltrLata)
  else
  begin
    wzorzec := Copy(Item.Caption, 1, 3);
    stanLat := ListViewAllItemIsCheck(lvFiltrLata, wzorzec);
    pozDekada := ListViewGetItem(lvFiltrDekady, wzorzec + '0');
    if (pozDekada <> nil) then
    begin
      if (pozDekada.Checked <> stanLat) then
        pozDekada.Checked := stanLat;
    end
    else
      MessageDlg('Błąd podczas wyszukiwania pozycji dekady ' + wzorzec + '0' + '.', mtError, [mbOK], 0);
  end;
  OdswiezDane;
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

procedure TFrmMain.acTagDodajExecute(Sender: TObject);
var
  frm: TFrmSlPoz;
  lstPoz: TStringList;
  idTag: longint;
  s: string;
begin
  if (fIdRipWybPl < 1) then
  begin
    MessageDlg('Brak IdRip wybranej pozycji', mtError, [mbOK], 0);
    Exit;
  end;
  if (DMM.qMain.Active) and (not DMM.qMain.IsEmpty) then
  begin
    //DMG.OdswiezDataSet(DMM.qTagi);
    DMG.OdswiezQueryZParam(DMM.qTagiExcp, 'IDRIP', fIdRipWybPl);
    frm := TFrmSlPoz.Create(self);
    try
      frm.TytulOkna := 'Dodaj tagi';
      frm.UstawDataSet(DMM.qTagiExcp, 'IdTag', 'NazwaTag');
      if (frm.ShowModal = mrOk) then
      begin
        lstPoz := TStringList.Create;
        try
          if (frm.ListaIdZaznaczoncychPozycji(lstPoz) > 0) then
          begin
            for s in lstPoz do
            begin
              idTag := StrToInt(s);
              DMM.DodajTag(fIdRipWybPl, idTag);
            end;
            DMG.OdswiezDataSet(DMM.qMainTag);
          end;
        finally
          lstPoz.Clear;
          FreeAndNil(lstPoz);
        end;
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acTagUsunExecute(Sender: TObject);
var
  nazwa: string;
begin
  if (DMM.qMainTag.Active and (not DMM.qMainTag.IsEmpty)) then
  begin
    if DMM.qMainTag.RecordCount > 1 then
    begin
      UsunTagi;
    end
    else
    begin
      nazwa := DMM.qMainTag.FieldByName('NazwaTag').AsString;
      if (MessageDlg('Usuń tag z z pliku', Format('Czy napewno usunąć tag "%s" przypisany do pliku?', [nazwa]), mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
      begin
        DMM.UsunTag(DMM.qMainTag.FieldByName('IdRip').AsInteger, DMM.qMainTag.FieldByName('IdTag').AsInteger);
        DMG.OdswiezDataSet(DMM.qMainTag);
      end;
    end;
  end;
end;

procedure TFrmMain.UsunTagi;
var
  frm: TFrmSlPoz;
  lstPoz: TStringList;
  idTag: longint;
  s: string;
begin
  frm := TFrmSlPoz.Create(self);
  try
    frm.TytulOkna := 'Usuń tagi';
    frm.UstawDataSet(DMM.qMainTag, 'IdTag', 'NazwaTag');
    if (frm.ShowModal = mrOk) then
    begin
      lstPoz := TStringList.Create;
      try
        if (frm.ListaIdZaznaczoncychPozycji(lstPoz) > 0) then
        begin
          for s in lstPoz do
          begin
            idTag := StrToInt(s);
            DMM.UsunTag(fIdRipWybPl, idTag);
          end;
          DMG.OdswiezDataSet(DMM.qMainTag);
        end;
      finally
        lstPoz.Clear;
        FreeAndNil(lstPoz);
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.PokazZdjecieAktora;
begin
  ImgBrakZdjAkt.Visible := False;
  if (not DMM.qMainAkt.IsEmpty) and (DMM.qMainAkt.FieldByName('ZdjecieScAkt').AsString <> '') then
  begin
    if (FileExists(DMM.qMainAkt.FieldByName('ZdjecieScAkt').AsString)) then
    begin
      ImgZdjAkt.Picture.LoadFromFile(DMM.qMainAkt.FieldByName('ZdjecieScAkt').AsString);
    end
    else
    begin
      ImgZdjAkt.Picture.Clear;
      ImgBrakZdjAkt.Visible := True;
    end;
  end
  else
  begin
    ImgZdjAkt.Picture.Clear;
  end;
end;

function TFrmMain.ZaznaczonaPozycjaListView(const lv: TListView): boolean;
var
  i: integer;
begin
  Result := False;
  if (Assigned(lv)) then
  begin
    for i := 0 to lv.Items.Count - 1 do
    begin
      if lv.Items[i].Checked then
      begin
        Result := True;
        break;
      end;
    end;
  end;
end;

function TFrmMain.ZaznaczoneWszystkiePozycjeListView(const lv: TListView): boolean;
var
  i: integer;
begin
  Result := False;
  if (Assigned(lv)) then
  begin
    Result := True;
    for i := 0 to lv.Items.Count - 1 do
    begin
      if not lv.Items[i].Checked then
      begin
        Result := False;
        break;
      end;
    end;
  end;
end;

procedure TFrmMain.OdswiezPozycjeFiltra(filtr: TWybranyFiltr);
begin
  case filtr of
    //twfOcena:
    //twfRok:
    twfAktor:
    begin
      DMM.qMainFiltrAkt.Open;
      WczytajTabDoFiltra(twfAktor, DMM.qMainFiltrAkt, 'Akt');
      DMM.qMainFiltrAkt.Close;
    end;
    twfTag:
    begin
      DMM.qMainFiltrTag.Open;
      WczytajTabDoFiltra(twfTag, DMM.qMainFiltrTag, 'Tag');
      DMM.qMainFiltrTag.Close;
    end;
    twfGatunek:
    begin
      DMM.qMainFiltrGat.Open;
      WczytajTabDoFiltra(twfGatunek, DMM.qMainFiltrGat, 'Gat');
      DMM.qMainFiltrGat.Close;
    end;
    twfSeria:
    begin
      DMM.qMainFiltrSer.Open;
      WczytajTabDoFiltra(twfSeria, DMM.qMainFiltrSer, 'Serii');
      DMM.qMainFiltrSer.Close;
    end;
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
  DMM.OdswiezSlowniki;
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
    if (frm.SaZmiany) then
    begin
      acWidokOdswiez.Execute;
    end;
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

procedure TFrmMain.btnDodOceneFilmuClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := Mouse.CursorPos;
  pmOcenyF.PopUp(pt.x, pt.y);
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

procedure TFrmMain.dsMainAktDataChange(Sender: TObject; Field: TField);
begin
  PokazZdjecieAktora;
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
  DMM.qMainGat.Close;

  tmrMain.Enabled := False;
  tmrMain.Enabled := True;
end;

procedure TFrmMain.edFiltrListViewChange(Sender: TObject);
begin
  tmrFiltr.Enabled := True;
end;

procedure TFrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DMM.UstawStanObjListyAktDataSet(False);
end;

procedure TFrmMain.lvKatDblClick(Sender: TObject);
begin
  acKatNiz.Execute;
end;

procedure TFrmMain.MenuItem23Click(Sender: TObject);
begin
  UstawOcene((Sender as TMenuItem).Tag);
end;

procedure TFrmMain.MenuItem33Click(Sender: TObject);
var
  ocena: integer;
begin
  ocena := (Sender as TMenuItem).Tag;
  UstawOceneFilm(ocena);
  lbOcenaFOpis.Caption := DMM.OpisOceny(ocena);
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

procedure TFrmMain.sbnOcenaFilmClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := Mouse.CursorPos;
  pmOcenyF.PopUp(pt.x, pt.y);
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
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  if (mgrPoz.AktywnyFiltr) then
  begin
    edFiltrListView.Clear;
    mgrPoz.Filtr := '';
    imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
    WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
    lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltry.Items.Count, mgrPoz.IloscWszystkichPozycji]);
  end;
end;

procedure TFrmMain.SpeedButton5Click(Sender: TObject);
var
  frm: TFrmCzasFilm;
begin
  if (not DMM.qMainFilm.IsEmpty) then
  begin
    frm := TFrmCzasFilm.Create(self);
    try
      if DMM.qMainFilm.FieldByName('DlugoscFilmu').IsNull then
        frm.Brak := True
      else
        frm.Czas := DMM.qMainFilm.FieldByName('DlugoscFilmu').AsInteger;
      if (frm.ShowModal = mrOk) then
      begin
        if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
          DMM.qMainFilm.Edit;
        if (frm.Brak) then
          DMM.qMainFilm.FieldByName('DlugoscFilmu').Clear
        else
          DMM.qMainFilm.FieldByName('DlugoscFilmu').AsInteger := frm.Czas;
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

procedure TFrmMain.tmrFiltrTimer(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  tmrFiltr.Enabled := False;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  mgrPoz.Filtr := Trim(edFiltrListView.Text);
  imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
  lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltry.Items.Count, mgrPoz.IloscWszystkichPozycji]);
end;

procedure TFrmMain.tmrMainTimer(Sender: TObject);
begin
  PokazDanePliku;
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
    DMG.OdswiezDataSet(DMM.qTagi);
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
  //idFilmu: longint;
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
          MessageDlg('Informacja', 'Film o takim tytule już jest dla tego pliku', mtInformation, [mbOK], 0);
        end
        else
        begin
          {idFilmu := }DMM.DodajFilm(fIdRipWybPl, frm.TytulFilmu, frm.RokFilmu);
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
        {ShellExecute(0, PChar('open'), PChar(s),
          PChar(''), PChar(''), 1);}
        {if RunCommand(s,r) then
          ShowMessage('OK - '+r)
        else
          ShowMessage('Problem - '+r);}
        OpenDocument(s);
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
              PokazDaneZaklParam(True);
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
  //idAkt: longint;
  idFilmu: longint;
  lstWybIdAkt: TStringList;
  dodanoAktora: boolean;
  i: integer;
begin
  if ((DMM.qMainAkt.Active) and (not DMM.qMainFilm.IsEmpty)) then
  begin
    idFilmu := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;

    frm := TFrmAktorzy.Create(self);
    try
      dodanoAktora := False;
      frm.TrybOtwarcia := tooWybor;
      frm.TrybWyboruPozycji := twpWielePoz;
      if frm.ShowModal = mrOk then
      begin
        if (frm.SaWybranePozycje) then
        begin
          lstWybIdAkt := TStringList.Create;
          try
            frm.WybranePozycje(lstWybIdAkt);
            for i := 0 to lstWybIdAkt.Count - 1 do
            begin
              if DMA.DodajAktoraDoFilmu(StrToInt(lstWybIdAkt[i]), idFilmu) then
                dodanoAktora := True;
            end;
          finally
            lstWybIdAkt.Clear;
            FreeAndNil(lstWybIdAkt);
          end;
          if (dodanoAktora) then
            DMG.OdswiezDataSet(DMM.qMainAkt);
        end
        else
          ShowMessage('Nie wybrano aktora');

      {idAkt := frm.WybraneIdAktora;
      if idAkt > 0 then
      begin
        idFilmu := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
        if DMA.DodajAktoraDoFilmu(IdAkt, IdFilmu) then
          DMG.OdswiezDataSet(DMM.qMainAkt, 'IdAkt', IdAkt);
      end
      else
        ShowMessage('Nie wybrano aktora');}
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acAktDodajTxtExecute(Sender: TObject);
var
  frm: TFrmAktTxt;
begin
  if not DMM.qMainFilm.IsEmpty then
  begin
    frm := TFrmAktTxt.Create(self);
    try
      frm.IdFilmu := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acAktEdycjaExecute(Sender: TObject);
var
  frm: TFrmAktorzy;
begin
  if ((DMM.qMainAkt.Active) and (not DMM.qMainAkt.IsEmpty)) then
  begin
    frm := TFrmAktorzy.Create(self);
    try
      //frm.WybraneIdAktora:= DMM.qMainAkt.FieldByName('IdAkt').AsInteger;
      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acAktUsunExecute(Sender: TObject);
var
  nazwa: string;
  idAkt: longint;
  idFilmu: longint;
begin
  if ((DMM.qMainAkt.Active) and (not DMM.qMainAkt.IsEmpty)) then
  begin
    nazwa := DMM.qMainAkt.FieldByName('NazwaAkt').AsString;
    if MessageDlg('Potwierdzenie usunięcia aktora', Format('Czy napweno usunąć "%s" z filmu?', [nazwa]), mtConfirmation, [mbYes, mbCancel], 0) = mrYes then
    begin
      idAkt := DMM.qMainAkt.FieldByName('IdAkt').AsInteger;
      idFilmu := DMM.qMainAkt.FieldByName('IdFilmu').AsInteger;
      DMA.UsunAktoraZFilmu(idAkt, idFilmu);
      DMG.OdswiezDataSet(DMM.qMainAkt);
    end;
  end;
end;

procedure TFrmMain.acFiltrLataExecute(Sender: TObject);
begin
  fWybFiltr := twfRok;
  pnlFiltryTytul.Caption := 'Lata';
  nbkFiltry.PageIndex := 1;
end;

procedure TFrmMain.acFiltrOcenyExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
begin
  fWybFiltr := twfOcena;
  pnlFiltryTytul.Caption := 'Oceny';
  nbkFiltry.PageIndex := 0;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  edFiltrListView.Text := mgrPoz.Filtr;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, 1);
  lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltry.Items.Count, mgrPoz.IloscWszystkichPozycji]);
end;

procedure TFrmMain.acFiltrOdswiezExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  OdswiezPozycjeFiltra(fWybFiltr);
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  edFiltrListView.Text := mgrPoz.Filtr;
  imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
  lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltry.Items.Count, mgrPoz.IloscWszystkichPozycji]);
end;

procedure TFrmMain.acFiltrSerieExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  fWybFiltr := twfSeria;
  pnlFiltryTytul.Caption := 'Serie';
  nbkFiltry.PageIndex := 0;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  edFiltrListView.Text := mgrPoz.Filtr;
  imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
end;

procedure TFrmMain.acFiltrTagiExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  fWybFiltr := twfTag;
  pnlFiltryTytul.Caption := 'Tagi';
  nbkFiltry.PageIndex := 0;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  edFiltrListView.Text := mgrPoz.Filtr;
  imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
end;

procedure TFrmMain.acFiltrWyczyscExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  if (mgrPoz.SaWybranePozycje) then
  begin
    mgrPoz.OdznaczWszystkiePozycje;
    imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
    WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
    lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltry.Items.Count, mgrPoz.IloscWszystkichPozycji]);
    OdswiezDane;
  end;
end;

procedure TFrmMain.acFiltrAktorzyExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  fWybFiltr := twfAktor;
  pnlFiltryTytul.Caption := 'Aktorzy';
  nbkFiltry.PageIndex := 0;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  edFiltrListView.Text := mgrPoz.Filtr;
  imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
  lbFiltrIlosc.Caption := Format('%d/%d', [lvFiltry.Items.Count, mgrPoz.IloscWszystkichPozycji]);
end;

procedure TFrmMain.acFiltrGatunkiExecute(Sender: TObject);
var
  mgrPoz: TManagerPozycji;
  imgIdx: integer;
begin
  fWybFiltr := twfGatunek;
  pnlFiltryTytul.Caption := 'Gatunki';
  nbkFiltry.PageIndex := 0;
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  edFiltrListView.Text := mgrPoz.Filtr;
  imgIdx := WybFiltrToIdx(fWybFiltr) + 1;
  WczytajPozycjeFiltru(mgrPoz, lvFiltry, imgIdx);
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

procedure TFrmMain.acGatDodajExecute(Sender: TObject);
var
  frm: TFrmSlPoz;
  lstPoz: TStringList;
  idGat: longint;
  idFilmu: longint;
  s: string;
begin
  if (DMM.qMainFilm.Active) and (not DMM.qMainFilm.IsEmpty) and (DMM.qMainGat.Active) then
  begin
    idFilmu := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
    DMG.OdswiezQueryZParam(DMM.qGatExcp, 'IdFilmu', idFilmu);
    frm := TFrmSlPoz.Create(self);
    try
      frm.TytulOkna := 'Dodaj gatunki';
      frm.UstawDataSet(DMM.qGatExcp, 'IdGat', 'NazwaGat');
      if (frm.ShowModal = mrOk) then
      begin
        lstPoz := TStringList.Create;
        try
          if (frm.ListaIdZaznaczoncychPozycji(lstPoz) > 0) then
          begin
            for s in lstPoz do
            begin
              idGat := StrToInt(s);
              DMM.DodajGatunek(idGat, idFilmu);
            end;
            DMG.OdswiezDataSet(DMM.qMainGat);
          end;
        finally
          lstPoz.Clear;
          FreeAndNil(lstPoz);
        end;
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmMain.acGatEdycjaExecute(Sender: TObject);
var
  frm: TFrmPozSlownika;
begin
  frm := TFrmPozSlownika.Create(self);
  try
    frm.TytulOkna := 'Edycja opisu gatunku';
    frm.Ikona := 7;
    frm.OpisWidoczny := True;
    frm.EdycjaNazwy := False;
    if frm.ShowModal = mrOk then
    begin
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acInnyTytDodajExecute(Sender: TObject);
var
  frm: TFrmPozSlownika;
begin
  frm := TFrmPozSlownika.Create(self);
  try
    frm.TytulOkna := 'Nowy inny tytuł';
    frm.Ikona := 0;
    frm.OpisWidoczny := False;
    if frm.ShowModal = mrOk then
    begin
      if (DMM.FilmMaTakiInnyTytul(DMM.qMainFilm.FieldByName('IdFilmu').AsInteger, frm.Nazwa)) then
      begin
        MessageDlg('Taki tytuł już jest', mtWarning, [mbOK], 0);
      end
      else
      begin
        if DMM.qMainAkaF.State in [dsInsert, dsEdit] then
          DMM.qMainAkaF.Cancel;

        DMM.qMainAkaF.Append;
        DMM.qMainAkaF.FieldByName('IdFilmu').AsInteger := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
        DMM.qMainAkaF.FieldByName('NazwaAKAF').AsString := frm.Nazwa;
        DMM.qMainAkaF.Post;
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmMain.acInnyTytDodWieleExecute(Sender: TObject);
var
  frm: TFrmPozLinTxt;
  s: string;
  i: integer;
  saNowePozycje: boolean;
  idFilmu: longint;
begin
  frm := TFrmPozLinTxt.Create(self);
  try
    saNowePozycje := False;
    frm.TytulOkna := 'Dodaj inne tytuły';
    if (frm.ShowModal = mrOk) then
    begin
      if frm.OdczytajPozycje > 0 then
      begin
        for i := 0 to frm.Pozycje.Count - 1 do
        begin
          s := frm.Pozycje.Strings[i];
          idFilmu := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
          if DMM.DodajInnyTytul(idFilmu, s) > 0 then
            saNowePozycje := True;
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
    MessageDlg('Tabela nie aktywna', mtError, [mbOK], 0);
    Exit;
  end;

  if not DMM.qMainAkaF.IsEmpty then
  begin
    if (MessageDlg(Format('Czy napewno usunąć tytuł:' + sLineBreak + '"%s"?', [DMM.qMainAkaF.FieldByName('NazwaAKAF').AsString]), mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      if DMM.qMainAkaF.State in [dsInsert, dsEdit] then
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
  frm: TFrmPozSlownika;
begin
  if not DMM.qMainLinki.Active then
  begin
    MessageDlg('Tabela nie aktywna', mtError, [mbOK], 0);
    Exit;
  end;

  frm := TFrmPozSlownika.Create(self);
  try
    frm.TytulOkna := 'Nowy link';
    frm.Ikona := 2;
    if frm.ShowModal = mrOk then
    begin
      if (DMM.FilmMaTakiLink(DMM.qMainFilm.FieldByName('IdFilmu').AsInteger, frm.Nazwa)) then
      begin
        MessageDlg('Taki link już jest', mtWarning, [mbOK], 0);
      end
      else
      begin
        if DMM.qMainLinki.State in [dsInsert, dsEdit] then
          DMM.qMainLinki.Cancel;

        DMM.qMainLinki.Append;
        DMM.qMainLinki.FieldByName('IdFilmu').AsInteger := DMM.qMainFilm.FieldByName('IdFilmu').AsInteger;
        DMM.qMainLinki.FieldByName('TrescLnk').AsString := frm.Nazwa;
        if (frm.Opis <> '') then
          DMM.qMainLinki.FieldByName('OpisLnk').AsString := frm.Opis;
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
    MessageDlg('Tabela nie aktywna', mtError, [mbOK], 0);
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
    MessageDlg('Tabela nie aktywna', mtError, [mbOK], 0);
    Exit;
  end;

  if not DMM.qMainLinki.IsEmpty then
  begin
    if (MessageDlg(Format('Czy napewno usunąć link:' + sLineBreak + '"%s"?', [DMM.qMainLinki.FieldByName('TrescLnk').AsString]), mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      if DMM.qMainLinki.State in [dsInsert, dsEdit] then
        DMM.qMainLinki.Cancel;

      DMM.qMainLinki.Delete;
    end;
  end;
end;

procedure TFrmMain.acOklPowiekszExecute(Sender: TObject);
var
  frm: TFrmImgView;
begin
  if ((not DMM.qMainFilm.IsEmpty) and (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '')) then
  begin
    frm := TFrmImgView.Create(self);
    try
      frm.TytulOkna := 'Podgląd okładki';
      frm.PlikObr := DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString;
      ;
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
      pytanie := True;
      if EndsStr(DirectorySeparator, DMG.Ustawienia.Values['okladki']) then
        plik := DMG.Ustawienia.Values['okladki'] + IntToStr(fIdRipWybPl) + '_okl1.jpg'
      else
        plik := DMG.Ustawienia.Values['okladki'] + IntToStr(fIdRipWybPl) + '_okl1.jpg';

      if (FileExists(plik)) then
      begin
        if (MessageDlg('Plik o podanej nazwie istnieje. Czy go nadpisać?', mtWarning, [mbOK, mbCancel], 0) <> mrOk) then
          pytanie := False
        else
          Exit;
      end;
      if ((pytanie) and (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '') and (FileExists(DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString))) then
      begin
        if (MessageDlg('Nadpisać istniejącą okładkę?', mtWarning, [mbOK, mbCancel], 0) <> mrOk) then
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
  usunPlik: boolean;
  edycja: boolean;
  sc: string;
begin
  usunPlik := False;
  if ((not DMM.qMainFilm.IsEmpty) and (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '')) then
  begin
    sc := DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString;
    if (MessageDlg('Czy napewno usunąć okładkę?', mtWarning, [mbOK, mbCancel], 0) = mrOk) then
    begin
      if (FileExists(sc)) then
        usunPlik := (MessageDlg('Usunąć plik okładki z dysku?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk);
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
  edycja: boolean;
begin
  if not DMM.qMainFilm.IsEmpty then
  begin
    OpenDlg.InitialDir := DMG.Ustawienia.Values['okladki'];
    edycja := False;
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
  Result := True;

  DMG.Ustawienia := OdczytajUstawienia;

  DMG.OtworzPolaczenieZBazaDanych(DMG.Ustawienia, True);

  fKatMgr := TKatMgr.Create;
end;

function TFrmMain.OdczytajUstawienia: TStringList;
var
  plikUst: string;
  lstUst: TStringList;
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
    lstUst.Values['okladki'] := Format('%s%s', [GetAppDir(), 'obr' + DirectorySeparator + 'okl' + DirectorySeparator]);
  if (lstUst.Values['aktorzy'] = '') then
    lstUst.Values['aktorzy'] := Format('%s%s', [GetAppDir(), 'obr' + DirectorySeparator + 'akt' + DirectorySeparator]);

  DMG.LinkOpen.LokalicacjaPrzegladarki := lstUst.Values['przegladarka'];
  DMG.LinkOpen.ParametryPrzegladarki := lstUst.Values['parametry_przegladarki'];

  Result := lstUst;
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
      kat := fKatMgr.ListaKatalogow.Items[i] as TKatalog;
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
  kat: TKatalog;
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
  s: string;
begin
  qry := TSqlQueryBuilder.Create;
  try
    qry.AddFields('P.IdPl, P.IdFld, P.IdRip, P.IdTypPl, P.NazwaPl, P.ScPl, P.WzgScPl, P.IdRozszPl, P.RozmiarPl, P.StatusPl, I.IloscUruchomienIpf, P.DataDodPl, P.DataModPl, P.OpisPl');
    qry.AddFields('R.Crc32Rip, R.Md5Rip, T.NazwaTypPl, O.NazwaRozszPl, O.ImgIdxRozszPl, I.WysokoscIpf, I.SzerokoscIpf, R.OcenaRip, O.NazwaOceny');
    qry.From := 'Pliki P';

    qry.AddJoin('JOIN RejestrPlikow R ON R.IdRip = P.IdRip');
    qry.AddJoin('LEFT JOIN TypyPl T ON T.IdTypPl = P.IdTypPl');
    qry.AddJoin('LEFT JOIN RozszerzeniaPl O ON O.IdRozszPl = P.IdRozszPl');
    qry.AddJoin('LEFT JOIN InfoPlikiFilmy I ON I.IdRip = R.IdRip');
    qry.AddJoin('LEFT JOIN Oceny O ON O.IdOceny = R.OcenaRip');

    qry.SetOrder('P.NazwaPl');

    if ((fKatMgr.Poziom > 0) and (fKatMgr.WybranyKatalog <> nil)) then
      qry.AddWhereFormat('P.IdFld = %d ', [fKatMgr.WybranyKatalog.IdKatalogu]);

    // TU FILTRY
    s := PozFiltraToSql(twfOcena, 'R.OcenaRip');
    if (s <> '') then
      qry.AddWhere(s);

    s := PozFiltraLataToSql('F.RokFilmu');
    if (s <> '') then
    begin
      qry.AddWhereFormat('EXISTS (SELECT PF.IDFILMU FROM PLIKIFILMY PF JOIN Filmy F ON F.IDFILMU = PF.IDFILMU WHERE PF.IDRIP = R.IDRIP AND (%s))', [s]);
    end;

    s := PozFiltraToSql(twfAktor, 'FA.IdAkt');
    if (s <> '') then
    begin
      qry.AddWhereFormat('EXISTS (SELECT FA.IDFILMU FROM PLIKIFILMY PF JOIN FILMYAKT FA ON FA.IDFILMU = PF.IDFILMU WHERE PF.IDRIP = R.IDRIP AND %s)', [s]);
    end;

    s := PozFiltraToSql(twfTag, 'RT.IdTag');
    if (s <> '') then
    begin
      qry.AddWhereFormat('EXISTS(SELECT RT.IdTag FROM RejPlTag RT WHERE RT.IdRip = R.IdRip AND %s)', [s]);
    end;

    s := PozFiltraToSql(twfGatunek, 'FG.IdGat');
    if (s <> '') then
    begin
      qry.AddWhereFormat('EXISTS (SELECT FA.IDFILMU FROM PLIKIFILMY PF JOIN FilmyGatunki FG ON FG.IDFILMU = PF.IDFILMU WHERE PF.IDRIP = R.IDRIP AND %s)', [s]);
    end;

    s := PozFiltraToSql(twfSeria, 'F.IdSerii');
    if (s <> '') then
    begin
      qry.AddWhereFormat('EXISTS (SELECT PF.IDFILMU FROM PLIKIFILMY PF JOIN Filmy F ON F.IDFILMU = PF.IDFILMU WHERE PF.IDRIP = R.IDRIP AND %s)', [s]);
    end;

    {else if ((fWybFiltr = twfRok) and (tvFiltryLata.Selected <> nil) and (tvFiltryLata.Selected.AbsoluteIndex > 0)) then
    begin
      if (tvFiltryLata.Selected.Level = 1) then
        qry.AddWhereFormat('R.OcenaRip = %d ', [7-lvFiltry.ItemIndex])
      else if (tvFiltryLata.Selected.Level = 2) then
        qry.AddWhereFormat('R.OcenaRip = %d ', [7-lvFiltry.ItemIndex])
    end;}
    //end;

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
      item:= lvFiltry.Selected;
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

function TFrmMain.PozFiltraToSql(Filtr: TWybranyFiltr; Pole: string): string;
var
  iloscWart: integer;
  lstWart: TStringList;
  MgrPoz: TManagerPozycji;
  s: string;
begin
  Result := '';

  lstWart := TStringList.Create;
  try
    MgrPoz := GetMgrPozFiltra(Filtr);
    iloscWart := WybranePozycjeFiltra(MgrPoz, lstWart);
    if (iloscWart > 1) then
    begin
      s := lstWart.CommaText;
      Result := Format('%s IN (%s) ', [Pole, s]);
    end
    else if (iloscWart > 0) then
    begin
      Result := Format('%s = %s ', [Pole, lstWart.Strings[0]]);
    end;
  finally
    LstWart.Clear;
    FreeAndNil(LstWart);
  end;

end;

function TFrmMain.PozFiltraLataToSql(Pole: string): string;
var
  GrupLat: TGrupowanieLat;
  mgrPoz: TManagerPozycji;
  poz: TPozycjaSlownika;
  i: integer;
begin
  Result := '';
  mgrPoz := GetMgrPozFiltra(twfRok);
  if (mgrPoz.SaWybranePozycje) then
  begin
    GrupLat := TGrupowanieLat.Create;
    try
      for i := 0 to mgrPoz.IloscWszystkichPozycji - 1 do
      begin
        poz := mgrPoz.Pozycja[i];
        if (poz.Zaznaczona) then
        begin
          GrupLat.DodajRok(StrToInt(poz.Nazwa));
        end;
      end;
      Result := GrupLat.GetWarunekWhere(Pole);
    finally
      FreeAndNil(GrupLat);
    end;
  end;
end;


procedure TFrmMain.UtworzFiltrOceny(MgrPozOcen: TManagerPozycji);
const
  oceny: array[0..5] of string = ('Beznadziejny', 'Słaby', 'Taki sobie', 'Dobry', 'Bardzo dobry', 'Świetny');
var
  i: integer;
  poz: TPozycjaSlownika;
begin
  if not Assigned(MgrPozOcen) then
    raise Exception.Create('Błąd poczas próby utworzenia filtra ocen - obiekt klasy TManagerPozycji nie istnieje');

  MgrPozOcen.UsunWszystkiePozycje;

  for i := 5 downto 0 do
  begin
    poz := TPozycjaSlownika.Create(i + 1, oceny[i]);
    MgrPozOcen.DodajPozycje(poz);
  end;
end;

procedure TFrmMain.UtworzFiltrLata;
var
  lstLat: TStringList;
  lstDekad: TStringList;
  i: integer;
  s: string;
  poz: TListItem;
  mgrPoz: TManagerPozycji;
  pozSl: TPozycjaSlownika;
begin
  lstLat := TStringList.Create;
  lstDekad := TStringList.Create;
  try
    DMG.GetListaLatIDekadFolder(0, lstLat);
    mgrPoz := GetMgrPozFiltra(twfRok);

    for i := 0 to lstLat.Count - 1 do
    begin
      s := lstLat.ValueFromIndex[i];
      if lstDekad.IndexOf(s) < 0 then
        lstDekad.Add(s);

      s := lstLat.Names[i];
      pozSl := TPozycjaSlownika.Create(StrToIntDef(s, 0), s);
      mgrPoz.DodajPozycje(pozSl);
    end;

    lvFiltrDekady.Items.BeginUpdate;
    try
      lvFiltrDekady.Items.Clear;
      for i := 0 to lstDekad.Count - 1 do
      begin
        poz := lvFiltrDekady.Items.Add;
        poz.Caption := lstDekad.Strings[i];
        poz.ImageIndex := 53;
      end;
    finally
      lvFiltrDekady.Items.EndUpdate;
    end;
    WczytajPozycjeFiltru(mgrPoz, lvFiltrLata, 54);



  finally
    lstDekad.Clear;
    FreeAndNil(lstDekad);
    lstLat.Clear;
    FreeAndNil(lstLat);
  end;
end;

procedure TFrmMain.PokazDanePliku;
begin
  tmrMain.Enabled := False;
  fAktualneInfo := False;
  fAktualneParam := False;
  fAktualnyFilm := False;
  fAktualneTagi := False;
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
    PokazZakladkiTypu(DMM.qMain.FieldByName('IdTypPl').AsInteger);
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

procedure TFrmMain.PokazZakladkiTypu(IdTypu: longint);
begin
  case IdTypu of
    TYP_FILM:
    begin
      if not tsPlikParam.TabVisible then
        tsPlikParam.TabVisible := True;
      if not tsPlikFilm.TabVisible then
        tsPlikFilm.TabVisible := True;
    end;
    TYP_GRAF_TXT:
    begin
      if tsPlikParam.TabVisible then
        tsPlikParam.TabVisible := False;
      if tsPlikFilm.TabVisible then
        tsPlikFilm.TabVisible := False;
    end;
    TYP_DZWIEK:
    begin
      if tsPlikParam.TabVisible then
        tsPlikParam.TabVisible := False;
      if tsPlikFilm.TabVisible then
        tsPlikFilm.TabVisible := False;
    end;
  end;
end;

procedure TFrmMain.PokazDaneWybranejZakladki;
begin
  if (pcDanePl.ActivePage = tsPlikInfo) then
  begin
    PokazDaneZaklInfo;
  end
  else if (pcDanePl.ActivePage = tsPlikParam) then
  begin
    PokazDaneZaklParam(False);
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

procedure TFrmMain.PokazDaneZaklInfo;
var
  oc: longint;
begin
  if (not fAktualneInfo) then
  begin
    oc := DMM.qMain.FieldByName('OcenaRip').AsInteger;
    UstawOceneGraf(oc);

    fAktualneInfo := True;
  end;
end;

procedure TFrmMain.PokazDaneZaklParam(Wymus: boolean);
var
  jestRekord: boolean;
begin
  jestRekord := False;

  if (not fAktualneParam) or (Wymus) then
  begin
    if (fIdRipWybPl > 0) then
    begin

      jestRekord := not DMM.qMainInfo.IsEmpty;
    end;

    sbnInfoDodaj.Enabled := not jestRekord;
    lcbRodzaj.Enabled := jestRekord;
    fAktualneParam := True;
  end;
end;

procedure TFrmMain.PokazDaneZaklFilm;
var
  jestRekordFilm: boolean;
  iloscF: integer;
  ocf, ocpl: longint;
  jestOcenaFilmu: boolean;
begin
  if (not fAktualnyFilm) then
  begin
    ImgBrakOkl.Visible := False;
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
        ocf := DMM.qMainFilm.FieldByName('OcenaFilmu').AsInteger;
        ocpl := DMM.qMain.FieldByName('OcenaRip').AsInteger;
        jestOcenaFilmu := (ocf > 0);
        btnDodOceneFilmu.Enabled := not jestOcenaFilmu;
        btnDodOceneFilmu.Visible := not jestOcenaFilmu;
        pnlFilmOcena.Visible := jestOcenaFilmu;
        UstawOceneGraf(ocpl, ImgOcenaPlF, DMG.ilStars16);
        if (ocf > 0) then
        begin
          UstawOceneGraf(ocf, ImgOcenaF, DMG.ilStars16);
          lbOcenaFOpis.Caption := DMM.OpisOceny(ocf);
        end;
      end
      else
      begin
        sbnFilm.ImageIndex := 1;
        sbnFilm.Hint := 'Dodaj film';
        btnDodOceneFilmu.Enabled := False;
        btnDodOceneFilmu.Visible := True;
        pnlFilmOcena.Visible := False;
        UstawOceneGraf(0, ImgOcenaPlF, DMG.ilStars16);
        lbOcenaFOpis.Caption := '';
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
    jestRekordInfo := not DMM.qMainInfo.IsEmpty;
    pnOpisInfo.Visible := not jestRekordInfo;
    DBMemo5.Visible := jestRekordInfo;
  end;
end;

procedure TFrmMain.PokazDaneWybranegoFilmu;
var
  id: longint;
  sc: string;
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
      sc := DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString;
      if (sc <> '') then
      begin
        if (FileExists(sc)) then
          ImgOkladka.Picture.LoadFromFile(sc)
        else
          ImgBrakOkl.Visible := True;
      end
      else
        ImgOkladka.Picture.Clear;

      {if (DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString <> '') and (FileExists(DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString)) then
        ImgOkladka.Picture.LoadFromFile(DMM.qMainFilm.FieldByName('OkladkaScFilmu').AsString)
      else
        ImgOkladka.Picture.Clear;}

      DMM.qMainAkt.Close;
      DMM.qMainAkt.ParamByName('IdFilmu').AsInteger := id;
      DMM.qMainAkt.Open;
      DMM.qMainLinki.Close;
      DMM.qMainLinki.ParamByName('IdFilmu').AsInteger := id;
      DMM.qMainLinki.Open;
      DMM.qMainAkaF.Close;
      DMM.qMainAkaF.ParamByName('IdFilmu').AsInteger := id;
      DMM.qMainAkaF.Open;
      DMM.qMainGat.Close;
      DMM.qMainGat.ParamByName('IdFilmu').AsInteger := id;
      DMM.qMainGat.Open;

      PokazZdjecieAktora;
    end
    else
    begin
      //UstawOceneGraf(0);
      MessageDlg('Błąd', 'Film ma przypisany nieprawidłowy identyfikator', mtError, [mbOK], 0);
    end;
  end;
end;

function TFrmMain.UstawOcene(Ocena: byte): boolean;
var
  IdRip: longint;
begin
  Result := False;
  if ((not DMM.qMain.IsEmpty) and (Ocena in [0..6])) then
  begin
    IdRip := DMM.qMain.FieldByName('IdRip').AsInteger;
    DMM.UstawOcenePliku(IdRip, Ocena);
    DMG.OdswiezDataSet(DMM.qMain, 'IdPl');

    {if not (DMM.qMain.State in [dsInsert, dsEdit]) then
      DMM.qMain.Edit;
    DMM.qMain.FieldByName('OcenaRip').AsInteger := Ocena;
    DMM.qMain.Post;}
    //UstawOceneGraf(Ocena);
    Result := True;
  end;
end;

function TFrmMain.UstawOceneFilm(Ocena: byte): boolean;
var
  jestOcenaFilmu: boolean;
begin
  Result := False;
  if ((DMM.qMainFilm.Active) and (not DMM.qMainFilm.IsEmpty) and (Ocena in [0..6])) then
  begin
    if (DMM.qMainFilm.FieldByName('OcenaFilmu').AsInteger <> Ocena) then
    begin
      if not (DMM.qMainFilm.State in [dsInsert, dsEdit]) then
        DMM.qMainFilm.Edit;
      DMM.qMainFilm.FieldByName('OcenaFilmu').AsInteger := Ocena;
      DMM.qMainFilm.Post;

      jestOcenaFilmu := (Ocena > 0);
      btnDodOceneFilmu.Enabled := not jestOcenaFilmu;
      btnDodOceneFilmu.Visible := not jestOcenaFilmu;
      pnlFilmOcena.Visible := jestOcenaFilmu;
      UstawOceneGraf(Ocena, ImgOcenaF, DMG.ilStars16);

      Result := True;
    end;
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
      DMG.ilStars.GetBitmap(AOcena, bmp);
      imgOcena.Picture.Bitmap := bmp;

    finally
      FreeAndNil(bmp);
    end;
    fWczytanaOcena := AOcena;
  end;
end;

procedure TFrmMain.UstawOceneGraf(AOcena: byte; AImg: TImage; AImgLst: TImageList);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  try
    AImgLst.GetBitmap(AOcena, bmp);
    AImg.Picture.Bitmap := bmp;

  finally
    FreeAndNil(bmp);
  end;
end;

procedure TFrmMain.OdswiezFiltrAktorow;
begin
  DMG.OdswiezDataSet(DMM.qMainFiltrAkt, 'IdAkt');
end;

function TFrmMain.WybFiltrToDbIdx(filtr: TWybranyFiltr): integer;
begin
  case filtr of
    twfOcena: Result := 0;
    twfRok: Result := 1;
    twfAktor: Result := 2;
    twfTag: Result := 3;
    twfGatunek: Result := 4;
    twfSeria: Result := 5;
    else
      Result := -1;
  end;
end;

function TFrmMain.WybFiltrToIdx(Filtr: TWybranyFiltr): integer;
begin
  case filtr of
    twfOcena: Result := 0;
    twfRok: Result := 1;
    twfAktor: Result := 2;
    twfTag: Result := 3;
    twfGatunek: Result := 4;
    twfSeria: Result := 5;
    else
      Result := -1;
  end;
end;

procedure TFrmMain.UtworzFiltry;
var
  mgrPoz: TManagerPozycji;
  i: integer;
begin
  for i := 0 to 5 do
  begin
    mgrPoz := TManagerPozycji.Create;
    fLstFiltrow.Add(mgrPoz);
  end;

  mgrPoz := TManagerPozycji(fLstFiltrow.Items[WybFiltrToDbIdx(twfOcena)]);
  UtworzFiltrOceny(mgrPoz);

  DMM.qMainFiltrAkt.Open;
  WczytajTabDoFiltra(twfAktor, DMM.qMainFiltrAkt, 'Akt');
  DMM.qMainFiltrAkt.Close;

  DMM.qMainFiltrTag.Open;
  WczytajTabDoFiltra(twfTag, DMM.qMainFiltrTag, 'Tag');
  DMM.qMainFiltrTag.Close;

  DMM.qMainFiltrGat.Open;
  WczytajTabDoFiltra(twfGatunek, DMM.qMainFiltrGat, 'Gat');
  DMM.qMainFiltrGat.Close;

  DMM.qMainFiltrSer.Open;
  WczytajTabDoFiltra(twfSeria, DMM.qMainFiltrSer, 'Serii');
  DMM.qMainFiltrSer.Close;
end;

procedure TFrmMain.WczytajPozycjeFiltru(MgrPoz: TManagerPozycji; lv: TListView; ImgIdx: integer);
var
  i: integer;
  item: TListItem;
  poz: TPozycjaSlownika;
begin
  if not Assigned(MgrPoz) then
    raise Exception.Create('Błąd poczas próby wczytania pozycji filtra - obiekt MenageraPozycji nie istnieje');
  if not Assigned(lv) then
    raise Exception.Create('Błąd poczas próby wczytania pozycji filtra - nie przekazano obiektu ListView');

  lv.BeginUpdate;
  try
    lv.Items.Clear;
    for i := 0 to MgrPoz.IloscWszystkichPozycji - 1 do
    begin
      if (MgrPoz.WidocznaPozycja[i]) then
      begin
        poz := MgrPoz.Pozycja[i];
        item := lv.Items.Add;
        item.Caption := poz.Nazwa;
        item.SubItems.Add(IntToStr(poz.NrId));
        item.Checked := poz.Zaznaczona;
        if ImgIdx >= 0 then
          item.ImageIndex := ImgIdx;
      end;
    end;
  finally
    lv.EndUpdate;
  end;
  if (lv.Items.Count > 0) then
  begin
    lv.Selected := lv.Items.Item[0];
    lv.ItemFocused := lv.Selected;
  end;
end;

function TFrmMain.GetMgrPozFiltra(filtr: TWybranyFiltr): TManagerPozycji;
var
  idx: integer;
begin
  idx := WybFiltrToDbIdx(filtr);
  if (idx >= 0) then
    Result := TManagerPozycji(fLstFiltrow.Items[idx])
  else
    Result := nil;
end;

function TFrmMain.FiltrAktywny(filtr: TWybranyFiltr): boolean;
var
  idx: integer;
begin
  idx := WybFiltrToDbIdx(filtr);
  if (idx >= 0) then
    Result := fFiltrAktywny[idx]
  else
    raise Exception.Create('Błąd podczas sprawdzania aktywności filtru - niepoprawny typ filtra');
end;

function TFrmMain.WybranePozycjeFiltra(MgrPoz: TManagerPozycji; var LstWartosci: TStringList): integer;
var
  i: integer;
  poz: TPozycjaSlownika;
begin
  if not Assigned(MgrPoz) then
    raise Exception.Create('Błąd podczas pobierania wybranych wartości filtra - nie przekazano obiektu TManagerPozycji');
  if not Assigned(LstWartosci) then
    raise Exception.Create('Błąd podczas pobierania wybranych wartości filtra - nie przekazano obiektu TStringList');

  Result := 0;
  LstWartosci.BeginUpdate;
  try
    LstWartosci.Clear;
    if MgrPoz.IloscWybranychPozycji > 0 then
    begin
      for i := 0 to MgrPoz.IloscWszystkichPozycji - 1 do
      begin
        poz := TPozycjaSlownika(MgrPoz.Pozycja[i]);
        if poz.Zaznaczona then
        begin
          LstWartosci.Add(IntToStr(poz.NrId));
          Inc(Result);
        end;
      end;
    end;
  finally
    LstWartosci.EndUpdate;
  end;
end;


function TFrmMain.WczytajTabDoFiltra(filtr: TWybranyFiltr; ds: TDataSet; postfix: string): integer;
var
  filtrIdx: integer;
  mgrPoz: TManagerPozycji;
  poz: TPozycjaSlownika;
  wartId: longint;
  wartNazwa: string;
begin
  Result := 0;
  filtrIdx := WybFiltrToDbIdx(filtr);
  if (filtrIdx >= 0) then
  begin
    mgrPoz := TManagerPozycji(fLstFiltrow.Items[filtrIdx]);
    mgrPoz.UsunWszystkiePozycje;
    ds.DisableControls;
    try
      ds.First;
      while not ds.EOF do
      begin
        wartId := ds.FieldByName('Id' + postfix).AsInteger;
        wartNazwa := ds.FieldByName('Nazwa' + postfix).AsString;

        poz := TPozycjaSlownika.Create(wartId, wartNazwa);
        mgrPoz.DodajPozycje(poz);
        Inc(Result);

        ds.Next;
      end;
    finally
      ds.EnableControls;
    end;
  end
  else
    raise Exception.Create('Błąd podczas próby wczytania danych do filtra. Nieobsługiwany filtr.');
end;

procedure TFrmMain.lvFiltryItemChecked(Sender: TObject; Item: TListItem);
var
  poz: TPozycjaSlownika;
  id: integer;
  mgrPoz: TManagerPozycji;
begin
  id := StrToInt(Item.SubItems.Strings[0]);
  mgrPoz := GetMgrPozFiltra(fWybFiltr);
  poz := mgrPoz.GetPozycjaWgId(id);
  poz.Zaznaczona := Item.Checked;
  OdswiezDane;
  //ZaznaczonaPozycjaListView(lvFiltry);
  {if not chbxFiltrWszystko.Checked then
  begin
    OdswiezDane;
  end;}
end;

end.
