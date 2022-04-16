unit dmakt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, ZDataset, Dialogs, Contnrs;

type

  { TDMA }

  TDMA = class(TDataModule)
    dsAktUrl: TDataSource;
    dsAkaA: TDataSource;
    dsAktFilmy: TDataSource;
    qAkt: TZQuery;
    qrAktFilmy: TZReadOnlyQuery;
    tbAkt: TZTable;
    qAkaA: TZQuery;
    qCmd: TZQuery;
    qAktUrl: TZQuery;
  private
    function GetSqlAkt: string;
  public
    property SqlAkt: string read GetSqlAkt;

    procedure PokazInneNazwiskaAktora(IdAkt: longint);
    function JestAktorWFilmie(IdAkt, IdFilmu: longint): boolean;
    function DodajAktoraDoFilmu(IdAkt: longint; IdFilmu: longint): boolean;
    procedure UsunAktoraZFilmu(IdAkt, IdFilmu: longint);
    function JestInneNazwiskoAktora(IdAkt: longint; Nazwisko: string): boolean;
    function DodajInneNazwiskoDoAktora(IdAkt: longint; Nazwisko: string): boolean;
    procedure UsunInneNazwisko(IdAKAA: longint);
    procedure PokazUrlAktora(IdAkt: longint);
    function JestLinkDoAktora(IdAkt: longint; Link: string): boolean;
    function DodajLinkDoAktora(IdAkt: longint; Link: string): boolean;
    procedure UsunLinkAktora(IdAlu: longint);
    function ZnajdzWystNazwiska(Nazwa: string; var listaNazwisk: TObjectList): boolean;
  end;

var
  DMA: TDMA;

implementation

{$R *.frm}

uses
  unazakt, dmgl;

{ TDMA }

function TDMA.GetSqlAkt: string;
begin
  if (qAkt.Active) then
    Result := qAkt.SQL.Text
  else
    Result := '';
end;

procedure TDMA.PokazInneNazwiskaAktora(IdAkt: longint);
begin
  qAkaA.Close;
  qAkaA.ParamByName('IdAkt').AsLargeInt := IdAkt;
  qAkaA.Open;
end;

function TDMA.JestAktorWFilmie(IdAkt, IdFilmu: longint): boolean;
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('SELECT IdAkt FROM FilmyAkt WHERE IdAkt = %d AND IdFilmu = %d ', [IdAkt, IdFilmu]);
  qCmd.Open;
  Result := not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMA.DodajAktoraDoFilmu(IdAkt: longint; IdFilmu: longint): boolean;
begin
  Result := False;
  if not JestAktorWFilmie(idAkt, IdFilmu) then
  begin
    qCmd.Close;
    qCmd.SQL.Text := Format('INSERT INTO FilmyAkt(IdAkt,IdFilmu) VALUES(%d, %d) ', [IdAkt, IdFilmu]);
    qCmd.ExecSQL;
    Result := True;
  end;
end;

procedure TDMA.UsunAktoraZFilmu(IdAkt, IdFilmu: longint);
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('DELETE FROM FilmyAkt WHERE IdAkt = %d AND IdFilmu = %d ', [IdAkt, IdFilmu]);
  qCmd.ExecSQL;

end;

function TDMA.JestInneNazwiskoAktora(IdAkt: longint; Nazwisko: string): boolean;
var
  NazwAkt: string;
begin
  NazwAkt := AnsiUpperCase(Nazwisko);
  qCmd.Close;
  qCmd.SQL.Text := Format('SELECT IdAkt FROM AKA_A WHERE IdAkt = %d AND Upper(NazwaAKAA) = ''%s'' ', [IdAkt, NazwAkt]);
  qCmd.Open;
  Result := not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMA.DodajInneNazwiskoDoAktora(IdAkt: longint; Nazwisko: string): boolean;
begin
  Result := False;
  if not JestInneNazwiskoAktora(IdAkt, Nazwisko) then
  begin
    qCmd.Close;
    qCmd.SQL.Text := Format('INSERT INTO AKA_A(IdAkt,NazwaAKAA) VALUES(%d, ''%s'') ', [IdAkt, Nazwisko]);
    qCmd.ExecSQL;
    Result := True;
  end;
end;

