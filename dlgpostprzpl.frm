object FrmPostepPrzenPl: TFrmPostepPrzenPl
  AnchorSideRight.Side = asrCenter
  Left = 486
  Height = 150
  Top = 171
  Width = 640
  BorderStyle = bsDialog
  Caption = 'Przenoszenie pliku'
  ClientHeight = 150
  ClientWidth = 640
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '8.0'
  object lbZr: TLabel
    Left = 8
    Height = 15
    Top = 8
    Width = 10
    Caption = 'Z:'
  end
  object lbDoc: TLabel
    Left = 8
    Height = 15
    Top = 24
    Width = 18
    Caption = 'Do:'
  end
  object ProgressBar: TProgressBar
    Left = 8
    Height = 20
    Top = 80
    Width = 624
    TabOrder = 0
  end
  object btnAnuluj: TButton
    AnchorSideRight.Side = asrCenter
    Left = 283
    Height = 25
    Top = 112
    Width = 75
    Caption = 'Anuluj'
    OnClick = btnAnulujClick
    TabOrder = 1
  end
  object lbPostep: TLabel
    Left = 584
    Height = 15
    Top = 112
    Width = 46
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'lbPostep'
  end
  object Button1: TButton
    Left = 48
    Height = 25
    Top = 112
    Width = 75
    Caption = 'Button1'
    OnClick = Button1Click
    TabOrder = 2
  end
  object lbInfo: TLabel
    Left = 8
    Height = 15
    Top = 64
    Width = 31
    Caption = 'lbInfo'
  end
  object Label1: TLabel
    Left = 8
    Height = 15
    Top = 45
    Width = 34
    Caption = 'Label1'
  end
end
