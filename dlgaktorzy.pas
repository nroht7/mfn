unit dlgaktorzy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, ComCtrls,
  ButtonPanel, ExtCtrls, StdCtrls, DBCtrls, Buttons, ActnList, DBActns, Menus,
  RxDBCtrls, DB, dmgl, usqlqryb;

type

  { TFrmAktorzy }

  TFrmAktorzy = class(TForm)
    acDodaj:      TAction;
    acSortNazwa:  TAction;
    acSortOcena:  TAction;
    acFiltrWyczysc: TAction;
    acFiltr:      TAction;
    acDodajWiele: TAction;
    acDodajAkaA:  TAction;
    acFilmIdz:    TAction;
    acFiltrInneNazw: TAction;
    acUsunAkaA:   TAction;
    acZdjSchowek: TAction;
    acZdjWybierz: TAction;
    acZdjUsun:    TAction;
    acZdjPowieksz: TAction;
    acUsun:       TAction;
    ActionList1:  TActionList;
    ButtonPanel1: TButtonPanel;
    DataSetCancel1: TDataSetCancel;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetEdit2: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetFirst2: TDataSetFirst;
    DataSetLast1: TDataSetLast;
    DataSetLast2: TDataSetLast;
    DataSetPost1: TDataSetPost;
    DataSetPost2: TDataSetPost;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    dsAkt:        TDataSource;
    DBEdit1:      TDBEdit;
    DBGrid1:      TDBGrid;
    DBGrid2:      TDBGrid;
    DBGrid3:      TDBGrid;
    DBMemo1:      TDBMemo;
    edFiltruj:    TEdit;
    GroupBox1:    TGroupBox;
    GroupBox3:    TGroupBox;
    ImgOcena:     TImage;
    ImageList1:   TImageList;
    ImgLstStars:  TImageList;
    ImgBrakZdjAkt: TImage;
    ImgZdjAkt:    TImage;
    Label1:       TLabel;
    lbOcena:      TLabel;
    MenuItem1:    TMenuItem;
    MenuItem2:    TMenuItem;
    OpenDlg:      TOpenDialog;
    PageControl1: TPageControl;
    Panel1:       TPanel;
    Panel3:       TPanel;
    pnlSort:      TPanel;
    pmSort:       TPopupMenu;
    RxDBTrackBar1: TRxDBTrackBar;
    Splitter1:    TSplitter;
    TabSheet1:    TTabSheet;
    TabSheet2:    TTabSheet;
    Opis:         TTabSheet;
    tmrF:         TTimer;
    Tmr:          TTimer;
    ToolBar1:     TToolBar;
    ToolBar2:     TToolBar;
    ToolBar3:     TToolBar;
    ToolBar4:     TToolBar;
    ToolBar7:     TToolBar;
    ToolButton1:  TToolButton;
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
    ToolButton2:  TToolButton;
    ToolButton20: TToolButton;
    ToolButton3:  TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton4:  TToolButton;
    ToolButton5:  TToolButton;
    ToolButton6:  TToolButton;
    ToolButton7:  TToolButton;
    ToolButton8:  TToolButton;
    ToolButton9:  TToolButton;
    procedure acDodajAkaAExecute(Sender: TObject);
    procedure acDodajExecute(Sender: TObject);
    procedure acDodajWieleExecute(Sender: TObject);
    procedure acFiltrExecute(Sender: TObject);
    procedure acFiltrInneNazwExecute(Sender: TObject);
    procedure acFiltrWyczyscExecute(Sender: TObject);
    procedure acSortNazwaExecute(Sender: TObject);
    procedure acSortOcenaExecute(Sender: TObject);
    procedure acUsunAkaAExecute(Sender: TObject);
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
    procedure RxDBTrackBar1Change(Sender: TObject);
    procedure tmrFTimer(Sender: TObject);
    procedure TmrTimer(Sender: TObject);
  private
    fIdWybAkt:     longint;
    fTrybOtwarcia: TTrybOtwarciaOkna;
    fQry:          TSqlQueryBuilder;

    function PrepareQuery: string;
    procedure RefreshQuery;
    procedure PokazDaneAkt;
    procedure DodajNazwiskaZListy(Lista: TStringList);
    function SprawdzNazwiskoIstnieje(const Nazwa: string): boolean;
    procedure PokazOcene(const Ocena: integer);
  public
    property TrybOtwarcia: TTrybOtwarciaOkna Read fTrybOtwarcia Write fTrybOtwarcia;
    property WybraneIdAktora: longint Read fIdWybAkt;
  end;

