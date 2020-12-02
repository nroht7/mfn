object FrmPozSlownika: TFrmPozSlownika
  Left = 472
  Height = 240
  Top = 171
  Width = 320
  BorderStyle = bsDialog
  Caption = 'Pozycja słownika'
  ClientHeight = 240
  ClientWidth = 320
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.2'
  object edNazwa: TEdit
    Left = 8
    Height = 23
    Top = 24
    Width = 304
    OnChange = edNazwaChange
    TabOrder = 0
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 8
    Width = 38
    Caption = '&Nazwa:'
    FocusControl = edNazwa
    ParentColor = False
  end
  object Label2: TLabel
    Left = 8
    Height = 15
    Top = 56
    Width = 27
    Caption = '&Opis:'
    FocusControl = meOpis
    ParentColor = False
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
  object meOpis: TMemo
    Left = 8
    Height = 122
    Top = 72
    Width = 304
    ScrollBars = ssAutoBoth
    TabOrder = 1
  end
end
