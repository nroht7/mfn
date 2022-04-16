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
    lvPozDoDod: TListView;
    lvPozPom: TListView;
    MenuItem1:    TMenuItem;
    MenuItem2:    TMenuItem;
    MenuItem3:    TMenuItem;
    MenuItem4:    TMenuItem;
    MenuItem5:    TMenuItem;
    MenuItem6:    TMenuItem;
    MenuItem7:    TMenuItem;
    MenuItem8:    TMenuItem;
    meTxt:        TMemo;
    pcLstPoz: TPageControl;
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
    tsPozDoDod: TTabSheet;
    tsPozPom: TTabSheet;
    procedure acOdznaczWszystkoExecute(Sender: TObject);
    procedure acZatwierdzExecute(Sender: TObject);
    procedure acZaznaczWszystkoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure pcLstPozChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    fSeparator:   string;
    fSeparatorId: integer;
    fFunIstnPoz:   TFunkcjaSprawdzPoz;
    fFunNowaPoz: TFunkcjaSprawdzPoz;
    function GetTytulOkna: string;
    procedure SetTytulOkna(AValue: string);
    function SeparatorOpis: string;
    function GetSeparator: string;
    procedure OdczytajPozTxt;
    procedure UstawPozycje(lv:TListView; Stan: boolean);
    function StatusToStr(Status: string):string;
    function GetWybListView: TListView;
    function GetListViewDoDodania(stan:boolean): TListView;
  public
    procedure GetListaWybranychPozycji(var ListaPoz: TStringList);

    property TytulOkna: string Read GetTytulOkna Write SetTytulOkna;
    //funkcja która sprawdza czy daną pozycję można do wybranego zbioru
    property IstniejePozycja: TFunkcjaSprawdzPoz Read fFunIstnPoz Write fFunIstnPoz;
    // funkcja która sprawdza czy dana pozycja istnieje w danym slowniku czy jest nowa    łóńćźżąś
    property ToNowaPozycja: TFunkcjaSprawdzPoz Read fFunNowaPoz Write fFunNowaPoz;
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
  lvPozDoDod.Items.Clear;
  fFunIstnPoz := nil;
  fFunNowaPoz:= nil;
end;

procedure TFrmLstPozTxt.acZatwierdzExecute(Sender: TObject);
begin
  OdczytajPozTxt;
end;

procedure TFrmLstPozTxt.acOdznaczWszystkoExecute(Sender: TObject);
var
  lv:TListView;
begin
  lv:= GetWybListView;
  UstawPozycje(lv,False);
end;

procedure TFrmLstPozTxt.acZaznaczWszystkoExecute(Sender: TObject);
var
  lv:TListView;
begin
  lv:= GetWybListView;
  UstawPozycje(lv,True);
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

procedure TFrmLstPozTxt.pcLstPozChange(Sender: TObject);
begin

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
  sprNowaPoz: boolean;
  pozIstnieje: boolean;
  nazwa : string;
  lv: TListView;
