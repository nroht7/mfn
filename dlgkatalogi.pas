unit dlgkatalogi;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  DBCtrls, DBGrids, StdCtrls, Buttons, ActnList, Menus, contnrs, ukatalog;

type

  { TFrmKatalogi }

  TFrmKatalogi = class(TForm)
    acKatDodaj: TAction;
    acKatUsun: TAction;
    acFiltrClear: TAction;
    acKatZmien: TAction;
    acZamknij: TAction;
    ActionList1: TActionList;
    DBMemo1: TDBMemo;
    edFiltr: TEdit;
    lvKat: TListView;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure acFiltrClearExecute(Sender: TObject);
    procedure acKatDodajExecute(Sender: TObject);
    procedure acKatUsunExecute(Sender: TObject);
    procedure acKatZmienExecute(Sender: TObject);
    procedure acZamknijExecute(Sender: TObject);
    procedure edFiltrEditingDone(Sender: TObject);
    procedure edFiltrEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvKatSelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
    procedure ToolButton6Click(Sender: TObject);
  private
    fLstKat: TObjectList;
    fZmiany: boolean;
    fFiltr: string;

    procedure UtworzWidokKatalogow(aFiltr: string);
    function KatalogPasujeDoFiltra(aKat: TKatalog; aFiltr: string): boolean;
    function KolidujeZKatalogiem(aSprKat: string): string;
    function WybierzKatalog(aIdKat: longint): boolean;
    function GetKatById(aIdKat: longint): TKatalog;
    function ZmienKatalog(aIdKat: longint; aStaryKatalog, aNowyKatalog: string): boolean;
    function IloscPowiazanychPlikowZKatalogiem(aIdKat: longint): longint;
    procedure UsunPlikiKatalogu(aIdKat: longint);
  public
    property Zmiany: boolean read fZmiany;
  end;

var
  FrmKatalogi: TFrmKatalogi;

implementation

uses
  dlgkatalog, dmgl, dlgwating;

{$R *.frm}

{ TFrmKatalogi }

procedure TFrmKatalogi.acKatDodajExecute(Sender: TObject);
var
  frm: TFrmKatalog;
  s: string;
  id: longint;
  kat: TKatalog;
begin
  frm := TFrmKatalog.Create(self);
  try
    frm.TytulOkna := 'Nowy katalog';
    if (frm.ShowModal = mrOk) then
    begin
      s := KolidujeZKatalogiem(frm.Katalog);
      if (s = '') then
      begin
        //id := DMG.seqKat.GetNextValue;
        DMG.tbKat.Append;
        //DMG.tbKat.FieldByName('IDFLD').AsInteger := id;
        DMG.tbKat.FieldByName('SCFLD').AsString := frm.Katalog;
        if frm.Opis <> '' then
          DMG.tbKat.FieldByName('OPISFLD').AsString := frm.Opis;
        DMG.tbKat.Post;
        id := DMG.GetLastId;

        kat := TKatalog.Create(frm.Katalog);
        kat.IdKatalogu := id;
        fLstKat.Add(kat);
        fZmiany := True;
        UtworzWidokKatalogow(edFiltr.Text);
        WybierzKatalog(id);
      end
      else
      begin
        MessageDlg('Katalog jest częścią innego katalogu który jest już w bazie danych i nie może zostać dodany:' + sLineBreak + s, mtInformation, [mbOK], 0);
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmKatalogi.acKatUsunExecute(Sender: TObject);
var
  item: TListItem;
  s: string;
  kat: TKatalog;
  iloscPl: longint;
  msg: string;
  idKat: longint;
begin
  item := lvKat.ItemFocused;
  if Assigned(item) then
  begin
    idKat := DMG.tbKat.FieldByName('IdFld').AsInteger;
    iloscPl := IloscPowiazanychPlikowZKatalogiem(idKat);
    s := DMG.tbKat.FieldByName('ScFld').AsString;
    msg := 'Czy napewno usunąć katalog:' + sLineBreak + '"' + s + '"' + sLineBreak + 'Ilość powiązanych plików: ' + IntToStr(iloscPl);
    if MessageDlg(msg, mtConfirmation, [mbOK, mbCancel], 0) = mrOk then
    begin
      UsunPlikiKatalogu(idKat);
      kat := GetKatById(idKat);
      if Assigned(kat) then
        fLstKat.Remove(kat);

      DMG.tbKat.Delete;
      fZmiany := True;
      UtworzWidokKatalogow(edFiltr.Text);
    end;
  end;
end;

procedure TFrmKatalogi.acKatZmienExecute(Sender: TObject);
var
  item: TListItem;
  s: string;
  kat: TKatalog;
  frm: TFrmKatalog;
  katOryginalny: string;
  katWybrany: string;
  kolKat: string;
  idKat: longint;
  frmWtg: TFrmWating;
