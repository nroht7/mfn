unit dlgpozsl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ButtonPanel,
  ExtCtrls;

type

  { TFrmPozSlownika }

  TFrmPozSlownika = class(TForm)
    ButtonPanel1: TButtonPanel;
    edNazwa: TEdit;
    Image1: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    meOpis: TMemo;
    procedure edNazwaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fImgIdx : integer;
    function GetIkona: integer;
    function GetNazwa: string;
    function GetOpis: string;
    function GetOpisWidoczny: boolean;
    function GetTytulOkna: string;
    procedure SetIkona(AValue: integer);
    procedure SetNazwa(AValue: string);
    procedure SetOpis(AValue: string);
    procedure SetOpisWidoczny(AValue: boolean);
    procedure SetTytulOkna(AValue: string);
    function DaneWprOk:boolean;
    function WczytajObrazek(Index:integer): boolean;
  public
    property TytulOkna: string read GetTytulOkna write SetTytulOkna;
    property Nazwa: string read GetNazwa write SetNazwa;
    property Opis: string read GetOpis write SetOpis;
    property OpisWidoczny: boolean read GetOpisWidoczny write SetOpisWidoczny;
    property Ikona : integer read GetIkona write SetIkona;
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

function TFrmPozSlownika.GetIkona: integer;
begin
  result:= fImgIdx;
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

procedure TFrmPozSlownika.SetIkona(AValue: integer);
begin
  fImgIdx:= AValue;
  WczytajObrazek(fImgIdx);
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

  if not meOpis.Visible then
  begin
    Height:= Height - (meOpis.Height + Label2.Height);
  end;
end;

procedure TFrmPozSlownika.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

function TFrmPozSlownika.DaneWprOk: boolean;
begin
  result:= (edNazwa.Text <> '');
end;

function TFrmPozSlownika.WczytajObrazek(Index: integer): boolean;
var
  bmp : TBitmap;
begin
  result:= False;
  if ((Index >= 0) and (Index < ImageList1.Count)) then
  begin
    bmp:= TBitmap.Create;
    try
      ImageList1.GetBitmap(Index, bmp);
      Image1.Picture.Bitmap:= bmp;
    finally
      FreeAndNil(bmp);
    end;
  end;

end;

end.

