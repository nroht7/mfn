unit udirseqhld;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Contnrs;

type

  { TDirSeq }

  TDirSeq = class
  private
    fId: integer;
    fOwnerId: integer;
    fDirectoryId: integer;
    fName: string;
    fCompareName: string;

    function GetCompareName: string;
  public
    constructor Create(AId, AOwnerId, ADirId: integer; AName, ACompareName: string);

    property Id: integer read fId write fId;
    property OwnerId: integer read fOwnerId write fOwnerId;
    property DirectoryId: integer read fDirectoryId write fDirectoryId;
    property Name: string read fName write fName;
    property CompareName: string read GetCompareName write fCompareName;
  end;

  { TDirSeqHolder }

  TDirSeqHolder = class
  private
    fCurrentId: integer;
    fCurrentDir: TDirSeq;
    fLstDir: TObjectList;
    fCaseSensitive: boolean;

    function GetFullPathCurrDirStr: string;
    function GetNextId: integer;
    function GetSeqDirById(AId: integer): TDirSeq;
    function SetCompareName(ANAME: string): string;
    function AddDir(AOwnerDir: TDirSeq; AName: string; ADirId: integer): TDirSeq;

    function DirExists(AOwnerDir: TDirSeq; AName: string): boolean;
    function GetOwnerDir(ADir: TDirSeq): TDirSeq;
    function FullPathDirStr(ADir: TDirSeq): string;
    function GetSeqDir(Aoid: integer; AName: string): TDirSeq;
    function GetSubDirs(ADir: TDirSeq; var ALstSubDirs: TObjectList): boolean;
    function GetOwnerDirId(ADir: TDirSeq): integer;
    function GetDirId(ADir: TDirSeq): integer;
  public
    constructor Create;
    destructor Destroy; override;

    function GoRootDir: boolean;
    function GoDownDir(AName: string): boolean;
    function GoUpDir: boolean;
    function SetCurrentDir(AName: string): boolean;
    function GetCurrentSubDir(var ALstSubDirs: TObjectList): boolean;
    function GetCurrentSubDirStr(var ALstSubDirs: TStringList): boolean;
    function UpDirAvailable: boolean;

    function AddRootPath(APath: string; ADirId: integer): TDirSeq;
    function AddPath(AOwnerDir: TDirSeq; APath: string): TDirSeq;

    property CurrentDir: TDirSeq read fCurrentDir;
    property FullPathCurrentDirString: string read GetFullPathCurrDirStr;
    property CaseSensitive: boolean read fCaseSensitive write fCaseSensitive;
  end;

implementation

{ TDirSeq }

function TDirSeq.GetCompareName: string;
begin
  if fCompareName <> '' then
    Result := fCompareName
  else
    Result := fName;
end;

constructor TDirSeq.Create(AId, AOwnerId, ADirId: integer; AName, ACompareName: string);
begin
  fId := AId;
  fOwnerId := AOwnerId;
  fDirectoryId:= ADirId;
  fName := AName;
  fCompareName := ACompareName;
end;

{ TDirSeqHolder }

constructor TDirSeqHolder.Create;
begin
  fCurrentId := 0;
  fCurrentDir := nil;
  fCaseSensitive := False;
  fLstDir := TObjectList.Create;
end;

destructor TDirSeqHolder.Destroy;
begin
  fLstDir.Clear;
  FreeAndNil(fLstDir);

  inherited Destroy;
end;

function TDirSeqHolder.GoRootDir: boolean;
begin
  Result := False;
  if (Assigned(fCurrentDir)) then
  begin
    fCurrentDir := nil;
    Result := False;
  end;
end;

function TDirSeqHolder.GoDownDir(AName: string): boolean;
var
  idDir: integer;
  kat: TDirSeq;
begin
  Result := False;
  if (Assigned(fCurrentDir)) then
    idDir := fCurrentDir.Id
  else
    idDir := 0;

  kat := GetSeqDir(idDir, AName);
  if (Assigned(kat)) then
  begin
    fCurrentDir := kat;
    Result := True;
  end;
end;

