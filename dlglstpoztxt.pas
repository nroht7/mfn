unit dlglstpoztxt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ButtonPanel,
  ActnList, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TFunkcjaSprawdzPoz = function(const Nazwa: string): boolean of object;

  { TFrmLstPozTxt }

  TFrmLstPozTxt = class(TForm)
    acOdznaczWszystko: TAction;
    acZaznaczWszystko: TAction;
    acZatwierdz:  TAction;
    ActionList1:  TActionList;
    BitBtn1:      TBitBtn;
    BtnPnl:       TButtonPanel;
    edSep:        TEdit;
    Image1:       TImage;
    Image2:       TImage;
    ImageList1:   TImageList;
    Label1:       TLabel;
    lbIlosc:      TLabel;
    lvPoz:        TListView;
    MenuItem1:    TMenuItem;
    MenuItem2:    TMenuItem;
    MenuItem3:    TMenuItem;
    MenuItem4:    TMenuItem;
    MenuItem5:    TMenuItem;
    MenuItem6:    TMenuItem;
    MenuItem7:    TMenuItem;
    MenuItem8:    TMenuItem;
    meTxt:        TMemo;
    pnlPozImg:    TPanel;
    pnlPozBtn:    TPanel;
    pnlPozTytul:  TPanel;
    pnlTxtTytul:  TPanel;
    pnlTxtBtn:    TPanel;
    pnlImgTxt:    TPanel;
    pnlTxt:       TPanel;
    pnlPoz:       TPanel;
    PopupMenu1:   TPopupMenu;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Splitter1:    TSplitter;
    procedure acOdznaczWszystkoExecute(Sender: TObject);
    procedure acZatwierdzExecute(Sender: TObject);
    procedure acZaznaczWszystkoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    fSeparator:   string;
    fSeparatorId: integer;
    fFunSprPoz:   TFunkcjaSprawdzPoz;
    function GetTytulOkna: string;
    procedure SetTytulOkna(AValue: string);
    function SeparatorOpis: string;
    function GetSeparator: string;
    procedure OdczytajPozTxt;
    procedure UstawPozycje(Stan: boolean);
  public
    procedure GetListaWybranychPozycji(var ListaPoz: TStringList);

    property TytulOkna: string Read GetTytulOkna Write SetTytulOkna;
    property SprawdzaniePozycji: TFunkcjaSprawdzPoz Read fFunSprPoz Write fFunSprPoz;
  end;

var
  FrmLstPozTxt: TFrmLstPozTxt;

implementation

{$R *.frm}

const
  POZ_ISTNIEJE = 'I';
  POZ_NOWA = 'N';
  POZ_BRAKDANYCH = 'B';

{ TFrmLstPozTxt }

procedure TFrmLstPozTxt.FormCreate(Sender: TObject);
begin
  fSeparatorId := 1;
  fSeparator := ',';
  meTxt.Lines.Clear;
  lvPoz.Items.Clear;
  fFunSprPoz := nil;
end;

procedure TFrmLstPozTxt.acZatwierdzExecute(Sender: TObject);
begin
  OdczytajPozTxt;
end;

procedure TFrmLstPozTxt.acOdznaczWszystkoExecute(Sender: TObject);
begin
  UstawPozycje(False);
end;

procedure TFrmLstPozTxt.acZaznaczWszystkoExecute(Sender: TObject);
begin
  UstawPozycje(True);
end;

procedure TFrmLstPozTxt.FormShow(Sender: TObject);
begin
  edSep.Text := SeparatorOpis;
end;

procedure TFrmLstPozTxt.MenuItem1Click(Sender: TObject);
begin
  fSeparatorId := TMenuItem(Sender).Tag;
  edSep.Text := SeparatorOpis;
end;

procedure TFrmLstPozTxt.SpeedButton3Click(Sender: TObject);
var
  pkt: TPoint;
begin
  pkt := Mouse.CursorPos;
  PopupMenu1.PopUp(pkt.x, pkt.y);
end;

function TFrmLstPozTxt.GetTytulOkna: string;
begin
  Result := Caption;
end;

procedure TFrmLstPozTxt.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

function TFrmLstPozTxt.SeparatorOpis: string;
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
      Result := fSeparator;
  end;
end;

function TFrmLstPozTxt.GetSeparator: string;
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

procedure TFrmLstPozTxt.OdczytajPozTxt;
var
  item: TListItem;
  list: TStringList;
  i: integer;
  sprawdzajPoz: boolean;
  stan: boolean;
  iloscDoDodania: integer;
begin
  iloscDoDodania := 0;
  list := TStringList.Create;
  lvPoz.Items.BeginUpdate;
  try
    lvPoz.Items.Clear;
    list.Delimiter := GetSeparator[1];
    list.StrictDelimiter := True;
    list.DelimitedText := Trim(meTxt.Text);
    sprawdzajPoz := Assigned(fFunSprPoz);

    for i := 0 to list.Count - 1 do
    begin
      item := lvPoz.Items.Add;
      item.Caption := Trim(list[i]);
      item.Checked := True;
      item.SubItems.Add(POZ_BRAKDANYCH);
      if (sprawdzajPoz) then
      begin
        stan := SprawdzaniePozycji(item.Caption);
        item.Checked := stan;
        if (stan) then
        begin
          item.Checked := False;
          item.SubItems.Strings[0]:= POZ_ISTNIEJE;
          item.ImageIndex := 1;
        end
        else
        begin
          item.ImageIndex := 0;
          item.Checked:= True;;
          item.SubItems.Strings[0]:= POZ_NOWA;
          Inc(iloscDoDodania);
        end;
      end;
    end;

    if sprawdzajPoz then
      lbIlosc.Caption := Format('Ilość: %d/%d', [iloscDoDodania, list.Count])
    else
      lbIlosc.Caption := Format('Ilość: %d', [list.Count]);
  finally
    list.Clear;
    FreeAndNil(list);
    lvPoz.Items.EndUpdate;
  end;

  BtnPnl.OKButton.Enabled := (lvPoz.Items.Count > 0);
end;

procedure TFrmLstPozTxt.UstawPozycje(Stan: boolean);
var
  i: integer;
  item: TListItem;
begin
  for i := 0 to lvPoz.Items.Count - 1 do
  begin
    Item.Checked := Stan;
  end;
end;

procedure TFrmLstPozTxt.GetListaWybranychPozycji(var ListaPoz: TStringList);
var
  i: integer;
  item : TListItem;
begin
  if Assigned(ListaPoz) then
  begin
    ListaPoz.Clear;
    for i := 0 to lvPoz.Items.Count - 1 do
    begin
      item:= lvPoz.Items[i];
      if ((item.Checked) and (item.SubItems.Strings[0] <> POZ_ISTNIEJE)) then
        ListaPoz.Add(item.Caption);
    end;
  end
  else
    raise Exception.Create('Błąd podczas próby pobrania listy wybranych pozycji. Nie przekazano obiektu listy.');
end;

end.
