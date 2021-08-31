unit dlgczasfilm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ButtonPanel, ComCtrls, rxspin;

type

  { TFrmCzasFilm }

  TFrmCzasFilm = class(TForm)
    ButtonPanel1:  TButtonPanel;
    cbxGodz:       TComboBox;
    cbxMin:        TComboBox;
    chbxBrak:      TCheckBox;
    Image1:        TImage;
    Label1:        TLabel;
    Label2:        TLabel;
    Label3:        TLabel;
    Label5:        TLabel;
    Label6:        TLabel;
    lbMinGodz:     TLabel;
    Label4:        TLabel;
    lbGodzMin:     TLabel;
    PageControl1:  TPageControl;
    RxSpinButton1: TRxSpinButton;
    RxSpinButton2: TRxSpinButton;
    spb10min:      TRxSpinButton;
    spb30min:      TRxSpinButton;
    speMin:        TRxSpinEdit;
    SpeedButton1:  TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton2:  TSpeedButton;
    SpeedButton3:  TSpeedButton;
    SpeedButton4:  TSpeedButton;
    SpeedButton7:  TSpeedButton;
    SpeedButton8:  TSpeedButton;
    SpeedButton9:  TSpeedButton;
    tsGodz:        TTabSheet;
    tsMin:         TTabSheet;
    procedure cbxGodzChange(Sender: TObject);
    procedure cbxMinChange(Sender: TObject);
    procedure chbxBrakChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxSpinButton1TopClick(Sender: TObject);
    procedure RxSpinButton2BottomClick(Sender: TObject);
    procedure RxSpinButton2TopClick(Sender: TObject);
    procedure spb10minBottomClick(Sender: TObject);
    procedure spb10minTopClick(Sender: TObject);
    procedure spb30minBottomClick(Sender: TObject);
    procedure spb30minTopClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure speMinChange(Sender: TObject);
  private
    function GetBrak: boolean;
    function GetCzas: integer;
    function GetTytulOkna: string;
    procedure SetBrak(AValue: boolean);
    procedure SetCzas(AValue: integer);
    procedure SetTytulOkna(AValue: string);
    procedure UstawComboBox(cb: TComboBox; MaxWart: integer);
    function ObliczCzasMin: integer;
    procedure PokazCzasMin;
  public
    property TytulOkna: string Read GetTytulOkna Write SetTytulOkna;
    property Czas: integer Read GetCzas Write SetCzas;
    property Brak: boolean Read GetBrak Write SetBrak;
  end;

var
  FrmCzasFilm: TFrmCzasFilm;

implementation

{$R *.frm}

{ TFrmCzasFilm }

procedure TFrmCzasFilm.RxSpinButton1BottomClick(Sender: TObject);
begin
  if cbxGodz.ItemIndex > 0 then
  begin
    cbxGodz.ItemIndex := cbxGodz.ItemIndex - 1;
    PokazCzasMin;
  end;
end;

procedure TFrmCzasFilm.RxSpinButton1TopClick(Sender: TObject);
begin
  if cbxGodz.ItemIndex < (cbxGodz.Items.Count - 1) then
  begin
    cbxGodz.ItemIndex := cbxGodz.ItemIndex + 1;
    PokazCzasMin;
  end;
end;

procedure TFrmCzasFilm.RxSpinButton2BottomClick(Sender: TObject);
begin
  if cbxMin.ItemIndex > 0 then
  begin
    cbxMin.ItemIndex := cbxMin.ItemIndex - 1;
    PokazCzasMin;
  end;
end;

procedure TFrmCzasFilm.RxSpinButton2TopClick(Sender: TObject);
begin
  if cbxMin.ItemIndex < (cbxMin.Items.Count - 1) then
  begin
    cbxMin.ItemIndex := cbxMin.ItemIndex + 1;
    PokazCzasMin;
  end;
end;

procedure TFrmCzasFilm.cbxGodzChange(Sender: TObject);
begin
  PokazCzasMin;
