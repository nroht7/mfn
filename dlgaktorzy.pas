unit dlgaktorzy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, ComCtrls,
  ButtonPanel, ExtCtrls, StdCtrls, DBCtrls, Buttons, ActnList, DBActns, Menus,
  DB, dmgl, usqlqryb;

type
  TZrodloDanych = (zrdWszystko, zrdLista);

  { TFrmAktorzy }

  TFrmAktorzy = class(TForm)
    acAktDodaj: TAction;
    acSortNazwa: TAction;
    acSortOcena: TAction;
    acFiltrWyczysc: TAction;
    acFiltr: TAction;
    acDodajWiele: TAction;
    acDodajAkaA: TAction;
    acFilmIdz: TAction;
    acFiltrInneNazw: TAction;
    acLnkDodaj: TAction;
    acLnkUsun: TAction;
    acLnkIdz: TAction;
    acAktEdytuj: TAction;
    acFiltrWyszCzescPocz: TAction;
    acFiltrWyszCzescDow: TAction;
    acOdznaczWszystko: TAction;
    acWybrane: TAction;
    acZamknij: TAction;
    acZaznOdwroc: TAction;
    acZaznaczWszystko: TAction;
    acUsunAkaA: TAction;
    acZdjSchowek: TAction;
    acZdjWybierz: TAction;
    acZdjUsun: TAction;
    acZdjPowieksz: TAction;
    acAktUsun: TAction;
    ActionList1: TActionList;
    ButtonPanel1: TButtonPanel;
    DataSetCancel1: TDataSetCancel;
    DataSetCancel2: TDataSetCancel;
    acLnkDBAnuluj: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetEdit2: TDataSetEdit;
    acLnkDBEdytuj: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetFirst2: TDataSetFirst;
    DataSetLast1: TDataSetLast;
    DataSetLast2: TDataSetLast;
    DataSetPost1: TDataSetPost;
    DataSetPost2: TDataSetPost;
    acLnkDBZatw: TDataSetPost;
    DBGrid4: TDBGrid;
    DBMemo2: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    dsAkt: TDataSource;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBMemo1: TDBMemo;
    edFiltruj: TEdit;
    edNazwisko: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ImgLstAkt: TImageList;
    ImgOcena: TImage;
    ImageList1: TImageList;
    ImgLstStars: TImageList;
    ImgBrakZdjAkt: TImage;
    ImgZdjAkt: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbJestOpis: TLabel;
    lbIloscLinkow: TLabel;
    lbIloscFilmow: TLabel;
    lbIloscNazwisk: TLabel;
    lbZaznPoz: TLabel;
    lbSort: TLabel;
    lbOcena: TLabel;
    lvAkt: TListView;
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
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDlg: TOpenDialog;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel3: TPanel;
    pnlListInfo: TPanel;
    pmSort: TPopupMenu;
    pmLinki: TPopupMenu;
    pmWysz: TPopupMenu;
    pmOceny: TPopupMenu;
    pmLstAkt: TPopupMenu;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    sbnOcena: TSpeedButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Opis: TTabSheet;
    TabSheet3: TTabSheet;
    tmrF: TTimer;
    Tmr: TTimer;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolBar4: TToolBar;
    ToolBar5: TToolBar;
    ToolBar7: TToolBar;
    ToolButton1: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton2: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton3: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    tbnWyb: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    udOcena: TUpDown;
    procedure acAktEdytujExecute(Sender: TObject);
    procedure acAktUsunExecute(Sender: TObject);
    procedure acDodajAkaAExecute(Sender: TObject);
    procedure acAktDodajExecute(Sender: TObject);
    procedure acDodajWieleExecute(Sender: TObject);
    procedure acFiltrExecute(Sender: TObject);
    procedure acFiltrInneNazwExecute(Sender: TObject);
    procedure acFiltrWyczyscExecute(Sender: TObject);
    procedure acFiltrWyszCzescDowExecute(Sender: TObject);
    procedure acFiltrWyszCzescPoczExecute(Sender: TObject);
    procedure acLnkDodajExecute(Sender: TObject);
    procedure acLnkIdzExecute(Sender: TObject);
    procedure acLnkUsunExecute(Sender: TObject);
    procedure acOdznaczWszystkoExecute(Sender: TObject);
    procedure acSortNazwaExecute(Sender: TObject);
    procedure acSortOcenaExecute(Sender: TObject);
    procedure acUsunAkaAExecute(Sender: TObject);
    procedure acWybraneExecute(Sender: TObject);
    procedure acZamknijExecute(Sender: TObject);
    procedure acZaznaczWszystkoExecute(Sender: TObject);
    procedure acZaznOdwrocExecute(Sender: TObject);
    procedure acZdjPowiekszExecute(Sender: TObject);
    procedure acZdjSchowekExecute(Sender: TObject);
    procedure acZdjUsunExecute(Sender: TObject);
    procedure acZdjWybierzExecute(Sender: TObject);
    procedure dsAktDataChange(Sender: TObject; Field: TField);
    procedure edFiltrujKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvAktItemChecked(Sender: TObject; Item: TListItem);
    procedure lvAktSelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
    procedure MenuItem9Click(Sender: TObject);
    procedure sbnOcenaClick(Sender: TObject);
    procedure tmrFTimer(Sender: TObject);
    procedure TmrTimer(Sender: TObject);
    procedure udOcenaChangingEx(Sender: TObject; var AllowChange: boolean; NewValue: smallint; Direction: TUpDownDirection);
  private
    fIdWybAkt: longint;
    fTrybOtwarcia: TTrybOtwarciaOkna;
    fTrybWybPoz: TTrybWyboruPozycji;
    fZrodloDanych: TZrodloDanych;
    fQry: TSqlQueryBuilder;
    fLstWybAkt: TStringList;
    fLstZrDanych: string;

    function PrepareQuery: string;
    function RefreshQuery: boolean;
    procedure PokazDaneAkt;
    procedure WyczyscDaneAkt;
    procedure DodajNazwiskaZListy(Lista: TStringList);
    function SprawdzNazwiskoIstnieje(const Nazwa: string): boolean;
    procedure PokazOceneGraf(const Ocena: integer);
    procedure UstawOcene(const Ocena: integer);
    procedure PokazOcene(const Ocena: integer);
    procedure OdswiezListeAktorow(TylkoWybrane: boolean); overload;
    procedure OdswiezListeAktorow; overload;
    procedure UtworzZapytanieWszystko;
    procedure UtworzZapytanieFiltr(filtr: string);
    procedure UstawStanInterfrejsuAkt(Stan: boolean);
    function IntToOcenaStr(Ocena: smallint): string;
    function ZnajdzPozWgIdAkt(IdAkt: longint): TListItem;
    function WybierzPozWgIdAkt(IdAkt: longint): boolean;
    function WybierzPozycje(Item: TListItem): boolean;
    procedure UstawZaznaczenieWidocznychPozycji(Wybrane: boolean);
    procedure OdwrocZaznaczenieWidocznychPozycji;
    procedure OdswiezWidokIloscWybranych;
    function AktualizujListeZaznaczonych(IdAkt: string; Dodaj: boolean): boolean;
    function WybierzPoprzedniaPozycje: boolean;
    function WybierzNastepnaPozycje: boolean;
    procedure UstawieniaPoczatkowe;
    procedure PokazWybranePozycje;
    procedure OdswiezOpis;
  public
    property TrybOtwarcia: TTrybOtwarciaOkna read fTrybOtwarcia write fTrybOtwarcia;
    property WybraneIdAktora: longint read fIdWybAkt;
    property TrybWyboruPozycji: TTrybWyboruPozycji read fTrybWybPoz write fTrybWybPoz;
    property ZrodloDanych: TZrodloDanych read fZrodloDanych write fZrodloDanych;
    property ListaDanychZrodlowych: string read fLstZrDanych write fLstZrDanych;
    property ListaWybranychAktorow: TStringList read fLstWybAkt;

    function WybranePozycje(var ListaPozycji: TStringList): integer;
    function SaWybranePozycje: boolean;
  end;

