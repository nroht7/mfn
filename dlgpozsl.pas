unit dlgpozsl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ButtonPanel;

type

  { TFrmPozSlownika }

  TFrmPozSlownika = class(TForm)
    ButtonPanel1: TButtonPanel;
    edNazwa: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    meOpis: TMemo;
    procedure edNazwaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetNazwa: string;
    function GetOpis: string;
    function GetOpisWidoczny: boolean;
    function GetTytulOkna: string;
    procedure SetNazwa(AValue: string);
    procedure SetOpis(AValue: string);
    procedure SetOpisWidoczny(AValue: boolean);
    procedure SetTytulOkna(AValue: string);
    function DaneWprOk:boolean;
  public
    property TytulOkna: string read GetTytulOkna write SetTytulOkna;
    property Nazwa: string read GetNazwa write SetNazwa;
    property Opis: string read GetOpis write SetOpis;
    property OpisWidoczny: boolean read GetOpisWidoczny write SetOpisWidoczny;
  end;

var
  FrmPozSlownika: TFrmPozSlownika;

implementation

{$R *.frm}

{ TFrmPozSlownika }

procedure TFrmPozSlownika.edNazwaChange(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

procedure TFrmPozSlownika.FormShow(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

function TFrmPozSlownika.GetNazwa: string;
begin
  Result := Trim(edNazwa.Text);
end;

function TFrmPozSlownika.GetOpis: string;
begin
  Result := Trim(meOpis.Text);
end;

function TFrmPozSlownika.GetOpisWidoczny: boolean;
begin
  Result := meOpis.Visible;
end;

function TFrmPozSlownika.GetTytulOkna: string;
begin
  Result := Caption;
end;

procedure TFrmPozSlownika.SetNazwa(AValue: string);
begin
  edNazwa.Text := AValue;
end;

procedure TFrmPozSlownika.SetOpis(AValue: string);
begin
  meOpis.Text := AValue;
end;

procedure TFrmPozSlownika.SetOpisWidoczny(AValue: boolean);
begin
  meOpis.Visible := AValue;
  Label2.Visible := AValue;
end;

procedure TFrmPozSlownika.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

function TFrmPozSlownika.DaneWprOk: boolean;
begin
  result:= (edNazwa.Text <> '');
end;

end.