function TDirSeqHolder.GoUpDir: boolean;
begin
  Result := False;
  if (Assigned(fCurrentDir)) then
  begin
    fCurrentDir := GetOwnerDir(fCurrentDir);
    Result := True;
  end;
end;

function TDirSeqHolder.SetCurrentDir(AName: string): boolean;
var
  oid: integer;
  fld: TDirSeq;
  i: integer;
  compName: string;
begin
  Result := False;
  compName := SetCompareName(AName);
  oid := GetOwnerDirId(fCurrentDir);
  for i := 0 to fLstDir.Count - 1 do
  begin
    fld := TDirSeq(fLstDir.Items[i]);
    if (fld.Id = oid) and (fld.CompareName = compName) then
    begin
      fCurrentDir := fld;
      Result := True;
      break;
    end;
  end;
end;

function TDirSeqHolder.GetCurrentSubDir(var ALstSubDirs: TObjectList): boolean;
begin
  Result := GetSubDirs(fCurrentDir, ALstSubDirs);
end;

function TDirSeqHolder.GetCurrentSubDirStr(var ALstSubDirs: TStringList): boolean;
var
  kat: TDirSeq;
  i: integer;
  oid: integer;
begin
  Result := False;
  if (Assigned(ALstSubDirs)) then
  begin
    ALstSubDirs.Clear;
    oid := GetDirId(fCurrentDir);

    for i := 0 to fLstDir.Count - 1 do
    begin
      kat := TDirSeq(fLstDir.Items[i]);
      if (kat.OwnerId = oid) then
      begin
        ALstSubDirs.Add(kat.Name);
      end;
    end;
  end;
end;

function TDirSeqHolder.UpDirAvailable: boolean;
begin
  Result := Assigned(fCurrentDir);
end;

function TDirSeqHolder.AddDir(AOwnerDir: TDirSeq; AName: string; ADirId: integer): TDirSeq;
var
  nDir: TDirSeq;
  id, oid: integer;
  compName: string;
begin
  Result := nil;

  if (Assigned(AOwnerDir)) then
    oid := AOwnerDir.Id
  else
    oid := 0;

  nDir := GetSeqDir(oid, AName);
  if (nDir = nil) then
  begin
    id := GetNextId;
    if fCaseSensitive then
      compName := AName
    else
      compName := AnsiUpperCase(AName);

    nDir := TDirSeq.Create(id, oid, ADirId, AName, compName);
    fLstDir.Add(nDir);
  end;
  Result := nDir;
end;

function TDirSeqHolder.DirExists(AOwnerDir: TDirSeq; AName: string): boolean;
begin
  Result := False;
  if (Assigned(AOwnerDir)) then
    Result := GetSeqDir(AOwnerDir.Id, AName) <> nil
  else
    Result := GetSeqDir(0, AName) <> nil;
end;

function TDirSeqHolder.AddRootPath(APath: string; ADirId: integer): TDirSeq;
var
  strPathLst: TStringList;
  currDir: TDirSeq;
  i: integer;
  s: string;
begin
  currDir := nil;
  strPathLst := TStringList.Create;
  try
    strPathLst.CaseSensitive := fCaseSensitive;
    strPathLst.Delimiter := DirectorySeparator;
    strPathLst.StrictDelimiter := True;

    strPathLst.DelimitedText := APath;

    if (strPathLst.Count > 0) then
    begin
      currDir := AddDir(nil, strPathLst.Strings[0], ADirId);
    end;
    if (strPathLst.Count > 1) then
    begin
      for i := 1 to strPathLst.Count - 1 do
      begin
        s := strPathLst.Strings[i];
        if (s <> '') then
          currDir := AddDir(currDir, s, ADirId);
      end;
    end;
  finally
    strPathLst.Clear;
    FreeAndNil(strPathLst);
  end;
  Result := currDir;
end;

function TDirSeqHolder.AddPath(AOwnerDir: TDirSeq; APath: string): TDirSeq;
var
  strPathLst: TStringList;
  currDir: TDirSeq;
  i: integer;
  s: string;