var
  FrmAktorzy: TFrmAktorzy;

implementation

uses
  dmakt, Clipbrd, LCLIntf, LCLType, StrUtils, dlgimgview, dlgaktor, dlgpozsl, dlglstpoztxt;

{$R *.frm}

{ TFrmAktorzy }

procedure TFrmAktorzy.FormCreate(Sender: TObject);
begin
  fTrybOtwarcia := tooPrzegladanie;
  fIdWybAkt := 0;

  fQry := TSqlQueryBuilder.Create;
  fQry.WhereOperator := woOr;
  fQry.AddFields('A.IdAkt, A.NazwaAkt, A.OcenaAkt, A.ZdjecieAkt, A.ZdjecieScAkt, A.OpisAkt');
  fQry.From := 'Aktorzy A';
end;

procedure TFrmAktorzy.FormDestroy(Sender: TObject);
begin
  if Assigned(fQry) then
    FreeAndNil(fQry);
end;

procedure TFrmAktorzy.FormShow(Sender: TObject);
begin
  if (fTrybOtwarcia = tooWybor) then
  begin
    ButtonPanel1.ShowButtons := [pbOK, pbCancel];
  end
  else
    ButtonPanel1.ShowButtons := [pbClose];

  DMA.qAkt.Close;
  DMA.qAkt.Open;
  PokazDaneAkt;

  edFiltruj.SetFocus;
end;

procedure TFrmAktorzy.RxDBTrackBar1Change(Sender: TObject);
begin
  lbOcena.Caption := IntToStr(RxDBTrackBar1.Position); //DMA.qAkt.FieldByName('OcenaAkt').AsString;
  PokazOcene(RxDBTrackBar1.Position);
end;

procedure TFrmAktorzy.tmrFTimer(Sender: TObject);
begin
  tmrF.Enabled := False;
  RefreshQuery;
end;

procedure TFrmAktorzy.TmrTimer(Sender: TObject);
begin
  PokazDaneAkt;
  Tmr.Enabled := False;
end;

function TFrmAktorzy.PrepareQuery: string;
var
  //sql: string;
  filtr: string;

begin
  if (fQry.IsWhere) then
    fQry.ClearWhere;

  filtr := Trim(edFiltruj.Text);
  if (filtr <> '') then
  begin
    fQry.AddWhereFormat('NazwaAkt LIKE ''%s'' ', ['%' + filtr + '%']);

    if (acFiltrInneNazw.Checked) then
      fQry.AddWhereFormat('Exists(select IdAKAA FROM AKA_A N where A.IdAkt = N.IdAkt and Upper(NazwaAkAA) Like ''%s'')', ['%' + filtr + '%']);

  end;



  Result := fQry.AsString;
  {sql := DMA.SqlAkt;

  filtr := Trim(edFiltruj.Text);
  if (filtr <> '') then
  begin
    sql := sql + Format(' WHERE NazwaAkt LIKE ''%s'' ', ['%' + filtr + '%']);
  end;

  Result := sql;}
end;

