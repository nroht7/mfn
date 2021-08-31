unit dlgwlasc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ValEdit, Buttons,
  ComCtrls;

type

  { TFrmWlasc }

  TFrmWlasc = class(TForm)
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ValueListEditor: TValueListEditor;
    procedure FormShow(Sender: TObject);
  private
    procedure OdczytajUstawienia;
  public

  end;

var
  FrmWlasc: TFrmWlasc;

implementation

uses
  dmgl;

{$R *.frm}

{ TFrmWlasc }

procedure TFrmWlasc.FormShow(Sender: TObject);
begin
  OdczytajUstawienia;
end;

procedure TFrmWlasc.OdczytajUstawienia;
begin
  ValueListEditor.Strings.AddPair('Baza danych',DMG.ZConn.Database);
  ValueListEditor.Strings.AddPair('Lokalizacja sqlite3.dll',DMG.ZConn.LibraryLocation);
  ValueListEditor.Strings.AddPair('Katalog okładek',DMG.Ustawienia.Values['okladki']);
  ValueListEditor.Strings.AddPair('Katalog zdjęć aktorów',DMG.Ustawienia.Values['aktorzy']);
end;

end.