begin
  if (Assigned(AOwnerDir)) then
  begin

    currDir := AOwnerDir;
    strPathLst := TStringList.Create;
    try
      strPathLst.CaseSensitive := fCaseSensitive;
      strPathLst.Delimiter := DirectorySeparator;
      strPathLst.StrictDelimiter := True;

      strPathLst.DelimitedText := APath;

      if (strPathLst.Count > 0) then
      begin
        for i := 0 to strPathLst.Count - 1 do
        begin
          s := strPathLst.Strings[i];
          if (s <> '') then
            currDir := AddDir(currDir, s, AOwnerDir.DirectoryId);
        end;
      end;
    finally
      strPathLst.Clear;
      FreeAndNil(strPathLst);
    end;
    Result := currDir;

  end
  else
  begin
    Result := AddRootPath(APath, 0);
  end;
end;

function TDirSeqHolder.GetOwnerDir(ADir: TDirSeq): TDirSeq;
begin
  Result := nil;

  if (Assigned(ADir)) then
  begin
    Result := GetSeqDirById(ADir.OwnerId);
  end;
end;

function TDirSeqHolder.FullPathDirStr(ADir: TDirSeq): string;
var
  kat: TDirSeq;
begin
  Result := '';
  if (Assigned(ADir)) then
  begin
    Result := ADir.Name;
    kat := GetOwnerDir(ADir);
    while Assigned(kat) do
    begin
      Result := kat.Name + DirectorySeparator + Result;
      kat := GetOwnerDir(kat);
    end;
  end;
end;

function TDirSeqHolder.GetSubDirs(ADir: TDirSeq; var ALstSubDirs: TObjectList): boolean;
var
  kat, nKat: TDirSeq;
  i: integer;
  oid: integer;
begin
  Result := False;
  if (Assigned(ALstSubDirs)) then
  begin
    ALstSubDirs.Clear;

    oid := GetDirId(ADir);

    for i := 0 to fLstDir.Count - 1 do
    begin
      kat := TDirSeq(fLstDir.Items[i]);
      if (kat.OwnerId = oid) then
      begin
        nKat := TDirSeq.Create(kat.Id, kat.OwnerId, kat.DirectoryId, kat.Name, kat.CompareName);
        ALstSubDirs.Add(nKat);
      end;
    end;
  end;
end;

function TDirSeqHolder.GetOwnerDirId(ADir: TDirSeq): integer;
begin
  if (Assigned(ADir)) then
    Result := ADir.OwnerId
  else
    Result := 0;
end;

function TDirSeqHolder.GetDirId(ADir: TDirSeq): integer;
begin
  if (Assigned(ADir)) then
    Result := ADir.Id
  else
    Result := 0;
end;

function TDirSeqHolder.GetNextId: integer;
begin
  Inc(fCurrentId);
  Result := fCurrentId;
end;

function TDirSeqHolder.GetFullPathCurrDirStr: string;
begin
  Result := FullPathDirStr(fCurrentDir);
end;

function TDirSeqHolder.GetSeqDir(Aoid: integer; AName: string): TDirSeq;
var
  kat: TDirSeq;
  dirName: string;
  i: integer;
begin
  Result := nil;
  dirName := SetCompareName(AName);

  for i := 0 to fLstDir.Count - 1 do
  begin
    kat := TDirSeq(fLstDir.Items[i]);
    if (kat.OwnerId = Aoid) and (kat.CompareName = dirName) then
    begin
      Result := kat;
      break;
    end;
  end;
end;

function TDirSeqHolder.GetSeqDirById(AId: integer): TDirSeq;
var
  kat: TDirSeq;
  i: integer;
begin
  Result := nil;

  for i := 0 to fLstDir.Count - 1 do
  begin
    kat := TDirSeq(fLstDir.Items[i]);
    if (kat.Id = AId) then
    begin
      Result := kat;
      break;
    end;
  end;
end;

function TDirSeqHolder.SetCompareName(ANAME: string): string;
begin
  if fCaseSensitive then
    Result := AName
  else
    Result := AnsiUpperCase(AName);
end;

end.
