unit dlgzmnazpl;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel, ExtCtrls,
  StdCtrls, EditBtn, Menus, DBCtrls, ComboEx;

type

  { TFrmZmNazwy }

  TFrmZmNazwy = class(TForm)
    BtnPnl: TButtonPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    edNazwa: TEditButton;
    Image1: TImage;
    ImageList1: TImageList;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbScPoZm: TLabel;
    Label5: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    PopupMenu1: TPopupMenu;
    Separator1: TMenuItem;
    Separator2: TMenuItem;
    procedure edNazwaButtonClick(Sender: TObject);
    procedure edNazwaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    fIdPl: longint;
    fScPl: string;
    fKatPl: string;
    fNazwaPl: string;
    fRozszPl: string;
    function GetNazwa: string;
    function GetPlik: string;
    function GetPole(Pole: string): string;
    procedure WstawPole(Pole: string);
  public
    constructor Create(AOwner: TComponent); override;
    constructor CreateFile(AOwner: TComponent; AIdPl: longint);
    property Nazwa: string read GetNazwa;
    property Plik: string read GetPlik;
  end;

var
  FrmZmNazwy: TFrmZmNazwy;

implementation

uses
  dmmain;

{$R *.frm}

{ TFrmZmNazwy }

procedure TFrmZmNazwy.edNazwaButtonClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := Mouse.CursorPos;
  PopupMenu1.PopUp(pt.x, pt.y);
end;

procedure TFrmZmNazwy.edNazwaChange(Sender: TObject);
begin
  lbScPoZm.Caption := fKatPl + edNazwa.Caption + fRozszPl;
  BtnPnl.OKButton.Enabled := edNazwa.Caption <> '';
end;

procedure TFrmZmNazwy.FormCreate(Sender: TObject);
begin
  btnPnl.OKButton.ModalResult := mrNone;
end;

procedure TFrmZmNazwy.FormDestroy(Sender: TObject);
begin
  DMM.qZmNazFilmy.Close;
end;

procedure TFrmZmNazwy.FormShow(Sender: TObject);
begin
  //lbNazwa.Caption:= fNazwaPl+fRozszPl;
  //lbSciezka.Caption:= fKatPl;
  edNazwa.Text := fNazwaPl;
  Edit1.Text := fNazwaPl + fRozszPl;
  Edit2.Text := fKatPl;

end;

procedure TFrmZmNazwy.MenuItem1Click(Sender: TObject);
begin
  WstawPole('TytulFilmu');
end;

procedure TFrmZmNazwy.MenuItem2Click(Sender: TObject);
begin
  WstawPole('RokFilmu');
end;

procedure TFrmZmNazwy.MenuItem3Click(Sender: TObject);
begin
  WstawPole('Crc32Rip');
end;

procedure TFrmZmNazwy.MenuItem5Click(Sender: TObject);
begin
  edNazwa.Text := fNazwaPl;
end;

procedure TFrmZmNazwy.MenuItem6Click(Sender: TObject);
begin
  edNazwa.Clear;
end;

procedure TFrmZmNazwy.OKButtonClick(Sender: TObject);
begin
  if (DMM.IstniejeInnyPlikSc(fIdPl, Plik)) then
  begin
    MessageDlg('Plik o takiej nazwie już istnieje.', mtWarning, [mbOK], 0);
  end
  else if (fNazwaPl = Trim(edNazwa.Text)) then
  begin
    ModalResult:= mrCancel;
  end
  else
  begin
    //btnPnl.OKButton.ModalResult := mrOk;
    ModalResult:= mrOk;
  end;
end;

function TFrmZmNazwy.GetNazwa: string;
begin
  Result := Trim(edNazwa.Text);
end;

function TFrmZmNazwy.GetPlik: string;
begin
  Result := fKatPl + edNazwa.Caption + fRozszPl;
end;

function TFrmZmNazwy.GetPole(Pole: string): string;
begin
  Result := '';

  if (not DMM.qZmNazFilmy.IsEmpty) then
  begin
    Result := DMM.qZmNazFilmy.FieldByName(Pole).AsString;
  end;
end;

procedure TFrmZmNazwy.WstawPole(Pole: string);
var
  pocz: string;
  reszta: string;
  TrescPola: string;
begin
  TrescPola := GetPole(Pole);
  if (Trim(TrescPola) = '') then
  begin
    MessageDlg('Brak wybranej wartości', mtInformation, [mbOK], 0);
    Exit;
  end;

  if (edNazwa.SelStart >= Length(edNazwa.Text)) then
    edNazwa.Text := edNazwa.Text + TrescPola
  else
  begin
    pocz := Copy(edNazwa.Text, 1, edNazwa.SelStart);
    reszta := Copy(edNazwa.Text, edNazwa.SelStart, Length(edNazwa.Text));
    edNazwa.Text := pocz + TrescPola + reszta;
  end;
end;

constructor TFrmZmNazwy.Create(AOwner: TComponent);
begin
  inherited;
  // Konstruktor nie posiada parametrów należy
  raise Exception.Create('Użyto niewłaściwego konstuktora');
end;

constructor TFrmZmNazwy.CreateFile(AOwner: TComponent; AIdPl: longint);
begin
  inherited Create(AOwner);

  if (AIdPl < 1) then
    raise Exception.Create('Nie przekazano pliku do zmiany nazwy.');

  fIdPl := AIdPl;

  if not DMM.qZmNazFilmy.Active then
  begin
    DMM.qZmNazFilmy.ParamByName('IDPL').AsInteger := fIdPl;
    DMM.qZmNazFilmy.Open;
  end;

  fScPl := GetPole('ScPl');
  fKatPl := ExtractFilePath(fScPl);
  fNazwaPl := ExtractFileName(fScPl);
  fRozszPl := ExtractFileExt(fScPl);
  fNazwaPl := Copy(fNazwaPl, 1, Length(fNazwaPl) - Length(fRozszPl));
  if not DMM.qZmNazFilmy.IsEmpty then
    DBLookupComboBox1.ItemIndex := 0;

end;

end.