var
  FrmAktorzy: TFrmAktorzy;

implementation

uses
  dmakt, Clipbrd, LCLIntf, LCLType, StrUtils, dlgimgview, dlgaktor, dlgpozsl, dlglstpoztxt;

{$R *.frm}

const
  KOL_IDAKT = 0;

{ TFrmAktorzy }

procedure TFrmAktorzy.FormCreate(Sender: TObject);
begin
  fTrybOtwarcia := tooPrzegladanie;
  fTrybWybPoz := twpJednaPoz;
  fZrodloDanych := zrdWszystko;
  fIdWybAkt := 0;
  fLstZrDanych := '';

  fLstWybAkt := TStringList.Create;


  fQry := TSqlQueryBuilder.Create;
  fQry.WhereOperator := woOr;
end;

procedure TFrmAktorzy.FormDestroy(Sender: TObject);
begin
  if Assigned(fQry) then
    FreeAndNil(fQry);
  if Assigned(fLstWybAkt) then
  begin
    fLstWybAkt.Clear;
    FreeAndNil(fLstWybAkt);
  end;
end;

procedure TFrmAktorzy.FormShow(Sender: TObject);
begin
  UstawieniaPoczatkowe;

  //DMA.qAkt.Close;
  //DMA.qAkt.Open;
  OdswiezListeAktorow;
  if (lvAkt.Items.Count > 0) then
  begin
    lvAkt.Selected := lvAkt.Items[0];
    lvAkt.ItemFocused := lvAkt.Items[0];
  end;
  PokazDaneAkt;

  edFiltruj.SetFocus;
end;

procedure TFrmAktorzy.lvAktItemChecked(Sender: TObject; Item: TListItem);
begin
  AktualizujListeZaznaczonych(Item.SubItems[KOL_IDAKT], Item.Checked);
end;

procedure TFrmAktorzy.lvAktSelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
var
  id: longint;
begin
  if (Selected) then
  begin
    id := StrToIntDef(item.SubItems.Strings[0], -1);
    fIdWybAkt := id;
    if (DMA.qAkt.Active) and (not DMA.qAkt.Locate('IdAkt', id, [])) then
    begin
      raise Exception.Create('Błąd podczas wyszukiwania id aktora w TDataSet.' + sLineBreak + 'Nie znaleziono id = ' + IntToStr(id));
    end;
  end
  else
  begin
    if (DMA.qAkt.State in [dsInsert, dsEdit]) then
      DMA.qAkt.Post;
    fIdWybAkt := -1;
  end;
end;

procedure TFrmAktorzy.MenuItem9Click(Sender: TObject);
var
  ocena: integer;
begin
  ocena := TMenuItem(Sender).Tag;
  UstawOcene(ocena);
end;

procedure TFrmAktorzy.sbnOcenaClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := Mouse.CursorPos;
  pmOceny.PopUp(pt.x, pt.y);
end;

