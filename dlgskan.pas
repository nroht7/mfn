unit dlgskan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Buttons, ZDataset, ukatalog, ulstplrec;

type
  TRodzajOperacjiSkanowania = (rosWeryfikacja, rosUzupelnianie, rosCzyszczenie);

  { TFrmSkan }

  TFrmSkan = class(TForm)
    btnAkt:        TBitBtn;
    btnStart:      TBitBtn;
    btnZamknij:    TBitBtn;
    btnPrzerwij:   TBitBtn;
    btnKoniec:     TBitBtn;
    btnZamknij1:   TBitBtn;
    chbxOpcje:     TCheckBox;
    chbxNowePl:    TCheckBox;
    chbxUaktPl:    TCheckBox;
    chbxUsunPl:    TCheckBox;
    Image1:        TImage;
    Image2:        TImage;
    Image3:        TImage;
    Image4:        TImage;
    ImgRodzOp:     TImage;
    ImageList1:    TImageList;
    ImgLst32:      TImageList;
    Label1:        TLabel;
    lbZakDod:      TLabel;
    lbZakZm:       TLabel;
    lbZakUs:       TLabel;
    lbZakInfo:     TLabel;
    lbKatOp:       TLabel;
    lbInfo:        TLabel;
    lbWynZm:       TLabel;
    lbWynUs:       TLabel;
    lbWyniki:      TLabel;
    lbWynNowe:     TLabel;
    lbIloscPrzetw: TLabel;
    lbOpcje:       TLabel;
    lbOperacja:    TLabel;
    Label9:        TLabel;
    lbKatalog:     TLabel;
    lbPlik:        TLabel;
    lvPods:        TListView;
    Notebook1:     TNotebook;
    Zakonczenie:   TPage;
    Panel1:        TPanel;
    Podsumowanie:  TPage;
    Proces:        TPage;
    ProgressBar:   TProgressBar;
    TabControl1:   TTabControl;
    Ustawienia:    TPage;
    qPliki:        TZReadOnlyQuery;
    tbFld:         TZTable;
    tbPl:          TZTable;
    tbRozsz:       TZTable;
    qOp:           TZQuery;
    procedure btnAktClick(Sender: TObject);
    procedure btnPrzerwijClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnZamknijClick(Sender: TObject);
    procedure btnKoniecClick(Sender: TObject);
    procedure chbxNowePlClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
  private
    fRodzOp:      TRodzajOperacjiSkanowania;
    fWybKat:      TKatalog;
    fListaPlikow: TStringList;
    fLstPlUsun:   TLstPlikowRec;
    fLstPlZmien:  TLstPlikowRec;
    fLstPlNowe:   TLstPlikowRec;
    fLstObsRozsz: TStringList;
    fPrzerwijPrzetwarzanie: boolean;
    fIloscPlUs:   integer;
    fIloscPlZm:   integer;
    fIloscPlDod:  integer;

    procedure UstawRodzajOpSkanowanie;
    procedure UstawRodzajOpWeryfikacja;
    procedure UstawRodzajOkna(aRodzOp: TRodzajOperacjiSkanowania);
    procedure UstawObrazek(aImgIdx: integer);
    procedure UtworzListePlikow;
    procedure ZapiszWynikiWer;
    function UstawStatusPliku(aListaPl: TLstPlikowRec; aStatus: string): boolean; overload;
    function UstawStatusPliku(aPlik: string; aStatus: string): boolean; overload;
    procedure UtworzPodsumowanie;
    procedure WypelnijPozPodsumowaniaZListy(aListaPl: TLstPlikowRec);
    procedure UtworzListeObsRozszerzen;
    procedure AktualizujDane;
    procedure UsunRekordy;
    procedure AktualizujPlik(aPlikRec: TPlikRec);
    function DodajPlik(aPlikRec: TPlikRec):longint;
    function GetIdRip(Crc: string): longint;
    function DodajPlikDoRip(Crc: string): longint;
    procedure UstawWidokPostWynikow(Widoczne: boolean);
    function GetIdRozsz(Rozsz: string): longint;
    function GetIdTypuPl(Rozsz: string): longint;
    function GetScWzg(Plik: string): string;
    procedure UtworzZakonczenie;
  public
    property RodzajOperacji: TRodzajOperacjiSkanowania Read fRodzOp Write fRodzOp;
    property Katalog: TKatalog Read fWybKat Write fWybKat;
  end;

