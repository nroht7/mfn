unit dlgaktorzy;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, DBGrids, ComCtrls,
  ButtonPanel, ExtCtrls, StdCtrls, DBCtrls, Buttons, ActnList, DBActns, Menus,
  RxDBCtrls, DB;

type

  { TFrmAktorzy }

  TFrmAktorzy = class(TForm)
    acDodaj: TAction;
    acSortNazwa: TAction;
    acSortOcena: TAction;
    acUsun: TAction;
    ActionList1: TActionList;
    ButtonPanel1: TButtonPanel;
    DataSetCancel1: TDataSetCancel;
    DataSetCancel2: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetEdit2: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetFirst2: TDataSetFirst;
    DataSetInsert1: TDataSetInsert;
    DataSetLast1: TDataSetLast;
    DataSetLast2: TDataSetLast;
    DataSetPost1: TDataSetPost;
    DataSetPost2: TDataSetPost;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBImage1: TDBImage;
    DBMemo1: TDBMemo;
    DBText1: TDBText;
    edFiltruj: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    pnlSort: TPanel;
    pmSort: TPopupMenu;
    RxDBTrackBar1: TRxDBTrackBar;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Opis: TTabSheet;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure acDodajExecute(Sender: TObject);
    procedure acSortNazwaExecute(Sender: TObject);
    procedure acSortOcenaExecute(Sender: TObject);
    procedure edFiltrujEditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    function PrepareQuery: string;
    procedure RefreshQuery;
  public

  end;

var
  FrmAktorzy: TFrmAktorzy;

implementation

uses
  dmakt, dmgl;

{$R *.frm}

{ TFrmAktorzy }

procedure TFrmAktorzy.FormCreate(Sender: TObject);
begin
  DMA.OtworzTabele;
end;

procedure TFrmAktorzy.FormDestroy(Sender: TObject);
begin
  DMA.ZamknijTabele;
end;

procedure TFrmAktorzy.SpeedButton1Click(Sender: TObject);
begin
  edFiltruj.Clear;
  RefreshQuery;
end;

function TFrmAktorzy.PrepareQuery: string;
var
  sql : string;
  filtr : string;
begin
  sql:= DMA.SqlAkt;

  filtr:= Trim(edFiltruj.Text);
  if (filtr <> '') then
  begin
    sql:= sql + Format(' WHERE NazwaAkt LIKE ''%s'' ',['%'+filtr+'%']);
  end;

  result:= sql;
end;

procedure TFrmAktorzy.RefreshQuery;
begin
  try
    DMG.OdswiezQueryZSql(DMA.qAkt, PrepareQuery, 'NAZWAAKT');
  except
    on e : Exception do
    begin
      MessageDlg('Błąd podczas filtrowania tabeli aktorów:'+sLineBreak+e.Message,mtError,[mbOk],0);
    end;
  end;
end;

procedure TFrmAktorzy.acSortNazwaExecute(Sender: TObject);
begin
  acSortNazwa.Checked:= True;
  acSortOcena.Checked:= False;
  pnlSort.Caption:= 'Sortuj wg. nazwy';
  DMA.qAkt.SortedFields:= 'NAZWAAKT';
end;

procedure TFrmAktorzy.acDodajExecute(Sender: TObject);
var
  nazwa : string;
begin
  if not DMA.qAkt.Active then
    Exit;

  if InputQuery('Nowy aktor', 'Nazwa aktora:', nazwa) then
  begin
    nazwa:= Trim(nazwa);
    if DMA.tbAkt.Locate('NAZWAAKT', nazwa, [loCaseInsensitive]) then
    begin
      DMA.qAkt.Locate('NazwaAkt', nazwa, [loCaseInsensitive]);
      MessageDlg(Format('Aktor "%s" już jest', [nazwa]),mtInformation,[mbOk],0);
    end
    else
    begin
      DMA.tbAkt.Append;
      DMA.tbAkt.FieldByName('NazwaAkt').AsString:= nazwa;
      DMA.tbAkt.Post;
      DMG.OdswiezDataSet(DMA.qAkt, '');
      if not DMA.qAkt.Locate('NazwaAkt', nazwa, [loCaseInsensitive]) then
        ShowMessage('Nie udało się odnaleźć dodanego aktora');
    end;
  end;
end;

procedure TFrmAktorzy.acSortOcenaExecute(Sender: TObject);
begin
  acSortNazwa.Checked:= False;
  acSortOcena.Checked:= True;
  pnlSort.Caption:= 'Sortuj wg. oceny';
  DMA.qAkt.SortedFields:= 'OCENAAKT';
end;

procedure TFrmAktorzy.edFiltrujEditingDone(Sender: TObject);
begin
  RefreshQuery;
end;

end.

