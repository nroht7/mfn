object FrmHistPliku: TFrmHistPliku
  Left = 486
  Height = 400
  Top = 171
  Width = 320
  Caption = 'Historia odtwarzań pliku'
  ClientHeight = 400
  ClientWidth = 320
  OnCreate = FormCreate
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '8.0'
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 360
    Width = 308
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 0
    ShowButtons = [pbClose]
  end
  object pnlInfo: TPanel
    Left = 0
    Height = 40
    Top = 0
    Width = 320
    Align = alTop
    ClientHeight = 40
    ClientWidth = 320
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 0
      Width = 22
      Caption = 'Plik:'
    end
    object lbIlosc: TLabel
      Left = 280
      Height = 15
      Top = 0
      Width = 36
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Ilość: 0'
    end
    object lbNazwaPliku: TLabel
      Left = 8
      Height = 15
      Top = 16
      Width = 308
      Anchors = [akTop, akLeft, akRight]
      AutoSize = False
      Caption = 'lbNazwaPliku'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object TabControl1: TTabControl
    Left = 0
    Height = 299
    Top = 40
    Width = 320
    OnChange = TabControl1Change
    TabIndex = 0
    Tabs.Strings = (
      'Plik'
      'Wszystkie wystąpienia'
    )
    Align = alClient
    TabOrder = 2
    object lv: TListView
      Left = 2
      Height = 274
      Top = 23
      Width = 316
      Align = alClient
      Columns = <>
      SmallImages = ImageList1
      TabOrder = 1
      OnSelectItem = lvSelectItem
    end
  end
  object lbPlikHist: TLabel
    Left = 0
    Height = 15
    Top = 339
    Width = 320
    Align = alBottom
    Caption = 'lbPlikHist'
  end
  object ImageList1: TImageList
    Left = 113
    Top = 341
    Bitmap = {
      4C7A010000001000000010000000660200000000000078DAA590DD4BD3611CC5
      7F7F82B7DD76D15537EAA55E1436B451B289365B6A188C8AC8A8BC996FA9D381
      16DDAC7C29299D426F5BBA4A53B152D2E16C2FD63449AD85616628B6E9D6E636
      4FCFF9316541773D7078F89EF339DF87DF4F9224493D122C12DACE1D8D42E1C0
      23E91F873E7372E4E9019054835B455AFB6FE8FD4085301A6F3E80ED442106D4
      2AF4E7A9E59B337DE6E4C8B3C7FE715B60FBEC5C1CE7E6A2E82DD5C15BAE4778
      F223B012D91367FACCC991678FFD9CDE2DA8278027A77458BC61C28E6B1EC1CE
      6E048C0DD8120A180D08DE3723EE9CC7E27593CC91678FFDCC8E6FC3357A33DC
      172E23F4FA1DFC4DCD704F38D11702748DCDB00662987A33810DA311C1575332
      479E3DF6C5D9FF425980E52E2BD66FB5E283C305AD261F3D931E8C891D23BFC2
      78E9DF86EBAD1D6BA6169923CF5EA22FF52BF2B0FCF039D60D068C0BF3B1731A
      25F96A58C5AEC9600CE39B118CC5803543BDCC91DFFDFF3CB66C0D16DABAF1B3
      BE0EB5773B302382FEF733D0AA72F1D4EE8027B2839AB63B58153939F2C9FD3E
      C549789B4C58A9ABC5AC30E785F28F6663C03D8D4F716056BC4D9F3939F27FF5
      B30AC3F64B1558A8BE069FCB0D9F089612FA22F499B7D32DE7E4C827F7DBD3B2
      6E0F2B8B603F5F065F6515963C1EAC8AB0DD6AC10FEE718B9D9595724E8E7C72
      3FED9EF74CD7B1320CE568305A5C0AEF95ABF85A55BD27CEF49993239FDC3F62
      09458DE2A14EE5450C1C2EC460410986B4A7F7C4993EF386EF00F9E4BEC2BC81
      433D9BB10355CFCA5B0F66B55833B4614B66312C1942E2E64C9F3939F2C97D71
      D2F919422942FB845213DEAE52137E4A824BDFEDFFAFFE00CCC67687
    }
  end
end
