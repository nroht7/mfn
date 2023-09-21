unit dlgpostprzpl;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls, upldb;

type

  { TFrmPostepPrzenPl }

  TFrmPostepPrzenPl = class(TForm)
    btnAnuluj: TButton;
    Button1: TButton;
    Label1: TLabel;
    lbInfo: TLabel;
    lbZr: TLabel;
    lbDoc: TLabel;
    lbPostep: TLabel;
    ProgressBar: TProgressBar;
    procedure btnAnulujClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    fPlZr: TPlikDB;
    fPlDoc: TPlikDB;
    fAnuluj: boolean;

    function CopyFile(const SrcFileName, DstFileName: string): boolean;
  public
    constructor Create(AOwner: TComponent); override;
    constructor CreatePrzenies(AOwner: TComponent; PlikZrodlowy, PlikDocelowy: TPlikDB);

    function PrzeniesPlik(): boolean;
    function GetPosition(CurrPos, MaxPos: int64): integer; inline;

  end;

var
  FrmPostepPrzenPl: TFrmPostepPrzenPl;

implementation

{$R *.frm}

uses
  funpl, ubyteconv, dmmain;

{ TFrmPostepPrzenPl }

constructor TFrmPostepPrzenPl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  raise Exception.Create('Użyto niewłaściwego konstuktora');
end;

constructor TFrmPostepPrzenPl.CreatePrzenies(AOwner: TComponent; PlikZrodlowy, PlikDocelowy: TPlikDB);
begin
  inherited Create(AOwner);
  fPlZr := PlikZrodlowy;
  fPlDoc := PlikDocelowy;
end;

function TFrmPostepPrzenPl.PrzeniesPlik(): boolean;
var
  Crc32Sum: string;
  kom : string;
begin
  fAnuluj := False;
  lbInfo.Caption := 'Kopiowanie pliku...';
  Application.ProcessMessages;

  Result := CopyFile(fPlZr.AsString, fPlDoc.AsString);
  if (Result) then
  begin
    fAnuluj := False;
    if (fPlZr.Crc32 = '') then
    begin
      lbInfo.Caption := 'weryfikacja (obliczanie sumy kontrolnej źródłowego)...';
      Application.ProcessMessages;
      fPlZr.Crc32 := IntToHex(Crc32File(fPlZr.AsString), 8);
    end;
    lbInfo.Caption := 'Weryfikacja pliku...';
    Application.ProcessMessages;
    Crc32Sum := IntToHex(Crc32File(fPlDoc.AsString), 8);

    if (LowerCase(Crc32Sum) <> LowerCase(fPlZr.Crc32)) then
    begin
      lbInfo.Caption := 'Błędna suma kontrolna - kopiowanie pliku nieudane';
      Application.ProcessMessages;
      DeleteFile(fPlDoc.AsString);
      Result := False;
      Exit;
    end;

    if (DMM.PrzeniesPlik(fPlZr.IdPliku, fPlDoc, kom)) then
    begin
      //DeleteFile(fPlZr.AsString);
      lbInfo.Caption := 'Koniec ' + Crc32Sum;
      Result:= True;
    end
    else
    begin
      lbInfo.Caption := 'Przenoszenie pliku nieudane - błąd bazy danych - ' + kom;
      Application.ProcessMessages;
      //DeleteFile(fPlDoc.AsString);
      Result := False;

    end;
  end
  else
  begin
    lbInfo.Caption := 'Kopiowanie nieudane';
    Application.ProcessMessages;
    //DeleteFile(fPlDoc.AsString);
  end;
end;

function TFrmPostepPrzenPl.GetPosition(CurrPos, MaxPos: int64): integer;
begin
  Result := (CurrPos * ProgressBar.Max) div MaxPos;
end;

function TFrmPostepPrzenPl.CopyFile(const SrcFileName, DstFileName: string): boolean;
var
  Src, Dst: file;
  Buf: array of byte;
  ReadBytes: int64;
  PlZrRozmiar: int64;
  SumReadBytes: int64;
begin
  SumReadBytes := 0;
  AssignFile(Src, SrcFileName);
  {$PUSH}
  {$I-}
  Reset(Src, 1);
  {$POP}
  if IOResult <> 0 then
    Exit(False);

  PlZrRozmiar := FileSize(Src);
  AssignFile(Dst, DstFileName);
  {$PUSH}
  {$I-}
  Rewrite(Dst, 1);
  {$POP}
  if IOResult <> 0 then
  begin
    CloseFile(Src);
    Exit(False);
  end;

  SetLength(Buf, 16 * 1024 * 1024);
  while not EOF(Src) do
  begin
    {$PUSH}
    {$I-}
    BlockRead(Src, Buf[0], Length(Buf), ReadBytes);
    {$POP}
    if IOResult <> 0 then
    begin
      CloseFile(Src);
      CloseFile(Dst);
      Exit(False);
    end;
    SumReadBytes := SumReadBytes + ReadBytes;

    {$PUSH}
    {$I-}
    BlockWrite(Dst, Buf[0], ReadBytes);
    {$POP}
    if IOResult <> 0 then
    begin
      CloseFile(Src);
      CloseFile(Dst);
      Exit(False);
    end;

    ProgressBar.Position := GetPosition(SumReadBytes, PlZrRozmiar);
    lbPostep.Caption := Format('%s z %s', [ByteToAutoSize(SumReadBytes, 1), ByteToAutoSize(PlZrRozmiar, 1)]);
    Label1.Caption := IntToStr(ProgressBar.Position);
    Application.ProcessMessages;
    if (fAnuluj) then
    begin
      CloseFile(Src);
      CloseFile(Dst);
      Exit(False);
    end;
  end;

  CloseFile(Src);
  CloseFile(Dst);
  Exit(True);
end;

procedure TFrmPostepPrzenPl.FormShow(Sender: TObject);
begin
  lbZr.Caption := Format('Z: %s', [fPlZr.AsString]);
  lbDoc.Caption := Format('Do: %s', [fPlDoc.AsString]);
end;

procedure TFrmPostepPrzenPl.Button1Click(Sender: TObject);
begin
  PrzeniesPlik();
end;

procedure TFrmPostepPrzenPl.btnAnulujClick(Sender: TObject);
begin
  fAnuluj := True;
end;

end.
