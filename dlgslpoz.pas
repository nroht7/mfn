unit dlgslpoz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ButtonPanel,
  ExtCtrls, StdCtrls, Buttons, Menus, ActnList, umgrpoz, db;

type

  { TFrmSlPoz }

  TFrmSlPoz = class(TForm)
    ActionList1: TActionList;
    ButtonPanel1: TButtonPanel;
    edNazwa: TEdit;
    lv: TListView;
    pnlFiltr: TPanel;
    PopupMenu1: TPopupMenu;
    sbnFiltrClear: TSpeedButton;
    StatusBar1: TStatusBar;
    tmr: TTimer;
    procedure edNazwaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
      );
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lvItemChecked(Sender: TObject; Item: TListItem);
    procedure sbnFiltrClearClick(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
  private
    fMgrPoz : TManagerPozycji;
    fDataSet : TDataSet;
    fPoleId : string;
    fPoleNazwa : string;
    function GetTytulOkna: string;
    procedure SetTytulOkna(AValue: string);
    procedure Filtruj;
  public
    property TytulOkna: string read GetTytulOkna write SetTytulOkna;

    procedure OdswiezWidok;
    function OdswiezDaneDataSet: integer;
    procedure UstawDataSet(ADataSet : TDataSet; APoleId,APoleNazwa:string);
    function DodajPozycje(AId: longint; ANazwa:string; AStan: boolean): boolean;
    function ListaIdZaznaczoncychPozycji(var LstPoz:TStringList): integer;
  end;

var
  FrmSlPoz: TFrmSlPoz;

implementation

{$R *.frm}

uses
  upozsl;

{ TFrmSlPoz }

procedure TFrmSlPoz.FormCreate(Sender: TObject);
begin
  fMgrPoz:= TManagerPozycji.Create;
  fDataSet:= nil;
end;

procedure TFrmSlPoz.edNazwaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  tmr.Enabled:= True;
end;

procedure TFrmSlPoz.FormDestroy(Sender: TObject);
begin
  fMgrPoz.UsunWszystkiePozycje;
  FreeAndNil(fMgrPoz);
end;

procedure TFrmSlPoz.lvItemChecked(Sender: TObject; Item: TListItem);
var
  poz: TPozycjaSlownika;
begin
  poz:= fMgrPoz.GetPozycjaWgNazwy(Item.Caption);
  if (Assigned(poz)) then
    poz.Zaznaczona:= Item.Checked
  else
    MessageDlg('Błąd',Format('Nie udało się odszukać pozycji po nazwie "%s" w fMgrPoz',[Item.Caption]),mtError,[mbOK],0);
end;

procedure TFrmSlPoz.sbnFiltrClearClick(Sender: TObject);
begin
  edNazwa.Caption:= '';
  fMgrPoz.Filtr:= '';
  OdswiezWidok;
end;

procedure TFrmSlPoz.tmrTimer(Sender: TObject);
begin
  tmr.Enabled:= False;
  Filtruj;
end;

function TFrmSlPoz.GetTytulOkna: string;
begin
  result:= Caption;
end;

procedure TFrmSlPoz.SetTytulOkna(AValue: string);
begin
  Caption:= AValue;
end;

procedure TFrmSlPoz.Filtruj;
var
  filtr : string;
begin
  filtr:= Trim(edNazwa.Caption);
  fMgrPoz.Filtr:= filtr;
  OdswiezWidok;
end;

procedure TFrmSlPoz.OdswiezWidok;
var
  i : integer;
  item : TListItem;
  poz: TPozycjaSlownika;
begin
  lv.BeginUpdate;
  try
    lv.Items.Clear;
    for i:=0 to fMgrPoz.IloscWszystkichPozycji-1 do
    begin
      if (fMgrPoz.WidocznaPozycja[i]) then
      begin
      poz:= fMgrPoz.Pozycja[i];
      item:= lv.Items.Add;
      item.Caption:= poz.Nazwa;
      item.SubItems.Add(IntToStr(poz.NrId));
      item.Checked:= poz.Zaznaczona;
      end;
    end;
  finally
    lv.EndUpdate;
  end;
end;

function TFrmSlPoz.OdswiezDaneDataSet: integer;
var
  poz: TPozycjaSlownika;
  id : longint;
  nazwa : string;
begin
  result:= 0;
  if Assigned(fDataSet) then
  begin
    fDataSet.Close;
    fDataSet.Open;

    fMgrPoz.UsunWszystkiePozycje;
    fDataSet.First;
    while not fDataSet.EOF do
    begin
      id:= fDataSet.FieldByName(fPoleId).AsInteger;
      nazwa:= fDataSet.FieldByName(fPoleNazwa).AsString;

      poz:= TPozycjaSlownika.Create(id,nazwa);
      fMgrPoz.DodajPozycje(poz);
      Inc(result);

      fDataSet.Next;
    end;
  end;
end;

procedure TFrmSlPoz.UstawDataSet(ADataSet: TDataSet; APoleId, APoleNazwa: string
  );
begin
  fDataSet:= ADataSet;
  fPoleId:= APoleId;
  fPoleNazwa:= APoleNazwa;
end;

function TFrmSlPoz.DodajPozycje(AId: longint; ANazwa: string; AStan: boolean
  ): boolean;
var
  poz : TPozycjaSlownika;
begin
  result:= False;
  poz:= TPozycjaSlownika.Create(AId,ANazwa);
  poz.Zaznaczona:= AStan;
  if (not fMgrPoz.JestTakaPozycja(poz)) then
  begin
    result:= fMgrPoz.DodajPozycje(poz);
  end
  else
  begin
    FreeAndNil(poz);
  end;
end;

function TFrmSlPoz.ListaIdZaznaczoncychPozycji(var LstPoz: TStringList): integer;
var
  i : integer;
  poz : TPozycjaSlownika;
begin
  result:= 0;
  if (Assigned(LstPoz)) then
  begin
    LstPoz.Clear;
    for i:=0 to fMgrPoz.IloscPozycji-1 do
    begin
      if (fMgrPoz.ZaznaczonaPozycja[i]) then
      begin
        poz:= fMgrPoz.Pozycja[i];
        LstPoz.Add(IntToStr(poz.NrId));
        Inc(result);
      end;
    end;
  end
  else
  begin
    raise Exception.Create('Nie przekazano listy do zapisu.');
  end;
end;

end.

