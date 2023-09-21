object FrmWybFld: TFrmWybFld
  Left = 486
  Height = 260
  Top = 171
  Width = 450
  Caption = 'Wybór folderu'
  ClientHeight = 260
  ClientWidth = 450
  OnShow = FormShow
  LCLVersion = '8.0'
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 220
    Width = 438
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 0
    ShowButtons = [pbOK, pbCancel]
  end
  object cbxFld: TComboBoxEx
    Left = 8
    Height = 22
    Top = 24
    Width = 434
    Anchors = [akTop, akLeft, akRight]
    Images = DMG.ilCommon
    ItemHeight = 16
    ItemsEx = <>
    OnChange = cbxFldChange
    TabOrder = 1
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 8
    Width = 133
    Caption = 'Wybierz folder docelowy:'
  end
  object ShellTreeView1: TShellTreeView
    Left = 8
    Height = 160
    Top = 56
    Width = 434
    Anchors = [akTop, akLeft, akRight, akBottom]
    FileSortType = fstNone
    HideSelection = False
    RowSelect = True
    ShowRoot = False
    TabOrder = 2
    Options = [tvoAutoItemHeight, tvoKeepCollapsedNodes, tvoRowSelect, tvoShowButtons, tvoShowLines, tvoToolTips, tvoThemedDraw]
    ObjectTypes = [otFolders]
  end
end
