unit dlghistpl;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel, ExtCtrls,
  ComCtrls, StdCtrls, DBCtrls, ZDataset;

type

  { TFrmHistPliku }

  TFrmHistPliku = class(TForm)
    ButtonPanel1: TButtonPanel;
    ImageList1: TImageList;
    Label1: TLabel;
    lbNazwaPliku: TLabel;
    lbPlikHist: TLabel;
    lbIlosc: TLabel;
    lv: TListView;
    pnlInfo: TPanel;
    TabControl1: TTabControl;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure TabControl1Change(Sender: TObject);
  private
    fIdPl: longint;
    fIdRip: longint;

    procedure OdczytajWpisy(qry:TZReadOnlyQuery; Id:longint);
    procedure OdswiezWidok;
    procedure UtworzWidok;
  public
    property IdPl : longint read fIdPl write fIdPl;
    property IdRip : longint read fIdRip write fIdRip;
  end;

var
  FrmHistPliku: TFrmHistPliku;

implementation

{$R *.frm}

uses
  dmmain;

{ TFrmHistPliku }

procedure TFrmHistPliku.TabControl1Change(Sender: TObject);
begin
  OdswiezWidok;
end;

procedure TFrmHistPliku.FormCreate(Sender: TObject);
begin
  fIdPl:= 0;
  fIdRip:= 0;
end;

procedure TFrmHistPliku.FormShow(Sender: TObject);
begin
  UtworzWidok;
end;

procedure TFrmHistPliku.lvSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if (Selected) then
  begin
    lbPlikHist.Caption:= Item.SubItems[0];
  end
  else
  begin
    lbPlikHist.Caption:= '';
  end;
end;

procedure TFrmHistPliku.OdczytajWpisy(qry:TZReadOnlyQuery; Id:longint);
var
  item : TListItem;
begin
  lv.BeginUpdate;
  try
    lv.Items.Clear;
    lbIlosc.Caption:= 'Ilość: 0';
    lbNazwaPliku.Caption:= '';

    if (Assigned(qry)) then
    begin
      qry.Close;
      qry.ParamByName('IDPOZ').AsInteger:= Id;
      qry.Open;
      lbIlosc.Caption:= Format('Ilość: %d',[qry.RecordCount]);

      if not qry.IsEmpty then
      begin
        lbNazwaPliku.Caption:= ExtractFileName(qry.FieldByName('ScPl').AsString);
      end;

      while not qry.EOF do
      begin
        item:= lv.Items.Add;
        //item.Caption:= qry.FieldByName('DataUruchHpl').AsString;
        item.Caption:= FormatDateTime('dd mmmm yyyy (ddd) hh:nn:ss',UniversalTimeToLocal(qry.FieldByName('DataUruchHpl').AsDateTime));
        item.SubItems.Add(qry.FieldByName('ScPl').AsString);
        item.ImageIndex:= 0;

        qry.Next;
      end;

    end;
  finally
    lv.EndUpdate;
  end;
end;

procedure TFrmHistPliku.OdswiezWidok;
var
  s : string;
begin
  if (TabControl1.Tabs.Count > 0) then
  begin
    s:= TabControl1.Tabs.Strings[TabControl1.TabIndex];
    if (s.StartsWith('Plik',true)) then
    begin
      OdczytajWpisy(DMM.qHistPl, fIdPl);
    end
    else
    begin
      OdczytajWpisy(DMM.qHistRip, IdRip);
    end;
  end
  else
  begin
    OdczytajWpisy(nil,0);
  end;
end;

procedure TFrmHistPliku.UtworzWidok;
begin
  TabControl1.Tabs.Clear;
  if (fIdPl > 0) then
      TabControl1.Tabs.Add('Plik');
  if (fIdRip > 0) then
      TabControl1.Tabs.Add('Wszystkie wystąpienia');
  lbPlikHist.Caption:= '';
  OdswiezWidok;
end;

end.

