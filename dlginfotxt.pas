unit dlginfotxt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel,
  SynEdit, SynHighlighterIni;

type

  { TFrmInfoTxt }

  TFrmInfoTxt = class(TForm)
    ButtonPanel1: TButtonPanel;
    SynEdit1:     TSynEdit;
    SynIniSyn1:   TSynIniSyn;
  private
    function GetInfo: string;
    function GetTytulOkna: string;
    procedure SetInfo(AValue: string);
    procedure SetTytulOkna(AValue: string);

  public
    property TytulOkna: string Read GetTytulOkna Write SetTytulOkna;
    property Info: string Read GetInfo Write SetInfo;
  end;

var
  FrmInfoTxt: TFrmInfoTxt;

implementation

{$R *.frm}

{ TFrmInfoTxt }

function TFrmInfoTxt.GetInfo: string;
begin
  Result := SynEdit1.Text;
end;

function TFrmInfoTxt.GetTytulOkna: string;
begin
  Result := Caption;
end;

procedure TFrmInfoTxt.SetInfo(AValue: string);
begin
  SynEdit1.Text := AValue;
end;

procedure TFrmInfoTxt.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

end.