var
  FrmSkan: TFrmSkan;

implementation

uses
  FileUtil, dmgl, funkcje, DB;

{$R *.frm}

{ TFrmSkan }

procedure TFrmSkan.FormCreate(Sender: TObject);
begin
  fRodzOp := rosWeryfikacja;

  fLstObsRozsz := TStringList.Create;
  fLstPlNowe  := TLstPlikowRec.Create;
  fLstPlZmien := TLstPlikowRec.Create;
  fLstPlUsun  := TLstPlikowRec.Create;
end;

procedure TFrmSkan.FormDestroy(Sender: TObject);
begin
  if (Assigned(fListaPlikow)) then
  begin
    fListaPlikow.Clear;
    FreeAndNil(fListaPlikow);
  end;

  if (Assigned(fLstPlUsun)) then
  begin
    fLstPlUsun.Pliki.Clear;
    FreeAndNil(fLstPlUsun);
  end;

  if (Assigned(fLstPlZmien)) then
  begin
    fLstPlZmien.Pliki.Clear;
    FreeAndNil(fLstPlZmien);
  end;

  if (Assigned(fLstPlNowe)) then
  begin
    fLstPlNowe.Pliki.Clear;
    FreeAndNil(fLstPlNowe);
  end;

  if (Assigned(fLstObsRozsz)) then
  begin
    fLstObsRozsz.Clear;
    FreeAndNil(fLstObsRozsz);
  end;
end;

procedure TFrmSkan.FormShow(Sender: TObject);
begin
  UstawRodzajOkna(fRodzOp);
  tbRozsz.Open;

  lbWynNowe.Caption := 'Nowe: 0';
  lbWynZm.Caption := 'Zmienione: 0';
  lbWynUs.Caption := 'Usunięte: 0';

end;

procedure TFrmSkan.TabControl1Change(Sender: TObject);
begin
  case TabControl1.TabIndex of
    0: WypelnijPozPodsumowaniaZListy(fLstPlNowe);
    1: WypelnijPozPodsumowaniaZListy(fLstPlZmien);
    2: WypelnijPozPodsumowaniaZListy(fLstPlUsun);
    else
      MessageDlg('Nieobsługiwana zakładka!', mtError, [mbOK], 0);
  end;
end;

procedure TFrmSkan.UstawRodzajOpSkanowanie;
begin
  Caption := 'Skanowanie';
  lbKatOp.Caption := 'Skanowany katalog:';
  UstawObrazek(0);
  {lbInfo.Caption := 'W trakcie skanowania zostaną porównane informacje zapisane w bazie danych,' + sLineBreak +
    'z rzeczywistą zawartością badanego katalogu. Zmiany zostaną uwzględnione w rejestrze.' + sLineBreak +
    'W wyniku operacji do bazy danych zostaną dopisane nowe pliki, usunięte już nie istnejące i zaktualizowane te które uległy zmianie.';}
end;

procedure TFrmSkan.UstawRodzajOpWeryfikacja;
begin
  Caption := 'Weryfikacja';
  lbKatOp.Caption := 'Weryfikowany katalog:';
  UstawObrazek(1);
  {lbInfo.Caption := 'Weryfikacja sprawdzi wybrany katalog pod kątem zmian pomiędzy jego rzeczywistą zawartością a tym zapisanym w bazie danych.'
    + sLineBreak + 'Zostaną określone pliki które zostały dodane, usunięte i zmienione.' + sLineBreak + 'I zostanie zmieniony ich status';}
