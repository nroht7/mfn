object FrmSlPoz: TFrmSlPoz
  Left = 644
  Height = 500
  Top = 257
  Width = 400
  Caption = 'Słownik pozycji'
  ClientHeight = 500
  ClientWidth = 400
  LCLVersion = '8.2'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 477
    Width = 400
    Panels = <>
  end
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 26
    Top = 445
    Width = 388
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 1
    ShowButtons = [pbOK, pbCancel]
    ShowBevel = False
  end
  object lv: TListView
    Left = 0
    Height = 412
    Top = 27
    Width = 400
    Align = alClient
    Checkboxes = True
    Columns = <>
    TabOrder = 2
    OnItemChecked = lvItemChecked
  end
  object pnlFiltr: TPanel
    Left = 0
    Height = 27
    Top = 0
    Width = 400
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 27
    ClientWidth = 400
    TabOrder = 3
    object edNazwa: TEdit
      Left = 4
      Height = 23
      Top = 2
      Width = 370
      Anchors = [akTop, akLeft, akRight]
      TabOrder = 0
      TextHint = 'Nazwa (Ctrl+F)'
      OnKeyDown = edNazwaKeyDown
    end
    object sbnFiltrClear: TSpeedButton
      Left = 376
      Height = 23
      Top = 2
      Width = 23
      Action = acWyczysc
      Anchors = [akTop, akRight]
      Images = DMG.ilCommon
      ImageIndex = 5
      ShowCaption = False
      ShowHint = True
      ParentShowHint = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 109
    Top = 272
  end
  object ActionList1: TActionList
    Images = DMG.ilCommon
    Left = 80
    Top = 361
    object acFiltruj: TAction
      Caption = 'Filtruj'
      ImageIndex = 4
      ShortCut = 16454
      OnExecute = acFiltrujExecute
    end
    object acWyczysc: TAction
      Caption = 'Wyczyść'
      Hint = 'Wyczyść filtr'
      ImageIndex = 5
      ShortCut = 16430
      OnExecute = acWyczyscExecute
    end
    object acGrid: TAction
      Caption = 'acGrid'
      ShortCut = 16455
      OnExecute = acGridExecute
    end
    object acOdswiez: TAction
      Caption = 'Odswież'
      Hint = 'Odśwież'
      ShortCut = 116
      OnExecute = acOdswiezExecute
    end
  end
  object tmr: TTimer
    Interval = 300
    OnTimer = tmrTimer
    Left = 176
    Top = 356
  end
end
