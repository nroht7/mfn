unit dlgslownik;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  ButtonPanel, DBCtrls, DBGrids, StdCtrls, Buttons, ActnList, DBActns, ZDataset;


type

  { TFrmSlownik }

  TFrmSlownik = class(TForm)
    acDodaj: TAction;
    acUsun: TAction;
    ActionList1: TActionList;
    ButtonPanel1: TButtonPanel;
    DataSetCancel1: TDataSetCancel;
    DataSetEdit1: TDataSetEdit;
    DataSetFirst1: TDataSetFirst;
    DataSetLast1: TDataSetLast;
    DataSetPost1: TDataSetPost;
    DataSource: TDataSource;
    dbg: TDBGrid;
    dbm: TDBMemo;
    edFiltr: TEdit;
    ImageList1: TImageList;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ZQuery: TZQuery;
    procedure acDodajExecute(Sender: TObject);
    procedure acUsunExecute(Sender: TObject);
    procedure edFiltrEditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ZQueryAfterPost(DataSet: TDataSet);
  private
    fPoleId: string;
    fPoleNazwa: string;
    fPoleMemo: string;
    fTabela: string;
    //fGenerator: string;
    fAliasPol: string;
    fPoleMemoWidoczne: boolean;
    fSaZmiany: boolean;

    function GetAliasPol: string;
    function GetTytulOkna: string;
    procedure SetAliasPol(AValue: string);
    procedure SetTytulOkna(AValue: string);
    function PrepareQuery(AFiltr: string): string;
    procedure InicjalizujSlownik;
    procedure OdswiezQuery;
    procedure UstawWidocznoscMemo(AStan: boolean);
    function GetIdRec(ANazwa: string): integer;
  public
    property TytulOkna: string read GetTytulOkna write SetTytulOkna;
    property Tabela: string read fTabela write fTabela;
    //property Generator: string read fGenerator write fGenerator;
    property AliasPol: string read GetAliasPol write SetAliasPol;
    property PoleId: string read fPoleId write fPoleId;
    property PoleNazwa: string read fPoleNazwa write fPoleNazwa;
    property PoleMemo: string read fPoleMemo write fPoleMemo;
    property PoleMemoWidoczne: boolean read fPoleMemoWidoczne write fPoleMemoWidoczne;
    property SaZmiany : boolean read fSaZmiany;
  end;

var
  FrmSlownik: TFrmSlownik;

implementation

uses
  dmgl, dlgpozsl;

{$R *.frm}

{ TFrmSlownik }

procedure TFrmSlownik.FormCreate(Sender: TObject);
begin
  fPoleId := '';
  fPoleNazwa := '';
  fPoleMemo := '';
  fTabela := '';
  //fGenerator := '';
  fPoleMemoWidoczne := True;
  fAliasPol := '';
end;

procedure TFrmSlownik.FormDestroy(Sender: TObject);
begin
  if (ZQuery.Active) then
  begin
    ZQuery.Close;
    //ZSequence.CloseSequence;
  end;
end;

procedure TFrmSlownik.FormShow(Sender: TObject);
begin
  fSaZmiany:= False;
  InicjalizujSlownik;
end;

procedure TFrmSlownik.SpeedButton1Click(Sender: TObject);
begin
  OdswiezQuery;
end;

procedure TFrmSlownik.ZQueryAfterPost(DataSet: TDataSet);
begin
  fSaZmiany:= True;
end;

procedure TFrmSlownik.edFiltrEditingDone(Sender: TObject);
begin
  OdswiezQuery;
end;

procedure TFrmSlownik.acDodajExecute(Sender: TObject);
var
  frm: TFrmPozSlownika;
  id: longint;
begin
  frm := TFrmPozSlownika.Create(self);
  try
    frm.TytulOkna := 'Nowa pozycja';
    frm.OpisWidoczny := fPoleMemoWidoczne;
    if (frm.ShowModal = mrOk) then
    begin
      id := GetIdRec(frm.Nazwa);
      if (id = 0) then
      begin
        try
          ZQuery.Append;
          ZQuery.FieldByName(fPoleNazwa).AsString := frm.Nazwa;
          if fPoleMemoWidoczne then
            ZQuery.FieldByName(fPoleMemo).AsString := frm.Opis;
          ZQuery.Post;

          ZQuery.Close;
          ZQuery.Open;

          if not ZQuery.Locate(fPoleNazwa, frm.Nazwa, []) then
            ShowMessage('Nie udało się odszukać dodanego rekordu');
        except
          on e: Exception do
          begin
            MessageDlg('Podczas próby dodania nowego rekordu wystąpił błąd:' + sLineBreak + e.Message, mtError, [mbOK], 0);
          end;
        end;
      end
      else
      begin
        ZQuery.Locate(fPoleId, id, []);
        MessageDlg('Taka pozycja już jest.', mtInformation, [mbOK], 0);
      end;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmSlownik.acUsunExecute(Sender: TObject);