end;

procedure TFrmSkan.UstawRodzajOkna(aRodzOp: TRodzajOperacjiSkanowania);
begin
  lbOpcje.Visible := aRodzOp = rosUzupelnianie;
  chbxOpcje.Visible := aRodzOp = rosUzupelnianie;

  if (aRodzOp = rosWeryfikacja) then
    UstawRodzajOpWeryfikacja
  else
    UstawRodzajOpSkanowanie;

  if Assigned(fWybKat) then
  begin
    lbKatalog.Caption := fWybKat.ToString;
  end
  else
  begin
    MessageDlg('Nie przekazano katalogu który ma być sprawdzany', mtError, [mbOK], 0);
    Exit;
  end;
end;

procedure TFrmSkan.UstawObrazek(aImgIdx: integer);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  try
    ImgLst32.GetBitmap(aImgIdx, bmp);
    ImgRodzOp.Picture.Bitmap := bmp;
  finally
    if Assigned(bmp) then
      FreeAndNil(bmp);
  end;
end;

procedure TFrmSkan.UtworzListePlikow;
var
  lstRozsz: string;
  i: integer;
  iloscRec: integer;
  plik: string;
  rozmiar: int64;
  crc32: string;
  iloscBledow: integer;
  plRec: TPlikRec;
begin
  if (Assigned(fListaPlikow)) then
    fListaPlikow.Clear
  else
    fListaPlikow := TStringList.Create;
  UstawWidokPostWynikow(True);

  ProgressBar.Style := pbstMarquee;
  lbOperacja.Caption := 'Odczytywanie plików z katalogu';
  lbIloscPrzetw.Caption := '0/0';
  lbPlik.Caption := '';
  Application.ProcessMessages;

  lstRozsz := DMG.GetLstOblTypowAsStr;
  FindAllFiles(fListaPlikow, fWybKat.ToString, lstRozsz, True, faAnyFile);
  ProgressBar.Style := pbstNormal;

  qPliki.Close;
  qPliki.ParamByName('IdFld').AsInteger := fWybKat.IdKatalogu;
  qPliki.Open;

  // nie ma sensu sprawdzać czy coś usunięto jeśli nie ma jeszcze rekordów dla tego katalogu
  iloscBledow := 0;
  iloscRec := qPliki.RecordCount;
  if iloscRec > 0 then
  begin
    lbOperacja.Caption := 'Sprawdzanie usuniętych plików';
    lbIloscPrzetw.Caption := Format('0/%d', [iloscRec]);
    ProgressBar.Position := 0;
    Application.ProcessMessages;

    ProgressBar.Max := iloscRec;
    i := 0;
    qPliki.First;
    while not qPliki.EOF do
    begin
      Inc(i);
      if fListaPlikow.IndexOf(qPliki.FieldByName('ScPl').AsString) < 0 then
      begin
        if not UstawStatusPliku(qPliki.FieldByName('ScPl').AsString, 'U') then
          Inc(iloscBledow);
        fLstPlUsun.DodajPlik(qPliki.FieldByName('IdPl').AsInteger, qPliki.FieldByName('ScPl').AsString);
      end;

      ProgressBar.Position := i;
      lbIloscPrzetw.Caption := Format('%d/%d', [i, iloscRec]);
      lbWynUs.Caption := Format('Usunięte: %d', [fLstPlUsun.Pliki.Count]);
      Application.ProcessMessages;

      qPliki.Next;
    end;
  end;

  ProgressBar.Max := fListaPlikow.Count;
  if (fListaPlikow.Count > 0) then
  begin
    lbOperacja.Caption := 'Sprawdzanie plików z katalogu';
    lbIloscPrzetw.Caption := Format('0/%d', [fListaPlikow.Count]);
    ProgressBar.Position := 0;
    Application.ProcessMessages;

    fPrzerwijPrzetwarzanie := False;
    for i := 0 to fListaPlikow.Count - 1 do
    begin
      plik := fListaPlikow[i];

      lbPlik.Caption := plik;
      Application.ProcessMessages;

      if qPliki.Locate('ScPl', plik, [loCaseInsensitive]) then
      begin
        rozmiar := FileSize(plik);
        if qPliki.FieldByName('RozmiarPl').AsLargeInt <> rozmiar then
        begin
          UstawStatusPliku(qPliki.FieldByName('ScPl').AsString, 'Z');
          fLstPlZmien.DodajPlik(qPliki.FieldByName('IdPl').AsInteger, plik);
        end
        else
        begin
          crc32 := CrcFileStr(plik);
          if qPliki.FieldByName('Crc32Rip').AsString <> crc32 then
          begin
            UstawStatusPliku(qPliki.FieldByName('ScPl').AsString, 'Z');
            plRec := fLstPlZmien.DodajPlik(qPliki.FieldByName('IdPl').AsInteger, plik);
            plRec.Crc32Hash := crc32;
          end
          // jeśli plik jest i się nie zmienił to ewentualnie przywracam status (mógł zostać np. wcześniej usunięty ale jest już przywrócony)
          else if (qPliki.FieldByName('StatusPl').AsString = 'U') or (qPliki.FieldByName('StatusPl').AsString = 'U') then
          begin
            UstawStatusPliku(qPliki.FieldByName('ScPl').AsString, 'N');
          end;
        end;
      end
      else
      begin
        fLstPlNowe.DodajPlik(0, plik);
        //if fLstObsRozsz.IndexOf(ExtractFileExt(plik)) >= 0 then
        //  fLstPlNowe.Add(plik);
      end;

      ProgressBar.Position := i;
      lbIloscPrzetw.Caption := Format('%d/%d', [i, fListaPlikow.Count]);
      lbWynNowe.Caption := Format('Nowe: %d', [fLstPlNowe.Pliki.Count]);
      lbWynZm.Caption := Format('Zmienione: %d', [fLstPlZmien.Pliki.Count]);
      Application.ProcessMessages;

      if (fPrzerwijPrzetwarzanie) then
      begin
        break;
      end;
    end;
  end;

  lbPlik.Caption := '';
  Notebook1.PageIndex := 2;
  UtworzPodsumowanie;