procedure TDMA.UsunInneNazwisko(IdAKAA: longint);
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('DELETE FROM AKA_A WHERE IdAKAA = %d ', [IdAKAA]);
  qCmd.ExecSQL;
end;

procedure TDMA.PokazUrlAktora(IdAkt: longint);
begin
  qAktUrl.Close;
  qAktUrl.ParamByName('IdAkt').AsLargeInt := IdAkt;
  qAktUrl.Open;
end;

function TDMA.JestLinkDoAktora(IdAkt: longint; Link: string): boolean;
begin
  Result := False;

  Link := Trim(UpperCase(Link));
  if ((IdAkt > 0) and (Link <> '')) then
  begin
    qCmd.Close;
    qCmd.SQL.Text := Format('SELECT IdAkt FROM AktLinkiUrl WHERE IdAkt = %d AND Upper(UrlAlu) = ''%s'' ', [IdAkt, Link]);
    qCmd.Open;
    Result := not qCmd.IsEmpty;
    qCmd.Close;
  end;
end;

function TDMA.DodajLinkDoAktora(IdAkt: longint; Link: string): boolean;
begin
  Result := False;
  if not JestLinkDoAktora(IdAkt, Link) then
  begin
    qCmd.Close;
    qCmd.SQL.Text := Format('INSERT INTO AktLinkiUrl(IdAkt,UrlAlu) VALUES(%d, ''%s'') ', [IdAkt, Link]);
    qCmd.ExecSQL;

    Result := True;
  end;
end;

procedure TDMA.UsunLinkAktora(IdAlu: longint);
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('DELETE FROM AktLinkiUrl WHERE IdAlu = %d ', [IdAlu]);
  qCmd.ExecSQL;
end;

function TDMA.ZnajdzWystNazwiska(Nazwa: string; var listaNazwisk: TObjectList): boolean;
var
  fLike: boolean;
  oper: string;
  poz: TNazwaAktora;
  rodz: TRodzajNazwyAktora;
begin
  if (not Assigned(listaNazwisk)) then
    raise Exception.Create('Nie przekazano listy nazwisk do funkcji ZnajdzWystNazwiska. (Lista = nil)');

  Result := False;
  listaNazwisk.Clear;
  Nazwa := Trim(Nazwa);
  fLike := ((Pos('%', Nazwa) > 0) or (Pos('_', Nazwa) > 0));
  oper := DMG.GetOperatorLikeOrEqual(fLike);

  if (Nazwa <> '') then
  begin
    qCmd.Close;
    qCmd.SQL.Clear;
    qCmd.SQL.Add('SELECT A.*, P.Rodzaj');
    qCmd.SQL.Add('FROM Aktorzy A');
    qCmd.SQL.Add('JOIN (');
    qCmd.SQL.Add('SELECT IdAkt,1 as Rodzaj FROM Aktorzy');
    qCmd.SQL.Add(Format('WHERE Upper(NazwaAkt) %s :NAZWISKO', [oper]));
    qCmd.SQL.Add('UNION');
    qCmd.SQL.Add('SELECT IdAkt,2 as Rodzaj FROM AKA_A');
    qCmd.SQL.Add(Format('WHERE Upper(NAZWAAKAA) %s :NAZWISKO', [oper]));
    qCmd.SQL.Add('EXCEPT');
    qCmd.SQL.Add('SELECT IdAkt,2 as Rodzaj FROM Aktorzy');
    qCmd.SQL.Add(Format('WHERE NazwaAkt %s :NAZWISKO', [oper]));
    qCmd.SQL.Add(') P ON P.IdAkt = A.IdAkt');
    qCmd.SQL.Add('ORDER BY A.NAZWAAKT');
    qCmd.ParamByName('NAZWISKO').AsString := AnsiUpperCase(Nazwa);
    qCmd.Open;

    qCmd.First;
    while not qCmd.EOF do
    begin
      rodz := TNazwaAktora.IntToRodzaj(qCmd.FieldByName('Rodzaj').AsInteger);
      poz := TNazwaAktora.Create(qCmd.FieldByName('IdAkt').AsInteger, qCmd.FieldByName('NazwaAkt').AsString, rodz);
      listaNazwisk.Add(poz);

      qCmd.Next;
    end;

    qCmd.Close;
    Result := (listaNazwisk.Count > 0);
  end;
end;


end.
