unit dlgfldwyb;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ButtonPanel, ComboEx,
  StdCtrls, ShellCtrls, ComCtrls;

type

  { TFrmWybFld }

  TFrmWybFld = class(TForm)
    ButtonPanel1: TButtonPanel;
    cbxFld: TComboBoxEx;
    Label1: TLabel;
    ShellTreeView1: TShellTreeView;
    procedure cbxFldChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GetWybFld: string;
    function GetWybFldId: longint;
    function GetWybFldSc: string;
    function GetWybKatPod: string;
  public
    property WybranyFolder: string read GetWybFld;
    property WybranyFolderId: longint read GetWybFldId;
    property WybranyFolderSc: string read GetWybFldSc;
    property WybranyKatPod: string read GetWybKatPod;
  end;

var
  FrmWybFld: TFrmWybFld;

implementation

{$R *.frm}

uses
  dmmain, dmgl;

{ TFrmWybFld }

procedure TFrmWybFld.FormShow(Sender: TObject);
begin
  DMG.OdswiezDataSet(DMM.qFld);
  DMG.DataSetToComboBoxExId(DMM.qFld, cbxFld, 'ScFld', 'IdFld', 22);
  if (cbxFld.Items.Count > 0) then
  begin
    cbxFld.ItemIndex := 0;
    ShellTreeView1.Root := cbxFld.ItemsEx[cbxFld.ItemIndex].Caption;
  end;
end;

function TFrmWybFld.GetWybFld: string;
var
  node: TTreeNode;
begin
  Result := '';
  if (cbxFld.ItemsEx.Count > 0) then
  begin
    node := ShellTreeView1.Selected;
    if Assigned(node) then
    begin
      Result := node.GetTextPath.Replace(DirectorySeparator + DirectorySeparator, DirectorySeparator, [rfReplaceAll]);
    end
    else
    begin
      Result := cbxFld.ItemsEx[cbxFld.ItemIndex].Caption;
    end;
  end;
end;

function TFrmWybFld.GetWybFldId: longint;
var
  ItemInfo: TItemInfo;
begin
  Result := 0;
  if (cbxFld.ItemsEx.Count > 0) then
  begin
    ItemInfo := TItemInfo(cbxFld.ItemsEx[cbxFld.ItemIndex].Data);
    Result := ItemInfo.Id;
  end;
end;

function TFrmWybFld.GetWybFldSc: string;
begin
  Result := '';
  if (cbxFld.ItemsEx.Count > 0) then
  begin
    Result := cbxFld.ItemsEx[cbxFld.ItemIndex].Caption;
  end;
end;

function TFrmWybFld.GetWybKatPod: string;
var
  node: TTreeNode;
begin
  Result := '';
  if (cbxFld.ItemsEx.Count > 0) then
  begin
    node := ShellTreeView1.Selected;
    if (Assigned(node) and (node.AbsoluteIndex > 0)) then
    begin
      // Działa przy założeniu że część dotycząca katalogu bazowego kończy się na \\ (podwójny separator)
      // jeśli to się zmieni trzeba oddzielać katalog bazowy inną metodą
      Result := Copy(node.GetTextPath, Pos(DirectorySeparator + DirectorySeparator, node.GetTextPath) + 2, Length(node.GetTextPath));
    end;
  end;
end;

procedure TFrmWybFld.cbxFldChange(Sender: TObject);
begin
  //FileListBox1.Directory:= cbxFld.ItemsEx[cbxFld.ItemIndex].Caption;
  ShellTreeView1.Root := cbxFld.ItemsEx[cbxFld.ItemIndex].Caption;
end;

end.