end;

procedure TFrmSkan.ZapiszWynikiWer;
begin
  UstawStatusPliku(fLstPlUsun, 'U');
  UstawStatusPliku(fLstPlZmien, 'Z');

  tbFld.Close;
  tbFld.Open;
  if tbFld.Locate('IdFld', fWybKat.IdKatalogu, []) then
  begin
    tbFld.Edit;
    tbFld.FieldByName('DataWerFld').AsDateTime  := now;
    tbFld.FieldByName('NowePlikiFld').AsInteger := fLstPlNowe.Pliki.Count;
    tbFld.Post;
  end
  else
  begin
    MessageDlg('Błąd podczas próby zapisu infiormacji o weryfikacji do rekordu folderu o id: ' + IntToStr(fWybKat.IdKatalogu),
      mtError, [mbOK], 0);
  end;
  tbFld.Close;
end;

function TFrmSkan.UstawStatusPliku(aListaPl: TLstPlikowRec; aStatus: string): boolean;
var
  i: integer;
  iloscBledow: integer;
  plRec: TPlikRec;
begin
  Result := True;
  iloscBledow := 0;
  tbPl.Close;
  tbPl.Open;
  for i := 0 to aListaPl.Pliki.Count - 1 do
  begin
    plRec := TPlikRec(aListaPl.Pliki.Items[i]);
    if tbPl.Locate('ScPl', plRec.Sciezka, [loCaseInsensitive]) then
    begin
      tbPl.Edit;
      tbPl.FieldByName('StatusPl').AsString := aStatus;
      tbPl.Post;
    end
    else
    begin
      Inc(iloscBledow);
      MessageDlg(Format('Błąd podczas próby zapisu statusu: "%s" do pliku: "%s".' + sLineBreak + 'Nie znaleźiono rekordu.',
        [aStatus, plRec.Sciezka]), mtError, [mbOK], 0);

      if (iloscBledow >= 3) then
      begin
        Result := False;
        break;
      end;
    end;
  end;

  tbPl.Close;