begin
  list := TStringList.Create;
  lvPozDoDod.Items.BeginUpdate;
  try
    lvPozDoDod.Items.Clear;
    list.Delimiter := GetSeparator[1];
    list.StrictDelimiter := True;
    list.DelimitedText := Trim(meTxt.Text);

    sprawdzajPoz := Assigned(fFunIstnPoz);
    sprNowaPoz:= Assigned(fFunNowaPoz);

    for i := 0 to list.Count - 1 do
    begin
      if (sprawdzajPoz) then
      begin
        nazwa:= Trim(list[i]);
        pozIstnieje := IstniejePozycja(nazwa);
        lv:= GetListViewDoDodania(not pozIstnieje);
        item := lv.Items.Add;
        item.Caption := nazwa;
        item.Checked := True;
        if (pozIstnieje) then
        begin
          item.ImageIndex := 1;
        end
        else
        begin
          if (sprNowaPoz) then
          begin
            if (ToNowaPozycja(nazwa)) then
            begin
              item.Checked := False;
              item.SubItems.Strings[0]:= StatusToStr(POZ_NOWA);
              item.ImageIndex := 6;
            end
            else
            begin
              item.Checked:= True;
              item.SubItems.Strings[0]:= StatusToStr(POZ_ISTNIEJE);
              item.ImageIndex := 0;
            end;
          end
          else
          begin
            item.ImageIndex := 0;
          end;
        end;
      end
      else
      begin
        lv:= GetListViewDoDodania(True);
        item := lv.Items.Add;
        item.Caption := nazwa;
        item.Checked := True;
      end;

      {item := lvPozDoDod.Items.Add;
      item.Caption := Trim(list[i]);
      item.Checked := True;
      item.SubItems.Add(StatusToStr(POZ_BRAKDANYCH));
      if (sprawdzajPoz) then
      begin
        nazwa:= item.Caption;
        stan := IstniejePozycja(nazwa);
        item.Checked := stan;
        if (stan) then
        begin
          item.Checked := False;
          item.SubItems.Strings[0]:= StatusToStr(POZ_ISTNIEJE);
          item.ImageIndex := 1;
        end
        else
        begin
          item.ImageIndex := 0;
          item.Checked:= True;;
          item.SubItems.Strings[0]:= StatusToStr(POZ_NOWA);
          Inc(iloscDoDodania);
        end;
      end; }
    end;

    if (list.Count > 0) then
    begin
      tsPozDoDod.Caption:= Format('Do dodania (%d)',[lvPozDoDod.Items.Count]);
      tsPozPom.Caption:= Format('Pominięte (%d)',[lvPozPom.Items.Count]);
    end;
    {if sprawdzajPoz then
      lbIlosc.Caption := Format('Ilość: %d/%d', [iloscDoDodania, list.Count])
    else
      lbIlosc.Caption := Format('Ilość: %d', [list.Count]);}
  finally
    list.Clear;
    FreeAndNil(list);
    lvPozDoDod.Items.EndUpdate;
  end;

  BtnPnl.OKButton.Enabled := (lvPozDoDod.Items.Count > 0);
end;

procedure TFrmLstPozTxt.UstawPozycje(lv:TListView; Stan: boolean);
var
  i: integer;
  item: TListItem;
begin
  if (Assigned(lv)) then
  begin
  for i := 0 to lv.Items.Count - 1 do
  begin
    item:= lv.Items[i];
    Item.Checked := Stan;
  end;
  end
  else
    MessageDlg('Nie przekazano obiektu TListView do ustawienia stanu wszystkich pozycji',mtError,[mbOk],0);
end;

function TFrmLstPozTxt.StatusToStr(Status: string): string;
begin
  case Status of
    POZ_ISTNIEJE : result:= 'Istnieje';
    POZ_NOWA : result:= 'Nowa';
    POZ_BRAKDANYCH : result:= 'Brak danych';
  else
    result:= '???';
  end;
end;

function TFrmLstPozTxt.GetWybListView: TListView;
begin
  if pcLstPoz.ActivePage = tsPozDoDod then
    result:= lvPozDoDod
  else
    result:= lvPozPom;
end;

function TFrmLstPozTxt.GetListViewDoDodania(stan: boolean): TListView;
begin
  if (stan) then
    result:= lvPozDoDod
  else
    result:= lvPozPom;
end;

procedure TFrmLstPozTxt.GetListaWybranychPozycji(var ListaPoz: TStringList);
var
  i: integer;
  item : TListItem;
begin
  if Assigned(ListaPoz) then
  begin
    ListaPoz.Clear;
    for i := 0 to lvPozDoDod.Items.Count - 1 do
    begin
      item:= lvPozDoDod.Items[i];
      if (item.Checked)  then
        ListaPoz.Add(item.Caption);
    end;
  end
  else
    raise Exception.Create('Błąd podczas próby pobrania listy wybranych pozycji. Nie przekazano obiektu listy.');
end;

end.
