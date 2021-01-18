unit dlgRozszPl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  DBCtrls, ActnList, DBActns, ComboEx, Menus, RxDBGrid, ZDataset;

type

  { TFrmRozszPl }

  TFrmRozszPl = class(TForm)
    acDodaj: TAction;
    acEdytuj: TAction;
    acUsun: TAction;
    acZamknij: TAction;
    ActionList1: TActionList;
    ComboBoxEx1: TComboBoxEx;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetInsert1: TDataSetInsert;
    DataSetLast1: TDataSetLast;
    DataSetNext1: TDataSetNext;
    DataSetPost1: TDataSetPost;
    DataSetPrior1: TDataSetPrior;
    dbg: TRxDBGrid;
    DBMemo1: TDBMemo;
    ds: TDataSource;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    PopupMenu1: TPopupMenu;
    Splitter2: TSplitter;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    qry: TZQuery;
    tabTypyPl: TZTable;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton9: TToolButton;
    procedure acDodajExecute(Sender: TObject);
    procedure acEdytujExecute(Sender: TObject);
    procedure acUsunExecute(Sender: TObject);
    procedure acZamknijExecute(Sender: TObject);
    procedure ComboBoxEx1Change(Sender: TObject);
    procedure DataSetEdit1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tcTypyPlGetImageIndex(Sender: TObject; TabIndex: integer; var ImageIndex: integer);
  private
    procedure UtworzZakladkiRodzajow;
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
end;

procedure TFrmRozszPl.acZamknijExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmRozszPl.ComboBoxEx1Change(Sender: TObject);
begin
  qry.Close;
  qry.ParamByName('IdTypu').AsInteger:= ComboBoxEx1.ItemIndex+1;
  qry.Open;
end;

procedure TFrmRozszPl.DataSetEdit1Execute(Sender: TObject);
var
  frm : TFrmEdRozsz;
begin
  if ((qry.Active) and (not qry.IsEmpty)) then
  begin
    frm:= TFrmEdRozsz.Create(self);
    try
      frm.TrybOtwarciaOkna:= tooEdycja;
      frm.Nazwa:= qry.FieldByName('NazwaRozszPl').AsString;
      frm.IndeksIkony:= qry.FieldByName('ImgIdxRozszPl').AsInteger;
      frm.Opis:= qry.FieldByName('OpisRozszPl').AsString;

      if frm.ShowModal = mrOk then
      begin
        DMG.OdswiezDataSet(DMG.tbRozszPl);
        DMG.tbRozszPl.Edit;
        DMG.tbRozszPl.FieldByName('NazwaRozszPl').AsString:= frm.Nazwa;
        DMG.tbRozszPl.FieldByName('ImgIdxRozszPl').AsInteger:= frm.IndeksIkony;
        if (frm.Opis = '') then
          DMG.tbRozszPl.FieldByName('OpisRozszPl').Clear
        else
          DMG.tbRozszPl.FieldByName('OpisRozszPl').AsString:= frm.Opis;
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

procedure TFrmRozszPl.acDodajExecute(Sender: TObject);
var
  frm : TFrmEdRozsz;
  lstWart : TStringList;
begin
  frm:= TFrmEdRozsz.Create(self);
  try
    frm.TrybOtwarciaOkna:= tooDodanie;
    frm.IndeksIkony:= 1;
    if frm.ShowModal = mrOk then
    begin
      {qry.Append;
      qry.FieldByName('NazwaRozszPl').AsString:= frm.Nazwa;
      qry.FieldByName('ImgIdxRozszPl').AsInteger:= frm.IndeksIkony;
      if (frm.Opis <> '') then
        qry.FieldByName('OpisRozszPl').AsString:= frm.Opis;
      qry.Post;}
      lstWart:= TStringList.Create;
      try
        lstWart.Add(Format('%s=%s',['NazwaRozszPl',frm.Nazwa]));
        lstWart.Add(Format('#%s=%d',['ImgIdxRozszPl',frm.IndeksIkony]));
        if (frm.Opis <> '') then
           lstWart.Add(Format('%s=%s',['OpisRozszPl',frm.Opis]));
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
  frm : TFrmEdRozsz;
  id : longint;
begin
  if ((qry.Active) and (not qry.IsEmpty)) then
  begin
    frm:= TFrmEdRozsz.Create(self);
    try
      frm.TrybOtwarciaOkna:= tooDodanie;
      id:= qry.FieldByName('IdRozszPl').AsInteger;
      frm.Nazwa:= qry.FieldByName('NazwaRozszPl').AsString;
      frm.Opis:= qry.FieldByName('OpisRozszPl').AsString;
      frm.IndeksIkony:= qry.FieldByName('ImgIdxRozszPl').AsInteger;

      if frm.ShowModal = mrOk then
      begin
        DMG.OdswiezDataSet(DMG.tbRozszPl);
        DMG.tbRozszPl.Edit;
        DMG.tbRozszPl.FieldByName('NazwaRozszPl').AsString:= frm.Nazwa;
        DMG.tbRozszPl.FieldByName('ImgIdxRozszPl').AsInteger:= frm.IndeksIkony;
        if (frm.Opis <> '') then
          DMG.tbRozszPl.FieldByName('OpisRozszPl').AsString:= frm.Opis;
        DMG.tbRozszPl.Post;
        qry.Close;
        qry.Open;
        qry.Locate('IdRozszPl', id, []);
      end;
    finally
      FreeAndNil(frm);
    end;
  end;
end;

procedure TFrmRozszPl.acUsunExecute(Sender: TObject);
var
  s : string;
begin
  if ((qry.Active) and (not qry.IsEmpty)) then
  begin
    s:= qry.FieldByName('NazwaRozszPl').AsString;
    if (MessageDlg('Usuwanie rozszerzenia',Format('Czy napewno usunąć rozszerzenie "%s"?',[]),mtConfirmation,[mbOk,mbCancel],0) = mrOk) then
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
  idx: integer;
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

end.



