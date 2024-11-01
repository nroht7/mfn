object FrmKatalogi: TFrmKatalogi
  Left = 458
  Height = 412
  Top = 171
  Width = 550
  Caption = 'Katalogi'
  ClientHeight = 412
  ClientWidth = 550
  LCLVersion = '8.3'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  object ToolBar1: TToolBar
    Left = 0
    Height = 26
    Top = 0
    Width = 550
    Caption = 'ToolBar1'
    Images = DMG.ilCommon
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 1
      Top = 2
      Action = acKatDodaj
    end
    object ToolButton2: TToolButton
      Left = 47
      Top = 2
      Action = acKatUsun
    end
    object ToolButton3: TToolButton
      Left = 78
      Top = 2
      Action = acZamknij
    end
    object ToolButton4: TToolButton
      Left = 70
      Height = 22
      Top = 2
      Caption = 'ToolButton4'
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 24
      Top = 2
      Action = acKatZmien
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 32
    Top = 26
    Width = 550
    Align = alTop
    ClientHeight = 32
    ClientWidth = 550
    TabOrder = 3
    object edFiltr: TEdit
      Left = 1
      Height = 23
      Top = 4
      Width = 522
      Anchors = [akTop, akLeft, akRight]
      TabOrder = 0
      TextHint = '(Filtr)'
      OnEditingDone = edFiltrEditingDone
      OnEnter = edFiltrEnter
    end
    object SpeedButton1: TSpeedButton
      Left = 526
      Height = 23
      Top = 4
      Width = 23
      Action = acFiltrClear
      Anchors = [akTop, akRight]
      Images = DMG.ilCommon
      ImageIndex = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 389
    Width = 550
    Panels = <>
  end
  object DBMemo1: TDBMemo
    Left = 0
    Height = 90
    Top = 299
    Width = 550
    Align = alBottom
    DataField = 'OPISFLD'
    DataSource = DMG.dsKat
    ReadOnly = True
    TabOrder = 1
  end
  object Splitter1: TSplitter
    Cursor = crVSplit
    Left = 0
    Height = 5
    Top = 294
    Width = 550
    Align = alBottom
    ResizeAnchor = akBottom
  end
  object lvKat: TListView
    Left = 0
    Height = 236
    Top = 58
    Width = 550
    Align = alClient
    Columns = <    
      item
        Caption = 'Katalog'
        Width = 500
      end>
    HideSelection = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    RowSelect = True
    SmallImages = DMG.ilCommon
    TabOrder = 0
    ViewStyle = vsReport
    OnSelectItem = lvKatSelectItem
  end
  object ActionList1: TActionList
    Images = DMG.ilCommon
    Left = 368
    Top = 112
    object acKatDodaj: TAction
      Caption = 'Dodaj'
      Hint = 'Dodaj katalog'
      ImageIndex = 20
      ShortCut = 16462
      OnExecute = acKatDodajExecute
    end
    object acKatZmien: TAction
      Caption = 'Zmień'
      ImageIndex = 52
      ShortCut = 16453
      OnExecute = acKatZmienExecute
    end
    object acKatUsun: TAction
      Caption = 'Usuń'
      Hint = 'Usuń katalog'
      ImageIndex = 21
      ShortCut = 16430
      OnExecute = acKatUsunExecute
    end
    object acZamknij: TAction
      Caption = 'Zamknij'
      Hint = 'Zamknij'
      ImageIndex = 19
      ShortCut = 16465
      OnExecute = acZamknijExecute
    end
    object acFiltrClear: TAction
      Hint = 'Usuń filtr'
      ImageIndex = 5
      OnExecute = acFiltrClearExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DMG.ilCommon
    Left = 136
    Top = 175
    object MenuItem1: TMenuItem
      Action = acKatDodaj
      Caption = 'Dodaj...'
    end
    object MenuItem3: TMenuItem
      Action = acKatZmien
    end
    object MenuItem2: TMenuItem
      Action = acKatUsun
    end
  end
end
