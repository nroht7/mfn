unit dlgpozseptxt;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel, ExtCtrls,
  StdCtrls, Buttons, Menus;

type

  { TFrmPozSepTxt }

  TFrmPozSepTxt = class(TForm)
    ButtonPanel1: TButtonPanel;
    Image1: TImage;
    lbWybSep: TLabel;
    lbSep: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    meTxt: TMemo;
    Panel1: TPanel;
    pnlUst: TPanel;
    PopupMenu1: TPopupMenu;
    procedure FormShow(Sender: TObject);
    procedure lbSepClick(Sender: TObject);
    procedure lbSepMouseEnter(Sender: TObject);
    procedure lbSepMouseLeave(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure meTxtChange(Sender: TObject);
  private
    fSeparator: string;
    fSeparatorId: integer;
    function GetTytulOkna: string;
    procedure SetTytulOkna(AValue: string);
    function DaneWprOk: boolean;
  public
    function SeparatorOpis: string;
    function GetSeparator: string;
    procedure GetListaWprowadzonychPozycji(var Lista: TStringList);

    property TytulOkna: string read GetTytulOkna write SetTytulOkna;
  end;

var
  FrmPozSepTxt: TFrmPozSepTxt;

implementation

{$R *.frm}

{ TFrmPozSepTxt }

procedure TFrmPozSepTxt.FormShow(Sender: TObject);
begin
  fSeparatorId := 1;
  lbWybSep.Caption := SeparatorOpis;
  meTxt.Clear;
end;

procedure TFrmPozSepTxt.lbSepClick(Sender: TObject);
var
  pkt: TPoint;
begin
  pkt := Mouse.CursorPos;
  PopupMenu1.PopUp(pkt.x, pkt.y);
end;

procedure TFrmPozSepTxt.lbSepMouseEnter(Sender: TObject);
begin
  lbSep.Font.Style := lbSep.Font.Style + [fsUnderline];
  lbSep.Cursor := crHandPoint;
end;

procedure TFrmPozSepTxt.lbSepMouseLeave(Sender: TObject);
begin
  lbSep.Font.Style := lbSep.Font.Style - [fsUnderline];
  lbSep.Cursor := crDefault;
end;

procedure TFrmPozSepTxt.MenuItem1Click(Sender: TObject);
begin
  fSeparatorId := TMenuItem(Sender).Tag;
  lbWybSep.Caption := SeparatorOpis;
end;

procedure TFrmPozSepTxt.meTxtChange(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled := DaneWprOk;
end;

function TFrmPozSepTxt.GetTytulOkna: string;
begin
  Result := Caption;
end;

procedure TFrmPozSepTxt.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

function TFrmPozSepTxt.DaneWprOk: boolean;
begin
  Result := (Trim(meTxt.Text) <> '');
end;

function TFrmPozSepTxt.SeparatorOpis: string;
begin
  case fSeparatorId of
    0: Result := '<brak>';
    1: Result := ', (przecinek)';
    2: Result := '; (średnik)';
    3: Result := '. (kropka)';
    4: Result := ': (dwukropek)';
    5: Result := '| (linia)';
    6: Result := '- (myślnik)';
    7: Result := '_ (podkreślenie)';
    else
      Result := 'Własny: ' + fSeparator;
  end;
end;

function TFrmPozSepTxt.GetSeparator: string;
begin
  case fSeparatorId of
    1: Result := ',';
    2: Result := ';';
    3: Result := '.';
    4: Result := ':';
    5: Result := '|';
    6: Result := '-';
    7: Result := '_';
    else
    begin
      if fSeparator = '' then Result := ','
      else
        Result := fSeparator;
    end;
  end;
end;

procedure TFrmPozSepTxt.GetListaWprowadzonychPozycji(var Lista: TStringList);
begin
  if (Assigned(Lista)) then
  begin
    Lista.Delimiter := GetSeparator[1];
    Lista.StrictDelimiter := True;
    Lista.DelimitedText := meTxt.Text;
  end;
end;

end.