end;

function TFrmSkan.UstawStatusPliku(aPlik: string; aStatus: string): boolean;
begin
  Result := False;

  if tbPl.Locate('ScPl', aPlik, [loCaseInsensitive]) then
  begin
    tbPl.Edit;
    tbPl.FieldByName('StatusPl').AsString := aStatus;
    tbPl.Post;
    Result := True;
  end
  else
  begin
    MessageDlg(Format('Błąd podczas próby zapisu statusu: "%s" do pliku: "%s"', [aStatus, aPlik]), mtError, [mbOK], 0);
  end;
end;

procedure TFrmSkan.UtworzPodsumowanie;
var
  s: string;
begin
  TabControl1.Tabs.Clear;
  s := Format('Nowe (%d)', [fLstPlNowe.Pliki.Count]);
  TabControl1.Tabs.Add(s);
  s := Format('Zmienione (%d)', [fLstPlZmien.Pliki.Count]);
  TabControl1.Tabs.Add(s);
  s := Format('Usunięte (%d)', [fLstPlUsun.Pliki.Count]);
  TabControl1.Tabs.Add(s);

  TabControl1.TabIndex := 0;
  WypelnijPozPodsumowaniaZListy(fLstPlNowe);

  chbxNowePl.Checked := False;
  chbxUaktPl.Checked := False;
  chbxUsunPl.Checked := False;
  chbxNowePl.Enabled := (fLstPlNowe.Pliki.Count > 0);
  chbxUaktPl.Enabled := (fLstPlZmien.Pliki.Count > 0);
  chbxUsunPl.Enabled := (fLstPlUsun.Pliki.Count > 0);
  btnAkt.Enabled := ((chbxNowePl.Enabled and chbxNowePl.Checked) or (chbxUaktPl.Enabled and chbxUaktPl.Checked) or
    (chbxUsunPl.Enabled and chbxUsunPl.Checked));
end;

procedure TFrmSkan.WypelnijPozPodsumowaniaZListy(aListaPl: TLstPlikowRec);
var
  item: TListItem;
  i: integer;
  rozsz: string;
  idx: string;
  plRec: TPlikRec;
begin
  lvPods.BeginUpdate;
  try
    lvPods.Items.Clear;
    if Assigned(aListaPl) then
    begin
      for i := 0 to aListaPl.Pliki.Count - 1 do
      begin
        plRec := TPlikRec(aListaPl.Pliki.Items[i]);
        item := lvPods.Items.Add;
        item.Caption := plRec.Sciezka;
        rozsz := ExtractFileExt(plRec.Sciezka);
        idx := fLstObsRozsz.Values[rozsz];
        if (idx <> '') then
          item.ImageIndex := StrToIntDef(idx, -1)
        else
          item.ImageIndex := 0;
      end;
    end;
  finally
    lvPods.EndUpdate;
  end;
end;

procedure TFrmSkan.UtworzListeObsRozszerzen;
begin
  fLstObsRozsz.Clear;
  //tbRozsz.Close;
  //tbRozsz.Open;
  tbRozsz.First;
  while not tbRozsz.EOF do
  begin
    fLstObsRozsz.Add(tbRozsz.FieldByName('NazwaRozszPl').AsString + '=' + tbRozsz.FieldByName('ImgIdxRozszPl').AsString);

    tbRozsz.Next;
  end;
  //tbRozsz.Close;
