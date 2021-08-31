unit dlgRozszPl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  DBCtrls, ActnList, DBActns, ComboEx, Menus, RxDBGrid, ZDataset, Grids, DBGrids;

type

  { TFrmRozszPl }

  TFrmRozszPl = class(TForm)
    acDodaj:      TAction;
    acEdytuj:     TAction;
    acUsun:       TAction;
    acZamknij:    TAction;
    ActionList1:  TActionList;
    ComboBoxEx1:  TComboBoxEx;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetInsert1: TDataSetInsert;
    DataSetLast1: TDataSetLast;
    DataSetNext1: TDataSetNext;
    DataSetPost1: TDataSetPost;
    DataSetPrior1: TDataSetPrior;
    dbg:          TRxDBGrid;
    DBMemo1:      TDBMemo;
    ds:           TDataSource;
    MenuItem1:    TMenuItem;
    MenuItem2:    TMenuItem;
    MenuItem3:    TMenuItem;
    Panel1:       TPanel;
    PopupMenu1:   TPopupMenu;
    Splitter2:    TSplitter;
    StatusBar1:   TStatusBar;
    ToolBar1:     TToolBar;
    ToolButton1:  TToolButton;
    qry:          TZQuery;
    tabTypyPl:    TZTable;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton2:  TToolButton;
    ToolButton3:  TToolButton;
    ToolButton4:  TToolButton;
    ToolButton5:  TToolButton;
    ToolButton6:  TToolButton;
    ToolButton7:  TToolButton;
    ToolButton9:  TToolButton;
    procedure acDodajExecute(Sender: TObject);
    procedure acEdytujExecute(Sender: TObject);
    procedure acUsunExecute(Sender: TObject);
    procedure acZamknijExecute(Sender: TObject);
    procedure ComboBoxEx1Change(Sender: TObject);
    procedure DataSetEdit1Execute(Sender: TObject);
    procedure dbgDblClick(Sender: TObject);
    procedure dbgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure tcTypyPlGetImageIndex(Sender: TObject; TabIndex: integer; var ImageIndex: integer);
  private
    procedure UtworzZakladkiRodzajow;
    procedure OdswiezWidokRodzaju;
  public

  end;

var
  FrmRozszPl: TFrmRozszPl;

implementation

uses
  dlgedycjarozsz, dmgl;

{$R *.frm}

{ TFrmRozszPl }

procedure TFrmRozszPl.FormShow(Sender: TObject);
begin
  UtworzZakladkiRodzajow;
  OdswiezWidokRodzaju;
end;

procedure TFrmRozszPl.acZamknijExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmRozszPl.ComboBoxEx1Change(Sender: TObject);
begin
  OdswiezWidokRodzaju;
end;

procedure TFrmRozszPl.DataSetEdit1Execute(Sender: TObject);
var
  frm: TFrmEdRozsz;
begin
  if ((qry.Active) and (not qry.IsEmpty)) then
  begin
    frm := TFrmEdRozsz.Create(self);
    try
      frm.TrybOtwarciaOkna := tooEdycja;
      frm.Nazwa := qry.FieldByName('NazwaRozszPl').AsString;
      frm.IndeksIkony := qry.FieldByName('ImgIdxRozszPl').AsInteger;
      frm.Opis  := qry.FieldByName('OpisRozszPl').AsString;

      if frm.ShowModal = mrOk then
      begin
        DMG.OdswiezDataSet(DMG.tbRozszPl);
        DMG.tbRozszPl.Edit;
        DMG.tbRozszPl.FieldByName('NazwaRozszPl').AsString := frm.Nazwa;
        DMG.tbRozszPl.FieldByName('ImgIdxRozszPl').AsInteger := frm.IndeksIkony;
        if (frm.Opis = '') then
          DMG.tbRozszPl.FieldByName('OpisRozszPl').Clear
        else
          DMG.tbRozszPl.FieldByName('OpisRozszPl').AsString := frm.Opis;
        DMG.tbRozszPl.Post;
        qry.Close;
        qry.Open;
        qry.Locate('NazwaRozszPl', frm.Nazwa, [loCaseInsensitive]);
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmRozszPl.dbgDblClick(Sender: TObject);
begin
  acEdytuj.Execute;
end;

procedure TFrmRozszPl.dbgDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: integer; Column: TColumn; State: TGridDrawState);
var
  bmp: TBitmap;
begin
  if (Column.FieldName = 'ImgIdxRoszPl') then
  begin
    if (qry.FieldByName('ImgIdxRozszPl').AsInteger >= 0) then
    begin
      bmp := TBitmap.Create;
      try
        DMG.ilRozszPl.GetBitmap(qry.FieldByName('ImgIdxRozszPl').AsInteger, bmp);
        dbg.Canvas.Draw(Rect.Left + 4, Rect.Top + 2, bmp);
      finally
        FreeAndNil(bmp);
      end;
    end;
  end
  else
    dbg.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrmRozszPl.acDodajExecute(Sender: TObject);
