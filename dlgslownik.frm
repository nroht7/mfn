object FrmSlownik: TFrmSlownik
  Left = 486
  Height = 600
  Top = 171
  Width = 400
  Caption = 'Słownik'
  ClientHeight = 600
  ClientWidth = 400
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.8'
  object ToolBar1: TToolBar
    Left = 0
    Height = 26
    Top = 0
    Width = 400
    Caption = 'ToolBar1'
    Images = DMG.ilCommon
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 1
      Top = 2
      Action = acDodaj
    end
    object ToolButton2: TToolButton
      Left = 24
      Top = 2
      Action = acUsun
    end
    object ToolButton3: TToolButton
      Left = 47
      Height = 22
      Top = 2
      Caption = 'ToolButton3'
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 55
      Top = 2
      Action = DataSetFirst1
    end
    object ToolButton6: TToolButton
      Left = 78
      Top = 2
      Action = DataSetEdit1
    end
    object ToolButton7: TToolButton
      Left = 101
      Top = 2
      Action = DataSetPost1
    end
    object ToolButton8: TToolButton
      Left = 124
      Top = 2
      Action = DataSetCancel1
    end
    object ToolButton9: TToolButton
      Left = 147
      Top = 2
      Action = DataSetLast1
    end
  end
  object Panel1: TPanel
    Left = 0
    Height = 433
    Top = 26
    Width = 400
    Align = alClient
    BevelOuter = bvNone
    ClientHeight = 433
    ClientWidth = 400
    TabOrder = 1
    object dbg: TDBGrid
      Left = 0
      Height = 407
      Top = 26
      Width = 400
      Align = alClient
      Color = clWindow
      Columns = <      
        item
          Title.Caption = 'Nazwa'
          Width = 350
          FieldName = 'NAZWA'
        end>
      DataSource = DataSource
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 0
      Height = 26
      Top = 0
      Width = 400
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 26
      ClientWidth = 400
      TabOrder = 1
      object edFiltr: TEdit
        Left = 2
        Height = 23
        Top = 2
        Width = 370
        Anchors = [akTop, akLeft, akRight]
        OnEditingDone = edFiltrEditingDone
        TabOrder = 0
        TextHint = '(filtr)'
      end
      object SpeedButton1: TSpeedButton
        Left = 376
        Height = 22
        Top = 2
        Width = 23
        Anchors = [akTop, akRight]
        Images = DMG.ilCommon
        ImageIndex = 5
        OnClick = SpeedButton1Click
      end
    end
  end
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 560
    Width = 388
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
  object dbm: TDBMemo
    Left = 0
    Height = 90
    Top = 464
    Width = 400
    Align = alBottom
    DataField = 'OPIS'
    DataSource = DataSource
    TabOrder = 3
  end
  object Splitter1: TSplitter
    Cursor = crVSplit
    Left = 0
    Height = 5
    Top = 459
    Width = 400
    Align = alBottom
    ResizeAnchor = akBottom
  end
  object ActionList1: TActionList
    Images = DMG.ilCommon
    Left = 240
    Top = 176
    object DataSetFirst1: TDataSetFirst
      Category = 'Database'
      Caption = '&Pierwszy'
      Hint = 'Pierwszy'
      ImageIndex = 8
      DataSource = DataSource
    end
    object DataSetLast1: TDataSetLast
      Category = 'Database'
      Caption = '&Ostatni'
      Hint = 'Ostatni'
      ImageIndex = 11
      DataSource = DataSource
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Database'
      Caption = '&Anuluj'
      Hint = 'Anuluj'
      ImageIndex = 0
      DataSource = DataSource
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Database'
      Caption = '&Edytuj'
      Hint = 'Edycja'
      ImageIndex = 3
      DataSource = DataSource
    end
    object DataSetPost1: TDataSetPost
      Category = 'Database'
      Caption = 'Zatwie&rdź'
      Hint = 'Zatwierdź'
      ImageIndex = 7
      DataSource = DataSource
    end
    object acDodaj: TAction
      Category = 'Database'
      Caption = 'Dodaj'
      Hint = 'Dodaj'
      ImageIndex = 1
      OnExecute = acDodajExecute
      ShortCut = 16462
    end
    object acUsun: TAction
      Category = 'Database'
      Caption = 'Usuń'
      Hint = 'Usuń'
      ImageIndex = 2
      OnExecute = acUsunExecute
      ShortCut = 16430
    end
  end
  object ImageList1: TImageList
    Left = 178
    Top = 271
  end
  object ZQuery: TZQuery
    Connection = DMG.ZConn
    AfterPost = ZQueryAfterPost
    Params = <>
    Left = 39
    Top = 144
  end
  object DataSource: TDataSource
    DataSet = ZQuery
    Left = 39
    Top = 200
  end
end
