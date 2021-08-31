unit dmmain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, Controls, ZDataset, Dialogs, contnrs;

const
  STATUS_USUNIETY  = 'U';
  STATUS_ZMIENIONY = 'Z';
  STATUS_NORMALNY  = 'N';

type

  { TDMM }

  TDMM = class(TDataModule)
    dsMFAkt: TDataSource;
    dsRodzaje: TDataSource;
    dsSerie: TDataSource;
    dsKraje: TDataSource;
    dsMainPlik:   TDataSource;
    dsMainFilm:   TDataSource;
    dsMainFilmPl: TDataSource;
    dsJezyki:     TDataSource;
    dsMainInfo:   TDataSource;
    dsMainTag:    TDataSource;
    dsMainGat:  TDataSource;
    dsMainAkt:  TDataSource;
    dsMainSerie:  TDataSource;
    dsMainLinki:  TDataSource;
    dsMainAkaF:  TDataSource;
    qMainTag:     TZReadOnlyQuery;
    qMainGat:     TZReadOnlyQuery;
    qMainAkt:     TZReadOnlyQuery;
    qMainSerie:   TZReadOnlyQuery;
    qMainLinki:   TZReadOnlyQuery;
    qMainAkaF2:    TZReadOnlyQuery;
    qMain:        TZReadOnlyQuery;
    qCmd:         TZQuery;
    qMainInfo:    TZQuery;
    qMainFilm:    TZQuery;
    qMainFilmPl:  TZQuery;
    qJezyki:      TZReadOnlyQuery;
    qMainPlik:    TZQuery;
    qSerie: TZReadOnlyQuery;
    qKraje: TZReadOnlyQuery;
    qRodzaje: TZReadOnlyQuery;
    qMainAkaF: TZQuery;
    qMainFiltrAkt: TZReadOnlyQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qMainAfterScroll(DataSet: TDataSet);
  private
    fLstAktDataSet: TObjectList;
  public
    function DodajOdtworzenieFilmu(IdRip: longint): integer;
    function DodajRekordInfo(IdRip: longint): longint;
    function DodajFilm(IdRip: longint; Tytul: string; Rok: integer):longint;
    procedure UsunFilm(IdFilmu:longint);
    procedure ZmienTytulFilmu(IdFilmu: longint; NowyTytul:string);
    procedure UstawStanObjListyAktDataSet(stan: boolean);
    procedure UstawStatusPliku(IdPl: longint; Status: string);
    function CzyTytulFilmuIstniejeDlaRejPl(aTytulFilmu: string; aIdRip,aIdFilmu: longint): boolean;
    function FilmMaTakaOkladke(IdFilmu: longint; OkladkaScFilmu: string): boolean;
    function FilmMaTakiLink(IdFilmu:longint; url:string):boolean;
    function DodajInnyTytul(IdFilmu:longint; InnyTytul: string): longint;
    function FilmMaTakiInnyTytul(IdFilmu:longint; InnyTytul: string): boolean;
  end;

var
  DMM: TDMM;

implementation

uses
  dmgl;

{$R *.frm}

{ TDMM }

procedure TDMM.DataModuleCreate(Sender: TObject);
begin
  fLstAktDataSet := TObjectList.Create(False);

  fLstAktDataSet.Add(qJezyki);
  fLstAktDataSet.Add(qSerie);
  fLstAktDataSet.Add(qKraje);
  fLstAktDataSet.Add(qRodzaje);

  UstawStanObjListyAktDataSet(True);
end;

procedure TDMM.DataModuleDestroy(Sender: TObject);
begin
  UstawStanObjListyAktDataSet(False);
  fLstAktDataSet.Clear;
  FreeAndNil(fLstAktDataSet);
end;

procedure TDMM.qMainAfterScroll(DataSet: TDataSet);
begin
  qMainInfo.Close;
  qMainInfo.ParamByName('IDRIP').AsInteger := qMain.FieldByName('IdRip').AsInteger;
  qMainInfo.Open;
end;

procedure TDMM.UstawStanObjListyAktDataSet(stan: boolean);
var
  i:  integer;
  ds: TDataSet;
begin
  for i := 0 to fLstAktDataSet.Count - 1 do
  begin
    ds := TDataSet(fLstAktDataSet.Items[i]);
    ds.Active := stan;
  end;
end;

procedure TDMM.UstawStatusPliku(IdPl: longint; Status: string);
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('UPDATE Pliki SET StatusPl = ''%s'' WHERE IdPl = %d', [Status, IdPl]);
  qCmd.ExecSQL;
end;

function TDMM.CzyTytulFilmuIstniejeDlaRejPl(aTytulFilmu: string; aIdRip, aIdFilmu: longint): boolean;
var
  sql: string;
begin
  if (aIdFilmu > 0) then
    sql := Format('SELECT F.IdFilmu FROM Filmy F JOIN PlikiFilmy P ON P.IdFilmu = F.IdFilmu WHERE UPPER(F.TytulFilmu) = ''%s'' AND P.IdRip <> %d AND F.IdFilmu <> %d',
      [AnsiUpperCase(aTytulFilmu), aIdRip, aIdFilmu]) // do zmiany nazwy
  else
    sql := Format('SELECT F.IdFilmu FROM Filmy F JOIN PlikiFilmy P ON P.IdFilmu = F.IdFilmu WHERE UPPER(F.TytulFilmu) = ''%s'' AND P.IdRip <> %d',
      [AnsiUpperCase(aTytulFilmu), aIdRip]); // do dodania nowego filmu

  qCmd.Close;
  qCmd.SQL.Text := sql;
  qCmd.Open;

  Result := not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMM.FilmMaTakaOkladke(IdFilmu: longint; OkladkaScFilmu: string): boolean;
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('SELECT IdFilmu FROM Filmy WHERE IdFilmu = %d AND UPPER(OkladkaScFilmu) = ''%s''', [IdFilmu, OkladkaScFilmu]);
  qCmd.Open;

  Result := not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMM.FilmMaTakiLink(IdFilmu: longint; url: string): boolean;