end;

procedure TFrmCzasFilm.cbxMinChange(Sender: TObject);
begin
  PokazCzasMin;
end;

procedure TFrmCzasFilm.chbxBrakChange(Sender: TObject);
begin
  PageControl1.Enabled := not chbxBrak.Checked;
end;

procedure TFrmCzasFilm.FormCreate(Sender: TObject);
begin
  UstawComboBox(cbxGodz, 10);
  UstawComboBox(cbxMin, 59);
end;

procedure TFrmCzasFilm.spb10minBottomClick(Sender: TObject);
begin
  if (speMin.AsInteger > 9) then
    speMin.AsInteger := speMin.AsInteger - 10;
end;

procedure TFrmCzasFilm.spb10minTopClick(Sender: TObject);
begin
  if (speMin.AsInteger < 711) then
    speMin.AsInteger := speMin.AsInteger + 10;
end;

procedure TFrmCzasFilm.spb30minBottomClick(Sender: TObject);
begin
  if (speMin.AsInteger > 29) then
    speMin.AsInteger := speMin.AsInteger - 30;
end;

procedure TFrmCzasFilm.spb30minTopClick(Sender: TObject);
begin
  if (speMin.AsInteger < 691) then
    speMin.AsInteger := speMin.AsInteger + 30;
end;

procedure TFrmCzasFilm.SpeedButton1Click(Sender: TObject);
begin
  cbxGodz.ItemIndex := TSpeedButton(Sender).Tag;
  PokazCzasMin;
end;

procedure TFrmCzasFilm.SpeedButton7Click(Sender: TObject);
begin
  cbxMin.ItemIndex := TSpeedButton(Sender).Tag;
  PokazCzasMin;
end;

procedure TFrmCzasFilm.speMinChange(Sender: TObject);
var
  minuty, g, m: integer;
begin
  minuty := speMin.AsInteger;
  g := minuty div 60;
  m := minuty mod 60;
  lbMinGodz.Caption := Format('(%.2d:%.2d godz)', [g, m]);
end;

function TFrmCzasFilm.GetBrak: boolean;
begin
  Result := chbxBrak.Checked;
end;

function TFrmCzasFilm.GetCzas: integer;
begin
  if chbxBrak.Checked then
    Result := 0
  else
  begin
    if (PageControl1.ActivePage = tsGodz) then
      Result := ObliczCzasMin
    else
      Result := speMin.AsInteger;
  end;
end;

function TFrmCzasFilm.GetTytulOkna: string;
begin
  Result := Caption;
  //TimeEdit1.Time:=;
end;

procedure TFrmCzasFilm.SetBrak(AValue: boolean);
begin
  chbxBrak.Checked := AValue;
  PageControl1.Enabled := not AValue;
end;

procedure TFrmCzasFilm.SetCzas(AValue: integer);
var
  g, m: integer;
begin
  speMin.AsInteger := AValue;

  g := AValue div 60;
  m := AValue mod 60;
  if (g < 11) then
    cbxGodz.ItemIndex := g
  else
    cbxGodz.ItemIndex := 10;

  cbxMin.ItemIndex := m;

  PokazCzasMin;
end;

procedure TFrmCzasFilm.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

procedure TFrmCzasFilm.UstawComboBox(cb: TComboBox; MaxWart: integer);
var
  i: integer;
begin
  cb.Items.Clear;
  for i := 0 to MaxWart do
    cb.Items.Add(FormatFloat('00', i));
  cb.ItemIndex := 0;
end;

function TFrmCzasFilm.ObliczCzasMin: integer;
var
  g, m: integer;
begin
  g := StrToIntDef(cbxGodz.Caption, 0);
  m := StrToIntDef(cbxMin.Caption, 0);

  Result := (g * 60) + m;
end;

procedure TFrmCzasFilm.PokazCzasMin;
var
  min: integer;
begin
  min := ObliczCzasMin;
  lbGodzMin.Caption := format('(%d min)', [min]);
end;

end.
