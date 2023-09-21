unit dlgprzenpl;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel, ExtCtrls,
  StdCtrls, ActnList, Buttons, upldb;

type

  { TFrmPrzeniesPlik }

  TFrmPrzeniesPlik = class(TForm)
    acWybFolder: TAction;
    acZmienNazwe: TAction;
    ActionList1: TActionList;
    Bevel1: TBevel;
    ButtonPanel1: TButtonPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    edFldDoc: TEdit;
    edNazwa: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbScPoZm: TLabel;
    lbScPrzedZm: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure acWybFolderExecute(Sender: TObject);
    procedure acZmienNazweExecute(Sender: TObject);
    procedure edFldDocChange(Sender: TObject);
    procedure edNazwaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fIdPl: longint;
    fPlikDBZr: TPlikDB;
    fPlikDBDoc: TPlikDB;
    fScPl: string;
    fNazwaPl: string;
    fRozszPl: string;
    function GetPlDoc: TPlikDB;
    function GetPlZr: TPlikDB;
    function NowaLokalizacja: boolean;
    function NazwaPlikuOK: boolean;
  public
    constructor Create(AOwner: TComponent); override;
    constructor CreateMvFile(AOwner: TComponent; AIdPl: longint);

    property PlikZrodlowy: TPlikDB read GetPlZr;
    property PlikDocelowy: TPlikDB read GetPlDoc;
  end;

var
  FrmPrzeniesPlik: TFrmPrzeniesPlik;

implementation

{$R *.frm}

uses
  dlgfldwyb, dmgl, dlgzmnazpl, funpl;

{ TFrmPrzeniesPlik }

constructor TFrmPrzeniesPlik.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  raise Exception.Create('Użyto niewłaściwego konstuktora');
end;

constructor TFrmPrzeniesPlik.CreateMvFile(AOwner: TComponent; AIdPl: longint);
begin
  inherited Create(AOwner);

  if (AIdPl < 1) then
    raise Exception.Create('Nie przekazano pliku do zmiany nazwy.');

  if (not DMG.tbPliki.Active) then
    DMG.tbPliki.Open;

  if not DMG.tbPliki.Locate('IdPl', AIdPl, []) then
    raise Exception.Create(Format('Nie udało się odnaleść pliku o identyfikatorze %d', [AIdPl]));

  if (not DMG.tbKat.Active) then
    DMG.tbKat.Open;

  if (not DMG.tbKat.Locate('IdFld', DMG.tbPliki.FieldByName('IdFld').AsInteger, [])) then
    raise Exception.Create(Format('Nie udało się odnaleść katalogu o identyfikatorze %d', [DMG.tbPliki.FieldByName('IdFld').AsInteger]));

  if (not DMG.tbRejPl.Active) then
     DMG.tbRejPl.Open;

  if (not DMG.tbRejPl.Locate('IdRip', DMG.tbPliki.FieldByName('IdRip').AsInteger, [])) then
    raise Exception.Create(Format('Nie udało się odnaleść pliku w rejestrze o identyfikatorze %d', [DMG.tbPliki.FieldByName('IdRip').AsInteger]));

  fIdPl := AIdPl;

  fPlikDBZr := TPlikDB.Create;
  fPlikDBZr.SetFolder(DMG.tbKat.FieldByName('IdFld').AsInteger, DMG.tbKat.FieldByName('ScFld').AsString);
  fPlikDBZr.SetPlik(AIdPl, DMG.tbPliki.FieldByName('NazwaPl').AsString, DMG.tbPliki.FieldByName('WzgScPl').AsString);
  fPlikDBZr.Crc32:= DMG.tbRejPl.FieldByName('Crc32Rip').AsString;

  fScPl := DMG.tbPliki.FieldByName('ScPl').AsString;
  fRozszPl := ExtractFileExt(fScPl);
  fNazwaPl := fPlikDBZr.NazwaPliku;
  fNazwaPl := Copy(fNazwaPl, 1, Length(fNazwaPl) - Length(fRozszPl));

  Edit1.Text := fPlikDBZr.NazwaPliku;
  Edit2.Text := ExtractFilePath(fPlikDBZr.AsString);
  edNazwa.Text := fNazwaPl;
  fPlikDBDoc := TPlikDB.Create;
  edFldDoc.SetFocus;
end;

procedure TFrmPrzeniesPlik.FormDestroy(Sender: TObject);
begin
  if (Assigned(fPlikDBZr)) then
    FreeAndNil(fPlikDBZr);
  if (Assigned(fPlikDBDoc)) then
    FreeAndNil(fPlikDBDoc);
end;

procedure TFrmPrzeniesPlik.FormShow(Sender: TObject);
begin
  lbScPrzedZm.Caption:= fPlikDBZr.AsString;