var
  frm: TFrmEdRozsz;
  lstWart: TStringList;
  idTyp: integer;
begin
  frm := TFrmEdRozsz.Create(self);
  try
    frm.TrybOtwarciaOkna := tooDodanie;
    frm.IndeksIkony := 1;
    if frm.ShowModal = mrOk then
    begin
      {qry.Append;
      qry.FieldByName('NazwaRozszPl').AsString:= frm.Nazwa;
      qry.FieldByName('ImgIdxRozszPl').AsInteger:= frm.IndeksIkony;
      if (frm.Opis <> '') then
        qry.FieldByName('OpisRozszPl').AsString:= frm.Opis;
      qry.Post;}
      idTyp := ComboBoxEx1.ItemIndex + 1;
      lstWart := TStringList.Create;
      try
        lstWart.Add(Format('%s=%s', ['NazwaRozszPl', frm.Nazwa]));
        lstWart.Add(Format('#%s=%d', ['IdTypPl', idTyp]));
        lstWart.Add(Format('#%s=%d', ['ImgIdxRozszPl', frm.IndeksIkony]));
        if (frm.Opis <> '') then
          lstWart.Add(Format('%s=%s', ['OpisRozszPl', frm.Opis]));
        DMG.DodajRekord('RozszerzeniaPl', lstWart);
      finally
        lstWart.Clear;
        FreeAndNil(lstWart);
      end;
      DMG.OdswiezDataSet(qry);
      qry.Locate('NazwaRozszPl', frm.Nazwa, [loCaseInsensitive]);
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmRozszPl.acEdytujExecute(Sender: TObject);
var
  frm: TFrmEdRozsz;
  id:  longint;
begin
  if ((qry.Active) and (not qry.IsEmpty)) then
  begin
    frm := TFrmEdRozsz.Create(self);
    try
      frm.TrybOtwarciaOkna := tooEdycja;
      id := qry.FieldByName('IdRozszPl').AsInteger;
      frm.Nazwa := qry.FieldByName('NazwaRozszPl').AsString;
      frm.Opis := qry.FieldByName('OpisRozszPl').AsString;
      frm.IndeksIkony := qry.FieldByName('ImgIdxRozszPl').AsInteger;

      if frm.ShowModal = mrOk then
      begin
        DMG.OdswiezDataSet(DMG.tbRozszPl);
        if DMG.tbRozszPl.Locate('IdRozszPl', id, []) then
        begin
          DMG.tbRozszPl.Edit;
          DMG.tbRozszPl.FieldByName('NazwaRozszPl').AsString := frm.Nazwa;
          DMG.tbRozszPl.FieldByName('ImgIdxRozszPl').AsInteger := frm.IndeksIkony;
          if (frm.Opis <> '') then
            DMG.tbRozszPl.FieldByName('OpisRozszPl').AsString := frm.Opis;
          DMG.tbRozszPl.Post;
          qry.Close;
          qry.Open;
          qry.Locate('IdRozszPl', id, []);
        end
        else
          MessageDlg('Błąd', 'Nie udało się odszukać rozszerzenia do edycji: "' + IntToStr(id) + '"', mtError, [mbOK], 0);
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmRozszPl.acUsunExecute(Sender: TObject);
var
  s: string;
begin
  if ((qry.Active) and (not qry.IsEmpty)) then
  begin
    s := qry.FieldByName('NazwaRozszPl').AsString;
    if (MessageDlg('Usuwanie rozszerzenia', Format('Czy napewno usunąć rozszerzenie "%s"?', [s]), mtConfirmation, [mbOK, mbCancel], 0) = mrOk) then
    begin
      qry.Delete;
      DMG.OdswiezDataSet(qry);
    end;
  end;
end;

procedure TFrmRozszPl.tcTypyPlGetImageIndex(Sender: TObject; TabIndex: integer; var ImageIndex: integer);
begin
  ImageIndex := TabIndex;
end;

procedure TFrmRozszPl.UtworzZakladkiRodzajow;
var
  idx:  integer;
  item: TComboExItem;
begin
  ComboBoxEx1.ItemsEx.BeginUpdate;
  try
    ComboBoxEx1.ItemsEx.Clear;

    tabTypyPl.Close;
    tabTypyPl.Open;

    idx := 0;
    while not tabTypyPl.EOF do
    begin
      item := ComboBoxEx1.ItemsEx.Add;
      item.Caption := tabTypyPl.FieldByName('NazwaTypPl').AsString;
      item.ImageIndex := idx;
      Inc(idx);

      tabTypyPl.Next;
    end;
    tabTypyPl.Close;

  finally
    ComboBoxEx1.ItemsEx.EndUpdate;
  end;

  if ComboBoxEx1.ItemsEx.Count > 0 then
    ComboBoxEx1.ItemIndex := 0;
end;

procedure TFrmRozszPl.OdswiezWidokRodzaju;
begin
  qry.Close;
  qry.ParamByName('IdTypu').AsInteger := ComboBoxEx1.ItemIndex + 1;
  qry.Open;
end;

end.