end;

procedure TFrmSkan.AktualizujDane;
var
  i: integer;
  plRec: TPlikRec;
begin
  fIloscPlUs  := 0;
  fIloscPlZm  := 0;
  fIloscPlDod := 0;

  fPrzerwijPrzetwarzanie := False;
  UstawWidokPostWynikow(False);

  if fLstPlUsun.SaPliki then
  begin
    ProgressBar.Style := pbstMarquee;
    lbOperacja.Caption := 'Usuwanie rekordów dotyczących nieistniejących plików w katalogu';
    lbIloscPrzetw.Caption := '0/0';
    lbPlik.Caption := '';
    Application.ProcessMessages;
    UsunRekordy;
  end;

  if (fLstPlZmien.SaPliki) and (not fPrzerwijPrzetwarzanie) then
  begin
    ProgressBar.Style := pbstNormal;
    lbOperacja.Caption := 'Uaktualnianie plików w katalogu';
    lbIloscPrzetw.Caption := Format('0/%d', [fLstPlZmien.Pliki.Count]);
    lbPlik.Caption  := '';
    ProgressBar.Max := fLstPlZmien.Pliki.Count;
    Application.ProcessMessages;

    for i := 0 to fLstPlZmien.Pliki.Count - 1 do
    begin
      plRec := TPlikRec(fLstPlZmien.Pliki[i]);

      ProgressBar.Position := i;
      lbIloscPrzetw.Caption := Format('%d/%d', [i, fLstPlZmien.Pliki.Count]);
      lbPlik.Caption := plRec.Sciezka;
      Application.ProcessMessages;

      AktualizujPlik(plRec);
      Inc(fIloscPlZm);

      if fPrzerwijPrzetwarzanie then
      begin
        MessageDlg('Przetwarzanie przerwane przez użytkownika', mtWarning, [mbOK], 0);
        break;
      end;
    end;
  end;

  if ((fLstPlNowe.SaPliki) and (not fPrzerwijPrzetwarzanie)) then
  begin
    ProgressBar.Style := pbstNormal;
    lbOperacja.Caption := 'Dodanie nowych plików w katalogu';
    lbIloscPrzetw.Caption := Format('0/%d', [fLstPlNowe.Pliki.Count]);
    lbPlik.Caption  := '';
    ProgressBar.Max := fLstPlNowe.Pliki.Count;
    Application.ProcessMessages;

    for i := 0 to fLstPlNowe.Pliki.Count - 1 do
    begin
      plRec := TPlikRec(fLstPlNowe.Pliki[i]);
      ProgressBar.Position := i;
      lbIloscPrzetw.Caption := Format('%d/%d', [i, fLstPlNowe.Pliki.Count]);
      lbPlik.Caption := plRec.Sciezka;
      Application.ProcessMessages;

      plRec.ObliczCrc32();
      DodajPlik(plRec);
      Inc(fIloscPlDod);

      if fPrzerwijPrzetwarzanie then
      begin
        MessageDlg('Przetwarzanie przerwane przez użytkownika', mtWarning, [mbOK], 0);
        break;
      end;
    end;
  end;

  UtworzZakonczenie;
  Notebook1.PageIndex := 3;
end;

procedure TFrmSkan.UsunRekordy;
begin
  try
    qOp.Close;
    qOp.SQL.Text := 'SELECT COUNT(*) FROM PLIKI WHERE StatPl = ''U''';
    qOp.Open;
    fIloscPlUs := qOp.Fields[0].AsInteger;
    qOp.Close;
  except
    on e: Exception do
    begin
      Exception.Create('Błąd podczas próby zliczenia rekordów do usunięcia.' + sLineBreak + 'Treść błędu:' + sLineBreak + e.Message);
    end;
  end;

  try
    qOp.SQL.Text := 'DELETE FROM PLIKI WHERE StatPl = ''U''';
    qOp.ExecSQL;
  except
    on e: Exception do
    begin
      Exception.Create('Błąd podczas próby usunięcia rekordów.' + sLineBreak + 'Treść błędu:' + sLineBreak + e.Message);
    end;
  end;