end;

procedure TFrmPrzeniesPlik.acWybFolderExecute(Sender: TObject);
var
  frm: TFrmWybFld;
  fldSc: string;
  katPod: string;
begin
  frm := TFrmWybFld.Create(self);
  try
    if (frm.ShowModal = mrOk) then
    begin
      //edFldDoc.Text:= DodajSeparatorKatNaKoncu(frm.WybranyFolder);
      fldSc := DodajSeparatorKatNaKoncu(frm.WybranyFolderSc);
      katPod := DodajSeparatorKatNaKoncu(frm.WybranyKatPod);

      {if LastDelimiter(DirectorySeparator, edFldDoc.Text) <> Length(edFldDoc.Text) then
        edFldDoc.Text:= edFldDoc.Text + DirectorySeparator;}
      //ShowMessage(katPod);
      {if LastDelimiter(DirectorySeparator, katPod) <> Length(katPod) then
        katPod:= katPod + DirectorySeparator;}

      fPlikDBDoc.SetFolder(frm.WybranyFolderId, fldSc);
      fPlikDBDoc.WzglednaSciezkaPliku := katPod;
      edFldDoc.Text := fPlikDBDoc.GetFolderPliku;
    end;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmPrzeniesPlik.acZmienNazweExecute(Sender: TObject);
var
  frm: TFrmZmNazwy;
begin
  frm := TFrmZmNazwy.CreateFile(self, fIdPl);
  try
    frm.ShowModal;
  finally
    FreeAndNil(frm);
  end;
end;

procedure TFrmPrzeniesPlik.edFldDocChange(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled := NowaLokalizacja;
end;

procedure TFrmPrzeniesPlik.edNazwaChange(Sender: TObject);
begin
  ButtonPanel1.OKButton.Enabled := NowaLokalizacja;
end;

procedure TFrmPrzeniesPlik.FormCloseQuery(Sender: TObject; var CanClose: Boolean
  );
begin
  CanClose:= True;
  if (ModalResult = mrOk) then
  begin
    if (DMG.tbPliki.Locate('ScPl',lbScPoZm.Caption,[])) then
    begin
      MessageDlg('Plik istnieje', 'Plik o takiej nazwie istnieje już we wskazanej lokalizacji.', mtWarning, [mbOk], 0);
      CanClose:= False;
    end;
  end;
end;

function TFrmPrzeniesPlik.NowaLokalizacja: boolean;
{var
  scPl : string;}
begin
  Result := False;
 { if (Trim(edFldDoc.Text) = '') then
  begin
    lbScPoZm.Caption:= 'Brak folderu deocelowego!';
    Exit;
  end; }

  if ((not Assigned(fPlikDBDoc)) or (not fPlikDBDoc.SaDaneFolderu)) then
  begin
    lbScPoZm.Caption := 'Brak folderu deocelowego!';
    Exit;
  end;

  if (Trim(edNazwa.Text) = '') then
  begin
    lbScPoZm.Caption := 'Brak nowej nazwy!';
    Exit;
  end;

  if (not NazwaPlikuOK()) then
  begin
    lbScPoZm.Caption := 'Niewłaściwa nazwa pliku!';
    Exit;
  end;

  if (AnsiUpperCase(fPlikDBZr.AsString) = AnsiUpperCase(fPlikDBDoc.GetFolderPliku + Trim(edNazwa.Text) + fRozszPl)) then
  begin
    lbScPoZm.Caption := 'Plik docelowy identyczny jak źródłowy!';
    Exit;
  end;

  {scPl:= Trim(edFldDoc.Text);
  if LastDelimiter(DirectorySeparator, scPl) <> Length(scPl) then
    scPl:= scPl + DirectorySeparator;
  scPl:= scPl + Trim(edNazwa.Text); }

  lbScPoZm.Caption := fPlikDBDoc.GetFolderPliku + Trim(edNazwa.Text) + fRozszPl;
  //lbScPoZm.Caption:= scPl+fRozszPl;
  Result := True;
end;

function TFrmPrzeniesPlik.GetPlDoc: TPlikDB;
begin
  if (NowaLokalizacja) then
  begin
    fPlikDBDoc.IdPliku:= 0;
    fPlikDBDoc.NazwaPliku:= edNazwa.Text + fRozszPl;
    Result := fPlikDBDoc
  end
  else
    Result := nil;
end;

function TFrmPrzeniesPlik.GetPlZr: TPlikDB;
begin
  Result := fPlikDBZr;
end;

function TFrmPrzeniesPlik.NazwaPlikuOK: boolean;
var
  nazwa: string;
begin
  nazwa := Trim(edNazwa.Text);
  Result := (nazwa <> '') and (Pos(DirectorySeparator, nazwa) < 1);
end;

end.