begin
  item := lvKat.ItemFocused;
  if Assigned(item) then
  begin
    frm := TFrmKatalog.Create(self);
    try
      katOryginalny := DMG.tbKat.FieldByName('ScFld').AsString;
      frm.TytulOkna := 'Edycja katalogu';
      frm.Katalog := katOryginalny;
      frm.Opis := DMG.tbKat.FieldByName('OpisFld').AsString;
      if (frm.ShowModal = mrOk) then
      begin
        katWybrany := Trim(frm.Katalog);
        if (katOryginalny <> katWybrany) then
        begin
          if (AnsiUpperCase(katOryginalny) = AnsiUpperCase(katWybrany)) then
          begin
            //jeśli zmieniła się tylko wielkość liter w katalogu
            DMG.tbKat.Edit;
            DMG.tbKat.FieldByName('ScFld').AsString := katWybrany;
            DMG.tbKat.Post;
            fZmiany := True;
          end
          else
          begin
            //Jeśli zmienił się katalog
            idKat := DMG.tbKat.FieldByName('IDFLD').AsInteger;
            kolKat := KolidujeZKatalogiem(katWybrany);
            if (kolKat = '') then
            begin
              if (MessageDlg('Uwaga!' + sLineBreak + 'Zostanie zmieniony katalog dla wszystkich przypisanych do niego plików w bazie danych', mtWarning, [mbOK, mbCancel], 0) = mrOk) then
              begin
                frmWtg := TFrmWating.Create(self);
                try
                  frmWtg.TytulOkna := 'Przetwarzanie';
                  frmWtg.Info := 'Trwa aktualizacja danych...';
                  frmWtg.Show;
                  Application.ProcessMessages;

                  if ZmienKatalog(idKat, katOryginalny, katWybrany) then
                  begin
                    kat := GetKatById(idKat);
                    if Assigned(kat) then
                    begin
                      fLstKat.Remove(kat);
                      kat := TKatalog.Create(katWybrany);
                      kat.IdKatalogu := idKat;
                      fLstKat.Add(kat);
                    end;
                    item.Caption := katWybrany;
                    fZmiany := True;
                  end;
                finally
                  FreeAndNil(frmWtg);
                end;
              end;
            end
            else
            begin
              MessageDlg('Zmieniany katalog koliduje z innym istniejącym.' + sLineBreak + 'Katalog istnieje lub jest częścią innego katalogu który jest już w bazie danych i nie może zostać zmieniony:' +
                sLineBreak + kolKat, mtInformation, [mbOK], 0);
            end;

          end;
        end;
        if (frm.ZmianaOpisu) then
        begin
          DMG.tbKat.Edit;
          DMG.tbKat.FieldByName('OpisFld').AsString := frm.Opis;
          DMG.tbKat.Post;
          fZmiany := True;
        end;
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmKatalogi.acZamknijExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmKatalogi.acFiltrClearExecute(Sender: TObject);
begin
  edFiltr.Clear;
  UtworzWidokKatalogow('');
end;

procedure TFrmKatalogi.edFiltrEditingDone(Sender: TObject);
begin
  if (fFiltr <> edFiltr.Text) then
    UtworzWidokKatalogow(edFiltr.Text);
end;

procedure TFrmKatalogi.edFiltrEnter(Sender: TObject);
begin
  fFiltr := edFiltr.Text;
end;

procedure TFrmKatalogi.FormCreate(Sender: TObject);
begin
  fZmiany := False;
  fLstKat := TObjectList.Create;
end;

procedure TFrmKatalogi.FormDestroy(Sender: TObject);
begin
  if Assigned(fLstKat) then
  begin
    fLstKat.Clear;
    FreeAndNil(fLstKat);
  end;
end;

procedure TFrmKatalogi.FormShow(Sender: TObject);
begin
  if DMG.UtworzListeKatalogow(fLstKat) > 0 then
    UtworzWidokKatalogow('');
end;

procedure TFrmKatalogi.lvKatSelectItem(Sender: TObject; Item: TListItem; Selected: boolean);
var
  idFld: longint;
begin
  if (Selected) and (Assigned(Item)) then
  begin
    idFld := StrToIntDef(Item.SubItems[0], 0);
    if not DMG.tbKat.Locate('IDFLD', idFld, []) then
      MessageDlg('Nie udało się odszukać rekordu katalogu. IdKat = ' + IntToStr(idFld), mtError, [mbOK], 0);
  end;
end;

procedure TFrmKatalogi.ToolButton6Click(Sender: TObject);
var
  frm: TFrmWating;
begin
  frm := TFrmWating.Create(self);
  try
    frm.TytulOkna := 'Przetwarzanie';
    frm.Info := 'Trwa przetwarzanie...';
    frm.Show;

    Application.ProcessMessages;
    Sleep(5000);
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmKatalogi.UtworzWidokKatalogow(aFiltr: string);
var
  i: integer;
  item: TListItem;
  kat: TKatalog;
