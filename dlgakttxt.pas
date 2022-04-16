unit dlgakttxt;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  StdCtrls, ComCtrls, Contnrs, unazakt;

type

  { TFrmAktTxt }

  TFrmAktTxt = class(TForm)
    Bevel1: TBevel;
    btnWstecz: TBitBtn;
    btnDalej: TBitBtn;
    btnAnuluj: TBitBtn;
    ImgStrony: TImage;
    ImgLst16: TImageList;
    ImgLst32: TImageList;
    lbIloscPoz: TLabel;
    lbIloscLinii: TLabel;
    lbOdznWszystko: TLabel;
    lbWprSep: TLabel;
    lbOpis: TLabel;
    lbTytul: TLabel;
    lbZaznWszystko: TLabel;
    lvPoz: TListView;
    lvIstn: TListView;
    meAktTxt: TMemo;
    nbk: TNotebook;
    Page1: TPage;
    Page2: TPage;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    pnlFilm: TPanel;
    pnlInfo: TPanel;
    pnlBtn: TPanel;
    tsDoDodania: TTabSheet;
    tsIstniejace: TTabSheet;
    procedure btnDalejClick(Sender: TObject);
    procedure btnWsteczClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbOdznWszystkoClick(Sender: TObject);
    procedure lbOdznWszystkoMouseEnter(Sender: TObject);
    procedure lbOdznWszystkoMouseLeave(Sender: TObject);
    procedure lbWprSepClick(Sender: TObject);
    procedure lbWprSepMouseEnter(Sender: TObject);
    procedure lbWprSepMouseLeave(Sender: TObject);
    procedure lbZaznWszystkoClick(Sender: TObject);
    procedure lbZaznWszystkoMouseEnter(Sender: TObject);
    procedure lbZaznWszystkoMouseLeave(Sender: TObject);
    procedure lvPozItemChecked(Sender: TObject; Item: TListItem);
    procedure meAktTxtChange(Sender: TObject);
  private
    fIdFilmu: longint;
    fZmianyTxt: boolean;

    procedure PokazStrone(IndexStrony: integer);
    procedure UstawOpis(IndexStrony: integer);
    procedure UstawObraz(IndexStrony: integer);
    procedure UtworzListeAktorow;
    procedure ListaNazwToListItem(wpisanaNazwa: string; lstNazw: TObjectList);
    function StatusIdToStr(IdStatusu: integer): string;
    function StatusIdToImgIdx(IdStatusu: integer): integer;
    procedure DodajPozDoListView(lv: TListView; poz: TNazwaAktora; wpisanaNazwa: string; iloscNazw: integer);
    procedure UstawieniaPoczatkowe;
    procedure UstawStanPozycji(lv:TListView; stan: boolean);
    procedure PokazIloscPozycji;
  public
    property IdFilmu: longint read fIdFilmu write fIdFilmu;
  end;

var
  FrmAktTxt: TFrmAktTxt;

implementation

{$R *.frm}

uses
  dlgpozseptxt, dmakt, dmmain;

const
  STATUS_ISTNIEJE = 1;
  STATUS_NOWY = 2;
  STATUS_WIELE_POZ = 3;

{ TFrmAktTxt }

procedure TFrmAktTxt.lbWprSepMouseEnter(Sender: TObject);
begin
  lbWprSep.Font.Style := lbWprSep.Font.Style + [fsUnderline];
  lbWprSep.Cursor := crHandPoint;
end;

procedure TFrmAktTxt.FormShow(Sender: TObject);
begin
  UstawieniaPoczatkowe;
end;

procedure TFrmAktTxt.lbOdznWszystkoClick(Sender: TObject);
begin
  UstawStanPozycji(lvPoz, False);
  PokazIloscPozycji;
end;

procedure TFrmAktTxt.lbOdznWszystkoMouseEnter(Sender: TObject);
begin
  lbOdznWszystko.Font.Style := lbOdznWszystko.Font.Style + [fsUnderline];
  lbOdznWszystko.Cursor := crHandPoint;
