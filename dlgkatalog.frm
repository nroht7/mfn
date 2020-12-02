object FrmKatalog: TFrmKatalog
  Left = 458
  Height = 240
  Top = 171
  Width = 320
  BorderStyle = bsDialog
  Caption = 'Katalog'
  ClientHeight = 240
  ClientWidth = 320
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.2'
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 8
    Width = 43
    Caption = 'Katalog:'
    ParentColor = False
  end
  object Label2: TLabel
    Left = 8
    Height = 15
    Top = 56
    Width = 27
    Caption = 'Opis:'
    ParentColor = False
  end
  object meOpis: TMemo
    Left = 8
    Height = 114
    Top = 72
    Width = 304
    TabOrder = 1
  end
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 200
    Width = 308
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 2
    ShowButtons = [pbOK, pbCancel]
  end
  object deKat: TDirectoryEdit
    Left = 8
    Height = 23
    Top = 24
    Width = 304
    ShowHidden = False
    ButtonWidth = 23
    NumGlyphs = 1
    MaxLength = 0
    TabOrder = 0
    OnChange = deKatChange
  end
end
