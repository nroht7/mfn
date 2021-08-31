unit dmakt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, ZDataset, Dialogs;

type

  { TDMA }

  TDMA = class(TDataModule)
    dsAkaA: TDataSource;
    dsAktFilmy: TDataSource;
    qAkt: TZQuery;
    qrAktFilmy: TZReadOnlyQuery;
    tbAkt: TZTable;
    qAkaA: TZQuery;
    qCmd: TZQuery;
  private
    function GetSqlAkt: string;
  public
    property SqlAkt : string read GetSqlAkt;

    procedure PokazInneNazwiskaAktora(IdAkt: longint);
    function JestAktorWFilmie(IdAkt,IdFilmu:longint):boolean;
    function DodajAktoraDoFilmu(IdAkt: longint; IdFilmu: longint): boolean;
    procedure UsunAktoraZFilmu(IdAkt,IdFilmu:longint);
    function JestInneNazwiskoAktora(IdAkt: longint; Nazwisko: string):boolean;
    function DodajInneNazwiskoDoAktora(IdAkt: longint; Nazwisko: string): boolean;
    procedure UsunInneNazwisko(IdAKAA: longint);
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

procedure TDMA.PokazInneNazwiskaAktora(IdAkt: longint);
begin
  qAkaA.Close;
  qAkaA.ParamByName('IdAkt').AsLargeInt:= IdAkt;
  qAkaA.Open;
end;

function TDMA.JestAktorWFilmie(IdAkt,IdFilmu: longint): boolean;
begin
  qCmd.Close;
  qCmd.SQL.Text:= Format('SELECT IdAkt FROM FilmyAkt WHERE IdAkt = %d AND IdFilmu = %d ', [IdAkt,IdFilmu]);
  qCmd.Open;
  result:= not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMA.DodajAktoraDoFilmu(IdAkt: longint; IdFilmu: longint): boolean;
begin
  result:= False;
  if not JestAktorWFilmie(idAkt,IdFilmu) then
  begin
    qCmd.Close;
    qCmd.SQL.Text:= Format('INSERT INTO FilmyAkt(IdAkt,IdFilmu) VALUES(%d, %d) ', [IdAkt,IdFilmu]);
    qCmd.ExecSQL;
    result:= True;
  end;
end;

procedure TDMA.UsunAktoraZFilmu(IdAkt, IdFilmu: longint);
begin
  qCmd.Close;
  qCmd.SQL.Text:= Format('DELETE FROM FilmyAkt WHERE IdAkt = %d AND IdFilmu = %d ', [IdAkt,IdFilmu]);
  qCmd.ExecSQL;

end;

function TDMA.JestInneNazwiskoAktora(IdAkt: longint; Nazwisko: string): boolean;
begin
  qCmd.Close;
  qCmd.SQL.Text:= Format('SELECT IdAkt FROM AKA_A WHERE IdAkt = %d AND Upper(NazwaAKAA) = ''%s'' ',[IdAkt, Nazwisko]);
  qCmd.Open;
  result:= not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMA.DodajInneNazwiskoDoAktora(IdAkt: longint; Nazwisko: string
  ): boolean;
begin
  result:= False;
  if not JestInneNazwiskoAktora(IdAkt,Nazwisko) then
  begin
    qCmd.Close;
    qCmd.SQL.Text:= Format('INSERT INTO AKA_A(IdAkt,NazwaAKAA) VALUES(%d, ''%s'') ', [IdAkt,Nazwisko]);
    qCmd.ExecSQL;
    result:= True;
  end;
end;

procedure TDMA.UsunInneNazwisko(IdAKAA: longint);
begin
  qCmd.Close;
  qCmd.SQL.Text:= Format('DELETE FROM AKA_A WHERE IdAKAA = %d ', [IdAKAA]);
  qCmd.ExecSQL;
end;


end.