end;

procedure TFrmAktTxt.lbOdznWszystkoMouseLeave(Sender: TObject);
begin
  lbOdznWszystko.Font.Style := lbOdznWszystko.Font.Style - [fsUnderline];
  lbOdznWszystko.Cursor := crDefault;
end;

procedure TFrmAktTxt.lbWprSepClick(Sender: TObject);
var
  frm: TFrmPozSepTxt;
  lst: TStringList;
  i: integer;
  wyczysc: boolean;
  dodaj: boolean;
  odp: TModalResult;
begin
  frm := TFrmPozSepTxt.Create(self);
  try
    frm.TytulOkna := 'Nazwiska aktorów';
    if (frm.ShowModal = mrOk) then
    begin
      wyczysc := True;
      dodaj := True;
      lst := TStringList.Create;
      try
        frm.GetListaWprowadzonychPozycji(lst);
        if ((lst.Count > 0) and (Trim(meAktTxt.Text) <> '')) then
        begin
          odp := MessageDlg('Pole zawiera tekst. Zastąpić go dodawaną listą?' + sLineBreak + 'Aby to zrobić naciśnij przycisk Tak' + sLineBreak +
            'Aby dodać pozycje z dodawanej listy do istniejącego tekstu naciśnij Nie' + sLineBreak + 'Aby zrezygnować ze zmieniania czegokolwiek naciśnij Anuluj', mtWarning, [mbYes, mbNo, mbCancel], 0);
          if odp = mrNo then
            wyczysc := False
          else if odp = mrCancel then
            dodaj := False;
        end;

        if (dodaj) then
        begin
          if (wyczysc) then
            meAktTxt.Clear;
          for i := 0 to lst.Count - 1 do
            meAktTxt.Lines.Add(lst[i]);
        end;

      finally
        lst.Clear;
        FreeAndNil(frm);
      end;
    end;
  finally
    FreeAndNil(FrmPozSepTxt);
  end;
end;

procedure TFrmAktTxt.btnDalejClick(Sender: TObject);
begin
  if (nbk.PageIndex = 0) then
    PokazStrone(1)
  else
    ShowMessage('Zakończ');
end;

procedure TFrmAktTxt.btnWsteczClick(Sender: TObject);
begin
  PokazStrone(0);
end;

procedure TFrmAktTxt.FormCreate(Sender: TObject);
begin
  fIdFilmu := 0;
  fZmianyTxt := False;
end;

procedure TFrmAktTxt.lbWprSepMouseLeave(Sender: TObject);
begin
  lbWprSep.Font.Style := lbWprSep.Font.Style - [fsUnderline];
  lbWprSep.Cursor := crDefault;
end;

procedure TFrmAktTxt.lbZaznWszystkoClick(Sender: TObject);
begin
  UstawStanPozycji(lvPoz,True);
  PokazIloscPozycji;
end;

procedure TFrmAktTxt.lbZaznWszystkoMouseEnter(Sender: TObject);
begin
  lbZaznWszystko.Font.Style := lbZaznWszystko.Font.Style + [fsUnderline];
  lbZaznWszystko.Cursor := crHandPoint;
end;

procedure TFrmAktTxt.lbZaznWszystkoMouseLeave(Sender: TObject);
begin
  lbZaznWszystko.Font.Style := lbZaznWszystko.Font.Style - [fsUnderline];
  lbZaznWszystko.Cursor := crDefault;
end;

procedure TFrmAktTxt.lvPozItemChecked(Sender: TObject; Item: TListItem);
begin
  PokazIloscPozycji;
end;

procedure TFrmAktTxt.meAktTxtChange(Sender: TObject);
var
  ilosc: integer;
