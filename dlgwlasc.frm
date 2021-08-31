object FrmWlasc: TFrmWlasc
  Left = 472
  Height = 300
  Top = 171
  Width = 600
  Caption = 'Właściwości'
  ClientHeight = 300
  ClientWidth = 600
  OnShow = FormShow
  LCLVersion = '7.3'
  object BitBtn1: TBitBtn
    Left = 517
    Height = 30
    Top = 264
    Width = 75
    DefaultCaption = True
    Kind = bkClose
    ModalResult = 11
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 8
    Height = 248
    Top = 8
    Width = 584
    ActivePage = TabSheet1
    Anchors = [akTop, akLeft, akRight, akBottom]
    TabIndex = 0
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Ustawienia'
      ClientHeight = 220
      ClientWidth = 576
      object ValueListEditor: TValueListEditor
        Left = 4
        Height = 208
        Top = 8
        Width = 564
        Anchors = [akTop, akLeft, akRight, akBottom]
        DefaultColWidth = 150
        FixedCols = 0
        RowCount = 2
        TabOrder = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAlwaysShowEditor, goThumbTracking]
        TitleCaptions.Strings = (
          'Element'
          'Wartość'
        )
        ColWidths = (
          150
          410
        )
      end
    end
  end
end