procedure TFrmAktorzy.RefreshQuery;
begin
  try
    DMG.OdswiezQueryZSql(DMA.qAkt, PrepareQuery, 'NAZWAAKT');
  except
    on e: Exception do
    begin
      MessageDlg('Błąd podczas filtrowania tabeli aktorów:' + sLineBreak + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmAktorzy.PokazDaneAkt;
begin
  ImgBrakZdjAkt.Visible := False;
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

procedure TFrmAktorzy.PokazOcene(const Ocena: integer);
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

procedure TFrmAktorzy.acSortNazwaExecute(Sender: TObject);
begin
  acSortNazwa.Checked := True;
  acSortOcena.Checked := False;
  pnlSort.Caption := 'Sortuj wg. nazwy';
  DMA.qAkt.SortedFields := 'NAZWAAKT';
end;

procedure TFrmAktorzy.acDodajExecute(Sender: TObject);
var
  nazwa: string;
  frm: TFrmAktor;
begin
  if not DMA.qAkt.Active then
    Exit;

  frm := TFrmAktor.Create(self);
  try
    frm.TytulOkna := 'Nowy aktor';
    if (frm.ShowModal = mrOk) then
    begin
      nazwa := frm.Nazwa;
      if DMA.tbAkt.Locate('NAZWAAKT', nazwa, [loCaseInsensitive]) then
      begin
        DMA.qAkt.Locate('NazwaAkt', nazwa, [loCaseInsensitive]);
        MessageDlg(Format('Aktor "%s" już jest', [nazwa]), mtInformation, [mbOK], 0);
      end
      else
      begin
        DMA.qAkt.Append;
        DMA.qAkt.FieldByName('NazwaAkt').AsString := nazwa;
        DMA.qAkt.Post;
        DMG.OdswiezDataSet(DMA.qAkt, '');
        if not DMA.qAkt.Locate('NazwaAkt', nazwa, [loCaseInsensitive]) then
          ShowMessage('Nie udało się odnaleźć dodanego aktora');
      end;
    end;
  finally
    FreeAndNil(frm);
  end;

  {if InputQuery('Nowy aktor', 'Nazwa aktora:', nazwa) then
  begin
    nazwa := Trim(nazwa);
    if DMA.tbAkt.Locate('NAZWAAKT', nazwa, [loCaseInsensitive]) then
    begin
      DMA.qAkt.Locate('NazwaAkt', nazwa, [loCaseInsensitive]);
      MessageDlg(Format('Aktor "%s" już jest', [nazwa]), mtInformation, [mbOK], 0);
    end
    else
    begin
      DMA.tbAkt.Append;
      DMA.tbAkt.FieldByName('NazwaAkt').AsString := nazwa;
      DMA.tbAkt.Post;
      DMG.OdswiezDataSet(DMA.qAkt, '');
      if not DMA.qAkt.Locate('NazwaAkt', nazwa, [loCaseInsensitive]) then
        ShowMessage('Nie udało się odnaleźć dodanego aktora');
    end;
  end; }
end;

procedure TFrmAktorzy.acDodajWieleExecute(Sender: TObject);
var
  frm: TFrmLstPozTxt;
  lst: TStringList;
begin
  frm := TFrmLstPozTxt.Create(self);
  try
    frm.TytulOkna := 'Dodaj wiele innych nazwisk';
    frm.SprawdzaniePozycji := @SprawdzNazwiskoIstnieje;
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

procedure TFrmAktorzy.acDodajAkaAExecute(Sender: TObject);
var
  poz: TFrmPozSlownika;
  idAkt: longint;
begin
  if (DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) then
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
  RefreshQuery;
end;

procedure TFrmAktorzy.acSortOcenaExecute(Sender: TObject);
begin
  acSortNazwa.Checked := False;
  acSortOcena.Checked := True;
  pnlSort.Caption := 'Sortuj wg. oceny';
  DMA.qAkt.SortedFields := 'OCENAAKT';
end;

procedure TFrmAktorzy.acUsunAkaAExecute(Sender: TObject);
begin
  if ((DMA.qAkt.Active) and (not DMA.qAkt.IsEmpty) and (not DMA.qAkaA.IsEmpty)) then
  begin
    DMA.UsunInneNazwisko(DMA.qAkaA.FieldByName('IdAKAA').AsInteger);
    DMG.OdswiezDataSet(DMA.qAkaA, '');
  end;
end;

procedure TFrmAktorzy.acZdjPowiekszExecute(Sender: TObject);
var
  frm: TFrmImgView;
begin
  if ((not DMA.qAkt.IsEmpty) and (DMA.qAkt.FieldByName('ZdjecieScAkt').AsString <> '')) then
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
  if not DMA.qAkt.IsEmpty then
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
  if ((not DMA.qAkt.IsEmpty) and (DMA.qAkt.FieldByName('ZdjecieScAkt').AsString <> '')) then
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
  if not DMA.qAkt.IsEmpty then
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
  Tmr.Enabled := True;
  if (DMA.qAkt.IsEmpty) then
  begin
    fIdWybAkt := 0;
  end
  else
  begin
    fIdWybAkt := DMA.qAkt.FieldByName('IdAkt').AsInteger;
    DMA.PokazInneNazwiskaAktora(fIdWybAkt);
  end;
end;

procedure TFrmAktorzy.edFiltrujKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  tmrF.Enabled := True;
end;

procedure TFrmAktorzy.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  DMA.qAkt.Close;
end;

end.
