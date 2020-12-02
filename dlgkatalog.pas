unit dlgkatalog;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ButtonPanel,
  EditBtn;

type

  { TFrmKatalog }

  TFrmKatalog = class(TForm)
    ButtonPanel1: TButtonPanel;
    deKat: TDirectoryEdit;
    Label1: TLabel;
    Label2: TLabel;
    meOpis: TMemo;
    procedure deKatChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetKatalog: string;
    function GetOpis: string;
    procedure SetKatalog(AValue: string);
    procedure SetOpis(AValue: string);
    function DaneWprOk:boolean;
  public
    property Katalog : string read GetKatalog write SetKatalog;
    property Opis : string read GetOpis write SetOpis;
  end;

var
  FrmKatalog: TFrmKatalog;

implementation

{$R *.frm}

{ TFrmKatalog }

procedure TFrmKatalog.deKatChange(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

procedure TFrmKatalog.FormShow(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

function TFrmKatalog.GetKatalog: string;
begin
  result:=  deKat.Text;
end;

function TFrmKatalog.GetOpis: string;
begin
  result:= Trim(meOpis.Text);
end;

procedure TFrmKatalog.SetKatalog(AValue: string);
begin
  deKat.Text:= AValue;
end;

procedure TFrmKatalog.SetOpis(AValue: string);
begin
  meOpis.Text:= AValue;
end;

function TFrmKatalog.DaneWprOk: boolean;
begin
  result:= deKat.Text <> '';
end;

end.