begin
  lvKat.BeginUpdate;
  try
    lvKat.Items.Clear;
    for i := 0 to fLstKat.Count - 1 do
    begin
      kat := fLstKat.Items[i] as TKatalog;
      if KatalogPasujeDoFiltra(kat, aFiltr) then
      begin
        item := lvKat.Items.Add;
        item.Caption := kat.ToString;
        item.SubItems.Add(IntToStr(kat.IdKatalogu));
        item.ImageIndex := 22;
      end;
    end;
  finally
    lvKat.EndUpdate;
  end;
end;

function TFrmKatalogi.KatalogPasujeDoFiltra(aKat: TKatalog; aFiltr: string): boolean;
var
  i: integer;
  s: string;
begin
  Result := True;
  aFiltr := AnsiUpperCase(Trim(aFiltr));
  if (aFiltr <> '') and (Assigned(aKat)) then
  begin
    Result := False;
    for i := 0 to aKat.Sciezka.Count - 1 do
    begin
      s := AnsiUpperCase(aKat.Sciezka[i]);
      if (Pos(aFiltr, s) > 0) then
      begin
        Result := True;
        break;
      end;
    end;
  end;
end;

function TFrmKatalogi.KolidujeZKatalogiem(aSprKat: string): string;
var
  i: integer;
  kat: TKatalog;
begin
  Result := '';
  for i := 0 to fLstKat.Count - 1 do
  begin
    kat := fLstKat.Items[i] as TKatalog;
    if (kat.PokrewnyZKat(TKatalog.Create(aSprKat))) then
    begin
      Result := kat.ToString;
      break;
    end;
  end;
end;

function TFrmKatalogi.WybierzKatalog(aIdKat: longint): boolean;
var
  i: integer;
  item: TListItem;
begin
  Result := False;
  for i := 0 to lvKat.Items.Count - 1 do
  begin
    item := lvKat.Items[i];
    if StrToInt(item.SubItems.Strings[0]) = aIdKat then
    begin
      item.MakeVisible(False);
      item.Selected := True;
      item.Focused := True;
      Result := True;
      break;
    end;
  end;
end;

function TFrmKatalogi.GetKatById(aIdKat: longint): TKatalog;
var
  i: integer;
  kat: Tkatalog;
begin
  Result := nil;

  for i := 0 to fLstKat.Count - 1 do
  begin
    kat := TKatalog(fLstKat.Items[i]);
    if kat.IdKatalogu = aIdKat then
    begin
      Result := kat;
      break;
    end;
  end;
end;

function TFrmKatalogi.ZmienKatalog(aIdKat: longint; aStaryKatalog, aNowyKatalog: string): boolean;
begin
  Result := False;
  aStaryKatalog := Trim(aStaryKatalog);
  aNowyKatalog := Trim(aNowyKatalog);
  if (aIdKat > 0) and (aStaryKatalog <> '') and (aNowyKatalog <> '') then
  begin
    DMG.qCmd.Close;
    DMG.qCmd.SQL.Text := Format('SELECT IdPl, ScPl FROM Pliki WHERE IdFld = %d', [aIdKat]);
    DMG.qCmd.Open;
    DMG.qCmd.First;
    while not DMG.qCmd.EOF do
    begin
      DMG.qCmd.Edit;
      DMG.qCmd.FieldByName('ScPl').AsString := StringReplace(DMG.qCmd.FieldByName('ScPl').AsString, aStaryKatalog, aNowyKatalog, [rfIgnoreCase]);
      DMG.qCmd.Post;

      DMG.qCmd.Next;
    end;
    DMG.qCmd.Close;

    DMG.qCmd.SQL.Text := Format('UPDATE Foldery SET ScFld = ''%s'' WHERE IdFld = %d', [aNowyKatalog, aIdKat]);
    DMG.qCmd.ExecSQL;
    Result := True;
  end
  else
  begin
    MessageDlg('Nieudana zmiana scieżki katalogu, przekazano niepełne dane do zmiany.', mtError, [mbOK], 0);
  end;
end;

function TFrmKatalogi.IloscPowiazanychPlikowZKatalogiem(aIdKat: longint): longint;
begin
  DMG.qCmd.Close;
  DMG.qCmd.SQL.Text := Format('SELECT Count(*) AS ILOSC FROM Pliki WHERE IdFld = %d', [aIdKat]);
  DMG.qCmd.Open;
  Result := DMG.qCmd.FieldByName('ILOSC').AsInteger;
  DMG.qCmd.Close;
end;

procedure TFrmKatalogi.UsunPlikiKatalogu(aIdKat: longint);
begin
  DMG.qCmd.Close;
  DMG.qCmd.SQL.Text := Format('DELETE FROM Pliki WHERE IdFld = %d', [aIdKat]);
  DMG.qCmd.ExecSQL;
end;

end.
