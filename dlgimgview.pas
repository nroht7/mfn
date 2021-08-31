unit dlgimgview;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  ActnList;

type

  { TFrmImgView }

  TFrmImgView = class(TForm)
    acRozciagnij: TAction;
    acProporcje: TAction;
    acWysrodkuj: TAction;
    acZamknij: TAction;
    ActionList1: TActionList;
    ImageList1: TImageList;
    Img: TImage;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure acProporcjeExecute(Sender: TObject);
    procedure acRozciagnijExecute(Sender: TObject);
    procedure acWysrodkujExecute(Sender: TObject);
    procedure acZamknijExecute(Sender: TObject);
  private
    fPlik : string;

    function GetPlik: string;
    function GetTytulOkna: string;
    procedure SetPlik(AValue: string);
    procedure SetTytulOkna(AValue: string);

  public
    property TytulOkna : string read GetTytulOkna write SetTytulOkna;
    property PlikObr : string read GetPlik write SetPlik;
  end;

var
  FrmImgView: TFrmImgView;

implementation

{$R *.frm}

{ TFrmImgView }

procedure TFrmImgView.acRozciagnijExecute(Sender: TObject);
begin
  acRozciagnij.Checked:= not acRozciagnij.Checked;
  Img.Stretch:= acRozciagnij.Checked;
end;

procedure TFrmImgView.acWysrodkujExecute(Sender: TObject);
begin
  acWysrodkuj.Checked:= not acWysrodkuj.Checked;
  Img.Center:= acWysrodkuj.Checked;
end;

procedure TFrmImgView.acZamknijExecute(Sender: TObject);
begin
  Close;
end;

function TFrmImgView.GetPlik: string;
begin
  result:= fPlik;
end;

function TFrmImgView.GetTytulOkna: string;
begin
  result:= Caption;
end;

procedure TFrmImgView.SetPlik(AValue: string);
begin
  fPlik:= AValue;
  Img.Picture.LoadFromFile(AValue);
end;

procedure TFrmImgView.SetTytulOkna(AValue: string);
begin
  Caption:= AValue;
end;

procedure TFrmImgView.acProporcjeExecute(Sender: TObject);
begin
  acProporcje.Checked:= not acProporcje.Checked;
  Img.Proportional:= acProporcje.Checked;
end;

end.