begin
  fZmianyTxt := True;
  ilosc := meAktTxt.Lines.Count;
  lbIloscLinii.Caption := Format('Ilość: %d', [ilosc]);
  btnDalej.Enabled := (ilosc > 0) and (fIdFilmu > 0);
end;

procedure TFrmAktTxt.PokazStrone(IndexStrony: integer);
begin
  case IndexStrony of
    0: begin
      nbk.PageIndex := 0;
      UstawOpis(nbk.PageIndex);
      UstawObraz(nbk.PageIndex);
      btnDalej.Caption := 'Dalej';
      btnDalej.ImageIndex := 1;
      btnWstecz.Visible := False;
    end;
    1: begin
      nbk.PageIndex := 1;
      UstawOpis(nbk.PageIndex);
      UstawObraz(nbk.PageIndex);
      btnDalej.Caption := 'Zakończ';
      btnDalej.ImageIndex := 3;
      btnWstecz.Visible := True;
      if (fZmianyTxt) then
      begin
        UtworzListeAktorow;
        fZmianyTxt := False;
      end;
    end;
  end;
end;

procedure TFrmAktTxt.UstawOpis(IndexStrony: integer);
begin
  meAktTxt.Lines.Count;
  case IndexStrony of
    0: begin
      lbTytul.Caption := 'Dodaj aktorów';
      lbOpis.Caption := 'Wprowadź nazwiska aktorów. Każde w osobnej linii.';
    end;
    1: begin
      lbTytul.Caption := 'Wybierz aktorów z filmu';
      lbOpis.Caption := 'Wybierz których aktorów dodać. Wskaż czy to główne nazwisko aktora czy dodatkowe. Nie istniejący w bazie aktorzy zostaną dodani do bazy danych.';
    end;
  end;
end;

procedure TFrmAktTxt.UstawObraz(IndexStrony: integer);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  try
    ImgLst32.GetBitmap(IndexStrony, bmp);
    ImgStrony.Picture.Bitmap := bmp;
  finally
    FreeAndNil(bmp);
  end;
end;

procedure TFrmAktTxt.UtworzListeAktorow;
var
  lstNazwAkt: TObjectList;
  lstSprNazw : TStringList;
  i: integer;
  nazw: string;
begin
  lstSprNazw:= TStringList.Create;
  lstNazwAkt := TObjectList.Create;
  lvPoz.BeginUpdate;
  try
    lvPoz.Items.Clear;
    for i := 0 to meAktTxt.Lines.Count - 1 do
    begin
      nazw := Trim(meAktTxt.Lines[i]);
      if (nazw <> '') and (lstSprNazw.IndexOf(AnsiUpperCase(nazw)) < 0) then
      begin
        lstSprNazw.Add(AnsiUpperCase(nazw));
        if (DMA.ZnajdzWystNazwiska(nazw, lstNazwAkt)) then
        begin
          ListaNazwToListItem(nazw, lstNazwAkt);
        end
        else
        begin
          DodajPozDoListView(lvPoz, nil, nazw, 0);
        end;
      end;
    end;
  finally
    lvPoz.EndUpdate;
    lstNazwAkt.Clear;
    lstSprNazw.Clear;
    FreeAndNil(lstNazwAkt);
    FreeAndNil(lstSprNazw);
  end;

  tsDoDodania.Caption := Format('Do dodania (%d)', [lvPoz.Items.Count]);
  tsIstniejace.Caption := Format('Istniejące (%d)', [lvIstn.Items.Count]);
end;

procedure TFrmAktTxt.ListaNazwToListItem(wpisanaNazwa: string; lstNazw: TObjectList);
var
  poz: TNazwaAktora;
  wybListView: TListView;
begin
  if (Assigned(lstNazw)) then
  begin
    poz := TNazwaAktora(lstNazw.Items[0]);

    if (DMA.JestAktorWFilmie(poz.IdAktora, fIdFilmu)) then
      wybListView := lvIstn
    else
      wybListView := lvPoz;

    DodajPozDoListView(wybListView, poz, wpisanaNazwa, lstNazw.Count);
  end;
