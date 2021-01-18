unit dlgskan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, CheckLst, Buttons, ukatalog;

type
  TRodzajOperacjiSkanowania = (rosSkan, rosWeryfikacja);

  { TFrmSkan }

  TFrmSkan = class(TForm)
    btnStart: TBitBtn;
    btnZamknij: TBitBtn;
    btnPrzerwij: TBitBtn;
    btnKoniec: TBitBtn;
    chbxOpcje: TCheckBox;
    Image1: TImage;
    ImgRodzOp: TImage;
    ImageList1: TImageList;
    ImgLst32: TImageList;
    lbKatOp: TLabel;
    lbInfo: TLabel;
    lbWynZm: TLabel;
    lbWynUs: TLabel;
    lbPodsIlosc: TLabel;
    Label6: TLabel;
    lbWynNowe: TLabel;
    lbIloscPrzetw: TLabel;
    lbOpcje: TLabel;
    lbOperacja: TLabel;
    Label9: TLabel;
    lbKatalog: TLabel;
    lbPlik: TLabel;
    ListView1: TListView;
    Notebook1: TNotebook;
    Panel1: TPanel;
    Podsumowanie: TPage;
    Proces: TPage;
    ProgressBar1: TProgressBar;
    TabControl1: TTabControl;
    Ustawienia: TPage;
    procedure btnStartClick(Sender: TObject);
    procedure btnZamknijClick(Sender: TObject);
    procedure btnKoniecClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fRodzOp: TRodzajOperacjiSkanowania;
    fWybKat: TKatalog;

    procedure UstawRodzajOpSkanowanie;
    procedure UstawRodzajOpWeryfikacja;
    procedure UstawRodzajOkna(aRodzOp: TRodzajOperacjiSkanowania);
    procedure UstawObrazek(aImgIdx: integer);
  public
    property RodzajOperacji: TRodzajOperacjiSkanowania read fRodzOp write fRodzOp;
    property Katalog: TKatalog read fWybKat write fWybKat;
  end;

var
  FrmSkan: TFrmSkan;

implementation

{$R *.frm}

{ TFrmSkan }

procedure TFrmSkan.btnKoniecClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSkan.FormCreate(Sender: TObject);
begin
  fRodzOp := rosSkan;
end;

procedure TFrmSkan.FormShow(Sender: TObject);
begin
  UstawRodzajOkna(fRodzOp);
end;

procedure TFrmSkan.UstawRodzajOpSkanowanie;
begin
  Caption:= 'Skanowanie';
  lbKatOp.Caption:= 'Skanowany katalog:';
  UstawObrazek(0);
  lbInfo.Caption := 'W trakcie skanowania zostaną porównane informacje zapisane w bazie danych,' +
    sLineBreak + 'z rzeczywistą zawartością badanego katalogu. Zmiany zostaną uwzględnione w rejestrze.' + sLineBreak +
    'W wyniku operacji do bazy danych zostaną dopisane nowe pliki, usunięte już nie istnejące i zaktualizowane te które uległy zmianie.';
end;

procedure TFrmSkan.UstawRodzajOpWeryfikacja;
begin
  Caption:= 'Weryfikacja';
  lbKatOp.Caption:= 'Weryfikowany katalog:';
  UstawObrazek(1);
  lbInfo.Caption := 'Weryfikacja sprawdzi wybrany katalog pod kątem zmian dokonanych od ostatniego skanowania.' +
    sLineBreak + 'Zostaną określone pliki które zostały dodane, usunięte i zmienione.' + sLineBreak +
    'Jednak żadne zmiany nie zostaną wprowadzone do bazy danych';
end;

procedure TFrmSkan.UstawRodzajOkna(aRodzOp: TRodzajOperacjiSkanowania);
begin
  lbOpcje.Visible := aRodzOp = rosSkan;
  chbxOpcje.Visible := aRodzOp = rosSkan;

  if (aRodzOp = rosWeryfikacja) then
    UstawRodzajOpWeryfikacja
  else
    UstawRodzajOpSkanowanie;

  if Assigned(fWybKat) then
  begin
    lbKatalog.Caption := fWybKat.ToString;
  end
  else
  begin
    MessageDlg('Nie przekazano katalogu który ma być sprawdzany', mtError, [mbOK], 0);
    Exit;
  end;
end;

procedure TFrmSkan.UstawObrazek(aImgIdx: integer);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  try
    ImgLst32.GetBitmap(aImgIdx, bmp);
    ImgRodzOp.Picture.Bitmap := bmp;
  finally
    if Assigned(bmp) then
      FreeAndNil(bmp);
  end;
end;

procedure TFrmSkan.btnZamknijClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmSkan.btnStartClick(Sender: TObject);
begin
  Notebook1.PageIndex:= 1;

end;

end.