procedure TFrmAktorzy.tmrFTimer(Sender: TObject);
begin
  tmrF.Enabled := False;
  //RefreshQuery;
  OdswiezListeAktorow;
end;

procedure TFrmAktorzy.TmrTimer(Sender: TObject);
begin
  PokazDaneAkt;
  Tmr.Enabled := False;
end;

procedure TFrmAktorzy.udOcenaChangingEx(Sender: TObject; var AllowChange: boolean; NewValue: smallint; Direction: TUpDownDirection);
begin
  UstawOcene(NewValue);
end;

function TFrmAktorzy.PrepareQuery: string;
var
  filtr: string;
begin
  filtr := Trim(edFiltruj.Text);
  if (filtr = '') then
  begin
    UtworzZapytanieWszystko;
  end
  else
  begin
    if acFiltrWyszCzescPocz.Checked then
      filtr := '%' + filtr
    else
      filtr := '%' + filtr + '%';

    UtworzZapytanieFiltr(filtr);
  end;

  if (fZrodloDanych = zrdLista) and (fLstZrDanych <> '') then
    fQry.AddWhere(Format('A.NazwaAkt IN (%s)', [fLstZrDanych]));

  Result := fQry.AsString;
end;

procedure TFrmAktorzy.UtworzZapytanieWszystko;
begin
  fQry.ClearAll;
  fQry.AddFields('A.IdAkt, A.NazwaAkt, A.OcenaAkt, A.ZdjecieAkt, A.ZdjecieScAkt, A.OpisAkt');
  fQry.AddField('1 AS Rodzaj');
  fQry.From := 'Aktorzy A';

end;

procedure TFrmAktorzy.UtworzZapytanieFiltr(filtr: string);
var
  subQry: string;
begin
  fQry.ClearAll;
  fQry.AddFields('A.IdAkt, A.NazwaAkt, A.OcenaAkt, A.ZdjecieAkt, A.ZdjecieScAkt, A.OpisAkt, P.Rodzaj');
  fQry.From := 'Aktorzy A';

  subQry := Format('SELECT IdAkt, 1 as Rodzaj FROM Aktorzy ' + 'WHERE Upper(NazwaAkt) LIKE ''%s'' ' + 'UNION ' + 'SELECT IdAkt, 2 as Rodzaj FROM AKA_A ' + 'WHERE Upper(NAZWAAKAA) LIKE ''%s'' ' +
    'EXCEPT ' + 'SELECT IdAkt,2 as Rodzaj FROM Aktorzy ' + 'WHERE NazwaAkt LIKE ''%s'' ', [filtr, filtr, filtr]);

  fQry.AddJoin(Format('JOIN (%s) P ON P.IdAkt = A.IdAkt', [subQry]));
end;

procedure TFrmAktorzy.WyczyscDaneAkt;
begin
  DMA.qAkaA.Close;
  DMA.qrAktFilmy.Close;
  DMA.qAktUrl.Close;
  UstawStanInterfrejsuAkt(False);
  edNazwisko.Clear;
  PokazOcene(0);
end;

procedure TFrmAktorzy.UstawStanInterfrejsuAkt(Stan: boolean);
begin
  acDodajWiele.Enabled := Stan;
  acDodajAkaA.Enabled := Stan;
  acUsunAkaA.Enabled := Stan;
  acFilmIdz.Enabled := Stan;
  acLnkDodaj.Enabled := Stan;
  acLnkUsun.Enabled := Stan;
  acLnkIdz.Enabled := Stan;
  acZdjSchowek.Enabled := Stan;
  acZdjWybierz.Enabled := Stan;
  acZdjUsun.Enabled := Stan;
  acZdjPowieksz.Enabled := Stan;
  udOcena.Enabled := Stan;
end;

function TFrmAktorzy.IntToOcenaStr(Ocena: smallint): string;
begin
  case Ocena of
    1..6: Result := IntToStr(Ocena);
    0: Result := '-';
    else
      Result := '?';
  end;
end;

function TFrmAktorzy.ZnajdzPozWgIdAkt(IdAkt: longint): TListItem;
var
  i: integer;
  item: TListItem;
  id: longint;
begin
  Result := nil;
  for i := 0 to lvAkt.Items.Count - 1 do
  begin
    item := lvAkt.Items[i];
    id := StrToIntDef(item.SubItems[KOL_IDAKT], -1);
    if (id = -1) then
      raise Exception.Create('Błąd podczas przeszukiwania TListView kolumna IdAkt nie zawiera numeru id.');
    if (IdAkt = id) then
    begin
      Result := item;
      break;
    end;
  end;
end;

function TFrmAktorzy.WybierzPozWgIdAkt(IdAkt: longint): boolean;
var
  item: TListItem;
begin
  Result := False;
  item := ZnajdzPozWgIdAkt(IdAkt);
  if Assigned(item) then
  begin
    lvAkt.Selected := item;
    lvAkt.ItemFocused := item;

    Result := True;
  end;
end;

function TFrmAktorzy.WybierzPozycje(Item: TListItem): boolean;
begin
  Result := False;

  if Assigned(Item) then
  begin
    if (lvAkt.Selected <> Item) or (lvAkt.ItemFocused <> Item) then
    begin
      lvAkt.Selected := Item;
      lvAkt.ItemFocused := Item;
      Item.MakeVisible(False);
      Result := True;
    end;
  end;
end;

procedure TFrmAktorzy.UstawZaznaczenieWidocznychPozycji(Wybrane: boolean);
var
  item: TListItem;
  i: integer;
