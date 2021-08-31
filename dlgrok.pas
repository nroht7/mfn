unit dlgrok;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel, ExtCtrls,
  Spin, StdCtrls, ComCtrls, rxspin;

type

  { TFrmRok }

  TFrmRok = class(TForm)
    ButtonPanel1:  TButtonPanel;
    Image1:        TImage;
    rbBrak:        TRadioButton;
    rbWart:        TRadioButton;
    RxSpinButton1: TRxSpinButton;
    RxSpinEdit1:   TRxSpinEdit;
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxSpinButton1TopClick(Sender: TObject);
  private
    function GetRok: longint;
    function GetTytulOkna: string;
    procedure SetRok(AValue: longint);
    procedure SetTytulOkna(AValue: string);
  public
    property TytulOkna: string Read GetTytulOkna Write SetTytulOkna;
    property Rok: longint Read GetRok Write SetRok;
  end;

var
  FrmRok: TFrmRok;

implementation

{$R *.frm}

{ TFrmRok }

procedure TFrmRok.RxSpinButton1BottomClick(Sender: TObject);
begin
  RxSpinEdit1.AsInteger := RxSpinEdit1.AsInteger - 10;
end;

procedure TFrmRok.RxSpinButton1TopClick(Sender: TObject);
begin
  RxSpinEdit1.AsInteger := RxSpinEdit1.AsInteger + 10;
end;

function TFrmRok.GetRok: longint;
begin
  if rbWart.Checked then
    Result := RxSpinEdit1.AsInteger
  else
    Result := 0;
end;

function TFrmRok.GetTytulOkna: string;
begin
  Result := Caption;
end;

procedure TFrmRok.SetRok(AValue: longint);
begin
  if AValue = 0 then
  begin
    rbBrak.Checked := True;
  end
  else
  begin
    rbWart.Checked := True;
    RxSpinEdit1.AsInteger := AValue;
  end;
end;

procedure TFrmRok.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

end.
