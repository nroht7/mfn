unit dlgwating;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TFrmWating }

  TFrmWating = class(TForm)
    Image1: TImage;
    lbInfo: TLabel;
  private
    function GetInfo: string;
    function GetTytulOkna: string;
    procedure SetInfo(AValue: string);
    procedure SetTytulOkna(AValue: string);

  public
    property TytulOkna : string read GetTytulOkna write SetTytulOkna;
    property Info : string read GetInfo write SetInfo;
  end;

var
  FrmWating: TFrmWating;

implementation

{$R *.frm}

{ TFrmWating }

function TFrmWating.GetInfo: string;
begin
  result:= lbInfo.Caption;
end;

function TFrmWating.GetTytulOkna: string;
begin
  result:= Caption;
end;

procedure TFrmWating.SetInfo(AValue: string);
begin
  lbInfo.Caption:= AValue;
end;

procedure TFrmWating.SetTytulOkna(AValue: string);
begin
  Caption:= AValue;
end;

end.