begin
  lvAkt.BeginUpdate;
  try
    for i := 0 to lvAkt.Items.Count - 1 do
    begin
      item := lvAkt.Items[i];
      item.Checked := Wybrane;
      AktualizujListeZaznaczonych(Item.SubItems[KOL_IDAKT], Wybrane);
    end;
  finally
    lvAkt.EndUpdate;
  end;
  OdswiezWidokIloscWybranych;
end;

procedure TFrmAktorzy.OdwrocZaznaczenieWidocznychPozycji;
var
  item: TListItem;
  i: integer;
begin
  lvAkt.BeginUpdate;
  try
    for i := 0 to lvAkt.Items.Count - 1 do
    begin
      item := lvAkt.Items[i];
      item.Checked := not item.Checked;
      AktualizujListeZaznaczonych(Item.SubItems[KOL_IDAKT], item.Checked);
    end;
  finally
    lvAkt.EndUpdate;
  end;
  OdswiezWidokIloscWybranych;
end;

procedure TFrmAktorzy.OdswiezWidokIloscWybranych;
var
  ilosc: integer;
begin
  ilosc := fLstWybAkt.Count;
  lbZaznPoz.Caption := Format('Wybranych: %d', [ilosc]);
end;

function TFrmAktorzy.AktualizujListeZaznaczonych(IdAkt: string; Dodaj: boolean): boolean;
var
  idx: integer;
begin
  Result := False;
  idx := fLstWybAkt.IndexOf(IdAkt);

  if (Dodaj) then
  begin
    if (idx < 0) then
    begin
      fLstWybAkt.Add(IdAkt);
      Result := True;
    end;
  end
  else
  begin
    if (idx >= 0) then
    begin
      fLstWybAkt.Delete(idx);
      Result := True;
    end;
  end;
  OdswiezWidokIloscWybranych;
end;

function TFrmAktorzy.WybierzPoprzedniaPozycje: boolean;
var
  item: TListItem;
  idx: integer;
begin
  Result := False;
  item := lvAkt.Selected;
  if (Assigned(item)) then
  begin
    idx := item.Index;
    if (idx > 0) then
    begin
      lvAkt.Selected := lvAkt.Items[idx - 1];
      lvAkt.ItemFocused := lvAkt.Selected;
      Result := True;
    end;
  end;
end;

function TFrmAktorzy.WybierzNastepnaPozycje: boolean;
var
  item: TListItem;
  idx: integer;
begin
  Result := False;
  item := lvAkt.Selected;
  if (Assigned(item)) then
  begin
    idx := item.Index;
    if (idx < (lvAkt.Items.Count - 1)) then
    begin
      lvAkt.Selected := lvAkt.Items[idx + 1];
      lvAkt.ItemFocused := lvAkt.Selected;
      Result := True;
    end;
  end;
end;

procedure TFrmAktorzy.UstawieniaPoczatkowe;
var
  wybTrybWieluPoz: boolean;
begin
  if (fTrybOtwarcia = tooWybor) then
  begin
    ButtonPanel1.ShowButtons := [pbOK, pbCancel];
  end
  else
    ButtonPanel1.ShowButtons := [pbClose];

  wybTrybWieluPoz := (fTrybWybPoz = twpWielePoz);
  lvAkt.Checkboxes := wybTrybWieluPoz;
  lbZaznPoz.Visible := wybTrybWieluPoz;
  tbnWyb.Visible := wybTrybWieluPoz;
  ToolButton7.Visible := wybTrybWieluPoz;

  if (wybTrybWieluPoz) then
    lvAkt.PopupMenu := pmLstAkt
  else
    lvAkt.PopupMenu := nil;

end;

procedure TFrmAktorzy.PokazWybranePozycje;
begin
  if (fLstWybAkt.Count > 0) then
  begin
    tmrF.Enabled := False;
    edFiltruj.Clear;
    OdswiezListeAktorow(True);
  end
  else
    MessageDlg('Nie wybrano żadnych pozycji.', mtInformation, [mbOK], 0);
end;

procedure TFrmAktorzy.OdswiezOpis;
var
  jestOpis: boolean;
begin
  if ((DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty)) then
  begin
    lbIloscNazwisk.Caption := IntToStr(DMA.qAkaA.RecordCount);
    lbIloscFilmow.Caption := IntToStr(DMA.qrAktFilmy.RecordCount);
    lbIloscLinkow.Caption := IntToStr(DMA.qAktUrl.RecordCount);
    jestOpis := ((not DMA.qAkt.FieldByName('OpisAkt').IsNull) and (DMA.qAkt.FieldByName('OpisAkt').AsString <> ''));
    lbJestOpis.Caption := BoolToStr(jestOpis, 'Tak', 'Nie');
  end
  else
  begin
    lbIloscNazwisk.Caption := '';
    lbIloscFilmow.Caption := '';
    lbIloscLinkow.Caption := '';
    lbJestOpis.Caption := '';
  end;
end;

function TFrmAktorzy.WybranePozycje(var ListaPozycji: TStringList): integer;
var
  i: integer;
begin
  Result := 0;
  if (Assigned(ListaPozycji)) then
  begin
    ListaPozycji.Clear;

    if (fTrybWybPoz = twpJednaPoz) then
    begin
      if (fIdWybAkt > 0) then
        ListaPozycji.Add(IntToStr(fIdWybAkt));
    end
    else
    begin
      for i := 0 to fLstWybAkt.Count - 1 do
      begin
        ListaPozycji.Add(fLstWybAkt[i]);
      end;

      if (ListaPozycji.Count = 0) and (fIdWybAkt > 0) then
        ListaPozycji.Add(IntToStr(fIdWybAkt));
    end;

    Result := ListaPozycji.Count;
  end
  else
    MessageDlg('Błąd podczas próby pobrania listy wybranych aktorów - nie przekazno obiektu listy (ListaPozycji = nil)', mtError, [mbOK], 0);