end;

procedure TFrmSkan.AktualizujPlik(aPlikRec: TPlikRec);
var
  idRip: longint;
begin
  idRip := GetIdRip(aPlikRec.Crc32Hash);

  if (idRip = 0) then
    idRip := DodajPlikDoRip(aPlikRec.Crc32Hash);

  try
    qOp.Close;
    qOp.SQL.Text := 'UPDATE Pliki SET IdRip = :IDRIP WHERE IdPl = :IDPL';
    qOp.ParamByName('IDRIP').AsInteger := idRip;
    qOp.ParamByName('IDPL').AsInteger := aPlikRec.Id;
    qOp.ExecSQL;
    qOp.Close;
  except
    on e: Exception do
    begin
      Exception.Create('Błąd podczas próby aktualizacji pliku.' + sLineBreak + 'Dla pliku: "' + aPlikRec.Sciezka +
        '"' + sLineBreak + 'Treść błędu:' + sLineBreak + e.Message);
    end;
  end;
end;

function TFrmSkan.DodajPlik(aPlikRec: TPlikRec):longint;
var
  idRip: longint;
begin
  idRip := GetIdRip(aPlikRec.Crc32Hash);

  if (idRip = 0) then
    idRip := DodajPlikDoRip(aPlikRec.Crc32Hash);

  try
    qOp.Close;
    qOp.SQL.Clear;
    qOp.SQL.Add('INSERT INTO Pliki(IdFld,IdRip,IdTypPl,NazwaPl,ScPl,RozmiarPl,WzgScPl,RozszPl) ');
    qOp.SQL.Add('VALUES(:IDFLD,:IDRIP,:IDTYPPL,:NAZWAPL,:SCPL,:ROZMIARPL,:WZGSCPL,:ROZSZPL)');
    qOp.ParamByName('IDFLD').AsInteger := fWybKat.IdKatalogu;
    qOp.ParamByName('IDRIP').AsInteger := idRip;
    qOp.ParamByName('IDTYPPL').AsInteger := GetIdTypuPl(ExtractFileExt(aPlikRec.Sciezka));
    qOp.ParamByName('NAZWAPL').AsString := ExtractFileName(aPlikRec.Sciezka);
    qOp.ParamByName('SCPL').AsString := aPlikRec.Sciezka;
    qOp.ParamByName('ROZMIARPL').AsInt64 := aPlikRec.RozmiarPliku;
    qOp.ParamByName('WZGSCPL').AsString := GetScWzg(aPlikRec.Sciezka);
    qOp.ParamByName('ROZSZPL').AsString := ExtractFileExt(aPlikRec.Sciezka);
    qOp.ExecSQL;
    result:= DMG.GetLastId();
    qOp.Close;
  except
    on e: Exception do
    begin
      Exception.Create('Błąd podczas próby dodania pliku.' + sLineBreak + 'Dla pliku: "' + aPlikRec.Sciezka +
        '"' + sLineBreak + 'Treść błędu:' + sLineBreak + e.Message);
    end;
  end;
end;

function TFrmSkan.GetIdRip(Crc: string): longint;
begin
  Result := 0;

  try
    qOp.Close;
    qOp.SQL.Text := 'SELECT IdRip FROM RejestrPlikow WHERE Crc32Rip = :CRC ';
    qOp.ParamByName('CRC').AsString := Crc;
    qOp.Open;

    if not qOp.IsEmpty then
      Result := qOp.FieldByName('IdRip').AsInteger;
    qOp.Close;
  except
    on e: Exception do
    begin
      Exception.Create('Błąd podczas próby pobrania informacji o pliku z rejestru plików.' + sLineBreak +
        'Dla pliku: "' + Crc + '"' + sLineBreak + 'Treść błędu:' + sLineBreak + e.Message);
    end;
  end;
