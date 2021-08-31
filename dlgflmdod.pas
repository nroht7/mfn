unit dlgflmdod;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, rxspin, strutils;

type

  { TFrmFilmDodaj }

  TFrmFilmDodaj = class(TForm)
    btnOk:         TBitBtn;
    BitBtn2:       TBitBtn;
    chbxRok:       TCheckBox;
    edTytul:       TEdit;
    Image1:        TImage;
    Label1:        TLabel;
    Label2:        TLabel;
    lbPlik:        TLabel;
    RxSpinButton1: TRxSpinButton;
    sedRok:        TRxSpinEdit;
    sbnPodzNazwa:  TSpeedButton;
    sbnNazwa:      TSpeedButton;
    procedure chbxRokChange(Sender: TObject);
    procedure edTytulChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxSpinButton1BottomClick(Sender: TObject);
    procedure RxSpinButton1TopClick(Sender: TObject);
    procedure sbnNazwaClick(Sender: TObject);
    procedure sbnPodzNazwaClick(Sender: TObject);
  private
    fRokWl : boolean;
    fRokCheck: boolean;
    function GetNazwaOkna: string;
    function GetPlik: string;
    function GetRok: integer;
    function GetTytul: string;
    procedure SetNazwaOkna(AValue: string);
    procedure SetPlik(AValue: string);
    procedure SetRok(AValue: integer);
    procedure SetTytul(AValue: string);
    procedure UstawStanRok;
    function DaneWprOk: boolean;
    procedure OdczytajTytulRok;
    function UsunRozszerzenie(aPlik: string): string;
  public
    procedure WylaczRok;

    property NazwaOkna : string read GetNazwaOkna write SetNazwaOkna;
    property Plik: string Read GetPlik Write SetPlik;
    property TytulFilmu: string Read GetTytul Write SetTytul;
    property RokFilmu: integer Read GetRok Write SetRok;
  end;

var
  FrmFilmDodaj: TFrmFilmDodaj;

implementation

uses
  funkcje;

{$R *.frm}

{ TFrmFilmDodaj }

procedure TFrmFilmDodaj.FormCreate(Sender: TObject);
begin
  fRokWl:= True;
  fRokCheck := False;
end;

procedure TFrmFilmDodaj.FormShow(Sender: TObject);
begin
  if fRokWl then
    chbxRok.Checked := fRokCheck
  else
  begin
    chbxRok.Enabled:= False;
    chbxRok.Checked := False;
  end;

  UstawStanRok;
  btnOk.Enabled := DaneWprOk;
end;

function TFrmFilmDodaj.GetPlik: string;
begin
  Result := lbPlik.Caption;
end;

function TFrmFilmDodaj.GetNazwaOkna: string;
begin
  result:= self.Caption;
end;

function TFrmFilmDodaj.GetRok: integer;
begin
  if (chbxRok.Checked) then
    Result := sedRok.AsInteger
  else
    Result := 0;
end;

function TFrmFilmDodaj.GetTytul: string;
begin
  Result := edTytul.Text;
end;

procedure TFrmFilmDodaj.SetNazwaOkna(AValue: string);
begin
  self.Caption:= AValue;
end;

procedure TFrmFilmDodaj.SetPlik(AValue: string);
begin
  lbPlik.Caption := AValue;
end;

procedure TFrmFilmDodaj.SetRok(AValue: integer);
begin
  fRokCheck := True;
  sedRok.AsInteger := AValue;
end;

procedure TFrmFilmDodaj.SetTytul(AValue: string);
begin
  edTytul.Text := AValue;
end;

procedure TFrmFilmDodaj.UstawStanRok;
begin
  sedRok.Enabled := chbxRok.Checked;
  RxSpinButton1.Enabled := chbxRok.Checked;
end;

function TFrmFilmDodaj.DaneWprOk: boolean;
begin
  Result := (edTytul.Text <> '');
end;

procedure TFrmFilmDodaj.OdczytajTytulRok;
var
  pl: string;
  s:  string;
  p, k: integer;
begin
  pl := lbPlik.Caption;
  s  := UsunRozszerzenie(pl);
  s  := ReplaceStr(s, '_', ' ');
  p  := Pos('(', s);
  k  := Pos(')', s);

  if ((k - p = 5) and (IsNumberInteger(Copy(s, p + 1, 4)))) then
  begin
    chbxRok.Checked := True;
    sedRok.AsInteger := StrToIntDef(Copy(s, p + 1, 4), 0);
    edTytul.Text := Trim(Copy(s, 1, p - 1));
  end
  else
    edTytul.Text := Trim(s);
end;

function TFrmFilmDodaj.UsunRozszerzenie(aPlik: string): string;
var
  i: integer;
begin
  i := RPos('.', aPlik);
  if (i > 0) then
    Result := Copy(aPlik, 1, i - 1)
  else
    Result := aPlik;
end;

procedure TFrmFilmDodaj.WylaczRok;
begin
  fRokWl:= False;
end;

procedure TFrmFilmDodaj.RxSpinButton1TopClick(Sender: TObject);
begin
  sedRok.AsInteger := sedRok.AsInteger + 10;
end;

procedure TFrmFilmDodaj.sbnNazwaClick(Sender: TObject);
begin
  edTytul.Text := UsunRozszerzenie(lbPlik.Caption);
end;

procedure TFrmFilmDodaj.sbnPodzNazwaClick(Sender: TObject);
begin
  OdczytajTytulRok;
end;

procedure TFrmFilmDodaj.RxSpinButton1BottomClick(Sender: TObject);
begin
  sedRok.AsInteger := sedRok.AsInteger - 10;
end;

procedure TFrmFilmDodaj.chbxRokChange(Sender: TObject);
begin
  UstawStanRok;
end;

procedure TFrmFilmDodaj.edTytulChange(Sender: TObject);
begin
  btnOk.Enabled := DaneWprOk;
end;


end.