end;

function TFrmAktorzy.SaWybranePozycje: boolean;
begin
  Result := ((fLstWybAkt.Count > 0) or (Assigned(lvAkt.Selected)));
end;

function TFrmAktorzy.RefreshQuery: boolean;
begin
  Result := True;
  try
    DMG.OdswiezQueryZSql(DMA.qAkt, PrepareQuery, 'NAZWAAKT');
  except
    on e: Exception do
    begin
      Result := False;
      MessageDlg('Błąd podczas filtrowania tabeli aktorów:' + sLineBreak + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmAktorzy.PokazDaneAkt;
begin
  ImgBrakZdjAkt.Visible := False;
  if (lvAkt.Selected <> nil) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    if (DMA.qAkt.FieldByName('ZdjecieScAkt').AsString <> '') then
    begin
      if (FileExists(DMA.qAkt.FieldByName('ZdjecieScAkt').AsString)) then
      begin
        ImgZdjAkt.Picture.LoadFromFile(DMA.qAkt.FieldByName('ZdjecieScAkt').AsString);
        DMA.qAkaA.Close;
        DMA.qAkaA.ParamByName('IDAKT').AsInteger := DMA.qAkt.FieldByName('IDAKT').AsInteger;
        DMA.qAkaA.Open;
      end
      else
      begin
        ImgZdjAkt.Picture.Clear;
        ImgBrakZdjAkt.Visible := True;
      end;
    end
    else
      ImgZdjAkt.Picture.Clear;

    edNazwisko.Caption := DMA.qAkt.FieldByName('NazwaAkt').AsString;
    PokazOcene(DMA.qAkt.FieldByName('OcenaAkt').AsInteger);
  end
  else
  begin
    ImgZdjAkt.Picture.Clear;
    PokazOcene(0);
    WyczyscDaneAkt;
  end;
end;

procedure TFrmAktorzy.DodajNazwiskaZListy(Lista: TStringList);
var
  i: integer;
  dodanoRekord: boolean;
begin
  dodanoRekord := False;
  if not Assigned(Lista) then
    raise Exception.Create('Błąd podczas próby dopisania wielu nazwisk z listy (DodajNazwiskaZListy) - nie istnieje obiekt listy');
  if fIdWybAkt = 0 then
    exit;

  for i := 0 to Lista.Count - 1 do
  begin
    if DMA.DodajInneNazwiskoDoAktora(fIdWybAkt, Lista.Strings[i]) then
      dodanoRekord := True;
  end;

  if dodanoRekord then
    DMG.OdswiezDataSet(DMA.qAkaA, '');
end;

function TFrmAktorzy.SprawdzNazwiskoIstnieje(const Nazwa: string): boolean;
begin
  Result := DMA.JestInneNazwiskoAktora(fIdWybAkt, Nazwa);
end;

procedure TFrmAktorzy.PokazOceneGraf(const Ocena: integer);
var
  ocn: integer;
  bmp: TBitmap;
begin
  if Assigned(ImgLstStars) then
  begin
    if (Ocena < 0) then
      ocn := 0
    else if (Ocena > 6) then
      ocn := 6
    else
      ocn := Ocena;

    bmp := TBitmap.Create;
    try
      ImgLstStars.GetBitmap(ocn, bmp);
      ImgOcena.Picture.Bitmap := bmp;
    finally
      FreeAndNil(bmp);
    end;
  end;
end;

procedure TFrmAktorzy.UstawOcene(const Ocena: integer);
var
  idAkt: longint;
begin
  if (fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    //ShowMessage(DMA.qAkt.FieldByName('IdAkt').AsString+' - '+IntToStr(Ocena));

    idAkt := DMA.qAkt.FieldByName('IdAkt').AsInteger;
    DMA.UstawOceneAktora(idAkt, Ocena);
    PokazOcene(Ocena);
    if not DMG.OdswiezDataSet(DMA.qAkt, 'IdAkt', idAkt) then
      ShowMessage('Nie udało się odnaleść aktora');
  end;
end;

procedure TFrmAktorzy.PokazOcene(const Ocena: integer);
begin
  lbOcena.Caption := IntToOcenaStr(Ocena);
  udOcena.Position := Ocena;
  PokazOceneGraf(Ocena);
end;

procedure TFrmAktorzy.OdswiezListeAktorow(TylkoWybrane: boolean);
var
  item: TListItem;
  dodaj: boolean;
begin
  fIdWybAkt := -1;

  if (TylkoWybrane) and (fLstWybAkt.Count = 0) then
  begin
    lvAkt.Items.Clear;
    Exit;
  end;

  lvAkt.BeginUpdate;
  try
    lvAkt.Items.Clear;

    if (RefreshQuery) then
    begin
      DMA.qAkt.First;
      while not DMA.qAkt.EOF do
      begin
        if (TylkoWybrane) then
          dodaj := (fLstWybAkt.IndexOf(DMA.qAkt.FieldByName('IdAkt').AsString) >= 0)
        else
          dodaj := True;

        if (dodaj) then
        begin
          item := lvAkt.Items.Add;
          item.Caption := DMA.qAkt.FieldByName('NazwaAkt').AsString;
          item.SubItems.Add(DMA.qAkt.FieldByName('IdAkt').AsString);
          case (DMA.qAkt.FieldByName('Rodzaj').AsInteger) of
            1: item.ImageIndex := 0;
            2: item.ImageIndex := 1;
            else
              item.ImageIndex := -1;
          end;
          if (fTrybWybPoz = twpWielePoz) then
          begin
            item.Checked := (fLstWybAkt.IndexOf(DMA.qAkt.FieldByName('IdAkt').AsString) >= 0);
          end;
        end;

        DMA.qAkt.Next;
      end;
      if (lvAkt.Items.Count > 0) then
      begin
        lvAkt.Selected := lvAkt.Items[0];
        lvAkt.ItemFocused := lvAkt.Items[0];
      end;
    end;
  finally
    lvAkt.EndUpdate;
  end;
end;

procedure TFrmAktorzy.OdswiezListeAktorow;
begin
  OdswiezListeAktorow(False);
end;

procedure TFrmAktorzy.acSortNazwaExecute(Sender: TObject);
begin
  acSortNazwa.Checked := True;
  acSortOcena.Checked := False;
  lbSort.Caption := 'Sortuj wg. nazwy';
  DMA.qAkt.SortedFields := 'NAZWAAKT';
end;

procedure TFrmAktorzy.acAktDodajExecute(Sender: TObject);
var
  nazwa: string;
  frm: TFrmAktor;
  idAkt: longint;
  id: longint;
begin
  if not DMA.qAkt.Active then
    Exit;

  frm := TFrmAktor.Create(self);
  try
    frm.TytulOkna := 'Nowy aktor';
    if (frm.ShowModal = mrOk) then
    begin
      nazwa := frm.Nazwa;
      id := DMA.ZnajdzAktoraWgNazwy(nazwa);
      if id > 0 then
      begin
        MessageDlg(Format('Aktor "%s" już jest', [nazwa]), mtInformation, [mbOK], 0);
        WybierzPozWgIdAkt(id);
      end
      else
      begin
        idAkt := DMA.DodajAktora(nazwa);
        OdswiezListeAktorow;
        WybierzPozWgIdAkt(idAkt);
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmAktorzy.acAktEdytujExecute(Sender: TObject);
var
  nazwa: string;
  frm: TFrmAktor;
  idAkt: longint;
  id: longint;
  item: TListItem;
begin
  if (not DMA.qAkt.Active) or (DMA.qAkt.IsEmpty) then
    Exit;

  item := lvAkt.Selected;

  if (Assigned(item)) then
  begin
    idAkt := StrToInt(item.SubItems[KOL_IDAKT]);
    frm := TFrmAktor.Create(self);
    try
      frm.TytulOkna := 'Edycja aktora';
      frm.Nazwa := item.Caption;
      if (frm.ShowModal = mrOk) then
      begin
        nazwa := frm.Nazwa;
        id := DMA.ZnajdzAktoraWgNazwy(nazwa);
        if (id > 0) and (id <> idAkt) then
        begin
          MessageDlg(Format('Istnieje już inny aktor o nazwisku "%s".' + sLineBreak + 'Zmiana niemożliwa.', [nazwa]), mtWarning, [mbOK], 0);
        end
        else if (nazwa <> item.Caption) then
        begin
          DMA.ZmienNazweAktora(idAkt, nazwa);
          item.Caption := nazwa;
          WybierzPozycje(item);
        end;
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmAktorzy.acAktUsunExecute(Sender: TObject);
var
  item: TListItem;
  idAkt: longint;
  idx: integer;
  ileFilmow: integer;
  InfoFilmy: string;
  nazwa: string;
begin
  item := lvAkt.Selected;
  if (Assigned(item)) then
  begin
    idAkt := StrToInt(item.SubItems[KOL_IDAKT]);
    nazwa := item.Caption;
    ileFilmow := DMA.IloscFilmowAktora(idAkt);
    if (ileFilmow > 0) then
      InfoFilmy := Format('(Przypisany do %d filmów)', [ileFilmow])
    else
      InfoFilmy := '(Nie jest powiązany z filmami)';

    if (MessageDlg(Format('Czy napewno usunąć aktora "%s"?', [nazwa]) + sLineBreak + InfoFilmy, mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      DMA.UsunAktora(idAkt);
      idx := lvAkt.Items.IndexOf(item);
      lvAkt.Items.Delete(idx);
    end;
  end;
end;

procedure TFrmAktorzy.acDodajWieleExecute(Sender: TObject);
var
  frm: TFrmLstPozTxt;
  lst: TStringList;
begin
  if (fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    frm := TFrmLstPozTxt.Create(self);
    try
      frm.TytulOkna := 'Dodaj wiele innych nazwisk';
      frm.IstniejePozycja := @SprawdzNazwiskoIstnieje;
      if frm.ShowModal = mrOk then
      begin
        lst := TStringList.Create;
        try
          frm.GetListaWybranychPozycji(lst);
          DodajNazwiskaZListy(lst);
        finally
          lst.Clear;
          FreeAndNil(lst);
        end;
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmAktorzy.acDodajAkaAExecute(Sender: TObject);
var
  poz: TFrmPozSlownika;
  idAkt: longint;
begin
  if (fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    idAkt := DMA.qAkt.FieldByName('IdAkt').AsInteger;
    poz := TFrmPozSlownika.Create(self);
    try
      poz.TytulOkna := 'Nowe inne nazwisko';
      poz.Ikona := 0;
      poz.OpisWidoczny := False;

      if poz.ShowModal = mrOk then
      begin
        if DMA.JestInneNazwiskoAktora(idAkt, poz.Nazwa) then
          MessageDlg('Informacja', 'Takie nazwisko już jest.', mtInformation, [mbOK], 0)
        else
        begin
          DMA.DodajInneNazwiskoDoAktora(idAkt, poz.Nazwa);
          DMG.OdswiezDataSet(DMA.qAkaA);
        end;
      end;
    finally
      FreeAndNil(poz);
    end;
  end;
end;

procedure TFrmAktorzy.acFiltrExecute(Sender: TObject);
begin
  edFiltruj.SetFocus;
end;

procedure TFrmAktorzy.acFiltrInneNazwExecute(Sender: TObject);
begin
  acFiltrInneNazw.Checked := not acFiltrInneNazw.Checked;
end;

procedure TFrmAktorzy.acFiltrWyczyscExecute(Sender: TObject);
begin
  tmrF.Enabled := False;
  edFiltruj.Clear;
  //RefreshQuery;
  OdswiezListeAktorow;
end;

procedure TFrmAktorzy.acFiltrWyszCzescDowExecute(Sender: TObject);
begin
  if not acFiltrWyszCzescDow.Checked then
  begin
    acFiltrWyszCzescDow.Checked := True;
    acFiltrWyszCzescPocz.Checked := False;
  end;
end;

procedure TFrmAktorzy.acFiltrWyszCzescPoczExecute(Sender: TObject);
begin
  if not acFiltrWyszCzescPocz.Checked then
  begin
    acFiltrWyszCzescDow.Checked := False;
    acFiltrWyszCzescPocz.Checked := True;
  end;
end;

procedure TFrmAktorzy.acLnkDodajExecute(Sender: TObject);
var
  frm: TFrmPozSlownika;
  idAkt: longint;
begin
  if (fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    idAkt := DMA.qAkt.FieldByName('IdAkt').AsInteger;
    frm := TFrmPozSlownika.Create(self);
    try
      frm.TytulOkna := 'Nowy link';
      frm.TytulNazwy := 'Adres:';
      frm.Ikona := 4;
      //frm.OpisWidoczny := False;
      if (frm.ShowModal = mrOk) then
      begin
        if DMA.DodajLinkDoAktora(idAkt, frm.Nazwa, frm.Opis) then
        begin
          DMG.OdswiezDataSet(DMA.qAktUrl, 'UrlAlu', frm.Nazwa);
        end
        else
          ShowMessage('Taki link już jest.');
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmAktorzy.acLnkIdzExecute(Sender: TObject);
var
  link: string;
begin
  if ((fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) and (not DMA.qAktUrl.IsEmpty)) then
  begin
    link := DMA.qAktUrl.FieldByName('UrlAlu').AsString;
    DMG.LinkOpen.Open(link);
  end;
end;

procedure TFrmAktorzy.acLnkUsunExecute(Sender: TObject);
var
  link: string;
begin
  if ((fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) and (not DMA.qAktUrl.IsEmpty)) then
  begin
    link := DMA.qAktUrl.FieldByName('UrlAlu').AsString;
    if (MessageDlg(Format('Napewno usunąć link "%s"?', [link]), mtConfirmation, [mbOK], 0) = mrOk) then
    begin
      DMA.UsunLinkAktora(DMA.qAktUrl.FieldByName('IdAlu').AsInteger);
      DMG.OdswiezDataSet(DMA.qAktUrl);
    end;
  end;
end;

procedure TFrmAktorzy.acOdznaczWszystkoExecute(Sender: TObject);
begin
  UstawZaznaczenieWidocznychPozycji(False);
end;

procedure TFrmAktorzy.acSortOcenaExecute(Sender: TObject);
begin
  acSortNazwa.Checked := False;
  acSortOcena.Checked := True;
  lbSort.Caption := 'Sortuj wg. oceny';
  DMA.qAkt.SortedFields := 'OCENAAKT';
end;

procedure TFrmAktorzy.acUsunAkaAExecute(Sender: TObject);
begin
  if ((fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) and (not DMA.qAkaA.IsEmpty)) then
  begin
    DMA.UsunInneNazwisko(DMA.qAkaA.FieldByName('IdAKAA').AsInteger);
    DMG.OdswiezDataSet(DMA.qAkaA, '');
  end;
end;

procedure TFrmAktorzy.acWybraneExecute(Sender: TObject);
begin
  PokazWybranePozycje;
end;

procedure TFrmAktorzy.acZamknijExecute(Sender: TObject);
begin
  if (fTrybOtwarcia = tooWybor) then
  begin
    ModalResult := mrCancel;
  end
  else
  begin
    ModalResult := mrClose;
  end;
end;

procedure TFrmAktorzy.acZaznaczWszystkoExecute(Sender: TObject);
begin
  UstawZaznaczenieWidocznychPozycji(True);
end;

procedure TFrmAktorzy.acZaznOdwrocExecute(Sender: TObject);
begin
  OdwrocZaznaczenieWidocznychPozycji;
end;

procedure TFrmAktorzy.acZdjPowiekszExecute(Sender: TObject);
var
  frm: TFrmImgView;
begin
  if ((fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) and (DMA.qAkt.FieldByName('ZdjecieScAkt').AsString <> '')) then
  begin
    frm := TFrmImgView.Create(self);
    try
      frm.TytulOkna := 'Zdjęcie';
      frm.PlikObr := DMA.qAkt.FieldByName('ZdjecieScAkt').AsString;

      frm.ShowModal;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmAktorzy.acZdjSchowekExecute(Sender: TObject);
var
  formatOk: boolean;
  plik: string;
  edycja, pytanie: boolean;
begin
  if (fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    formatOk := False;
    if Clipboard.HasFormat(PredefinedClipboardFormat(pcfBitmap)) then
    begin
      ImgZdjAkt.Picture.Bitmap.LoadFromClipboardFormat(PredefinedClipboardFormat(pcfBitmap));
      formatOk := True;
    end
    else if Clipboard.HasFormat(PredefinedClipboardFormat(pcfBitmap)) then
    begin
      ImgZdjAkt.Picture.Bitmap.LoadFromClipboardFormat(PredefinedClipboardFormat(pcfBitmap));
      formatOk := True;
    end;
    if formatOk then
    begin
      pytanie := True;
      if EndsStr(DirectorySeparator, DMG.Ustawienia.Values['aktorzy']) then
        plik := DMG.Ustawienia.Values['aktorzy'] + IntToStr(DMA.qAkt.FieldByName('IdAkt').AsInteger) + '_zdj1.jpg'
      else
        plik := DMG.Ustawienia.Values['aktorzy'] + IntToStr(DMA.qAkt.FieldByName('IdAkt').AsInteger) + '_zdj1.jpg';

      if (FileExists(plik)) then
      begin
        if (MessageDlg('Plik o podanej nazwie istnieje. Czy go nadpisać?', mtWarning, [mbOK, mbCancel], 0) <> mrOk) then
          pytanie := False
        else
          Exit;
      end;
      if ((pytanie) and (DMA.qAkt.FieldByName('ZdjecieScAkt').AsString <> '') and (FileExists(DMA.qAkt.FieldByName('ZdjecieScAkt').AsString))) then
      begin
        if (MessageDlg('Nadpisać istniejącą okładkę?', mtWarning, [mbOK, mbCancel], 0) <> mrOk) then
          Exit;
      end;
      ImgZdjAkt.Picture.SaveToFile(plik, 'jpg');
      edycja := False;
      if not (DMA.qAkt.State in [dsInsert, dsEdit]) then
      begin
        DMA.qAkt.Edit;
        edycja := True;
      end;
      DMA.qAkt.FieldByName('ZdjecieScAkt').AsString := plik;
      if (edycja) then
        DMA.qAkt.Post;
    end
    else
      ShowMessage('Nieobsługiwany format.');
  end;
end;

procedure TFrmAktorzy.acZdjUsunExecute(Sender: TObject);
var
  usunPlik: boolean;
  edycja: boolean;
  sc: string;
begin
  usunPlik := False;
  if ((fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) and (DMA.qAkt.FieldByName('ZdjecieScAkt').AsString <> '')) then
  begin
    sc := DMA.qAkt.FieldByName('ZdjecieScAkt').AsString;
    if (MessageDlg('Czy napewno usunąć zdjęcie?', mtWarning, [mbOK, mbCancel], 0) = mrOk) then
    begin
      if (FileExists(sc)) then
        usunPlik := (MessageDlg('Usunąć zdjęcie z dysku?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk);
      edycja := False;
      if not (DMA.qAkt.State in [dsInsert, dsEdit]) then
      begin
        DMA.qAkt.Edit;
        edycja := True;
      end;

      DMA.qAkt.FieldByName('ZdjecieScAkt').Clear;
      if usunPlik then
        DeleteFile(sc);
      if (edycja) then
        DMA.qAkt.Post;
    end;
  end;
end;

procedure TFrmAktorzy.acZdjWybierzExecute(Sender: TObject);
var
  edycja: boolean;
begin
  if (fIdWybAkt > 0) and (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
  begin
    OpenDlg.InitialDir := DMG.Ustawienia.Values['aktorzy'];
    edycja := False;
    if (OpenDlg.Execute) then
    begin
      if not (DMA.qAkt.State in [dsInsert, dsEdit]) then
      begin
        DMA.qAkt.Edit;
        edycja := True;
      end;
      DMA.qAkt.FieldByName('ZdjecieScAkt').AsString := OpenDlg.FileName;
      ImgZdjAkt.Picture.LoadFromFile(OpenDlg.FileName);
      if (edycja) then
        DMA.qAkt.Post;
    end;
  end;
end;

procedure TFrmAktorzy.dsAktDataChange(Sender: TObject; Field: TField);
begin
  Tmr.Enabled := False;
  Tmr.Enabled := True;
  if (DMA.qAkt.IsEmpty) then
  begin
    fIdWybAkt := 0;
    WyczyscDaneAkt;
  end
  else
  begin
    //fIdWybAkt := DMA.qAkt.FieldByName('IdAkt').AsInteger;
    DMA.PokazInneNazwiskaAktora(fIdWybAkt);
    DMA.PokazUrlAktora(fIdWybAkt);
    DMA.PokazFilmyAktora(fIdWybAkt);
  end;
  OdswiezOpis;
end;

procedure TFrmAktorzy.edFiltrujKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (Key = VK_DOWN) then
  begin
    WybierzNastepnaPozycje;
    Key := VK_UNKNOWN;
  end
  else if (Key = VK_UP) then
  begin
    WybierzPoprzedniaPozycje;
    Key := VK_UNKNOWN;
  end;

  if not (Key in [VK_UNKNOWN, VK_RIGHT, VK_LEFT, VK_RETURN]) then
  begin
    tmrF.Enabled := False;
    tmrF.Enabled := True;
  end;
end;

procedure TFrmAktorzy.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DMA.qAkt.Close;
end;

end.