end;

function TFrmSkan.DodajPlikDoRip(Crc: string): longint;
begin
  try
    qOp.SQL.Text := 'INSERT INTO RejestrPlikow(Crc32Rip) VALUES(:CRC)';
    qOp.ParamByName('CRC').AsString := Crc;
    qOp.ExecSQL;
    Result := DMG.GetLastId();
  except
    on e: Exception do
    begin
      Exception.Create('Błąd podczas próby dodania pliku do rejestru plików.' + sLineBreak + 'Dla pliku: "' +
        Crc + '"' + sLineBreak + 'Treść błędu:' + sLineBreak + e.Message);
    end;
  end;
end;

procedure TFrmSkan.UstawWidokPostWynikow(Widoczne: boolean);
begin
  lbWyniki.Visible := Widoczne;
  lbWynNowe.Visible := Widoczne;
  lbWynZm.Visible := Widoczne;
  lbWynUs.Visible := Widoczne;
end;

function TFrmSkan.GetIdRozsz(Rozsz: string): longint;
var
  s: string;
begin
  Result := 0;
  s := fLstObsRozsz.Values[Rozsz];
  if s <> '' then
    Result := StrToIntDef(s, 0);
end;

function TFrmSkan.GetIdTypuPl(Rozsz: string): longint;
begin
  Result := 0;
  if tbRozsz.Locate('NazwaRozszPl', Rozsz, [loCaseInsensitive]) then
    Result := tbRozsz.FieldByName('IdTypPl').AsInteger;
end;

function TFrmSkan.GetScWzg(Plik: string): string;
var
  katPl:  string;
  katWer: string;
  dp, dw: integer;
begin
  Result := '';
  katWer := AnsiUpperCase(fWybKat.ToString());
  katPl := AnsiUpperCase(ExtractFilePath(Plik));
  dp := Length(katPl);
  dw := Length(katWer);
  if dp > dw then
  begin
    Result := Copy(ExtractFilePath(Plik), dw + 2, dp);
  end;
end;

procedure TFrmSkan.UtworzZakonczenie;
begin
  if fPrzerwijPrzetwarzanie then
    lbZakInfo.Caption := 'Przerwano aktualizacje plików'
  else
    lbZakInfo.Caption := 'Zakończono aktualizacje plików';

  lbZakDod.Caption := Format('Dodano: %d', [fIloscPlDod]);
  lbZakZm.Caption  := Format('Uaktualniono: %d', [fIloscPlZm]);
  lbZakUs.Caption  := Format('Usunięto: %d', [fIloscPlUs]);
end;

procedure TFrmSkan.btnZamknijClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSkan.btnStartClick(Sender: TObject);
begin
  UtworzListeObsRozszerzen;
  Notebook1.PageIndex := 1;
  UtworzListePlikow;
end;

procedure TFrmSkan.btnPrzerwijClick(Sender: TObject);
begin
  fPrzerwijPrzetwarzanie := True;
  Application.ProcessMessages;
end;

procedure TFrmSkan.btnAktClick(Sender: TObject);
begin
  if (chbxNowePl.Checked or chbxUaktPl.Checked or chbxUsunPl.Checked) then
  begin
    Notebook1.PageIndex := 1;
    AktualizujDane;
  end;
end;

procedure TFrmSkan.btnKoniecClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSkan.chbxNowePlClick(Sender: TObject);
begin
  btnAkt.Enabled := ((chbxNowePl.Enabled and chbxNowePl.Checked) or (chbxUaktPl.Enabled and chbxUaktPl.Checked) or
    (chbxUsunPl.Enabled and chbxUsunPl.Checked));
end;

procedure TFrmSkan.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  tbRozsz.Close;
end;

end.