begin
  url:= UpperCase(url);
  qCmd.Close;
  qCmd.SQL.Text:= Format('SELECT IdLnk FROM LinkiWWW WHERE idFilmu = %d AND Upper(TrescLnk) = ''%s''',[IdFilmu,url]);
  qCmd.Open;
  result:= not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMM.DodajInnyTytul(IdFilmu: longint; InnyTytul: string): longint;
begin
  result:= 0;
  InnyTytul:= Trim(InnyTytul);
  if (InnyTytul = '') then
    Exit;

  qCmd.Close;
  qCmd.SQL.Text := Format('select IdAKAF from AKA_F where Upper(NazwaAkaF) = ''%s'' ', [AnsiUpperCase(InnyTytul)]);
  qCmd.Open;
  if qCmd.IsEmpty then
  begin
    qCmd.Close;
    qCmd.SQL.Text := Format('INSERT INTO AKA_F(IdFilmu,NazwaAKAF) VALUES(%d,''%s'')', [IdFilmu, InnyTytul]);
    qCmd.ExecSQL;
    Result := DMG.GetLastId;
  end
end;

function TDMM.FilmMaTakiInnyTytul(IdFilmu: longint; InnyTytul: string): boolean;
begin
  result:= False;
  InnyTytul:= Trim(InnyTytul);
  if (InnyTytul = '') then
    Exit;
  qCmd.Close;
  qCmd.SQL.Text := Format('select IdAKAF from AKA_F where Upper(NazwaAkaF) = ''%s'' ', [AnsiUpperCase(InnyTytul)]);
  qCmd.Open;
  result:= not qCmd.IsEmpty;
  qCmd.Close;
end;

function TDMM.DodajOdtworzenieFilmu(IdRip: longint): integer;
var
  ilosc: longint;
begin
  Result := 0;

  qCmd.Close;
  qCmd.SQL.Text := Format('SELECT IloscUruchomienRip AS ILosc FROM RejestrPlikow WHERE IdRip = %d', [IdRip]);
  qCmd.Open;
  if not qCmd.IsEmpty then
  begin
    ilosc := qCmd.FieldByName('Ilosc').AsInteger + 1;
    qCmd.Close;
    qCmd.SQL.Text := Format('UPDATE RejestrPlikow SET IloscUruchomienRip = %d WHERE IdRip = %d', [ilosc, IdRip]);
    qCmd.ExecSQL;
    Result := ilosc;
  end
  else
    MessageDlg('Błąd', Format('Nie udało się odszukać powiązanego z plikiem rekordu w RejestrPlików o id: %d', [IdRip]), mtError, [mbOK], 0);
end;

function TDMM.DodajRekordInfo(IdRip: longint): longint;
begin
  qCmd.Close;
  qCmd.SQL.Text := Format('INSERT INTO InfoPlikiFilmy(IDRIP) VALUES(%d)', [IdRip]);
  qCmd.ExecSQL;
  Result := DMG.GetLastId;
end;

function TDMM.DodajFilm(IdRip: longint; Tytul: string; Rok: integer): longint;
var
  idFilmu : longint;
begin
  qCmd.Close;
  if Rok > 0 then
    qCmd.SQL.Text := Format('INSERT INTO Filmy(TytulFilmu, RokFilmu) VALUES(''%s'', %d)', [Tytul, Rok])
  else
    qCmd.SQL.Text := Format('INSERT INTO Filmy(TytulFilmu) VALUES(''%s'')', [Tytul]);
  qCmd.ExecSQL;
  idFilmu := DMG.GetLastId;

  qCmd.SQL.Text:= Format('INSERT INTO PlikiFilmy(IdRip, IdFilmu) VALUES(%d, %d)',[IdRip, idFilmu]);
  qCmd.ExecSQL;

  result:= idFilmu;
end;

procedure TDMM.UsunFilm(IdFilmu:longint);
begin
  qCmd.Close;

  qCmd.SQL.Text:= Format('DELETE FROM FilmyAkt WHERE IdFilmu = %d',[IdFilmu]);
  qCmd.ExecSQL;

  qCmd.SQL.Text:= Format('DELETE FROM FilmyGat WHERE IdFilmu = %d',[IdFilmu]);
  qCmd.ExecSQL;

  qCmd.SQL.Text:= Format('DELETE FROM AKA_F WHERE IdFilmu = %d',[IdFilmu]);
  qCmd.ExecSQL;

  qCmd.SQL.Text:= Format('DELETE FROM LinkiWWW WHERE IdFilmu = %d',[IdFilmu]);
  qCmd.ExecSQL;

  qCmd.SQL.Text:= Format('DELETE FROM Filmy WHERE IdFilmu = %d',[IdFilmu]);
  qCmd.ExecSQL;
end;

procedure TDMM.ZmienTytulFilmu(IdFilmu: longint; NowyTytul: string);
begin
  qCmd.Close;

  qCmd.SQL.Text:= Format('UPDATE Filmy SET TytulFilmu = ''%s'' WHERE IdFilmu = %d',[NowyTytul, IdFilmu]);
  qCmd.ExecSQL;
end;

end.