var
  s : string;
begin
  if ((ZQuery.Active) and (not ZQuery.IsEmpty)) then
  begin
    s:= ZQuery.FieldByName(fPoleNazwa).AsString;
    if (MessageDlg(Format('Czy napewno usunąć "%s"?',[s]),mtConfirmation,[mbOK,mbCancel],0) = mrOk) then
      ZQuery.Delete;
  end;
end;

function TFrmSlownik.GetTytulOkna: string;
begin
  Result := Caption;
end;

function TFrmSlownik.GetAliasPol: string;
begin
  Result := fAliasPol;
end;

procedure TFrmSlownik.SetAliasPol(AValue: string);
begin
  fAliasPol := AValue;

  if fPoleId = '' then
    fPoleId := 'Id' + fAliasPol;
  if fPoleNazwa = '' then
    fPoleNazwa := 'Nazwa' + fAliasPol;
  if fPoleMemo = '' then
    fPoleMemo := 'Opis' + fAliasPol;
end;

procedure TFrmSlownik.SetTytulOkna(AValue: string);
begin
  Caption := AValue;
end;

function TFrmSlownik.PrepareQuery(AFiltr: string): string;
var
  sql: string;
begin
  sql := 'SELECT ';

  if fPoleNazwa = '' then
    raise Exception.Create('Nie przekazano pola nazwa.')
  else
    sql := sql + Format('%s',[fPoleNazwa]);

  if fPoleMemo <> '' then
    sql := sql + Format(', %s',[fPoleMemo]);

  if fTabela = '' then
    raise Exception.Create('Nie przekazano nazwy tabeli.')
  else
    sql := sql + ' FROM ' + fTabela;

  if AFiltr <> '' then
    sql := sql + ' WHERE ' + fPoleNazwa + ' LIKE %''' + AFiltr + '''%';

  sql := sql + ' ORDER BY ' + fPoleNazwa;

  Result := sql;
end;

procedure TFrmSlownik.InicjalizujSlownik;
//var
//  seq: string;
begin
  if fPoleNazwa = '' then
  begin
    MessageDlg('Nie przekazano pola z nazwą.', mtError, [mbOK], 0);
    Exit;
  end;

  if fTabela = '' then
  begin
    MessageDlg('Nie przekazano tabeli.', mtError, [mbOK], 0);
    Exit;
  end;

  dbg.Columns[0].FieldName := PoleNazwa;

  if (fPoleMemo = '') or (not fPoleMemoWidoczne) then
    UstawWidocznoscMemo(False)
  else
    dbm.DataField := fPoleMemo;

  //ZSequence.SequenceName := seq;
  OdswiezQuery;
end;

procedure TFrmSlownik.OdswiezQuery;
begin
  try
    ZQuery.Close;
    ZQuery.SQL.Text := PrepareQuery(Trim(edFiltr.Text));
    ZQuery.Open;
  except
    on e: Exception do
    begin
      MessageDlg('Błąd podczas próby wykonania zapytania:' + sLineBreak + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TFrmSlownik.UstawWidocznoscMemo(AStan: boolean);
begin
  Splitter1.Visible := AStan;
  dbm.Visible := AStan;
end;

function TFrmSlownik.GetIdRec(ANazwa: string): integer;
var
  qry: TZReadOnlyQuery;
begin
  Result := 0;
  qry := TZReadOnlyQuery.Create(self);
  try
    try
      qry.Connection := DMG.ZConn;
      qry.SQL.Add('SELECT ' + fPoleId);
      qry.SQL.Add(' FROM ' + fTabela);
      qry.SQL.Add(Format(' WHERE %s = ''%s'' ', [fPoleNazwa, ANazwa]));
      qry.Open;
      if not qry.IsEmpty then
        Result := qry.Fields[0].AsInteger;
      qry.Close;
    except
      on e: Exception do
      begin
        raise Exception.Create('Błąd podczas próby pobrania identyfikatora rekordu: ' + e.Message);
      end;
    end;
  finally
    FreeAndNil(qry);
  end;
end;

end.

