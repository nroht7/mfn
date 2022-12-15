unit functrls;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ComCtrls, umgrpoz, upozsl;

function ListViewAllItemIsCheck(ListView: TListView; CaptionBegin: string): boolean;
function ListViewSetStateAllItem(ListView: TListView; CaptionBegin: string; State: boolean): integer;
function ListViewGetItem(ListView: TListView; Caption: string): TListItem;
function ListViewSetStateItem(ListView: TListView; Caption: string; State: boolean): boolean;

function ListViewMgrPozSetStateAllItem(ListView: TListView; mgrPoz: TManagerPozycji; CaptionBegin: string; State: boolean): integer;
function MgrPozSetStateAllItem(mgrPoz: TManagerPozycji; NameBegin: string; State: boolean): integer;


implementation

function ListViewAllItemIsCheck(ListView: TListView; CaptionBegin: string): boolean;
var
  item: TListItem;
  i: integer;
begin
  CaptionBegin := AnsiUpperCase(Trim(CaptionBegin));
  Result := False;
  if (Assigned(ListView) and (CaptionBegin <> '')) then
  begin
    Result := True;
    for i := 0 to ListView.Items.Count - 1 do
    begin
      item := ListView.Items.Item[i];
      if (Copy(AnsiUpperCase(item.Caption), 1, Length(CaptionBegin)) = CaptionBegin) and (not item.Checked) then
      begin
        Result := False;
        break;
      end;
    end;
  end;
end;

function ListViewSetStateAllItem(ListView: TListView; CaptionBegin: string; State: boolean): integer;
var
  item: TListItem;
  i: integer;
begin
  CaptionBegin := AnsiUpperCase(Trim(CaptionBegin));
  Result := 0;
  if (Assigned(ListView) and (CaptionBegin <> '')) then
  begin
    for i := 0 to ListView.Items.Count - 1 do
    begin
      item := ListView.Items.Item[i];
      if (Copy(AnsiUpperCase(item.Caption), 1, Length(CaptionBegin)) = CaptionBegin) and (item.Checked <> State) then
      begin
        item.Checked := State;
        Inc(Result);
      end;
    end;
  end;
end;

function ListViewGetItem(ListView: TListView; Caption: string): TListItem;
var
  item: TListItem;
  i: integer;
begin
  Result := nil;
  Caption := AnsiUpperCase(Trim(Caption));
  if (Assigned(ListView) and (Caption <> '')) then
  begin
    for i := 0 to ListView.Items.Count - 1 do
    begin
      item := ListView.Items.Item[i];
      if (Copy(AnsiUpperCase(item.Caption), 1, Length(Caption)) = Caption) then
      begin
        Result := item;
        break;
      end;
    end;
  end;
end;

function ListViewSetStateItem(ListView: TListView; Caption: string; State: boolean): boolean;
var
  item: TListItem;
  i: integer;
begin
  Caption := AnsiUpperCase(Trim(Caption));
  Result := False;
  if (Assigned(ListView) and (Caption <> '')) then
  begin
    for i := 0 to ListView.Items.Count - 1 do
    begin
      item := ListView.Items.Item[i];
      if (Copy(AnsiUpperCase(item.Caption), 1, Length(Caption)) = Caption) and (item.Checked <> State) then
      begin
        item.Checked := State;
        Result := True;
        break;
      end;
    end;
  end;
end;

function ListViewMgrPozSetStateAllItem(ListView: TListView; mgrPoz: TManagerPozycji; CaptionBegin: string; State: boolean): integer;
var
  item: TListItem;
  i: integer;
  id: integer;
  poz: TPozycjaSlownika;
begin
  CaptionBegin := AnsiUpperCase(Trim(CaptionBegin));
  Result := 0;
  if (Assigned(ListView) and (Assigned(mgrPoz)) and (CaptionBegin <> '')) then
  begin
    for i := 0 to ListView.Items.Count - 1 do
    begin
      item := ListView.Items.Item[i];
      if (Copy(AnsiUpperCase(item.Caption), 1, Length(CaptionBegin)) = CaptionBegin) and (item.Checked <> State) then
      begin
        item.Checked := State;
        id := StrToInt(item.SubItems.Strings[0]);
        poz := mgrPoz.GetPozycjaWgId(id);
        poz.Zaznaczona := item.Checked;

        Inc(Result);
      end;
    end;
  end;
end;

function MgrPozSetStateAllItem(mgrPoz: TManagerPozycji; NameBegin: string; State: boolean): integer;
var
  i: integer;
  poz: TPozycjaSlownika;
begin
  NameBegin := AnsiUpperCase(Trim(NameBegin));
  Result := 0;
  if ((Assigned(mgrPoz)) and (NameBegin <> '')) then
  begin
    for i := 0 to mgrPoz.IloscWszystkichPozycji - 1 do
    begin
      poz := mgrPoz.Pozycja[i];

      if (Copy(AnsiUpperCase(poz.Nazwa), 1, Length(NameBegin)) = NameBegin) and (poz.Zaznaczona <> State) then
      begin
        poz.Zaznaczona := State;
        Inc(Result);
      end;
    end;
  end;
end;

end.
