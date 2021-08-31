unit dlgaktor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ButtonPanel;

type

  { TFrmAktor }

  TFrmAktor = class(TForm)
    ButtonPanel1: TButtonPanel;
    edNazwa: TEdit;
    Image1: TImage;
    Label1: TLabel;
    procedure edNazwaChange(Sender: TObject);
  private
    function GetNazwa: string;
    function GetTytulOkna: string;
    procedure SetNazwa(AValue: string);
    procedure SetTytulOkna(AValue: string);
    function DaneWprOk: boolean;
  public
    property TytulOkna : string read GetTytulOkna write SetTytulOkna;
    property Nazwa : string read GetNazwa write SetNazwa;
  end;

var
  FrmAktor: TFrmAktor;

implementation

{$R *.frm}

{ TFrmAktor }

procedure TFrmAktor.edNazwaChange(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

function TFrmAktor.GetNazwa: string;
begin
  result:= Trim(edNazwa.Text);
end;

function TFrmAktor.GetTytulOkna: string;
begin
  result:= Caption;
end;

procedure TFrmAktor.SetNazwa(AValue: string);
begin
  edNazwa.Text:= AValue;
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

procedure TFrmAktor.SetTytulOkna(AValue: string);
begin
  Caption:= AValue;
end;

function TFrmAktor.DaneWprOk: boolean;
begin
  result:= Trim(edNazwa.Text) <> '';
end;

end.

