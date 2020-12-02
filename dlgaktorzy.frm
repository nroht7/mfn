object FrmAktorzy: TFrmAktorzy
  Left = 472
  Height = 600
  Top = 171
  Width = 778
  Caption = 'Aktorzy'
  ClientHeight = 600
  ClientWidth = 778
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  Position = poOwnerFormCenter
  LCLVersion = '7.2'
  object ToolBar1: TToolBar
    Left = 0
    Height = 26
    Top = 0
    Width = 778
    Caption = 'ToolBar1'
    Images = DMG.ilCommon
    TabOrder = 0
    object ToolButton3: TToolButton
      Left = 1
      Top = 2
      Action = DataSetFirst1
    end
    object ToolButton4: TToolButton
      Left = 70
      Top = 2
      Action = DataSetEdit1
    end
    object ToolButton5: TToolButton
      Left = 93
      Top = 2
      Action = DataSetPost1
    end
    object ToolButton6: TToolButton
      Left = 116
      Top = 2
      Action = DataSetCancel1
    end
    object ToolButton7: TToolButton
      Left = 139
      Top = 2
      Action = DataSetLast1
    end
    object ToolButton8: TToolButton
      Left = 24
      Top = 2
      Action = acDodaj
    end
    object ToolButton9: TToolButton
      Left = 47
      Top = 2
      Action = acUsun
    end
    object ToolButton10: TToolButton
      Left = 162
      Height = 22
      Top = 2
      Caption = 'ToolButton10'
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 170
      Top = 2
      Caption = 'ToolButton11'
      DropdownMenu = pmSort
      ImageIndex = 12
    end
  end
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 560
    Width = 766
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 1
    ShowButtons = [pbClose]
  end
  object Panel1: TPanel
    Left = 0
    Height = 528
    Top = 26
    Width = 339
    Align = alLeft
    ClientHeight = 528
    ClientWidth = 339
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Height = 31
      Top = 1
      Width = 337
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 31
      ClientWidth = 337
      TabOrder = 0
      object edFiltruj: TEdit
        Left = 4
        Height = 23
        Top = 3
        Width = 302
        Anchors = [akTop, akLeft, akRight]
        OnEditingDone = edFiltrujEditingDone
        TabOrder = 0
        TextHint = '(Nazwa)'
      end
      object SpeedButton1: TSpeedButton
        Left = 308
        Height = 23
        Top = 3
        Width = 23
        Images = DMG.ilCommon
        ImageIndex = 5
        OnClick = SpeedButton1Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 1
      Height = 480
      Top = 32
      Width = 337
      Align = alClient
      Color = clWindow
      Columns = <      
        item
          Title.Caption = 'Nazwa'
          Width = 300
          FieldName = 'NAZWAAKT'
        end>
      DataSource = DMA.dsAkt
      TabOrder = 1
    end
    object pnlSort: TPanel
      Left = 1
      Height = 15
      Top = 512
      Width = 337
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'Sortuj wg. nazwy'
      TabOrder = 2
    end
  end
  object Splitter1: TSplitter
    Left = 339
    Height = 528
    Top = 26
    Width = 5
  end
  object Panel3: TPanel
    Left = 344
    Height = 528
    Top = 26
    Width = 434
    Align = alClient
    Caption = 'Panel3'
    ClientHeight = 528
    ClientWidth = 434
    TabOrder = 4
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 8
      Width = 38
      Caption = 'Nazwa:'
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Height = 23
      Top = 24
      Width = 240
      DataField = 'NAZWAAKT'
      DataSource = DMA.dsAkt
      Anchors = [akTop, akLeft, akRight]
      MaxLength = 100
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 8
      Height = 65
      Top = 64
      Width = 240
      Caption = 'Ocena'
      ClientHeight = 45
      ClientWidth = 236
      TabOrder = 1
      object RxDBTrackBar1: TRxDBTrackBar
        Left = 8
        Height = 25
        Top = 12
        Width = 128
        Max = 6
        Position = 0
        DataField = 'OCENAAKT'
        DataSource = DMA.dsAkt
        TabOrder = 0
      end
      object DBText1: TDBText
        Left = 152
        Height = 45
        Top = -8
        Width = 48
        AutoSize = False
        DataField = 'OCENAAKT'
        DataSource = DMA.dsAkt
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -32
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object PageControl1: TPageControl
      Left = -8
      Height = 280
      Top = 247
      Width = 821
      ActivePage = TabSheet1
      Anchors = [akTop, akLeft, akRight, akBottom]
      TabIndex = 0
      TabOrder = 2
      object TabSheet1: TTabSheet
        Caption = 'Inne nazwy'
        ClientHeight = 252
        ClientWidth = 813
        object ToolBar2: TToolBar
          Left = 0
          Height = 26
          Top = 0
          Width = 813
          Caption = 'ToolBar2'
          Images = DMG.ilCommon
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object ToolButton1: TToolButton
            Left = 1
            Top = 2
            Action = DataSetFirst2
          end
          object ToolButton2: TToolButton
            Left = 24
            Top = 2
            Action = DataSetInsert1
          end
          object ToolButton12: TToolButton
            Left = 47
            Top = 2
            Action = DataSetDelete1
          end
          object ToolButton13: TToolButton
            Left = 70
            Top = 2
            Action = DataSetEdit2
          end
          object ToolButton14: TToolButton
            Left = 93
            Top = 2
            Action = DataSetPost2
          end
          object ToolButton15: TToolButton
            Left = 116
            Top = 2
            Action = DataSetCancel2
          end
          object ToolButton16: TToolButton
            Left = 139
            Top = 2
            Action = DataSetLast2
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Height = 226
          Top = 26
          Width = 813
          Align = alClient
          Color = clWindow
          Columns = <          
            item
              Title.Caption = 'Nazwa'
              Width = 380
              FieldName = 'NAZWAAKAA'
            end>
          DataSource = DMA.dsAkaA
          TabOrder = 1
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Filmy'
        ClientHeight = 252
        ClientWidth = 813
        object ToolBar3: TToolBar
          Left = 0
          Height = 26
          Top = 0
          Width = 813
          Caption = 'ToolBar3'
          TabOrder = 0
        end
        object DBGrid3: TDBGrid
          Left = 0
          Height = 226
          Top = 26
          Width = 813
          Align = alClient
          Color = clWindow
          Columns = <>
          DataSource = DMA.dsAktFilmy
          TabOrder = 1
        end
      end
      object Opis: TTabSheet
        Caption = 'Opis'
        ClientHeight = 252
        ClientWidth = 813
        object DBMemo1: TDBMemo
          Left = 0
          Height = 252
          Top = 0
          Width = 813
          Align = alClient
          DataField = 'OPISAKT'
          DataSource = DMA.dsAkt
          ScrollBars = ssAutoBoth
          TabOrder = 0
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 256
      Height = 224
      Top = 8
      Width = 169
      Anchors = [akTop, akRight]
      Caption = 'Zdjęcie'
      ClientHeight = 204
      ClientWidth = 165
      TabOrder = 3
      object DBImage1: TDBImage
        Left = 8
        Height = 170
        Top = 0
        Width = 150
        DataField = 'ZDJECIEAKT'
        DataSource = DMA.dsAkt
      end
    end
  end
  object ActionList1: TActionList
    Images = DMG.ilCommon
    Left = 384
    Top = 192
    object DataSetFirst1: TDataSetFirst
      Category = 'Database'
      Caption = '&Pierwszy'
      Hint = 'Pierwszy'
      ImageIndex = 8
      DataSource = DMA.dsAkt
    end
    object DataSetLast1: TDataSetLast
      Category = 'Database'
      Caption = '&Ostatni'
      Hint = 'Ostatni'
      ImageIndex = 11
      DataSource = DMA.dsAkt
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Database'
      Caption = '&Anuluj'
      Hint = 'Anuluj'
      ImageIndex = 0
      DataSource = DMA.dsAkt
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Database'
      Caption = '&Edytuj'
      Hint = 'Edycja'
      ImageIndex = 3
      DataSource = DMA.dsAkt
    end
    object DataSetPost1: TDataSetPost
      Category = 'Database'
      Caption = 'Zatwie&rdź'
      Hint = 'Opublikuj'
      ImageIndex = 7
      DataSource = DMA.dsAkt
    end
    object acDodaj: TAction
      Caption = 'Dodaj'
      Hint = 'Dodaj nowego aktora'
      ImageIndex = 1
      OnExecute = acDodajExecute
    end
    object acUsun: TAction
      Caption = 'Usuń'
      Hint = 'Usuń aktora'
      ImageIndex = 2
    end
    object acSortNazwa: TAction
      Caption = 'acSortNazwa'
      Checked = True
      ImageIndex = 14
      OnExecute = acSortNazwaExecute
    end
    object acSortOcena: TAction
      Caption = 'acSortOcena'
      ImageIndex = 16
      OnExecute = acSortOcenaExecute
    end
    object DataSetFirst2: TDataSetFirst
      Category = 'Database2'
      Caption = '&Pierwszy'
      Hint = 'Pierwszy'
      ImageIndex = 8
      DataSource = DMA.dsAkaA
    end
    object DataSetLast2: TDataSetLast
      Category = 'Database2'
      Caption = '&Ostatni'
      Hint = 'Ostatni'
      ImageIndex = 11
      DataSource = DMA.dsAkaA
    end
    object DataSetCancel2: TDataSetCancel
      Category = 'Database2'
      Caption = '&Anuluj'
      Hint = 'Anuluj'
      ImageIndex = 0
      DataSource = DMA.dsAkaA
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Database2'
      Caption = '&Usuń'
      Hint = 'Usuń'
      ImageIndex = 18
      DataSource = DMA.dsAkaA
    end
    object DataSetEdit2: TDataSetEdit
      Category = 'Database2'
      Caption = '&Edytuj'
      Hint = 'Edycja'
      ImageIndex = 3
      DataSource = DMA.dsAkaA
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Database2'
      Caption = '&Wstaw'
      Hint = 'Wstaw'
      ImageIndex = 17
      DataSource = DMA.dsAkaA
    end
    object DataSetPost2: TDataSetPost
      Category = 'Database2'
      Caption = 'Zatwie&rdź'
      Hint = 'Opublikuj'
      ImageIndex = 7
      DataSource = DMA.dsAkaA
    end
  end
  object pmSort: TPopupMenu
    Images = DMG.ilCommon
    Left = 442
    Top = 186
    object MenuItem1: TMenuItem
      Action = acSortNazwa
      GroupIndex = 1
    end
    object MenuItem2: TMenuItem
      Action = acSortOcena
      GroupIndex = 1
    end
  end
end
