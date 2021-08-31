unit dlgpzlntxt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ButtonPanel,
  ExtCtrls, StdCtrls, SynEdit;

type

  { TFrmPozLinTxt }

  TFrmPozLinTxt = class(TForm)
    ButtonPanel1: TButtonPanel;
    Image1: TImage;
    Label1: TLabel;
    pnlInfo: TPanel;
    SynEdit1: TSynEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fLstPoz : TStringList;
    function GetTytulOkna: string;
    procedure SetTytulOkna(AValue: string);

  public
    property TytulOkna : string read GetTytulOkna write SetTytulOkna;
    property Pozycje : TStringList read fLstPoz;

    function OdczytajPozycje: integer;
  end;

var
  FrmPozLinTxt: TFrmPozLinTxt;

implementation

{$R *.frm}

{ TFrmPozLinTxt }

procedure TFrmPozLinTxt.FormCreate(Sender: TObject);
begin
  fLstPoz:= TStringList.Create;
end;

procedure TFrmPozLinTxt.FormDestroy(Sender: TObject);
begin
  fLstPoz.Clear;
  FreeAndNil(fLstPoz);
end;

procedure TFrmPozLinTxt.FormShow(Sender: TObject);
begin
  SynEdit1.Lines.Clear;
end;

function TFrmPozLinTxt.GetTytulOkna: string;
begin
  result:= Caption;
end;

procedure TFrmPozLinTxt.SetTytulOkna(AValue: string);
begin
  Caption:= AValue;
end;

function TFrmPozLinTxt.OdczytajPozycje: integer;
var
  i : integer;
  s : string;
begin
  result:= 0;

  fLstPoz.Clear;
  for i:=0 to SynEdit1.Lines.Count-1 do
  begin
    s:= Trim(SynEdit1.Lines[i]);
    if (s <> '') then
    begin
      fLstPoz.Add(s);
      Inc(Result);
    end;
  end;
end;

end.

