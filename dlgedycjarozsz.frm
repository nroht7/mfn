object FrmEdRozsz: TFrmEdRozsz
  Left = 458
  Height = 214
  Top = 171
  Width = 400
  Caption = 'Nowe rozszerzenie '
  ClientHeight = 214
  ClientWidth = 400
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.3'
  object cbeIkony: TComboBoxEx
    Left = 292
    Height = 22
    Top = 25
    Width = 100
    Images = DMG.ilRozszPl
    ItemHeight = 16
    ItemsEx = <>
    TabOrder = 1
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 8
    Width = 69
    Caption = 'Rozszerzenie:'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 292
    Height = 15
    Top = 8
    Width = 32
    Caption = 'Ikona:'
    ParentColor = False
  end
  object Label3: TLabel
    Left = 8
    Height = 15
    Top = 56
    Width = 27
    Caption = 'Opis:'
    ParentColor = False
  end
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 174
    Width = 388
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    OKButton.OnClick = OKButtonClick
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 3
    ShowButtons = [pbOK, pbCancel]
  end
  object edNazwa: TEdit
    Left = 8
    Height = 23
    Top = 25
    Width = 272
    TabOrder = 0
  end
  object meOpis: TMemo
    Left = 8
    Height = 90
    Top = 72
    Width = 384
    ScrollBars = ssVertical
    TabOrder = 2
  end
end
