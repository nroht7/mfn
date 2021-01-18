unit dlgedycjarozsz;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComboEx, StdCtrls,
  DBCtrls, ButtonPanel, Buttons, DB;

type
  TTrybOtwarciaOkna  = (tooDodanie, tooEdycja);

  { TFrmEdRozsz }

  TFrmEdRozsz = class(TForm)
    ButtonPanel1: TButtonPanel;
    cbeIkony: TComboBoxEx;
    edNazwa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    meOpis: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    fTrybOtwOkna : TTrybOtwarciaOkna;
    fPoczatkoweRozszerzenie : string;
    function GetIdxIkony: integer;
    function GetNazwa: string;
    function GetOpis: string;
    procedure SetIdxIkony(AValue: integer);
    procedure SetNazwa(AValue: string);
    procedure SetOpis(AValue: string);
    procedure WczytajIkony;
    procedure UstawTrybOtwarcia;
    function RozszerzenieOk: boolean;
  public
    property TrybOtwarciaOkna : TTrybOtwarciaOkna read fTrybOtwOkna write fTrybOtwOkna;
    property Nazwa : string read GetNazwa write SetNazwa;
    property Opis : string read GetOpis write SetOpis;
    property IndeksIkony : integer read GetIdxIkony write SetIdxIkony;
  end;

var
  FrmEdRozsz: TFrmEdRozsz;

implementation

uses
  dmgl;

{$R *.frm}

{ TFrmEdRozsz }

procedure TFrmEdRozsz.FormShow(Sender: TObject);
begin
  WczytajIkony;
  UstawTrybOtwarcia;
end;

procedure TFrmEdRozsz.OKButtonClick(Sender: TObject);
begin
  ModalResult:= mrNone;
  if RozszerzenieOk then
    ModalResult:= mrOk
  else
    MessageDlg('Takie rozszerzenie już jest.',mtInformation ,[mbOk],0);
end;

procedure TFrmEdRozsz.FormCreate(Sender: TObject);
begin
  fTrybOtwOkna:= tooDodanie;
  fPoczatkoweRozszerzenie:= '';
end;

function TFrmEdRozsz.GetIdxIkony: integer;
begin
  result:= cbeIkony.ItemIndex;
end;

function TFrmEdRozsz.GetNazwa: string;
begin
  result:= Trim(edNazwa.Caption);
end;

function TFrmEdRozsz.GetOpis: string;
begin
  result:= Trim(meOpis.Text);
end;

procedure TFrmEdRozsz.SetIdxIkony(AValue: integer);
begin
  cbeIkony.ItemIndex:= AValue;
end;

procedure TFrmEdRozsz.SetNazwa(AValue: string);
begin
  fPoczatkoweRozszerzenie:= AValue;
  edNazwa.Caption:= AValue;
end;

procedure TFrmEdRozsz.SetOpis(AValue: string);
begin
  meOpis.Text:= AValue;
end;

procedure TFrmEdRozsz.WczytajIkony;
var
  i : integer;
  item : TComboExItem;
begin
  cbeIkony.BeginUpdateBounds;
  try
    cbeIkony.ItemsEx.Clear;
    for i:=0 to DMG.ilRozszPl.Count-1 do
    begin
      item := cbeIkony.ItemsEx.Add;
      item.Caption:= 'Ikona '+IntToStr(i+1);
      item.ImageIndex:= i;
    end;
  finally
    cbeIkony.EndUpdateBounds;
  end;
end;

procedure TFrmEdRozsz.UstawTrybOtwarcia;
begin
  if fTrybOtwOkna = tooDodanie then
  begin
    Caption:= 'Nowe rozszerzenie';
  end
  else
  begin
    Caption:= 'Edycja rozszerzenia';
  end;
end;

function TFrmEdRozsz.RozszerzenieOk: boolean;
var
  rozsz : string;
begin
  result:= False;
  rozsz:= Trim(edNazwa.Text);
  if rozsz <> '' then
  begin
    DMG.OdswiezDataSet(DMG.tbRozszPl);

    if (fTrybOtwOkna = tooDodanie) then
    begin
      result:= not DMG.tbRozszPl.Locate('NazwaRozszPl', rozsz, [loCaseInsensitive]);
    end
    else
    begin
      if UpperCase(fPoczatkoweRozszerzenie) = UpperCase(rozsz) then
      begin
        result:= True;
      end
      else
      begin
        result:= not DMG.tbRozszPl.Locate('NazwaRozszPl', rozsz, [loCaseInsensitive]);
      end;
    end;
  end
  else
    MessageDlg('Wprowadź poprawne rozszerzenie',mtInformation,[mbOk],0);
end;

end.

