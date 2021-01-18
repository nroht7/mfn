unit dmakt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, ZDataset, ZSequence, Dialogs;

type

  { TDMA }

  TDMA = class(TDataModule)
    dsAkt: TDataSource;
    dsAkaA: TDataSource;
    dsAktFilmy: TDataSource;
    qAkt: TZQuery;
    qrAktFilmy: TZReadOnlyQuery;
    tbAKAA: TZTable;
    tbAkt: TZTable;
  private
    function GetSqlAkt: string;
  public
    procedure OtworzTabele;
    procedure ZamknijTabele;

    property SqlAkt : string read GetSqlAkt;
  end;

var
  DMA: TDMA;

implementation

{$R *.frm}

{ TDMA }

function TDMA.GetSqlAkt: string;
begin
  if (qAkt.Active) then
    result:= qAkt.SQL.Text
  else
    result:= '';
end;

procedure TDMA.OtworzTabele;
begin
  try
    if not qAkt.Active then
      qAkt.Open;
    if not tbAKAA.Active then
      tbAKAA.Open;
  except
    on e: Exception do
    begin
      MessageDlg('Błąd w module dmAkt podczas otwierania tabel o treści:' + sLineBreak + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

procedure TDMA.ZamknijTabele;
begin
  try
    qAkt.Close;
    tbAKAA.Close;
  except
    on e: Exception do
    begin
      MessageDlg('Błąd w module dmAkt podczas zamykania tabel o treści:' + sLineBreak + e.Message, mtError, [mbOK], 0);
    end;
  end;
end;

end.

