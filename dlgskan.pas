unit dlgskan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, CheckLst, Buttons;

type
  TRodzajOperacjiSkanowania = (rosSkan, rosWeryfikacja);

  { TFrmSkan }

  TFrmSkan = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    clbxOpcje: TCheckListBox;
    Image1: TImage;
    ImageList1: TImageList;
    ImgLst32: TImageList;
    Label1: TLabel;
    lbWynZm: TLabel;
    lbWynUs: TLabel;
    lbPodsIlosc: TLabel;
    Label6: TLabel;
    lbWynNowe: TLabel;
    lbIloscPrzetw: TLabel;
    Label7: TLabel;
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
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    fRodzOp : TRodzajOperacjiSkanowania;

    procedure UstawTrybSkanowania;
  public
    property RodzajOperacji : TRodzajOperacjiSkanowania read  fRodzOp write fRodzOp;
  end;

var
  FrmSkan: TFrmSkan;

implementation

{$R *.frm}

{ TFrmSkan }

procedure TFrmSkan.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmSkan.FormCreate(Sender: TObject);
begin
  fRodzOp:= rosSkan;
end;

procedure TFrmSkan.UstawTrybSkanowania;
begin
  clbxOpcje.Visible:= True;
  clbxOpcje.Items.Clear;
  clbxOpcje.Items.Add('Obliczaj MD5');
end;

procedure TFrmSkan.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.

