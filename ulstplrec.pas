unit ulstplrec;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, contnrs, md5, funkcje;

type

  { TPlikRec }

  TPlikRec = class
    fId:  longint;
    fSc:  string;
    fCrc: string;
    fMd5: string;
  public
    constructor Create(IdPliku: longint; ScPliku: string);
    function JestCrc: boolean;
    function CrcZgodne(Crc32: string): boolean;
    function ObliczCrc32(Force: boolean = False): boolean;
    function ObliczMd5(Force: boolean = False): boolean;

    property Id: longint Read fId;
    property Sciezka: string Read fSc;
    property Crc32Hash: string Read fCrc Write fCrc;
    property Md5Hash: string Read fMd5 Write fMd5;
  end;

  { TLstPlikowRec }

  TLstPlikowRec = class
  private
    fLstPl: TObjectList;
  public
    constructor Create;
    destructor Destroy; override;
    function GetRec(Id: longint): TPlikRec; overload;
    function GetRec(Sc: string): TPlikRec; overload;
    function DodajPlik(Id: longint; sc: string): integer; overload;
    function DodajPlik(Plik: TPlikRec): integer; overload;
    function UsunPlik(Id: longint): boolean;

    property Lista: TObjectList Read fLstPl;
  end;

implementation

{ TLstPlikowRec }

constructor TLstPlikowRec.Create;
begin
  inherited;

  fLstPl := TObjectList.Create(True);
end;

destructor TLstPlikowRec.Destroy;
begin
  fLstPl.Clear;
  FreeAndNil(fLstPl);

  inherited;
end;

function TLstPlikowRec.GetRec(Id: longint): TPlikRec;
var
  i: integer;
  plRec: TPlikRec;
begin
  Result := nil;

  for i := 0 to fLstPl.Count - 1 do
  begin
    plRec := TPlikRec(fLstPl.Items[i]);
    if plRec.Id = Id then
    begin
      Result := plRec;
      break;
    end;
  end;
end;

function TLstPlikowRec.GetRec(Sc: string): TPlikRec;
var
  i: integer;
  plRec: TPlikRec;
begin
  Result := nil;

  for i := 0 to fLstPl.Count - 1 do
  begin
    plRec := TPlikRec(fLstPl.Items[i]);
    if UpperCase(plRec.Sciezka) = UpperCase(Sc) then
    begin
      Result := plRec;
      break;
    end;
  end;
end;

function TLstPlikowRec.DodajPlik(Id: longint; sc: string): integer;
var
  plRec: TPlikRec;
begin
  Result := -1;
  if (GetRec(Id) = nil) then
  begin
    plRec  := TPlikRec.Create(Id, sc);
    Result := fLstPl.Add(plRec);
  end;
end;

function TLstPlikowRec.DodajPlik(Plik: TPlikRec): integer;
begin
  Result := -1;
  if ((Assigned(Plik)) and (GetRec(Plik.Id) = nil)) then
  begin
    Result := fLstPl.Add(Plik);
  end;
end;

function TLstPlikowRec.UsunPlik(Id: longint): boolean;
var
  plRec: TPlikRec;
begin
  Result := False;
  plRec  := GetRec(Id);
  if (plRec <> nil) then
  begin
    Result := (fLstPl.Remove(plRec) >= 0);
  end;
end;

{ TPlikRec }

constructor TPlikRec.Create(IdPliku: longint; ScPliku: string);
begin
  fId := IdPliku;
  fSc := ScPliku;
end;

function TPlikRec.JestCrc: boolean;
begin
  Result := fCrc <> '';
end;

function TPlikRec.CrcZgodne(Crc32: string): boolean;
begin
  Result := ((fCrc <> '') and (UpperCase(fCrc) = UpperCase(Crc32)));
end;

function TPlikRec.ObliczCrc32(Force: boolean): boolean;
begin
  Result := False;
  if ((fSc <> '') and ((Force) or (fCrc = ''))) then
  begin
    fCrc := CrcFileStr(plik);
    Result := True;
  end;
end;

function TPlikRec.ObliczMd5(Force: boolean): boolean;
begin
  Result := False;
  if ((fSc <> '') and ((Force) or (fMd5 = ''))) then
  begin
    fMd5 := MD5Print(MD5File(fSc));
    Result := True;
  end;
end;

end.
