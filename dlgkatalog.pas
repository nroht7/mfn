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
    procedure meOpisChange(Sender: TObject);
  private
    fZmianaOpisu : boolean;

    function GetKatalog: string;
    function GetOpis: string;
    function GetTytul: string;
    procedure SetKatalog(AValue: string);
    procedure SetOpis(AValue: string);
    function DaneWprOk:boolean;
    procedure SetTytul(AValue: string);
  public
    property TytulOkna : string read GetTytul write SetTytul;
    property Katalog : string read GetKatalog write SetKatalog;
    property Opis : string read GetOpis write SetOpis;
    property ZmianaOpisu : boolean read fZmianaOpisu;
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
  fZmianaOpisu:= False;
  ButtonPanel1.OKButton.Enabled:= DaneWprOk;
end;

procedure TFrmKatalog.meOpisChange(Sender: TObject);
begin
  fZmianaOpisu:= True;
end;

function TFrmKatalog.GetKatalog: string;
begin
  result:=  deKat.Text;
end;

function TFrmKatalog.GetOpis: string;
begin
  result:= Trim(meOpis.Text);
end;

function TFrmKatalog.GetTytul: string;
begin
  result:= Caption;
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

procedure TFrmKatalog.SetTytul(AValue: string);
begin
  Caption:= AValue;
end;

end.