end;

procedure TFrmAktTxt.DodajPozDoListView(lv: TListView; poz: TNazwaAktora; wpisanaNazwa: string; iloscNazw: integer);
var
  item: TListItem;
  status: integer;
begin
  if (iloscNazw > 0) then
  begin
    item := lv.Items.Add;
    item.Caption := poz.Nazwa;

    if (poz.ToAktor) then
    begin
      item.ImageIndex := 4;
      item.SubItems.Add('Aktor');
    end
    else
    begin
      item.ImageIndex := 5;
      item.SubItems.Add('Dodatkowe nazwisko');
      item.Caption := item.Caption + Format(' (%s)', [wpisanaNazwa]);
    end;

    if (iloscNazw > 1) then
      status := STATUS_WIELE_POZ
    else
      status := STATUS_ISTNIEJE;

    item.SubItems.Add(StatusIdToStr(status));
    item.SubItemImages[1] := StatusIdToImgIdx(status);
    item.SubItems.Add(IntToStr(status));
    item.SubItems.Add(IntToStr(poz.IdAktora));
    item.SubItems.Add(wpisanaNazwa);
  end
  else
  begin
    item := lv.Items.Add;
    item.Caption := wpisanaNazwa;
    item.ImageIndex := 4;
    item.SubItems.Add('Aktor');
    item.SubItems.Add(StatusIdToStr(STATUS_NOWY));
    item.SubItemImages[1] := StatusIdToImgIdx(STATUS_NOWY);
    item.SubItems.Add(IntToStr(STATUS_NOWY));
    item.SubItems.Add('0');
    item.SubItems.Add(wpisanaNazwa);
  end;
end;

procedure TFrmAktTxt.UstawieniaPoczatkowe;
begin
  PokazStrone(0);
  MeAktTxt.Clear;
  lvPoz.Items.Clear;
  lvIstn.Items.Clear;
  if (fIdFilmu > 0) then
  begin
    pnlFilm.Caption := DMM.GetTytulIRokFilmu(fIdFilmu);
  end
  else
  begin
    MessageDlg('Nie przekazano IdFilmu do którego mają być dodani aktorzy.' + sLineBreak + 'Dodawanie niemożliwe', mtError, [mbOK], 0);
    pnlFilm.Caption := 'BRAK TYTUŁU FILMU';
  end;

end;

procedure TFrmAktTxt.UstawStanPozycji(lv: TListView; stan: boolean);
var
  i : integer;
  item : TListItem;
begin
  if (Assigned(lv)) then
  begin
    for i:=0 to lv.Items.Count-1 do
    begin
      item:= lv.Items[i];
      item.Checked:= stan;
    end;
  end
  else
  begin
    MessageDlg('Błąd podczas próby ustawienia stanu pozycji - nie przekazano obiektu TListView',mtError,[mbOk],0);
  end;
end;

procedure TFrmAktTxt.PokazIloscPozycji;
var
  iloscWyb, wszystkie : integer;
  i : integer;
begin
  wszystkie:= lvPoz.Items.Count;
  iloscWyb:= 0;

  for i:=0 to wszystkie-1 do
    if lvPoz.Items[i].Checked then
      Inc(iloscWyb);

  lbIloscPoz.Caption:= Format('%d/%d',[iloscWyb,wszystkie]);
end;

function TFrmAktTxt.StatusIdToStr(IdStatusu: integer): string;
begin
  case IdStatusu of
    1: Result := 'Istnieje';
    2: Result := 'Nowy';
    3: Result := 'Wiele pasujących';
    else
      Result := '???';
  end;
end;

function TFrmAktTxt.StatusIdToImgIdx(IdStatusu: integer): integer;
begin
  case IdStatusu of
    1: Result := 6;
    2: Result := 7;
    3: Result := 8;
    else
      Result := -1;
  end;
end;

end.
