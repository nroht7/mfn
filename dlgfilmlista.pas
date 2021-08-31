unit dlgfilmlista;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, DBGrids,
  ButtonPanel, ActnList, Menus, ExtCtrls, StdCtrls;

type

  { TFrmFilmLista }

  TFrmFilmLista = class(TForm)
    acDodaj: TAction;
    acUsun: TAction;
    acZmien: TAction;
    ActionList1: TActionList;
    ButtonPanel1: TButtonPanel;
    dbg: TDBGrid;
    Label1: TLabel;
    lbPlik: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    pnlInfo: TPanel;
    PopupMenu1: TPopupMenu;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    procedure acDodajExecute(Sender: TObject);
    procedure acUsunExecute(Sender: TObject);
    procedure acZmienExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fPlikSc : string;
  public
    property PlikSc : string read fPlikSc write fPlikSc;
  end;

var
  FrmFilmLista: TFrmFilmLista;

implementation

uses
  dmmain, dlgflmdod;

{$R *.frm}

{ TFrmFilmLista }

procedure TFrmFilmLista.acDodajExecute(Sender: TObject);
var
  frm : TFrmFilmDodaj;
  idFilmu : longint;
begin
  frm:= TFrmFilmDodaj.Create(self);
  try
    frm.Plik:= fPlikSc;
    if frm.ShowModal = mrOk then
    begin
      if DMM.CzyTytulFilmuIstniejeDlaRejPl(frm.TytulFilmu, DMM.qMainFilmPl.FieldByName('IdRip').AsInteger, 0) then
      begin
        MessageDlg('Informacja','Film o takim tytule już jest w tym pliku',mtInformation,[mbOK],0);
      end
      else
      begin
        idFilmu:= DMM.DodajFilm(DMM.qMainFilmPl.FieldByName('IdRip').AsInteger, frm.TytulFilmu, frm.RokFilmu);
        DMM.qMainFilmPl.Close;
        DMM.qMainFilmPl.Open;
        if not DMM.qMainFilmPl.Locate('IdFilmu', idFilmu, []) then
          MessageDlg('Problem',Format('Nie udało się odnależć dodanego filmu o id: %d',[idFilmu]),mtWarning,[mbOK],0);
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmFilmLista.acUsunExecute(Sender: TObject);
var
  tytul : string;
begin
  if not DMM.qMainFilmPl.IsEmpty then
  begin
    tytul:= DMM.qMainFilmPl.FieldByName('TytulFilmu').AsString;
    if (MessageDlg('Potwierdzenie',Format('Czy napewno usunąć film "%s"?',[tytul]),mtConfirmation,[mbYes,mbCancel],0) = mrOk) then
    begin
      DMM.UsunFilm(DMM.qMainFilmPl.FieldByName('IdFilmu').AsInteger);
      DMM.qMainFilmPl.Close;
      DMM.qMainFilmPl.Open;
    end;
  end;
end;

procedure TFrmFilmLista.acZmienExecute(Sender: TObject);
var
  frm : TFrmFilmDodaj;
  idFilmu : longint;
begin
  if not DMM.qMainFilmPl.IsEmpty then
  begin
    frm:= TFrmFilmDodaj.Create(self);
    try
      frm.NazwaOkna:= 'Zmień tytuł filmu';
      frm.WylaczRok;
      frm.Plik:= fPlikSc;
      frm.TytulFilmu:= DMM.qMainFilmPl.FieldByName('TytulFilmu').AsString;
      idFilmu:= DMM.qMainFilmPl.FieldByName('IdFilmu').AsInteger;
      if frm.ShowModal = mrOk then
      begin
        if DMM.CzyTytulFilmuIstniejeDlaRejPl(frm.TytulFilmu, DMM.qMainFilmPl.FieldByName('IdRip').AsInteger, 0) then
        begin
          MessageDlg('Informacja','Film o takim tytule już jest w tym pliku',mtInformation,[mbOK],0);
        end
        else
        begin
          DMM.ZmienTytulFilmu(idFilmu, frm.TytulFilmu);
          DMM.qMainFilmPl.Close;
          DMM.qMainFilmPl.Open;
          if not DMM.qMainFilmPl.Locate('IdFilmu', idFilmu, []) then
            MessageDlg('Problem',Format('Nie udało się odnależć dodanego filmu o id: %d',[idFilmu]),mtWarning,[mbOK],0);
        end;
      end;
    finally
      FreeAndNil(frm);
    end;

  end;
end;

procedure TFrmFilmLista.FormShow(Sender: TObject);
begin
  lbPlik.Caption:= fPlikSc;
end;

end.

