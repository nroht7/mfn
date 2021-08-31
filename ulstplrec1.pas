unit ulstplrec;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TPlikRec }

  TPlikRec = class
  private
    fSc : string;
    fId : longint;
  public
    constructor Create(IdPliku:longint; aScPliku: string);

    property Id  : longint read fId write fId;
    property Sciezka : string read fSc write fSc;
  end;

  { TLstPlikowRec }

  TLstPlikowRec = class
  private
    fLstPl : TObjectList;
  public
    constructor Create;
    destructor Destroy;
    function GetRec(id:longint): TPlikRec;
    function GetRec(sciezka: string):TPlikRec;


    property Lista : TObjectList read fLstPl;
  end;

implementation

{ TPlikRec }

constructor TPlikRec.Create(IdPliku: longint; aScPliku: string);
begin
  fId:= IdPliku;
  fSc:= aScPliku;
end;

{ TLstPlikowRec }

constructor TLstPlikowRec.Create;
begin
  fLstPl:= TObjectList.Create;
end;

destructor TLstPlikowRec.Destroy;
begin
  fLstPl.Clear;
  FreeAndNil(fLstPl);
end;

function TLstPlikowRec.GetRec(id: longint): TPlikRec;
begin
  //
end;

function TLstPlikowRec.GetRec(sciezka: string): TPlikRec;
begin
  //
end;

end.

