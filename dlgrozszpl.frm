object FrmRozszPl: TFrmRozszPl
  Left = 458
  Height = 500
  Top = 171
  Width = 350
  Caption = 'Obsługiwane typy plików'
  ClientHeight = 500
  ClientWidth = 350
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.3'
  object ToolBar1: TToolBar
    Left = 0
    Height = 26
    Top = 0
    Width = 350
    Caption = 'ToolBar1'
    Images = DMG.ilCommon
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 178
      Top = 2
      Action = acZamknij
    end
    object ToolButton2: TToolButton
      Left = 78
      Top = 2
      Action = DataSetFirst1
    end
    object ToolButton3: TToolButton
      Left = 101
      Top = 2
      Action = DataSetPrior1
    end
    object ToolButton9: TToolButton
      Left = 124
      Top = 2
      Action = DataSetNext1
    end
    object ToolButton10: TToolButton
      Left = 147
      Top = 2
      Action = DataSetLast1
    end
    object ToolButton11: TToolButton
      Left = 170
      Height = 22
      Top = 2
      Caption = 'ToolButton11'
      Style = tbsSeparator
    end
    object ToolButton4: TToolButton
      Left = 1
      Top = 2
      Action = acDodaj
    end
    object ToolButton5: TToolButton
      Left = 24
      Top = 2
      Action = acEdytuj
    end
    object ToolButton6: TToolButton
      Left = 47
      Top = 2
      Action = acUsun
    end
    object ToolButton7: TToolButton
      Left = 70
      Height = 22
      Top = 2
      Caption = 'ToolButton7'
      Style = tbsSeparator
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 477
    Width = 350
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Height = 451
    Top = 26
    Width = 350
    Align = alClient
    Caption = 'Panel1'
    ClientHeight = 451
    ClientWidth = 350
    TabOrder = 2
    object dbg: TRxDBGrid
      Left = 1
      Height = 316
      Top = 39
      Width = 348
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taLeftJustify
          Title.Orientation = toHorizontal
          Title.Caption = 'Ikona'
          Width = 50
          FieldName = 'ImgIdxRoszPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
          ImageList = DMG.ilRozszPl
        end      
        item
          Title.Alignment = taLeftJustify
          Title.Orientation = toHorizontal
          Title.Caption = 'Rozszerzenie'
          Width = 250
          FieldName = 'NazwaRozszPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end>
      KeyStrokes = <      
        item
          Command = rxgcShowFindDlg
          ShortCut = 16454
          Enabled = True
        end      
        item
          Command = rxgcShowColumnsDlg
          ShortCut = 16471
          Enabled = True
        end      
        item
          Command = rxgcShowFilterDlg
          ShortCut = 16468
          Enabled = True
        end      
        item
          Command = rxgcShowSortDlg
          ShortCut = 16467
          Enabled = True
        end      
        item
          Command = rxgcShowQuickFilter
          ShortCut = 16465
          Enabled = True
        end      
        item
          Command = rxgcHideQuickFilter
          ShortCut = 16456
          Enabled = True
        end      
        item
          Command = rxgcSelectAll
          ShortCut = 16449
          Enabled = True
        end      
        item
          Command = rxgcDeSelectAll
          ShortCut = 16429
          Enabled = True
        end      
        item
          Command = rxgcInvertSelection
          ShortCut = 16426
          Enabled = True
        end      
        item
          Command = rxgcOptimizeColumnsWidth
          ShortCut = 16427
          Enabled = True
        end      
        item
          Command = rxgcCopyCellValue
          ShortCut = 16451
          Enabled = True
        end>
      FooterOptions.DrawFullLine = False
      SearchOptions.QuickSearchOptions = [loCaseInsensitive, loPartialKey]
      SearchOptions.FromStart = False
      OptionsRx = [rdgAllowColumnsForm, rdgAllowDialogFind, rdgAllowQuickFilter]
      Align = alClient
      Color = clWindow
      DrawFullLine = False
      FocusColor = clRed
      SelectedColor = clHighlight
      GridLineStyle = psSolid
      DataSource = ds
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      OnDrawColumnCell = dbgDrawColumnCell
    end
    object DBMemo1: TDBMemo
      Left = 1
      Height = 90
      Top = 360
      Width = 348
      Align = alBottom
      DataField = 'OpisRozszPl'
      DataSource = ds
      ReadOnly = True
      TabOrder = 1
    end
    object Splitter2: TSplitter
      Cursor = crVSplit
      Left = 1
      Height = 5
      Top = 355
      Width = 348
      Align = alBottom
      ResizeAnchor = akBottom
    end
    object ComboBoxEx1: TComboBoxEx
      Left = 1
      Height = 38
      Top = 1
      Width = 348
      Align = alTop
      Images = DMG.ilTypyPl
      ItemHeight = 32
      ItemsEx = <      
        item
          Caption = 'Filmy'
          ImageIndex = 0
          SelectedImageIndex = 0
        end      
        item
          Caption = 'Grafika i tekst'
          ImageIndex = 1
          SelectedImageIndex = 1
        end      
        item
          Caption = 'Dzwięk'
          ImageIndex = 2
          SelectedImageIndex = 2
        end>
      OnChange = ComboBoxEx1Change
      TabOrder = 3
    end
  end
  object ActionList1: TActionList
    Images = DMG.ilCommon
    Left = 104
    Top = 256
    object DataSetFirst1: TDataSetFirst
      Category = 'Database'
      Caption = '&Pierwszy'
      Hint = 'Pierwszy'
      ImageIndex = 8
      DataSource = ds
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Database'
      Caption = '&Poprzedni'
      Hint = 'Poprzedni'
      ImageIndex = 9
      DataSource = ds
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Database'
      Caption = '&Wstaw'
      Hint = 'Wstaw'
      ImageIndex = 17
      DataSource = ds
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Database'
      Caption = '&Usuń'
      Hint = 'Usuń'
      ImageIndex = 18
      DataSource = ds
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Database'
      Caption = '&Edytuj'
      Hint = 'Edycja'
      ImageIndex = 3
      OnExecute = DataSetEdit1Execute
      DataSource = ds
    end
    object DataSetPost1: TDataSetPost
      Category = 'Database'
      Caption = 'Zatwie&rdź'
      Hint = 'Opublikuj'
      ImageIndex = 7
      DataSource = ds
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Database'
      Caption = '&Anuluj'
      Hint = 'Anuluj'
      ImageIndex = 0
      DataSource = ds
    end
    object DataSetNext1: TDataSetNext
      Category = 'Database'
      Caption = '&Następny'
      Hint = 'Następny'
      ImageIndex = 10
      DataSource = ds
    end
    object DataSetLast1: TDataSetLast
      Category = 'Database'
      Caption = '&Ostatni'
      Hint = 'Ostatni'
      ImageIndex = 11
      DataSource = ds
    end
    object acZamknij: TAction
      Caption = 'Zamknij'
      Hint = 'Zamknij okno'
      ImageIndex = 19
      OnExecute = acZamknijExecute
      ShortCut = 27
    end
    object acDodaj: TAction
      Caption = 'Dodaj'
      Hint = 'Dodaj rozszerzenie'
      ImageIndex = 24
      OnExecute = acDodajExecute
      ShortCut = 16462
    end
    object acUsun: TAction
      Caption = 'Usuń'
      Hint = 'Usuń rozszerzenie'
      ImageIndex = 26
      OnExecute = acUsunExecute
      ShortCut = 16430
    end
    object acEdytuj: TAction
      Caption = 'Edytuj'
      Hint = 'Edytuj rozszerzenie'
      ImageIndex = 25
      OnExecute = acEdytujExecute
      ShortCut = 16453
    end
  end
  object ds: TDataSource
    DataSet = qry
    Left = 136
    Top = 160
  end
  object qry: TZQuery
    Connection = DMG.ZConn
    SortedFields = 'ImgIdxRozszPl'
    SQL.Strings = (
      'SELECT IdRozszPl, NazwaRozszPl, ImgIdxRozszPl, OpisRozszPl'
      'FROM RozszerzeniaPl'
      'WHERE IdTypPl = :IdTypu'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IdTypu'
        ParamType = ptInput
        SQLType = stInteger
      end>
    IndexFieldNames = 'ImgIdxRozszPl Asc'
    Left = 136
    Top = 103
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IdTypu'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object tabTypyPl: TZTable
    Connection = DMG.ZConn
    SortedFields = 'IdTypPl'
    TableName = 'TypyPl'
    IndexFieldNames = 'IdTypPl Asc'
    Left = 264
    Top = 103
  end
  object PopupMenu1: TPopupMenu
    Images = DMG.ilCommon
    Left = 191
    Top = 239
    object MenuItem1: TMenuItem
      Action = acDodaj
    end
    object MenuItem2: TMenuItem
      Action = acEdytuj
    end
    object MenuItem3: TMenuItem
      Action = acUsun
    end
  end
end
