unit upozsl;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TPozycjaSlownika }

  TPozycjaSlownika = class
  private
    fIdPoz : longint;
    fNazwaPoz : string;
    fZaznaczona : boolean;
  public
    constructor Create(AId : longint; ANazwa: string);

    property NrId : longint read fIdPoz;
    property Nazwa : string read fNazwaPoz write fNazwaPoz;
    property Zaznaczona : boolean read fZaznaczona write fZaznaczona;
  end;

implementation

{ TPozycjaSlownika }

constructor TPozycjaSlownika.Create(AId: longint; ANazwa: string);
begin
  fIdPoz:= AId;
  fNazwaPoz:= ANazwa;
end;

end.

