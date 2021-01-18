object FrmMain: TFrmMain
  Left = 86
  Height = 800
  Top = 86
  Width = 1181
  Caption = 'mfn'
  ClientHeight = 780
  ClientWidth = 1181
  Menu = MainMenu1
  OnDestroy = FormDestroy
  OnShow = FormShow
  LCLVersion = '7.2'
  object pnlLeft: TPanel
    Left = 0
    Height = 701
    Top = 56
    Width = 250
    Align = alLeft
    BevelOuter = bvNone
    ClientHeight = 701
    ClientWidth = 250
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Height = 85
      Top = 616
      Width = 250
      Align = alBottom
      BevelOuter = bvNone
      ClientHeight = 85
      ClientWidth = 250
      TabOrder = 0
      object SearchEdit1: TSearchEdit
        Left = 8
        Height = 23
        Top = 31
        Width = 215
        EmptyText = 'Filtruj pliki'
        Anchors = [akTop, akLeft, akRight]
        Font.Color = clGray
        ParentFont = False
        ParentShowHint = False
        TabOrder = 0
      end
      object SearchEdit2: TSearchEdit
        Left = 8
        Height = 23
        Top = 57
        Width = 215
        EmptyText = 'Filtruj filmy'
        Anchors = [akTop, akLeft, akRight]
        Font.Color = clGray
        ParentFont = False
        ParentShowHint = False
        TabOrder = 1
      end
      object ComboBoxEx1: TComboBoxEx
        Left = 8
        Height = 22
        Top = 4
        Width = 238
        Anchors = [akTop, akLeft, akRight]
        ItemHeight = 16
        ItemsEx = <        
          item
            Caption = 'Wszystkie'
          end        
          item
            Caption = 'Filmy'
          end        
          item
            Caption = 'Grafika i tekst'
          end        
          item
            Caption = 'Dzwięk'
          end>
        ItemIndex = 0
        TabOrder = 2
      end
      object SpeedButton1: TSpeedButton
        Left = 223
        Height = 23
        Top = 31
        Width = 23
        Anchors = [akTop, akRight]
        Images = DMG.ilCommon
        ImageIndex = 5
      end
      object SpeedButton2: TSpeedButton
        Left = 223
        Height = 23
        Top = 57
        Width = 23
        Anchors = [akTop, akRight]
        Images = DMG.ilCommon
        ImageIndex = 5
      end
    end
    object Splitter3: TSplitter
      Cursor = crVSplit
      Left = 0
      Height = 5
      Top = 611
      Width = 250
      Align = alBottom
      ResizeAnchor = akBottom
    end
    object Splitter4: TSplitter
      Cursor = crVSplit
      Left = 0
      Height = 5
      Top = 176
      Width = 250
      Align = alTop
      ResizeAnchor = akTop
    end
    object pnlFiltry: TPanel
      Left = 0
      Height = 430
      Top = 181
      Width = 250
      Align = alClient
      BevelOuter = bvNone
      ClientHeight = 430
      ClientWidth = 250
      TabOrder = 3
      object pnlFiltryTytul: TPanel
        Left = 0
        Height = 18
        Top = 0
        Width = 250
        Align = alTop
        Caption = 'pnlFiltryTytul'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ToolBar2: TToolBar
        Left = 0
        Height = 26
        Top = 404
        Width = 250
        Align = alBottom
        Caption = 'ToolBar2'
        Images = ilMenuS
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        object ToolButton2: TToolButton
          Left = 1
          Top = 2
          Action = acFiltrOceny
          AllowAllUp = True
          Grouped = True
          Style = tbsCheck
        end
        object ToolButton3: TToolButton
          Left = 24
          Top = 2
          Action = acFiltrLata
          AllowAllUp = True
          Grouped = True
          Style = tbsCheck
        end
        object ToolButton4: TToolButton
          Left = 47
          Top = 2
          Action = acFiltrAktorzy
          AllowAllUp = True
          Grouped = True
          Style = tbsCheck
        end
        object ToolButton5: TToolButton
          Left = 70
          Top = 2
          Action = acFiltrTagi
          AllowAllUp = True
          Grouped = True
          Style = tbsCheck
        end
        object ToolButton6: TToolButton
          Left = 93
          Top = 2
          Action = acFiltrGatunki
          AllowAllUp = True
          Grouped = True
          Style = tbsCheck
        end
        object ToolButton7: TToolButton
          Left = 116
          Top = 2
          Action = acFiltrSerie
          AllowAllUp = True
          Grouped = True
          Style = tbsCheck
        end
      end
      object nbkFiltry: TNotebook
        Left = 0
        Height = 386
        Top = 18
        Width = 250
        PageIndex = 0
        Align = alClient
        TabOrder = 2
        object ListView: TPage
          object ListView1: TListView
            Left = 0
            Height = 386
            Top = 0
            Width = 250
            Align = alClient
            Columns = <>
            TabOrder = 0
          end
        end
        object DbGrid: TPage
          object DBGrid1: TDBGrid
            Left = 0
            Height = 450
            Top = 0
            Width = 250
            Align = alClient
            Color = clWindow
            Columns = <>
            TabOrder = 0
          end
        end
        object Tagi: TPage
        end
        object Aktorzy: TPage
          object RxDBGrid2: TRxDBGrid
            Left = 0
            Height = 450
            Top = 0
            Width = 250
            ColumnDefValues.BlobText = '(blob)'
            TitleButtons = False
            AutoSort = True
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
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
          end
        end
      end
    end
    object ToolBar5: TToolBar
      Left = 0
      Height = 26
      Top = 0
      Width = 250
      Caption = 'ToolBar5'
      EdgeBorders = []
      Images = DMG.ilRozne
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      object ToolButton11: TToolButton
        Left = 1
        Top = 0
        Action = acKatWyz
      end
      object ToolButton12: TToolButton
        Left = 24
        Top = 0
        Action = acKatNiz
      end
      object ToolButton13: TToolButton
        Left = 47
        Height = 22
        Top = 0
        Caption = 'ToolButton13'
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 55
        Top = 0
        Action = acKatWszystko
      end
      object ToolButton16: TToolButton
        Left = 78
        Height = 22
        Top = 0
        Caption = 'ToolButton16'
        Style = tbsSeparator
      end
      object ToolButton17: TToolButton
        Left = 86
        Top = 0
        Action = acKatOdswiez
      end
    end
    object lvKat: TListView
      Left = 0
      Height = 150
      Top = 26
      Width = 250
      Align = alTop
      Columns = <      
        item
          Caption = 'Katalog'
          Width = 170
        end      
        item
          Caption = 'Pod'
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      SmallImages = DMG.ilCommon
      TabOrder = 5
      ViewStyle = vsReport
      OnDblClick = lvKatDblClick
    end
  end
  object pnlMain: TPanel
    Left = 255
    Height = 701
    Top = 56
    Width = 926
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlMain'
    ClientHeight = 701
    ClientWidth = 926
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Height = 250
      Top = 451
      Width = 926
      ActivePage = tsPlikInfo
      Align = alBottom
      TabIndex = 0
      TabOrder = 0
      object tsPlikInfo: TTabSheet
        Caption = 'Informacje'
        ClientHeight = 222
        ClientWidth = 918
        object DBEdit1: TDBEdit
          Left = 56
          Height = 23
          Top = 24
          Width = 856
          MaxLength = 0
          TabOrder = 0
        end
        object Image1: TImage
          Left = 8
          Height = 32
          Top = 16
          Width = 32
        end
        object Label1: TLabel
          Left = 56
          Height = 15
          Top = 8
          Width = 22
          Caption = 'Plik:'
          ParentColor = False
        end
        object Label2: TLabel
          Left = 56
          Height = 15
          Top = 56
          Width = 41
          Caption = 'Scieżka:'
          ParentColor = False
        end
        object Label3: TLabel
          Left = 56
          Height = 15
          Top = 104
          Width = 203
          Caption = 'Scieżka względem katalogu głównego:'
          ParentColor = False
        end
        object DBEdit2: TDBEdit
          Left = 56
          Height = 23
          Top = 72
          Width = 856
          MaxLength = 0
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 56
          Height = 23
          Top = 120
          Width = 856
          MaxLength = 0
          TabOrder = 2
        end
        object Label4: TLabel
          Left = 56
          Height = 15
          Top = 152
          Width = 46
          Caption = 'Rozmiar:'
          ParentColor = False
        end
        object Label5: TLabel
          Left = 184
          Height = 15
          Top = 152
          Width = 33
          Caption = 'Crc32:'
          ParentColor = False
        end
        object Label6: TLabel
          Left = 360
          Height = 15
          Top = 152
          Width = 28
          Caption = 'MD5:'
          ParentColor = False
        end
        object Label7: TLabel
          Left = 440
          Height = 15
          Top = 200
          Width = 95
          Caption = 'Ilość uruchomień:'
          ParentColor = False
        end
        object Label8: TLabel
          Left = 56
          Height = 15
          Top = 200
          Width = 73
          Caption = 'Data dodania:'
          ParentColor = False
        end
        object Label9: TLabel
          Left = 240
          Height = 15
          Top = 200
          Width = 92
          Caption = 'Data modyfikacji:'
          ParentColor = False
        end
        object DBEdit4: TDBEdit
          Left = 56
          Height = 23
          Top = 168
          Width = 120
          MaxLength = 0
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 184
          Height = 23
          Top = 168
          Width = 144
          MaxLength = 0
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 360
          Height = 23
          Top = 168
          Width = 160
          MaxLength = 0
          TabOrder = 5
        end
        object SpeedButton3: TSpeedButton
          Left = 328
          Height = 22
          Top = 169
          Width = 23
        end
        object SpeedButton4: TSpeedButton
          Left = 520
          Height = 22
          Top = 169
          Width = 23
        end
        object Image3: TImage
          Left = 8
          Height = 32
          Top = 55
          Width = 32
        end
      end
      object tsPlikParam: TTabSheet
        Caption = 'Parametry'
        ClientHeight = 222
        ClientWidth = 918
        object Image2: TImage
          Left = 8
          Height = 32
          Top = 16
          Width = 32
        end
        object Label10: TLabel
          Left = 56
          Height = 15
          Top = 8
          Width = 75
          Caption = 'Rozdzielczość:'
          ParentColor = False
        end
        object Label11: TLabel
          Left = 152
          Height = 15
          Top = 8
          Width = 55
          Caption = 'Szerokość:'
          ParentColor = False
        end
        object Label12: TLabel
          Left = 240
          Height = 15
          Top = 8
          Width = 56
          Caption = 'Wysokość:'
          ParentColor = False
        end
        object DBEdit7: TDBEdit
          Left = 56
          Height = 23
          Top = 24
          Width = 80
          MaxLength = 0
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 152
          Height = 23
          Top = 24
          Width = 80
          MaxLength = 0
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 240
          Height = 23
          Top = 24
          Width = 80
          MaxLength = 0
          TabOrder = 2
        end
        object Label13: TLabel
          Left = 56
          Height = 15
          Top = 48
          Width = 30
          Caption = 'Język:'
          ParentColor = False
        end
        object Label14: TLabel
          Left = 56
          Height = 15
          Top = 88
          Width = 39
          Caption = 'Napisy:'
          ParentColor = False
        end
        object Label15: TLabel
          Left = 56
          Height = 15
          Top = 128
          Width = 49
          Caption = 'Dubbing:'
          ParentColor = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 56
          Height = 23
          Top = 64
          Width = 264
          ListFieldIndex = 0
          LookupCache = False
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 56
          Height = 23
          Top = 104
          Width = 264
          ListFieldIndex = 0
          LookupCache = False
          TabOrder = 4
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 56
          Height = 23
          Top = 152
          Width = 264
          ListFieldIndex = 0
          LookupCache = False
          TabOrder = 5
        end
      end
      object tsPlikFilm: TTabSheet
        Caption = 'Filmy'
        ClientHeight = 222
        ClientWidth = 918
        object pcFilmy: TPageControl
          Left = 0
          Height = 222
          Top = 0
          Width = 918
          ActivePage = tsFilmPodstawy
          Align = alClient
          TabIndex = 0
          TabOrder = 0
          object tsFilmPodstawy: TTabSheet
            Caption = 'Podstawy'
            ClientHeight = 194
            ClientWidth = 910
            object GroupBox1: TGroupBox
              Left = 8
              Height = 177
              Top = 8
              Width = 152
              Caption = 'Okładka'
              ClientHeight = 157
              ClientWidth = 148
              TabOrder = 0
              object ToolBar4: TToolBar
                Left = 0
                Height = 26
                Top = 0
                Width = 148
                Caption = 'ToolBar4'
                TabOrder = 0
              end
            end
          end
          object tsFilmAktorzy: TTabSheet
            Caption = 'Aktorzy'
          end
          object tsFilmOpis: TTabSheet
            Caption = 'Opis'
          end
          object tsFilmKomentarz: TTabSheet
            Caption = 'Komentarz'
          end
          object tsFilmyLinki: TTabSheet
            Caption = 'Linki'
          end
          object tsFilmAKA: TTabSheet
            Caption = 'Inne tytuły'
          end
        end
      end
      object tsPlikTagi: TTabSheet
        Caption = 'Tagi'
        ClientHeight = 222
        ClientWidth = 918
        object ToolBar3: TToolBar
          Left = 0
          Height = 26
          Top = 0
          Width = 918
          Caption = 'ToolBar3'
          TabOrder = 0
          object ToolButton9: TToolButton
            Left = 1
            Top = 2
            Caption = 'ToolButton9'
          end
          object ToolButton10: TToolButton
            Left = 24
            Top = 2
            Caption = 'ToolButton10'
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Height = 141
          Top = 26
          Width = 918
          Align = alClient
          Color = clWindow
          Columns = <>
          TabOrder = 1
        end
        object DBMemo2: TDBMemo
          Left = 0
          Height = 50
          Top = 172
          Width = 918
          Align = alBottom
          ScrollBars = ssAutoBoth
          TabOrder = 2
        end
        object Splitter5: TSplitter
          Cursor = crVSplit
          Left = 0
          Height = 5
          Top = 167
          Width = 918
          Align = alBottom
          ResizeAnchor = akBottom
        end
      end
      object tsPlikOpis: TTabSheet
        Caption = 'Opis'
        ClientHeight = 222
        ClientWidth = 918
        object DBMemo1: TDBMemo
          Left = 0
          Height = 222
          Top = 0
          Width = 918
          Align = alClient
          ScrollBars = ssAutoBoth
          TabOrder = 0
        end
      end
    end
    object Splitter2: TSplitter
      Cursor = crVSplit
      Left = 0
      Height = 5
      Top = 446
      Width = 926
      Align = alBottom
      ResizeAnchor = akBottom
    end
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Height = 415
      Top = 31
      Width = 926
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
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
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 0
      Height = 31
      Top = 0
      Width = 926
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 31
      ClientWidth = 926
      Color = clActiveCaption
      ParentColor = False
      TabOrder = 3
      object edWybKat: TEdit
        Left = 101
        Height = 25
        Top = 4
        Width = 820
        Anchors = [akTop, akLeft, akRight]
        Color = clForm
        Font.CharSet = EASTEUROPE_CHARSET
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Pitch = fpVariable
        Font.Quality = fqDraft
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Label16: TLabel
        Left = 4
        Height = 15
        Top = 9
        Width = 92
        Caption = 'Wybrany katalog:'
        Font.Color = clHighlightText
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Height = 56
    Top = 0
    Width = 1181
    ButtonHeight = 52
    ButtonWidth = 50
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    Images = ilMenuL
    ShowCaptions = True
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 176
      Top = 2
      Action = acPlikKoniec
    end
    object ToolButton8: TToolButton
      Left = 117
      Top = 2
      Action = acFoldery
    end
    object ToolButton15: TToolButton
      Left = 168
      Height = 52
      Top = 2
      Caption = 'ToolButton15'
      Style = tbsSeparator
    end
    object ToolButton18: TToolButton
      Left = 1
      Top = 2
      Action = acFolderSkanuj
    end
    object ToolButton19: TToolButton
      Left = 51
      Top = 2
      Action = acFolderWeryfikuj
    end
    object ToolButton20: TToolButton
      Left = 109
      Height = 52
      Top = 2
      Caption = 'ToolButton20'
      Style = tbsSeparator
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 757
    Width = 1181
    Panels = <>
  end
  object Splitter1: TSplitter
    Left = 250
    Height = 701
    Top = 56
    Width = 5
  end
  object ActionList1: TActionList
    Images = ilMenuS
    Left = 288
    Top = 128
    object acPlikKoniec: TAction
      Category = 'Plik'
      Caption = 'Koniec'
      ImageIndex = 0
      OnExecute = acPlikKoniecExecute
      ShortCut = 16465
    end
    object acFolderSkanuj: TAction
      Category = 'Katalogi'
      Caption = 'Skanuj'
      Hint = 'Skanuj folder'
      ImageIndex = 3
      OnExecute = acFolderSkanujExecute
    end
    object acFolderWeryfikuj: TAction
      Category = 'Katalogi'
      Caption = 'Weryfikuj'
      Hint = 'Weryfikuj folder'
      ImageIndex = 4
      OnExecute = acFolderWeryfikujExecute
    end
    object acFiltrGatunki: TAction
      Category = 'Filtry'
      Caption = 'Gatunki'
      Hint = ' Gatunki'
      ImageIndex = 5
      OnExecute = acFiltrGatunkiExecute
    end
    object acFiltrSerie: TAction
      Category = 'Filtry'
      Caption = 'Serie'
      Hint = 'Serie'
      ImageIndex = 6
      OnExecute = acFiltrSerieExecute
    end
    object acFiltrAktorzy: TAction
      Category = 'Filtry'
      Caption = 'Aktorzy'
      Hint = 'Aktorzy'
      ImageIndex = 9
    end
    object acFiltrLata: TAction
      Category = 'Filtry'
      Caption = 'Lata'
      Hint = 'Lata'
      ImageIndex = 7
      OnExecute = acFiltrLataExecute
    end
    object acFiltrOceny: TAction
      Category = 'Filtry'
      Caption = 'Oceny'
      Hint = 'Oceny'
      ImageIndex = 8
      OnExecute = acFiltrOcenyExecute
    end
    object acFiltrTagi: TAction
      Category = 'Filtry'
      Caption = 'Tagi'
      Hint = 'Tagi'
      ImageIndex = 10
    end
    object acDaneGatunki: TAction
      Category = 'Dane'
      Caption = 'Gatunki'
      Hint = 'Gatunki'
      ImageIndex = 5
      OnExecute = acDaneGatunkiExecute
    end
    object acDaneSerie: TAction
      Category = 'Dane'
      Caption = 'Serie'
      Hint = 'Serie'
      ImageIndex = 6
      OnExecute = acDaneSerieExecute
    end
    object acDaneAktorzy: TAction
      Category = 'Dane'
      Caption = 'Aktorzy'
      Hint = 'Aktorzy'
      ImageIndex = 9
      OnExecute = acDaneAktorzyExecute
    end
    object acDaneTagi: TAction
      Category = 'Dane'
      Caption = 'Tagi'
      Hint = 'Tagi'
      ImageIndex = 10
      OnExecute = acDaneTagiExecute
    end
    object aDaneJezyki: TAction
      Category = 'Dane'
      Caption = 'Języki'
      Hint = 'Języki'
      OnExecute = aDaneJezykiExecute
    end
    object acPlikWlasciwosci: TAction
      Category = 'Plik'
      Caption = 'Właściwości'
      Hint = 'Właściwości zbioru'
    end
    object acFoldery: TAction
      Category = 'Katalogi'
      Caption = 'Katalogi'
      Hint = 'Sprawdzane foldery'
      ImageIndex = 11
      OnExecute = acFolderyExecute
    end
    object acRodzajePlikow: TAction
      Category = 'Dane'
      Caption = 'acRodzajePlikow'
      OnExecute = acRodzajePlikowExecute
    end
  end
  object MainMenu1: TMainMenu
    Images = ilMenuS
    Left = 360
    Top = 128
    object MenuItem1: TMenuItem
      Caption = 'Plik'
      object MenuItem16: TMenuItem
        Action = acPlikWlasciwosci
        Caption = 'Właściwości...'
      end
      object MenuItem17: TMenuItem
        Caption = '-'
      end
      object MenuItem2: TMenuItem
        Action = acPlikKoniec
      end
    end
    object MenuItem3: TMenuItem
      Caption = 'Katalogi'
      object MenuItem4: TMenuItem
        Action = acFolderSkanuj
        Caption = 'Skanuj...'
      end
      object MenuItem5: TMenuItem
        Action = acFolderWeryfikuj
        Caption = 'Weryfikuj...'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuItem6: TMenuItem
        Action = acFoldery
        Caption = 'Katalogi...'
      end
    end
    object MenuItem8: TMenuItem
      Caption = 'Dane'
      object MenuItem14: TMenuItem
        Action = acDaneAktorzy
        Caption = 'Aktorzy...'
      end
      object MenuItem13: TMenuItem
        Action = acDaneTagi
        Caption = 'Tagi...'
      end
      object MenuItem9: TMenuItem
        Action = acDaneGatunki
        Caption = 'Gatunki...'
      end
      object MenuItem12: TMenuItem
        Action = acDaneSerie
        Caption = 'Serie...'
      end
      object MenuItem15: TMenuItem
        Action = aDaneJezyki
        Caption = 'Języki...'
      end
      object MenuItem18: TMenuItem
        Caption = '-'
      end
      object MenuItem19: TMenuItem
        Action = acRodzajePlikow
        Caption = 'Rodzaje plików'
      end
    end
    object MenuItem10: TMenuItem
      Caption = 'Pomoc'
      object MenuItem11: TMenuItem
        Caption = 'O programie'
      end
    end
  end
  object ilMenuS: TImageList
    Left = 496
    Top = 123
    Bitmap = {
      4C7A0C00000010000000100000001C1900000000000078DAED5A67589647D67E
      A2C99A686236D96CCA978D2671D3CC060BA204C58E82288A6241C582A1AB88F4
      2E76C44647A40988521544A5171541A44AEF221DA40AD25EB8BF33CF0B048D1A
      93DD1FDF775D3B17F735F3CE9CFB4C3D3367980700877F131C77997089E04BF0
      FA7ECC585FE7AFA684D62E5C1CDB376F7E74DF1793FDEBDF7CCBD683E38EFEC4
      718748C69460F402FE0535D1D9315D177CAB505DDB8FB48C3A4444D420FC661F
      740D2B30E55BFF7E8EB33420FE9BCFF219D7476D8DC23D3434F58385CACA765C
      F0BA0B57D7DBF0F46C40700870F8682F4466DC208291C1B37C9FA9627362BAEB
      1B85DCACAC665CBD5A8DA4A42AC223E8E9154257B70AFB75DAB043B90F9F7CE6
      29E0389D99C3FC37DEF075BAE85FC37383824AE0EE9E0E13937B484CAC467C7C
      3514156FC3DB3B13AB57A761A56C37668A1661CC58FDC061FEA75F84D69DF511
      2022AE0557428AF8B66FDB7E0F3131D5841A484ADE4279792BAE879761D2E43C
      4C9D518689EF1F691BE6CF9813DD374FB10FD3C4F3D158DF02078732E8EEAFC6
      9D3BF5484EAEC7CC192550552B447B7B27A64F8BC6C48F92F0E147768261FE74
      B1C83ED1554F20B6B000D58F9AB1757B31366FAB85FBF94AB811FEF95D3144A6
      65A1AEBE1D6B5627E2AD77E2F0FE076746F85F4EF16F90DCF018DFCF2C46E793
      36AC90CD07F7660A267C9684091F25D200DD80E4BC14747576E167F1048C1B1F
      8BF1132C3B86F96FBFEDE029B3A9101F4E2E47D4CD463CA0F1FFFCF3749A9858
      C24D7CF4B744A42437E27E5A0BC6BD730313FF760D63C7AA5CFB75FE4E887CF7
      6340FF3CB91A7CFD7D110AF33BF0A8AA158E76D5B03B5385F2B27654573D85C8
      4F77F1CE7BF198F0DEF1018E5394F8957F9A705077FAAC30FC34AF1C93BF2986
      B57503EE26B552BD6DB0B5ABC7D753D2F0F6F844BCF7FE39226CA245ACF4C6AF
      FC3384C3B4264D8C267FED36F88DC82D7CF06916DEFF7B2EDEFDE001C6FE2509
      6F4FB88AF1EF1E67DC631CB7713CC76DE39EE51F19B28BFDB3C68DD3F79FF8FE
      B1B677DF3F2D78E75D1BC1DBEF98768C7D532594E336CC233EC92872A3F9FF0E
      96B83C689574C882845D260F965EE49C5D4DF93F2E75793093203A82730C3973
      A45C73B8654360F2A5B4120ABB8528E903C44EA7E367DB8C119DA3C1E417BB3C
      681CE6CFA5BC3CE2EDC8EEC5CEAC1E84370DA0E82950DC33845ED2D92B8C8B49
      77C520781D52E772C486F9A924AF91D78BDD04CDDC5E6830B0747E1FB40AFBA1
      55248056F1003408F48779F659986D1A308DF1E7113FE109B0AFA81FBAC5FDD0
      1B46493F0CCA07B0DABF14B36D522166731FA20C27D330E76C06DF061AA31049
      E24710DF901A66FA701066950C80F923606D60193644D6F3FDC87F2A441E031B
      271AB3F9A463BE7D26C2284F3EA81C62275247309BB025B6017BA95DAC1F1A79
      FD3CD4F304385C3E88C0CA1E489C484C59E89885B3653D58EA55883281708CD8
      789553AC47136340FD302AA1369501961542043F060E26B6404CFFD2BEC54ED9
      D0B9D388DD31B588268BD4A73E1B960B604430AB18C001EA8B75353033C2039C
      A30C61053867594CF6B0650BF7C325CED9D8105486D3C55DF06E26BD3583383C
      84A3B5C0A9065A0F51C4F55701F7E01CF41E6753EC0A2E643738CF0D76B4A6B0
      80C62190B6DEF3348E76ED80FD101C091E9DB4489DA8CE547B70C9A7F93D964B
      39032ECD199CFB5648B964B5D33C60211B4B9A8BF976195830848576D9586E57
      0CEEBC1CF46B52313A18D6A48173DBCAFA30ED074593EDDFAED7DFFAED7ABD67
      B14E6FF33FA5D5E5398FB5E0124E808B3E28AC9F622EE124388F6D606B88C204
      C2F897E06DEE946C00E7A70E2EEA28AD933B7CCCF969823BB93E68D9285B7A1E
      CB5DF3B855E72A98FE49DCC97541AC3ECE5D89AF9771F9FCD70F4C56741478EE
      7FEDFFFF89FD13D4096A8443150204543E7D3DFB2FED8761593F8C1F0960523B
      00E3BA415C229BB2BC5B075143DF57DABF29D56359358043B45FC81F2DC78FE2
      77F1A3044332E66B67FEBEFD535DD62DC07AEB8758B8B6087B8F00FBAD81BD47
      0129C552CC5A96F64AFB77A0DF2ED4A7A954EF16FD016CD41F8482AE30563206
      4465EEBFDAFE1D32B1E87C2644E6DF837FC433E60FFF28608674EAABED5F61FF
      E6AF6477C98B2EBE8F45BFF463DE8E3E4828F5F0F122957ECC924D7B2DFB9F26
      191E202E5F0071A55ECC51EAE363F1B50598BE34FC95F6BFEC7C0E27EDCDEB9F
      C464C557A5417CD57DB0788654F87FEDFF77ED5F68FBBBE9FC63D02494BCA6FD
      EB92A02E9D952B43AA31DB2E8F87986D0E44CF66638E6DD64BEDDF946C9FC198
      CE4C8DA00C1C3F760AF6D64760677D14AECE8E882B7C845C1A2FD68E17DA3FED
      31B34ED15DE16424EC8F98A325CE1C2873021E9EC7E3246B9CB432C7899452F8
      570BC8FE6FFDD6FEC98E8A697D9F3A7102CDB166405709D04D8D69A1F3AFC617
      4D2967C9B73D01D3BBAD9869E8A7F31BFBA73EEBD3B96DAAA343F53A0BB9CD29
      405D18507B1168F2C101033DACF0A978B1FD13F720C5067BF6D025CC1D68A57A
      EBC8556FA0EB4E2BE978120233DD7DF8F96C5AD2523ADF7E63FFD4063B9A7763
      33733426D24651E727442BE9E88D4643BE37AC0CF7639ABEAFDA32B73CEEB7F6
      4F6BCC3117AB6C2260BC4F0B0DD45FB45CA27108457D9E0F0C7576C3EBCC11CC
      B44887B8D57DEEB7F6AFBFF59BF5FA5BBE5E6FA4B86A9DA2A1968666AF9A9A16
      D4D434B1475303567A5A987B17D848C3FAF3817BBF67FF1F10668EB6BB197B2F
      E1071A86A534A4128784FBC7F39072CDE516BB97723A86669CFEBE3D9CDEFE7D
      9CFE7E6DCE54578BD5252AB1D70B73F77AE0AB059B95B83F1786DB33FEBFE7FF
      FF91F33FB8026227EF13D278CC266C896BA2F35FC0F7439DF63235822AE120F9
      E5FEE4FFFF3C62FFBD58EA5D0272F151348452822EB5C180D93315B0BD6CFF43
      EA27B5CDB31530BADD8C690697B579FB4F6E86666C2D1C5DCFC1C2601F8CC86E
      F43555A077E4384CAB003382958B070E1B68E390A10E0E1BEF87EEA1D3CCFE3F
      58E292830D61D5303B618BC86B211814F4A1BEA60A75559508F5BF88DD564761
      6EEF8C88ABC1FCB9DBD9DA82062A0F0BF687A5B15ED652D75C48BA16E198890E
      5F6E65610AB55DDB616E6C040B5323589A18C292C566C6141B4343651736AD5F
      8BD2A2425E96D665EBFCF325B0D4DB8DE6867A5E76957538B4D47FE1F53D6E6C
      40F5A34ADC498C87858911E46CAE43618D1CC2AE86C0CAD2823FFF27AFD45230
      DEABCAB7FBB09505F668A862FD5A791CB23A001323431819E84367EF1E28296E
      C26ED2ABB0760D02FDFDA0A3BD074BDD0A983DBDADADB6A3E44A60000AF27271
      2B211EA74F9EC002C979982EF2538BD82CD1F40D0AEBA83E735C0D0944C0653F
      D89D3D852D8A9B0696B89770FAAA5B988EA9DB9536976969A8439FF6470D3555
      CC9826D2F4C9C71F2FA5B26F25C4C54BC5678B41535D0DCA3BB6638DDCAAC7DF
      7DFBCDAAE7EC7AEA7367BC08E1AD57948D8BDD23EF11ADB132334A6D456794EA
      0A44A9C922467D256234562156735567AC965C66C25E798F976D24C4C5D3922C
      F495D23EDF4E0BAD3D0D8F6EF9A32EFB361E45F8A2F15E2CEEEE598197F1A354
      656851D403295E38B5710690638F745B35582E99845CCBB5680C3881C2BD0B5E
      CA8F64FCB647B0D9300BFBE67D06E43A21D741157F97D8878FE5E9DEB92210DC
      B2087032D7C1AD0C032747581DD6C9C98767720A373C225588DF4827663A9D11
      991E40961D0AED95C12D4F8007DDB7CFD23E7285F61E0B3A97D4E204F02A201B
      0A6F875BF213900EF0F5D7E402F77C815457E2DBA2D87E27B8A551B841762D96
      094CCE1CC45B994FC11D23CE916E70163D500CA27BE49A6B88545BD123C84D10
      D69FE509649C41912DDDEF96452398EAE4C48CC1CD36C07B393DE04E7481FB9C
      EE8D93F4B0E63295C95F83AFD252FFBA6047B4257AC25D7D11AC64264351EC2B
      EA6F2CBCE81C96C800BECB1CC0C42CAADF9AEA3F4EB15537965E10103F0CB326
      7DF27DB2C936582BCD87D34E09F869CF87B52CF1A563E140D322913A886FEEF7
      E1BD4CAADBBA83DA4F3A2C9F407A884F5330E6E2F6E5FE35BEE4DC97928D17BA
      A0D44595FA160AC307B4576753FD144F2C20F933BDE06C08077BB09C2EF6C4EF
      19F64D6FA8AD6A680A39CCF3F39DD421A76A87B93E4D18BBE400CD970DC66C77
      002769074EF418DE9A6A8AEF0E3EA43E7AF88F5A0A22E16AABCA6234572369F7
      4AF8EE5A97C16D4F86424A3BDEDAE2443C6D1AB73DE024CEE2ABA3F57853290E
      DC2733BF7F85FD7CC72DF5BE38C5B9027368EF9C481B2A6727C00487414CD02D
      1AAE7BCCEF9CB35F702BAF34FC8F5F353EA44392B3EBC55863F29BE4AF34FC01
      DF5D8493BBDACCC95DE3E79B5B1BDA3C64BB7F24883C67F723213E3E7E040909
      09DCAD3B49F8457D1FFA134CD0166D8A76427FA209366CDE81C4DB77104772B1
      7171235821BD7C04B232CBB9952B6421B34A01085D8FBEA08D3C585A51E917DA
      B7766087D2566EC7D62D23B89792C2236508F752D3A0A96D005C9C065C9849A0
      3DC1771AB66C5741724A2A9292923886BB43D8B05A86DB2027C3AD5B25CDAD96
      95E6E456CA628DFC7AC8AC55C2F2B5CA90D9A082755B54B17DC72FF865E74EA8
      6C57E234762A715ABB94B8DD84254697B82566FEDC42B3402E333589BB9F9A0A
      ADBD7A40B23904B72D20B845FEF75D736CDDA60C6A27D2536E730B4C02B8C526
      97B9C58617B9E586DEDC72135F6E99D9254ED2C097935F290359B9F540D80608
      82371136F2E9CDDB7E81BAF2362C300EE0A44C2F09398617887F819336F1E164
      2C2E072C36F64376FA7DECDEC7FA2F427D9F2E84EF4F50DAA182CCB4542C350B
      82B4F9A500C6593ECC37BB7849D62200221B8DB069AD1C1414364076DD3648AF
      5386EC4655286C55C3AE5D2AD0A6B34B6483115658F8837118574ADF2B688981
      373E9E3A1FEF4E9A0673233DC8C8ACA4BD8CEE0EC91642507AC9C2253033D425
      1911929504E330EE421D77B8C7E4C03D360F1E7185708D2D825DF06D78EF9A04
      77E5293C58DA3EE40E5FE64E324C9671185772B733928B1A207DF00A640F8712
      C2B0FC5038CEC555C029B692074BB33C56C664982CE330EE3C4D47F8A73C84BC
      4D34144EC560DDA958C89D8CC30AEB38480F81A557539E0295311926CB388C2B
      A9E180B35165D8EC948CAD2E29D8EC9C8A8CDB91C84B8E46EE10583A2936922F
      53623224CB388C3B5FDD0EA6619550F52D809A6F21C5455873FC06642C030941
      4308E4F3589950A680E730AEC48E6309F355CF4252F50CE6F3388BF96AB67CD9
      336079AC8C642487E418974C78CA73E7FA1FC114E1FBC3A8F3FCBA2F2E5F7044
      F8E5533F8DCE8FBDE18D30BF33CF080FBF21C8EB3EC05FA407C12D06626E5E84
      FD715D7CA5508D379703E3A469DF5B02C4DEF485B3CD5E70522C6F108C33F27E
      26DE0EF76BFD70BA022444F9E2808E1CECBDF3713E6C006E617D70BE0A2446FB
      C24A67255C4201F770011867E4FDE4CB3AACD56E05F7710DB8F1A1E0DEA57DF2
      B306709F56111E116AC14DA0FC09745E7D3C244B9C61BE8F9B354503E8682E47
      675B259E7654A1BB83E2B60A42399EB63F4457FB23BEACA3A59C971572847C87
      3336140DA2B6F6111A1A6AD1D6F61869A977D1DAD284B6D626FE774B4B231AA9
      ACAEB68A97157284FCD336C731383880FABA5AB43C6E82A2A222A64EFD11FDBD
      3DD8B64D89B00D9B362922F96E121AEAEB7859C619E6DB1C3F4A7983686A6A44
      2BF9D71515E5D8497B2D0B1273E7F2F1C0403F3A3ADAD1DCFC98FF7D9238C3FC
      E34785FFD76E6D69417B5B1BFAFBFAA0A4B48DCF535656C6C6F5EBB183F4312E
      7BC37BDAF514C78E1C1CE11F3968C9CB32FD4F9E744020E8C7D6AD5B9FF97FDB
      A64D9B90919E41FDAFE17DEFCB7EBE23FC83E417B3D0F5F429BA48B74020E0E5
      8B8B8AA0A9A9091D1D1D2C939282A79B2BBCDCCF2331210E9137AF8FF02DE86E
      C0421FB5BBB7B717FDFDFD23F5161717E3C1830748888BA5B16945F3E3C7C8CF
      CFE1DB30CC37373618911F1818E0C7926174F07477451DCD4F66463A3F0781FE
      9746F866C6867855B87BE73612E3E3909B938D8AF2723EEFD2459F113EDDED13
      4C686F3520BFDF40577B1484BF1D6CCFC0CFD71BBEDE5EF0B9E041F064E8F8F5
      FDF04FED01D347F15F1824BC1AD508B62F2BFF3DBE4672D780CA9D4EFC19BEA8
      7B835568553F1858FA8FF0C5BD1AC72FF36B02B9AD3C58FA8FF067B9D5793B65
      75E168FD000F969EE5DE70E165FCB9DE4DDE733C1BB3A89D987EBE01F3BC1A10
      52DF0F8D7221589AE5CDA032D2037192659C61FECF5E0D9DE78A7B9046CB36A5
      6710257D83B0AC1440ADB88F074BB33C5696D8031CC8EB86047146B57FBAD8F9
      EAC675499D502EEAC38E825E28E7F742A5400896E6F3489702C9CC3E5FD3F882
      F9179971322B5C81E6EBE8C37E6CCFEBC1CE21B0F4D1CA7EC8273E019319F621
      9F1FBF316F8DFB6A537C071C68CE941E7463FB1058DAF611D51DD10E26F3B2F1
      9FE3D1A8684E7DD3226CA6FB8AD21097A5B5F27B609CDEC5C64EF1A57CD70AD7
      2315BDD840772D79EAC702BFC73C589AE559D218CF722A777D197F5DF8E37A95
      9C6E485D6BC51C978AC2317F79478C81A5599E767E37560436D5BF8CBFF26A0B
      247C9A06BE553FA7493F7F18B5547E6079F3FD1E0F2C0968C62BD6DFB06D4E7C
      C1729D38AAFC19FEBFFFFDCEB3E17359D3E5DF29DBE34755477CA778ACEF0B29
      43E997ADFDE7F99F2C37129D6D160829F2B3644E4661A1AE17A6CB99E2F32506
      A2AFC3FF42CEA26FE1B1EB90B74FC466BB78ACD2F384F85A0BFC434ABFEF75F8
      FF5863851FD51C3083EE8F3F6D3A84D5077CF12F997DF872A91E7E8F3F59C6E4
      C06752FA587BE6060EDFA9C299EC561C4CAAC6B2FDF6F874912EA6AC343FF02A
      FE67CB8C3069D17EEC3C178FB30F3A601E570EFDF05C2CD371C4E7AC4CC614AF
      E27FB05097FA69881FD71DC291BB35D00DCB217F31093FAD3B802F89FBB745FA
      AFE48F135549FD8BA86AD15FE7EE85F195646C770883A4D6414C14D7C03BB335
      8AA8FCFEABF8E21B55A4545CC2BCF78764C236B703C6D773B0E9541076FB2442
      E55C38FBB8EBDB97F1B57C6FC51EBAF5106E745776AB04CE970FE0F0DD5A1C4E
      AA816735E53D0458F96EBFDB0ECFF3D5BCE2828F25D7E2F8BD061C659C3BD538
      46F1218A0FDE7A8423A483E5B37226A7E57B2778345F3724ADD632BE02BAA139
      B0CBEBC4B93201C54FA07B357BD4EF4EE8D1781E48780865D79BB5A3F97A5733
      E05D0F6C3C71110713AB7020BE1256898FB0C32D968F0F2454F2F90A47BC71A9
      05F8C53D1AA3F94AB6C1092A1E74F738E4060DBF647ECED4092AEE517CCC7EB3
      7C052A57F58CC536BBE084E7C66FCA9FF1DBFF13B878F1E26FE0EBEBCB5DB870
      818B8D8D455454D43388898901E573C37811DFDBDB9B73777747477B3BEF4F32
      B491EFC510493AA2A3A3999E17F279AE8707CF4DA7BB78705030DCDCDC101418
      48FEE963444444A0847CBAA1B6BC80EB89CEAE1E64E7142027371FEEEE9EB871
      E326AFA3A5B91937895F5A52C2FB96AC1D2FE21694D6225C9F43714503C26F44
      C18DFA12161646BE79335F7F626202EF47B2368CE636B774A0BCAA05D70C3934
      DEB646B8118787D5CC1FAF447959295A9B85ED4F484840636303CFF7F1F1A1B1
      F220DFB41DD50D4F1046DC9A487D94784BA3E1D6215CD3E5505DD388DAEA1A38
      3B3B93AE32F22563D146BE7A546424BCBCBCE86ED18C86A65684EE675C6D9487
      28A2226423C20C3834B5F6A1BDB91D1EE7DCD0D5D181ECF454B85F49C7D327AD
      54BF90DF493E7B4B4B1B5A3A0670558F43D54D158452FFDBBB80DECE5E5C76F3
      C69B8E0AE8A536DE89BB818F94CB31D8D38EE8A808B678455D5D5DD1DDDD8327
      9D04F24FAE6873E826BF0BBD4090EB058C0F31C5D6701B343DAC40687C36DEDF
      463EF04007CF67FF77623A5C5C5CD02F184077AF00BDFDFC1509212E5EF8A282
      EE6C3652C8AF2B435652224EC734E2C3EDEC75A39BE78F5A8B70261DC3E192B3
      3BB8CC63E0B2CEE2CD33727439798A849868AC8F00FEAA54C26E0B347E23FC31
      3417AD191919384F7DF17075C38907A11873560E6F9C5A8994EA7C54E4E7C3CC
      E90E266C29C51EB77ABE8EC8889B23F5B377041B1B1BB3D0AB5793E3A92D0559
      3910B4758DB427EAE64D087ABB9EB91744463ED37EA6E343C2376C3C4E1CB736
      09090E4E89A2F5722FE51E3F570CACCE084224E55FBF7EBDF215FFF31BD1F50A
      FCEB3FF0FD60D2E8F7C3516F88B1AFF38FC991F7435A3745DD420CBF21325DEC
      7D6FAEFDF3C8C27C47FEFDED2AFF7ED8237C3FDC95DD0365C2F5A601FECDAD94
      D651D9C00B406B8BDDC2173A65F3FA33BAD9FB611FF60C418BA15080E597CB30
      E3C47D4C7B0ED36DEE43EC4C3A163A66F36F782954D77E52AA4FCAD99BA141F9
      2056079492BF5BCFF727EFE9AFC8A525904B7151BFF01D93E998437D9DC57412
      D85BE31CF6ED4F742376E7F7433DB70FAA0FC88F1F855D0FFA10D906B0B74B56
      7F25846FA345646FE4FEA394B0B77800FB8A04D857D80FEDE7B09B70BD95EA27
      FE021A4F0352B0A78CC680A04ED024F3DC43D07E09F691CC95517C733287F379
      952889BF84A2840014134A120351CA70EB57942406A034FE32CEE556E272C730
      3F8BFF5EA030CA07D93101B813EC84D80BC711E37904516E8770F39C15AEBB58
      22D4C902D13EA7901D1B80BC481F7877313E7B3FCDC271BA09655DF74294EF29
      781794E3408BF01B041E2D4258517B7D0A1EE2A6970D3248D693E64CD25E38FE
      B63417E9616E087332C749CAB7237DF64F081D43F11361DE598A43EC4C78592F
      5A430B1CB2B1C829BB7DB66301EE5F754198A309663B14F2ED5A30EA3B240696
      C7CA826D0D79D9D90E053C97DDC3982D2607D9E38A9D017EEFEC0F3AAD8BE420
      8761B9E92FB83BBCEEDB3F1FFE17A518A0B8
    }
  end
  object ilMenuL: TImageList
    Height = 32
    Width = 32
    Left = 560
    Top = 123
    Bitmap = {
      4C7A0C0000002000000020000000174300000000000078DAEDBD0754D447F73E
      BE262679D38BD198624931C5126B2CB1F7DE2B8822A208A2A0886241510115B0
      80141104EC62C102A2821D445044BAF426028220BD97E77FEFECAE220105D4F7
      FB9EDF3F7BCE731866E6DE67E6CE9D727767F70340827AE0CF3F6FBE4BE8DFB5
      ABB7558F1EB702BA77F74EEDD2C5AB84C1E9BFFEBA15D0AD9BB715D7E1BAA8A7
      DE57A163C71B1F923E7D42FEB871FEF99B3625541D3A9481B3679FE2EAD53C5C
      BB968773E79EE2F0E10C6CDE9C50357EBC7F7EE7CE37F35986655F87BB4387EB
      33484FD6BC79A1C5C78F67E2CC991CD8D96562DBB6C7D8B4290D6BD7A662DDBA
      54181AA6C1D4341DFBF665525B7270E244265454428B59B663C7EB331ACAFBC7
      1FD79A50DB4D060EBC5D6467F718478F3E8581411AB4B593B16CD923E8E83CC2
      C28571E8DFFF0E060FF6A7742C56AC90E62F5FFE48B4EDD8B1A770704807EB20
      5DA6ACB33EDCBFFF7EB509F5FBF4C4890185478E64C1D8F83134341E62F1E287
      D0D44CC6D2A5C9D0D24A469F3E7EF0F2CAC4952B19D48EBBA26D9CCFE54B9648
      C1767276CE02EB223B9C66DDF5E037A1712E3C74280BBABA2950554DA2FE3DC4
      9C39719832259CFE4FA0B624A373672FAA5E25C0696EDB82058998362D02F3E7
      2760D1A28750537B8855AB52C0FD20BF28FCFDF76BA62FE3FEE597CB337AF5F2
      2ADAB72F83FAF308CACA4998372F0963C78662D0203FB26B34FAF5BB2DF4D7E4
      57568EC7DF7FFB62C386285177DCB850AA97447E9024C6C4C1E1097AF7F62A62
      8EDAB87FFED9F3C376ED2E676DDBF6107A7AC9983D3B9E9040E37B9FFA7D0F29
      2945828BF54F98F0E01FFC93274760E3C668F17F6A6A31D921004386DC27BB25
      424929016BD63C8289C923300773D5E4FFE9274F7DB251D1F6ED6998352B8610
      8B0103FCA1AE1E8A828272A137383897F2FCA85D71FFE09F393386FAED8BA0A0
      1C915758584E3E1026742828C409ECDC99C6E35044FCFAD5B9DBB6BDF4EE4F3F
      79E46FD9F290C6308EDA1E2D6C3E72E41D141757087D1E1EE9E8D5EB36F53D1C
      8A8AF1FFE0677BB15D7AF7BE0D57D734915F525241E37097748561FAF418F2A3
      78F2C964301773CAF95BB7BED8BF67CF1BC49F8C499322C89691E8D1E3362E5D
      4A177A3C3D33D0B3A70F954562C68C18EA6B6C2DFD8F15E071F8EBAFDBB40E48
      DBC07384754D991225F46EDBF68874DDCC67CE6AFC560A0A41955A5AB1649F70
      0C1D1A88B97383847C5151B9B003F761EAD4A867A8C9CF369B364D5AC63AD807
      F3F2CA44B9A666A8D03971E203F2C578B25F502573CAF9DBB4B918A0A51549F9
      1118332694FCF80E0E1C7828649D9C1EA26FDFBB4276E2C408611F464D7E793E
      83EBF5EB7717363689A2FCF8F114A193FB307B7624988B39E5FC3FFC702175C5
      8A6892E3310F16F6BA7BF7A990D5D20A136D67D971E318E1A27F3D7BDE166B8F
      D4BE3E228FC1E58C61C302C99742848EFBF77384CE51A342A87D61B4AEC48039
      E5FCDF7E7BBE444F2F1623460409B92E5DBC919B2BB5DD881177282F58C83246
      8F6648EDD9B3A7AFD03B746890C87B8E10A18BD70AD6919F5F06DA37317C7890
      E8DF9A35B1604E39FF37DFB895E8E844919EFB34DF035EE01F3EDC4FCC639695
      83758F18115C0B9ED7E1F60D19E22774E4E448F9590FF74F57371ACCF99CDF35
      75C18250920BA0B5DC1FB48F2322224FC8CE9B1724D6775E8758BE26B8CD8C9A
      F9AC47492950E878F0200FDDBBDFA2BDE81EB53180E661189853CEDFA2856BC0
      8C1901A28CFDA47B771F31E758D6D4344ECC275E47060CB827C07A5E06AEC3FE
      C1B2F2B5837D84FD78F4E8005ADB02C19C72FE66CDCE5A0D18E05549FB14AD31
      D2315DBE3C5CC826271709DBFDFDB71FC9DF113AAA83FD9C513D8FEBD2990869
      69C5CF7C98D78FDEBDFDC8FFEE531BBD2B9953CEFFC517A7FBB76DEB9ECFEDE2
      7632780C12120A853CEF3B5DBBDE126DEBDD5B0EBF3AE02BDABB6D5BAC908D8B
      2B207FF2123664D03A03E6624E39FF679FB9BCFBF9E7A7F3274EE4F6DF16F2CC
      B76E5DA4D0515656497B6988C897B74F8EBFFE9242FE3FD7E1F5A6A2A252C8AE
      5C1921FCB95BB75B623E4C9AE40FE662CEEA7B00FDAFFFCB2F178BC68EBD834E
      9D6E82CE4E625D39742859E8E13DC8C82846E8E7FE48DB288797E0609B1B1BC7
      88359365F6EE4D143AE4183FFE2E7EFDF5621173D5DCFF3EFEF8E4879F7C722A
      AB7F7F6FB2B317DAB7BF46B821E4E46BB9DC9E6C5BB607CF4D5E1F162D0A15BE
      969454F8ACDE891329D4072F74E87083709DCE4BECFFDE600EE6AAED0CF0D147
      27667CF9E5E9C24183BC49F63AB5F50A7EFBEDAAB005DBF1E1C3A267FAEB427C
      7C019D5DC2850C9D77847CE7CED7694EDE02EB668E979D813EFCF08449F3E667
      0AFAF665F9CBB4577A0AD0B94CF8E4FAF55170714915FB3CAF6B0C4E9F3A954A
      E7E1483136CC4B7BBCC01F7F5CA1B5C08BE6FB99820F3F3CBAE365DCF47A4F22
      F9E4B30F3E38E4FED557A70ABB75BB4ABA3C417B9500EDD9C2267496059D2785
      7DB99F9CE6BC76EDAE501D0FDA5B2EF1FE42799EE41357D1AC994BE1071F1CB8
      2891FCA739717CCA3CB5734B3E23B4A0649BF7DEB3B6FBF863E762F217F2034F
      D27701DF7D779EE08EEFBF7F3998BB43074FF635B08EF7DEB37092489AFE46BA
      5B4BF50B9EA635F8FF43F882F02DE12742FB77DED1D36BDAF470EE679F9D28F9
      F1C7F3A0F941BA99E33CED1F6EBC860A709AF3685E0BCE9F7F76A73976BCA469
      D34379EFBCA3B39E7475637D32BDDFCA783EA8BBFFA29DBF12FE94485AF67FE7
      1D43FB77DE3954F4C107478ABEFCF254D537DF9C253E571A1337811F7E7045CB
      9667C16554A7F8DD770F15BDF3CEC6FDA46A38E9E829D523F4C9FBCF63D0A496
      317897F009E16BC20F849F65EDEE2A917CD8472299A3D9A489E9D9264DEC629A
      3471CA92480E9531384D79B14D9A98B84A248ADA64CA8124D34B2A27E47F96E9
      63BD1F30D12BFC90DBF111E12B99BD5ACB74FC4EE820EB4F57995DE5E82ACBEF
      20ABF7B34CAE25E1F3FAF0D6D19626EC2B32FFF858A68BDBD55CA6BBA5CCA65F
      CBC6F55359DBDF27BCF3A6E2F0B705EEDB60AB80F3FDAD82D0777720FEAE059C
      CFE554CF4D668B37F9FA9475C75098114127A2C8E25A40F95CDECF320832FBBE
      C95773EE1F73CF092CC5BCC012A8D4C05CC2153A0EF7D87E0F7D2CEED76AA397
      4166BBF375D8AE05F387D2D6A21A5C02F5901268845603FDAF46F9CE69958826
      5B4497340C51A5403C1D05B80D75D84EF007D2D6B988F896849560690D6812D4
      A94C2DA4615848981F528A706A3773C8E64CADFC77885F23AC145AE1A5D0AE05
      5A322C9541EB19CAEAC4528206C19774F793F2B7A88D9FCB6EE5034B1E946259
      442996D7033A516558115D0EDDD88A3AB182B02CB6125749777FCB97F3DFA03A
      5A9165D021AC7805748977555C25269F8C43EFEDFEE85917CCFCF11783FCB6B7
      39F92DF96EDF7FFAA3E0BF4AE1C6F268D65D86953165581553FE4FC496438FFA
      B426A112534EC563CCD13844937F3DA0F10D2F7A098A9F238C1055F1823FB6E8
      4FFC9772015DE2D5238EB50915589B5889B54995585703FA0FAB308DB8273AC7
      61717839F958295483C8CFEA81790403EA875F56397A6DBD7197B89BC9F9DD89
      5F2FAE02FA8955A26FBDCCEE0AFBD5446FC2C4E37158165901ED07E463E4B38C
      25AF426829CDED521CA0796C79371D1D175BAD93ED1782FF1CF1737FD57DB331
      F270346E1700DE3426B7AAC187E04B5816594E3E5886E5E4AFF585366109CD97
      ABC4A3E61283CF7FE9DA59B6A711FF7D9CCE01363C02A6BAC463C5AD27B8925D
      8525E46BEC93DA7290CF2F63BF27E8D6819551E558195D8155D195E43332507A
      050DFAB6C40A783EA9C0608B3BE9C4FB3DEF8F72FE13D4AF4D14910EB409C29E
      8412B25315749EF9E28BD0AB036B68AEE9C7030689A42B09D8FC508A8D94D6A7
      BC434F00B33B99E8BA7CFF0ED91E2EE6DF00B2FF719A7FAB228A30C43E1C6769
      AD377B588ED571E48BF5C03AF29BF50952AE39FEE1F8D6711524065D09DD65E8
      8A1694B72D2A1A8BCF64A0CD90794365678467FC47698D52BE9C0A8DCB293893
      0DAC275BE927B0DE57A152F46F6B0AF0A78B0524DB8741E1862576277A615FAA
      BF00A767519E64D7287C6BBE99E75D2BD9194BF00FA4B5E928CDD3E10EE1D819
      5B8C7DE964C3A40AB2E1AB61487D36A5F0ACDD31437C64390956493E500A3B81
      8FAF6C80E4ACBA00A739CF26D9175FEE55247B0C76AAB617B618446B814D6615
      06D904E328F9E1AED42A182657C2E815304EAE8209F9CCC2A048EAF7709826DE
      44AB5BA6905CD485C46D29E42F4E735EAB5B66D8F1D0071F5BCD8464C58001B2
      B35D8BC1D641D00FCD83B26B228E90EDB7A456923D5F0DE636279F6A75601594
      BCF7E00F3FB2B1E76A483C08E7B59EF3535AE451597B3F6BA8FAEE87C478C42D
      D919B1C5D03DC198E39680CDD4063BE237CD20FFAB077610F71E9ACF12836ED0
      8C7687E4327353DF2F2E87C455FD393FA5451E97511DAD580F484C464276966D
      31CC3604EC03CE14B6DBD1BA639D5F3FECA1BAFB69FD976CEA895E214EA47B15
      5EF5925CD6439FD083C43F4A7E1E68317C4F601EB781FD6000AD05F5C5A0DDC1
      1865150BC9963EF8EE9E152457D7BE9A9FEA7C1F6043FCA3E5FB31AFC1DD7E9E
      A0B9B4ED28D5250DC2F0798B7FE83D65A1C4A41F243EC690781B42724D1F922B
      7A905CD27ECE496991C7655CC7672B24A663E4FCEFC9D6229E936D1A88D622DE
      D1EF7B4FE2A603891FF9BECF16593BD63CE7A7B494778BB48E1BF9C1C6E101D5
      CE634D64EBC17B0D04CFE12F25E37F9F23D93D19923B3B20B9BB1D12DF6DC4B7
      F1393FA5451E97711DAE3BBEFD1C99FFBDEE8BE7505BC9AA41E724363320F1DF
      054900E10EF5F3B6B1149CE63C2EE33A5C9765A4B2AFFB6A228BDB3B4974079E
      97584C81E402D93BC01C92602B2938CD795CC675B8AE54A6C91B8A61DE95F950
      27C9F0761A12FDA1C112D3D1521F67709AF3B84CCAFD55B5F55FF206DBF099CC
      AE3D08830843651824CB6B2BABF3A6B9AB8FC5FB32BF6A2E9B5F2D64E9CF6565
      4D24FF43AF7FE3FF7FE3FF7FE3FF7FE3FF7FE3FF7FE3FFFF17E27FA9FF944B11
      2B03A575C867B72695BFBDF83FB60CABE3C9772826D5A7F86D3DC5B0EB33A4D0
      A7F41A8AD70ED01A6E7A37035D741CDF68FCBF9678F569EC0C1E03EA9ED918A0
      1A8836ED3CD0E6574F2928DD4F3508BBFDF2A0763101AD86CF7E73F13FD533A0
      38D8300B18A71F89CEBD6E62F5C6241C399D8F331EC5029CD6DB94842E7F7BA3
      A78ADF9B8DFF1F512C4CDC239685A1CF501F389F2B84FE8E1C0C98998E764352
      0438CD79C7DD0A3160DC1DFCD6E3DC1B89FF8D989BDAAA7D3D175DA9DF874F17
      62BC6A163A8D4A47D7B1E9E83E5E0A4E73DEF8055938EA5A843E237DD1AEDBFE
      D78EFFB7D15CA66E61B05A100CB6264371590EBA8D7F82BF263D41CFC94FD04B
      064E731E97292ECF81D1AE54FCDEDBE3F5E3FF4C6037EDF1EC5F160E85D4D72C
      741E93898E239FA0430D701E97759F9005CB83C568FFF78DD78EFF6DC867EDE9
      10F9737B4F686F2A21DD39AF8CBFB9CE32A312E2BFFEDAF1FF40AB400C7108C2
      6F9DAF60AE4E09FA4ECD7B253FD751D62D41C7BED75F3BFE6F334279F1777DC7
      2F6CDFFD1A26AA16618C4A21062BE4A3FFF43CF49BF622388FCBB8CEC40545E8
      D4EFFA1B8BFF7FEF7AEADE488554CCD02CC314F5124C5E548CC96A3540795CC6
      7546CE4E45FBDEE7DE58FCFF6D5BCD39DD06FB62B6768580825619149696BE08
      CA9397771BE28BEF7ED27CA3F1FF6F3D0E9DFB6BC45DCCD3A9828A6E15E6ADA8
      84B24E8500A7451E95711DAEFB36E2FF5FBBED3FDF7D982F262F788285ABE93C
      AB2F05A7398FCBB8CEDB8CFF5BB49EABF17BAF53C11DC8BF3BF4BD26C375701E
      97FD1BFFFF1BFFFF1BFFFF1BFFFF1BFFFF1BFFBF89F83F4A1EFFD785B712FF27
      6002C5E01A111558104EFB7C38CD5DC6031928AD1C06A88456607E70D91B8FFF
      279C88C7B2684093B0CC3B091BED0F63BBC11A98CAC069CE5BE69D088D48F2AB
      F00A9A57656F2CFED78EAE82561CC5CB074EC17E972962A3A3FF71CE8D8D8A86
      DD4E536C38EA86A5312443B6D2A4B9F0DAF17F34F9743CC5A747CFC3C9663750
      5981DC90D3883FA88858A7A9883F3C0B0F4F2F4261CC25D10E27EBDD54D70DDA
      24B385FAF7BAF1FFCAF82AE8F926C1DAD458E84F3AA58527779C509A1987E2C7
      212888BF89ECB013787C790D32BDB78A3A5626C6D0BD9D847D4F00133F8AFF97
      3732FE8FAFC06ABE4FB0D709A181C1C8BA7F1C4FEE3AA13C370545A981C84FB8
      86DCE833C47F00997E5B917E5D0F85095711121084F5B6FB7196C654E5541C5A
      0D9B3BBC51F13FF9E65AB2D166DD65282EAD1036E77E337701F1E4C59C435EE4
      11E484DA203B602B9EDE35C253DF4D282C2EC7269239497DA418AB44166B346D
      70FC9F5C05032E5BAE8572DA53E20E4C47497AA8E8B7E08E3E8AFC287BE4475A
      102C9117BE0BB9019B515A4632C46F185E829E1BCEB9C8F681260D8EFF53A8EF
      3486FACB9650FFAB90787436F5DB8B6C7E56F49BB90B63AD51FCD01EC5C90E28
      8CDB8382701314155760E34A6D285F788C76D35729D4D807EB1FFF93EDB76411
      FFD2C5C8CCCA4132F9794ED8491AEF83C2E6DCEFE2247B543C3982CACCA3287D
      44ED88B544E6936C6C26FE81F6D1BCE6FD288B9D9EF13728FE27FB1858DBC1FB
      C60DA4079E44FAD575C2D7B203B6099B73BF99BBEAE93194A7DA212FE526BC6E
      DE84BA81057A6EBD7E59B607553F03372CFEA7F57B67642AB66D5883D4B40CA4
      DF34C2939BAB917DCF18F9E1E6288ADF8332EA7779AA3D4A1E1EC6C3E4346CDA
      A00F7BF36DF85161A3B2ECFCFFC2FED7A0F89FCE80FD6C1E60E1462BECD86A84
      878F1E233DF41C72EE18223FD008451166288DB54276D2352424A6C0C8D010CE
      470FE371721C9C6D4C21BBDF5CFDD5E0F8BFCDA8059ADF0F5359BC506996EBE6
      8D06F0BC7C15B1F10FA92DE9A23DB17149F0F0B80C830DEB61B2C5087E3EE4A3
      1929F08CCDC0DF3B7DD07FCB85DED5C6A0B1F13FDF6FEEDAB74F6F8DC58BD482
      572C5B061D6D6D014EABA9AAFAAFD55B0527FB3D387D781F1C6F46E0541ABF77
      4C6BC04E6FC8D67E4923E3FFA6D5E2ACBAE2BD7E84E19B56EB6299C30DB43D01
      287901EED48615B45D0DD92DDE877CFF2DC67BCD646DEB3F6CD319B43A0CFC71
      9CD6586FE0522630D8DC07E2EEC2DB7DBD2FBBF7DE7FDCC66368436DF8DD0598
      7D22E4F270F35B759D07DF6A1BC61A3863F4C613CCDDFDBFD0FF9A6DE0EF040C
      96717FFB86DE7F69481BBE94D9FCCBFF32F7BFF1FFBFF1FFBFF1FFBFF1FFBF9F
      FFFFFBF9FFFFDB9FFFD7019E2F5B13CBDFEAFDFF97817DCBE17125C5FFE98D8F
      FF1B8935043D826B36C7FFB18D8FFF1B897504D347957079528941BBEF373EFE
      6F2458973DC5ED46F7B2D063FDD906C4FF5530229FE4B8BF567019D779E17D82
      7FCA6C261C25BF9F733A113F4DD39B599FF87F0BF9E2D6C7947E228DF98D6B80
      F3B88CEF1FF0FB02F2F7076A93E13B024EE45F7F594557D52BFE277953F2C16D
      D14FB165C70E18E9E9C0683563850C3A226F8BB121B6C53C1575CD5E2263C832
      6B74B175C36A6CDDBCBE68D9D2C5EDAADBBF66FC6F49BEB83D2E1B46AB9623F0
      8E2F8AF272519C9F8792823C1417E4A388D285941778D70FC606EBB13D3E1B16
      B4AE6F8FCF8131F1723ECB14C9EA17D3DF221902EF07C0D870333416A9FD26BF
      7FF162FC1F84BFADC2A1B35C07C1F7EE22F55132F65A5B6295B626562F5F8255
      CBB528C6D58293C33E3C4E4D4180AF0F3475D7A3AB4D3C96EBAC44585080C8DF
      636D25EA717DBDE54BB1729916F63B3A2035E511EEF8F9426FE58A0C590CF042
      FCDF66F8BCC5CD7B8E53D5555741E6E354ECDD6383B98A333C7FE83B51AD59AF
      89AABAFA06156B56EA6005E95DAEB5042BB497424F6729D610984787FE5FAEBD
      4494733D5DFD8D955FF79DB1803846CE5552BCCCFA9EA43F86F692259071D78C
      FFF933FD8E9AF395F0302116869B36A073C78ED364F17E47ED452A282C2C444E
      4E2EB2B3B30939947E0EFE9FF3B9BC88EA69ABCF87EC3BD86DBA74FE73AAE126
      033C4C8CC3A2850BAA9F47AAC7FFBC2E7CAB3A571161C181D86A6C8459D3A79D
      927DF7B9E5EC99D3121467CEC08C6953317DEA14F177D68CE95020F0DFEAF95C
      8FEB93DC371F7DF4E14754E724EB0B0B09848AF2DC97C5BF2D66CF9A9175F8A0
      13AE787AC060FD3A2C5AA08AD9B3664249611616AACE23A8C0C17E2FCC4CB660
      C2B8314524337EFCD8318F4DB76D15F98B16CE278E39505254C06C8599429EF5
      B03ED64BF9152FE1FFE2979F7F9EC472B636D6B8E8EE864B17CEC3E3A23B2E7B
      5CC43E3B5B585B9A437FED5A8C1D3D0ADF7DFBED541E9BEFBFFF6EEAB831A3B0
      7EDD1A2AB7201FB414329E97DC853CEB617DACF7E79F7E9CFC92F89BFDB275EB
      56AD664C1837B662DC98D16050FF307CE850FCDDBB17FAF7FD1B8306F4CFFEB6
      65CB99329FE135ADF5F7DF7D3763D890C1155CFE77EFDE183268A09093EBA0F6
      66B769DD6AA6CCD73E78C9FB2AFF91D5E953ED7D9DEA18228BE75BCBEA3656E6
      65EFED7C502D66AF0D5FD4F84CBF3132FF0BAF266E6AE37ABB2E1CA37C7EE168
      63F705A34F5C58302AE8D2C25105975447C04B4F09B7562BC173E148782E1A5D
      70496D4CD0C545634E5C5834D6D84D6DACF2F945E37BBF467FDEBBBC787C96DF
      E6C578E0688A84738E787CCB0D79117750F1847FBF87EF54E5A0302B1545D969
      C88E0D41EADDAB48B8741C11C7AC116CB3193E068B70597362568D7DADBEAF2F
      BCD7AA1047199095083CBA0F24F80011AE40C831E08E39C1183EA6F37167A73A
      821D0D10B2DF103167ED10EBE68447DEEEC84D8CC6DD7533E5EB69435F2D6EAD
      5F0014D301E1D661E0F601C0CF09F0DF07DCB305EE5AD05F33F8EED4C05D730D
      DCDBB10877B7CC87CF46251A9719B8BA641C32238310B049A1B1EFE7B5F05A37
      1F28A48DDF97FA7BCF99FA7D1CE14EBA309ADC0908DC03DCDF013F734D045A6B
      41A3772B1CD51C83FB266AF033988B1BCB272323E4EEEBF1AF9907E467505F4F
      2278DF1A6C57E8890D637FC7DA113F515BF612FF4EC11F62B30CF3BA7E03D5EE
      DF61E9DF3FE2E0BCA1F0D69D8EC7F7BC11F81AFC3757CF0572D3A8EF2ED019D0
      8A787F81FEA85FB16A481B20C8F6197F90B536E6FCD91CF3BBB684F29F2DA0F0
      DB17B8BD6A3AD27C2F23C268E66BF02B03D97448BC7382EC7D52D81F21E40B81
      0EE4079640C00EF8EED2C4BDDD4B1064B10461E48761A6AA08D93C1BF7564D44
      8EB70B92378E6B343FCF71643DA4F1A7B1F73B42ED201FBC43FEE7674360FFDB
      4EFC8BC9FF162370C742DC365685EDCAE5D0D3588B194A9B3174F939FC30DE16
      9211E79F4846BAE223E5CBF858E53224A3CF4132EE5C8164EC9920C9F8D32724
      E35D8C25134E294B269EAABE5EB4F058380A7892802AE2AFF43D4470A2B41DC1
      9AF8CD9FF1FB93FF87EF54C107D34EE3E3C5FEE86B1A81D90712B1D6E331EC83
      F3E0915E8E089AC96184103AF786924BBB4797C0F6D653E89F4986B27D14866E
      0DC2F78B6F4232E9BC7CBD68E1A1361A480AA171767D29FF3D737544EDA473C3
      F02BE05FA57223FDBB68D836D0B2313DA2028328BEFEFC4E3E2477732131CC81
      C42417BFDA17A2876321E69C2981BA7B1976DEAE820FC5072DB56ECAD78BE667
      E68F8C7E7AF30C35DCF3057E61FF3BBB85FFDDB1D044808506A2997FA8A7780F
      63002D53BD6E57E04FDF72FCE25B8A6F7D8BF0B96F3EDEBD47FC5B73A430266C
      A2FFD7135613B47270310A68BDEAD9FBFF5FDACF1CE410E5600C447B11AF945F
      8C7F00B52198FC3F82D6595B1D84EDD142FC6E1548867922B41418EA47F17200
      B52118E8486813508E66770BF17E00F19810AF691E246685942E85640BC180D2
      2BF2E0125A851F567ACBF93F9ED6E597115E2B15690CEE11EF515A07C8FF820F
      E19E8D0676297683E1F87698DFE33BE80EFE19AE8BFB4332F22AFC4B801154FD
      17AB00B287216133BEB2BE83E6F74BF0C1FD3C29FF0EE25BE00349A70D907420
      28517A55210EDEAFC2B7CFF9F9BCD9DA6DC1A88CBC9B34EFC2CED39C3F8673FA
      D3B171DC6FD832A53DCC6674C4E27E3FD29AD30A2B7A7C0AC9986BF0A1787524
      6D15925F3521E9AC43580EC96F1A681E5826E3271BEC2C82E43B3548DA6A41D2
      86D092D27A45B025BB55E3E779D0CC686CAF8DF70C3580442FF8EF590EFDD1ED
      B069FCEFD83C81DA30F9772CECFD0316F7FE0ECABD7E15FCFC9EDE88BBC09020
      A00F397C27C28F4195F8DABFE8B9FDCDC8177794D0DF7248B61136537A553E76
      7857E1B325D7ABAF171FF26F16792C1A575A7AEB28D68FEF08A7C54371DF5613
      196EEB91E5BE161736CEC16503459C55EF4BF6BF02778A2987FBD2F8FB55E2AF
      3BE5687FA714ADEF14A319F9BFE0DF96236DC336B2853161539ED40775736178
      AD92D685B3D5F9F97D98E6F37AFDA1E2A3477E10E146E3407BD17D7BF2419A83
      41E6F0DFBD1441969A883357A6F97719A7B2A4FCFDC9F77B90EFFFE15B8CD6BE
      8568E657839FE700CFC58D047D826E0ED67810FF44D79AEB259F077F76501872
      EE81850E104E6BF13DDA7BEE583C5B7F0368FE47EF22FED1EEB04D0266073690
      7F5D0E9A1BE541CD85E6C2A47FF0CBEFF176765B38362B7CE7529A038ED2F59F
      F65F5FDA7FEED1FC8FB2588056330E42C5FD29D4C399BF023DFCCAF0C79D12B4
      F62B22FB173C1F7FF6C16D0423C246C2BA5CB4A33931D23E83ECEF1C5DCBFBE1
      EFCADAD49BCE83590FA8CF08B0225BECC65D2B6DE25F8CA0B5D330476903BAED
      88C1AA58E2271FEC4976E8487ED836B0025F07D0FC0B21BFDF5E289D7FDB296D
      427E675C4CE39F8FDE7B4BF0D3AA605A43AC1DEA883FDE937D36D7DB7ED6D0F3
      9E1A13C1B8A2391937964EC611C57EE73EFABEBBAA44E986F8CD8921B4EE48BA
      AEC0FB0A36F8C2DC079F9F89C37BE762689E45D37A477FE7D33AFBB78574FE6D
      2AC6B8236568AAE849F376F208594C29A9A30D2D64BFE735706EAF3F96CEEDD5
      5E9BD33C3E02A34FA7CFB99A07455A4BBFDF4E73B9BB2E247D561317A19F1E24
      ED56D17A40F87525243F2D8344E12A7EB028C79FDBD3C9F75C32643148D357DC
      67FE44D68E5632C87F3BAD85A4CFC68DCDB56E433381D65FF2834FB59D21E945
      BC03D64132449FD63BFADB7E0DB583DA35EA30F96139BADA97E343555AF7FB1A
      6C94BDF75C9F33BB3C367FB75A7DB15E48C69E2B1DEB9983D1C4DF2114F862A7
      379A8C3482A4F70AEA33AD895D3743328FD619D332B4342F469B2DD4F7C9AEA5
      B2DF47FBF035E215B15E48FE505269AAE489F12115E81654813681E5F83AB412
      1FD0E628B1A4F5CEA254F8DF07A60568B52B1FEF28D0B877505291F9FD3BAF19
      3389F54232D4E65C4B83FBE8FF80D65FF27DB1FF05E64BF73EC2BBA6F9F88AFA
      FE81863F9D8FF69C93BD8FF29F3778EFBFB364AC4BD6170601F83D8CFA7F8FF9
      993B174DB6E7E103DA83DE5D44DC934E67C97CF74DDFFB17EB8564DCA9AC8FC9
      0ECDEF17E13F91C568625E44FC05902CBA47DC2E59A28EB4EE9BBE7BFF6CBD90
      0CB576974C70836482AB747D9D42E9E19427E5FEB691F1617DDB205F2F06547B
      BF61802CAFC55BE4AEB95E7C5DEDBD86AF65798DB579D3251AEAEE5A4B34A1A9
      A1EE52CFCFDE9B725D2D4D4DB0EC6B7E5EFF29E9606EA8AB2FC67CB525505EB0
      147355353177FE628206E6AA2C92410DCA84F9F3D5A0AEB6089AEAEACCFFBA9F
      D737D7505B88D8F804C105C71F81637D813313818B14B35D5D0278EB51DCB489
      F6E9ADB45FEFA4B38B25E62ACF476C5C3C58B68ECF9CEB1D9BA92F5C000D0D0D
      28CE53070E744195F318549C9983F20B4B507E652DCABD0C51E163864A7E9FE2
      3EC50B613650983D0F1AD47FF517DF636D14BF1AE988894BC02CE545C091BEA8
      38390325AE1A28B9BC06C5378D51E26B8E527F5B94053AA22AE42010E988594A
      2A24130FB537C0CF7DD05EAA0D85B96AC08961283FA38CE24B2B887B0B0A6F1A
      A1C073150A5CD5517874324A0F511C7BA82714E62C14326FA4FFAAF3B1C3CC0C
      339516002EE350765E1D451EBAC827CE5CB725042DE451BAE0D41C94384F028E
      0EC24CE26719967D5DFE052AF384FD6728CE075CA7A1C25515452E73907F5E13
      B99EAB917B792DF22F68A3F0DC7C949F9C061C1F8219B355850CCBBE2EFFC2F9
      2AD05BB9120A4AC4EF3601384D383F17959EDA28BFA98F52AF8DA8BC42E76577
      559A17C4EF3244D46519967DEDFE938E35AB5763F6DCF998345B1D63666960F4
      0C358C9EAE8AD1D354307AEA3C19543086FE9F346B3E66CF9947327A58F006F8
      F97382B884444C9FAD42F3FF271ADF7E64039AFF1768FE5FA133BAD76AE9FCBF
      4BF33F689798FFD367CE461CAD19AFF88CA15EFCAA7395B0415F1F5315C8FE07
      BA02CE639FCFFFABD2F95F49F3BF4A3EFFC3F760EA74456C58B70E2CFBDAFC4A
      0A30D8B0019367CE137DAF7CD5FC8F72C2E4698A424655695663F89B8E5E77F8
      ECA87587D1576B0F5414A68BF577E2B43962FE579C7DF5FC9F386DB690515198
      86BE4BF760CCC69318BDF6F0D97AEC45EF8E5CED747A2CD5EF325D071B8E7861
      1EF11B6EDE8489D389FFF47894BBBF64FE1FA7F97F6C10D59D4B329B852CEB60
      5DAC9375BF642F7E77A49ED3E9710627D073F61AFC3E4411C3379C241DD3B0C5
      D80813A84F709B4EF37FC14BE6FF749AFF43455B5986655907EB629DAC9B396A
      69C3BBC3751D4E8FD677462F257D741CA38A0EA35531CEF83C94674D457C02DB
      5F81F8274A7DDF5D19559769FE7BAD4799F726545DA5F97F81E6FF599AFFA787
      62128D7F02CD19961D67EC2E74B14ED6CD1CCC55AD0D4D872CB7731BB2723FBA
      CC5C8D6F3AF6C7B79D07A165A781E83A7B3D86F6ED896DC686983E4351CCF7A1
      93553078A232864C50C290718A04050C9661E878458C99A284193314C4E7A003
      FEEA8A6E14ABB22ED6C9BA9983B99853E60F9F0ED671808367301C2E8762FFB5
      07D87F3D921001C76B11B03FE78585F3E660D4B8C9E45BBFD1FCEB4FEB1CA52F
      D27A705D0BF0590BF8F1FE6F0A84EC06626C3170D0102C98AB48B2DE70221DAC
      4BE824DDCCC15CCC293B9B34EFAF6D877B318F3164ED318CDA7002A30DA41845
      1861E082C397EFA34BB7BF9062F23B71F3FA4B6B01DB9C7FE3CCCF84B869DD09
      B4A6B96F8FC433EBD0A57367920920D9D342C7337DA49B39988B39E57796FB2F
      B1C5F5B0648CDCE882F1466731D1F89CC004C278C228A3F3D8E37A17B7747EC0
      95353D7071E3305C309E8C0BA68AB8B86B3E2E59A8C163B73AAE5A69E0F69E05
      D873D647C88C97E990EB63DDCCC15CCC293FA7F65FB2076E01891867E48A29DB
      CE63AA89FB0B98B4CD1D63B65C84FD8D24D85C7B089BABF4F76A026CAEC44B71
      394E8A2B71B0BF168731C617844C4D3DAC9B39988B399FF16BDAE0B86F3C266E
      BB8469669E98BEFD454C234C31F5C444138A35B77960DCD69AB824309E30D1C4
      43D49DB6BD163DA49B39988B399FF12FB686E3CD584CDD710533CDAF61561D98
      BEF31A26EFB886F166D7308E612A8399348FCBB84E5DF2AC9B39988B399FF35B
      C1EA720C6658DC84C26E2F285AFE130A84E916DE387AD11B31217710157C0791
      4152709AF3B88CEB2858D6A1837433077331E7337E0D4B985E8881A2CD6DCCD9
      533B9408B36CFC70EDEC615C3A730C174EBF08CEE332AEA3B4A76E3DCCC15CCC
      F98C7FD16E6C728DC69CBDFE50B6AB1B73EDEF63D0725BF45B6A45B0AE012B51
      C6755EA68339988B399FF1AB5960F59958CC770A260441B52EEC0FC13CFB7B98
      B5EB2A14682CAB83F3B88CEBD4253F5F20587031A79C7F00A575CE2441FD582C
      21E6258885863381BFFB28102F83EC7FE7D87AE960AE01CFF99BF7996374ABBF
      9A39FA2DD8557F2CAC8106C8321773CAD63F5E833BC8DEDB1BFA5FC24019E7A7
      F23DA8C6F747DE36E4FD6E5AED1E7EAD67B1BD9666E70D0DD66399E682F3F58D
      FFEB2B53E37B00B5C6FFFBEDE86C5B510C6D75C5FAC6F2F596A9F93D84EF6716
      9DFF6666259A4FAF44333ACA7C48479DFDB6DB9092140B2DB599F8742AF0351D
      B1B8BC36BC4A86753387DC2635F83FFD6652318E5DADC0912B8C4A3879004EB6
      2608BAE78BA56AB370F02A1DC1AF56893AB5A12E992324C33AB90E73C86D5283
      BFF93763736177B6045F0CCF41B35179F86478198E3999E1C6E573D05DA280CF
      4755E2EBD1F9683E3AB7567C3DBA76996624C33A593773C8DF13A9C1DFE2DB11
      4FB07A7701BE199E81EF4765E29B11F9D05E690EEBED7A98AAB812DF8E2AC40F
      A3B3D06AF4935AF1C3E83A644665099DAC9B39E431494DFE9683523075F9137C
      33E811BE1B92826F8764E0930E47F1518713F8B4E3317C3794DA3534053F0C7D
      542BB8AC3619D6C53A593773D4C5FF499724FC383809EFB78FC57F3A103AC6E1
      3F9D12F141A787F43749FA7FC7D857A01619D2C53A593773D4C5EFE976006FFB
      C51C75F19F387648D4E1FB810F93E290FC86C0BA5827BF98A32EFE2387A4FD4F
      4A4C209944243F9423E9957894CC7828F06259A2D0C53AF9C51C75F11F3AE024
      EA243F643DC9CF90F228058FD3D2F0243D0319E9E9484D497D56969A9222F232
      9F3C415666A6F85BB30E8375F28B39EAE23FE0B44FD44979942CEEA9321EA7A5
      92CE0CFA9B0227274798EFDA85A75999484B4D11C8CA7C02E763C760B97B37AC
      2C2DB1DBC2023BB66F17325C2ED7C33AF9C51C75F1EFDF6727EA3017F3329E64
      A4E3C6F5ABE8DBB72F7AF5EA856EDDBAA3A8209FFAF858A090D2FDFAF787A2A2
      22162C5880792A2A229DFD340BE98FD39EE9619DFC628EBAF81DEC6C459DF4B4
      C7242B05DBF39EFF5DD8585BC3DAD20A3D7AF4404971B1C867949694509BBA21
      382808951515282E2A425E6EAE284B7F9CFE4C0FEBE41773D4C56FBF778FA8C3
      7D9683ED9893FD1465A525D8B76F1FBA77EF8E724AF31870BEAFEF6DD1260F8F
      4B48235FE07AF979B9625CAAEB61F0CBCED6A64EFEBD7BAC459D4C92AD8EA764
      CBE2E242D8D9D9A16BD7AEA8A828473671E7E464C3C7E716FEFCF34F74A376B1
      1DC68C1983070FC291974F6DA03656D7C32F97E3C7EAE4DF63BD5BD4799A95F5
      02B29F3E1536B7B3DB2BF8AB2A2B91CBF78DB3B351909F8FF2B2322177F1E245
      0C1D3A94DA3056E47179753DFC72773B5727BFCD6E735187E5AA232F2797EC5A
      0A7B7B69FFF9959F9727DAC063CD691E777EEDA679C063C47C5279A99DB8CE93
      8C0CB89E71A993DFD27CA7D0919B9783DCDCE7C8CFCF43797919F6D9DB3FE32F
      20BFE7FCE2E22294D2989794148B3ABB687E327F4161811873F603D657525C02
      1F6F2F9C71395927BFC54E33A9EEBC7CD15E390A0B0A846FDB137FE7CE9D451D
      BEDBCDBEEFE4E8889B376FC09FE6C8D1A3873164C860CC9FAF227879DE454546
      2032E201D9DD15F703FCE172F2789DFCBBCC4C846EBE5F5E409C72F0FFE5C46F
      4D73F0D75F7F15758AC91F2A284F5353031D3A7644972E5D846DD6AC598D84F8
      38785EBA80AB973D71F6D449B89D3B8B3B7EB7C55A79FCD8913AF9B79B6E93E9
      2E425151E10B601B5755558A72B673714911CACA4AA4F569EC797DE3F52899D6
      FAA0FB01703E7258B6E35589B1E279CCFD3FFA92F5DF6CDB1621C176657FAF89
      32CA673F94978BBFD40E1EE7E487C9888B89C183F030F8F9FAC05E369773C87F
      781CE2E3627093D6D143FB1DEBE4E7DF0AE057597939F5B7B45EE071784C6B1B
      EF6F3CD6A121C1B871ED32EC699D2922BB08EEF858DCF1BD25FAEFF892F577AB
      E126C15F49F3BB9CDAF04AD0F8B30D787DE5BD36263A4AF4FFBCEB5938D23AFB
      94F6C38484385ABFEFC0E79617D92016767BACEBE437DE6CF0FCA05255552F94
      D13AC3739DFBC9FB7C7858280ED31E7B8EE6F9A3946404DCBB0BAF9BD7A95DA1
      B40666C2C6D2A24EFE2DB2FE37E6C53E19121428EEF97B5DBB46B68884D78D6B
      B8E57D13110FC2C49940FC168DC5AEBAF89BEBAFD1BB65B4C9009B37E863D386
      752FC5C6F5EBC4FBB2DB4DB682E7CD4E9ABBE63BB7C362D78E7F80F377ED3093
      97E7D7C1FFDF88C3F9FE7F57F93DED9AF1DF7F290E977FE7A63EF1EF5BFFEEFF
      EBDC37F8DB31E508E1A8E4EDFD9E629DAF569357B59C70320B8CB7F09DFC57F6
      BD8B79D80E8BFB056074DE11B8F60DDC276AC8EBE32EF669C5FE99E5F07F5A0E
      4E57FB3EE75BFFAE4827C3EB33175FCCC1A9F4721C4829C7628F1CFCA1777AE8
      7FE93B2D1F74D91DE57A38A2086A2145981D5888A39145E86A197DEEBFF49B1A
      9FF53B90817B7955187FB750C03BBB02FD0F6640F2CFDF167AD3AF77BA92AF19
      DCCAC3D6B8524CBD5728C069CEEBFAF6FDF0A3EEFBD28A2FA594617650116604
      4831857029B50C3DF6BD553F6CF2C72A97C1934E65E14446056604164131488A
      19844369E598E29205AEF396FCF0FDAE965127EDC38BA01D590AC5E062CC9181
      D38B1E507CF0A008E49B271BE8874DFB38A6F9FDE598816EFBD2D1B50E74B14F
      4727DBC738FFA44CF0CD0D2986B20C9C56249C7E5C865E4E19A26E5D7A98A387
      43067A3B3D8E95ED439FB14C64051042C7D9E0A22A04D581E0C22A6C492C8512
      55540E2DC13C1938CD795C1654F812790235130FCA8139EED9F2DFFF6ED66D57
      F08DC9B70AA04C76550A2FC1ECB0122832429F83F3940873092A54677E0D70DE
      5C599DD9A12FCAB22E21CF75886392773EFEB20CB921BB1FC77BC79F5D4DFCBD
      469FCF816A44291646964195C69331BF1AF8FF05AF406D320CA193748F220EE6
      92DD0B94BFFFCFEDE8F2ABBAEDD621C7B3A042E3AB1E5D06356AEBC288D703EB
      605DAC9375330773C938E5EFCD3795DDC5FEBD59F7B133FB1F7C0285DB05D08C
      2B834674291645360E2CCB3A5817EB64DDB2BBBF5FD6F2B9C03BB2B5A32DA1FF
      5F96D1F163DD73B138A69C7494432386DB524F505D966159D6C1BA58A74CF747
      2F5923E5DFDFFC8ED0B3B3E175D7C1CE595025DF5E42FDD08CA91FB82ECBB02C
      EB90489F81FD9D4C777DD6A6F764E7D02E1D375C3EA17CE12996245460496C79
      BDB094EAB24C2792958D75F346DC3FE5335DF32E3B82DC4D438BB1E951059692
      4DB5EA01E6671996957137F67CF8450F5AAF8EA7574227B102DAA477D92BC075
      B4A82ECBB06C23BF93297CA1FD2A9761E368BF399E036893CEE5041D19562455
      40F761A500A775AA9571DDA3D900CBB28E46EE47EF75B3787040D7B740FC36C5
      F224E62110DFCAE42AAC4E0594EF1641E1562156A741E4AD7828ADC375773FA9
      82AE5F01584723EF1E7FDA7D6F72AAFDA37218A7497957255762754A15563DAA
      C2248F3CFC69E875953196D634CE1365C9529B6C221996651D8D399FB7E8AFD0
      6AC8D127385300E8A554422FB512EBD2ABB02CB602C34E64E20F1D676BD9BDEE
      DEED293DF0C8132CA732AEB39AEAEA920CFFDEE960D2C1BA1AEAFB5DB7DFD79F
      77250F0773813564DF0D4F8005F74BC067BF1F95B6E849A4BF69D05C86F63F51
      5E2FF237E53B45A2EE9AC78013F98D3AED35ACAB8173E0C3EED671DEDB624AC5
      F335D792AE299EB9E8ED908EAF7B4EE035B49DCCA6EFC8C0E9765CD66B5F6AC9
      78F71C216345FC5B494777AB58EF067EDFE28B5E741E71AD04CDFB4A0C3BF914
      BD6C93B264F7D9E56B68931AEB26E7F177EFFBF7DA9B9435F068260C4896750C
      38F2A441F3F03F5FB76A4967A2FC5E8EE96074D27777968DF5F72F5943E56B37
      D7E9DD69FD4567B97C1FC7D47CD6D990FECBDE271822DB373A36600D95AFDD1D
      65B22FBCE7D080EF137C51ED0EFFC70DF49F7765325FD77CCFE1659F81FF0FFC
      16E02BD7E4AF062C19DF66CAA6D4F62ABBF087F20EFCA6648AB6930C525B0E5A
      3ABEBEEB6C23F9DF6D3D5CC7E1AF558731C0C413831946E7D16FF551F4D2B445
      E79986F8719096437DC6A911FC4D5A0E561FD05DF71006995CC230530F8C6250
      7AF8FA9318B86C1F7A2A9BA0CB9855F8A697F28057D9A111FCEF7750DA72ABAF
      F105C13D66C7654CDC790593E9EF78C3B318B1C209FDE799A1FBF8B5F87D8896
      CFABE29F46F07FFEE7222B0C3072C3C8EDC46D7E1533765F87A2F9154C333E87
      B13A8E1834DF0CBD26AF47FB11BAF2B8E28DF17FD9B27DDB6ECB1C3068E3698C
      36BD84A9BBAE42C9EA3AE6985D403FD55D683F6605FE18B90C7F8D5D8D2E2357
      BCF23B1F0DE47FA74DE789C3DBABEDC6EFF3CDD159CD12DD16EE4607F2B7E6FD
      D430D9D81926F732B1E4981F5AFFAD82CEC375F061F39F5ABF41FEF77E1CB068
      E72F4A269866E1813EDAB618A06B0FF543BED815928B9DC139D8E29B06439F14
      0C5962810E43B4D176E4AAFD2F9B070DE4FFA4EDC8D5453F4DDA00D3806C38D3
      B9CAE921601D518CED01593022DE0DD7E2A07F3906D3B71E47DBBE8BF0CBB80D
      C5927FFECE7263F8DFF9FA6FD5596D47AFC3CFE457FAD71FC2F11160F9A05070
      1B13B7C1B578ACB9148555EE0F3079D361FC324C173F8F5B8FAF3A8DED5AD73C
      6C00FFFB5F0F5C7AA8F5E8B56837400BF3F6DE805D422576066563AB5F1A36DD
      48C25A8F68E8BA8541E76C30866AEDC62FA3D6E0C7B1FAF866F0B2830D5DF36B
      3B037E3570F9831F46ADC54F23F53056EF00F6C697C38CFCCDD03B996C1E8B55
      E7C3B1FC7420B44FDDC388958E64FBF5684DF6FA7A884E645D63D000FEAFBE1C
      B2122D86AD462BEA579B612BB1F17A124CEE66D098C763F5C508E89C0982D649
      7FA81FF6C16F130DD0966CF5ED8835F8729076A4A48EDF376A00FFD75F0ED08E
      FA6A882EBEA1367C376C153ACDDC0AE3DBA964F728E8BA8640FB64009638DF45
      BF25D6F861841EBE1BBE1ACDA8CD5F0CD48E913CFF8DBF46F7FFB3BFD5AF7F3E
      70053EEDBF1C9FF4598A813A0EC207F4DCC3A9DFF7A071F836669A1D41BB89EB
      F025D5F98CC0F53FEBB5E0F41BE83F8F5FC7F73BCFBDD549D90C93687EADBD10
      824374B6B408CDC35AF7102CD8EB8E491BEDB070DF054C353D854EB40FBCD765
      7EA8ECB39C8F5F93FFBD119AEB07A9EFBFFC74C5197FECB89F8943E934FF690E
      EE0AC9C3A69B49C2EFF52E44605F22685E3C852ED5E3FA2C57D7DDC37AF23755
      B5BB7853F3F04DECA2358EFB6CF3201F3BFCD3601E9489BDD125D89704D853BC
      6B199A835D01E9545E20EA717D9623F91BB5B5A11EFCEFCDDF7B316DC395681C
      A0D8C381D6BB7D0955B027F05F8BE06C185D8B8403F5D9E87A24768764533E9E
      95737D966379D653731D78053F715F8834F44A1276B6A5986A4F74593594C336
      8651510DE522BF7A3D966379D6C3FAAAB7E115FC9FCFB7BB84C36C6FB2B17564
      B1805544112C65B08A287E962F2D2B96E54B21CF67F9C3E42FACAFFA99E025FC
      4DC6E89A8ED471F1875332B03BBC50C022AC10FBE22B708C62EE636457A7840A
      988716887CF3B00238D0FF47A8EC480A8D01D5E37CB92CEB617DAC57BE1FBCEC
      B7B0A76CDAABB5F66238EC696CCDC9C7CD43F2494F016CC8C64E09657049ABC0
      A5A795B08B2A247FCF856D6421CE3CAEC4318AB51DE2CB443DAE2F95CD133EC1
      7EC07A6BBB775A83FF3F33B71DB430BC9988BD7115D8722B19465E89B009CFC3
      F6FBD930BBFF14F69179389B5A8C03B17930A3FDD8EE412E0E2716604F58AE28
      E77A5CDFE866027606E6604F5429B6DE4E01EB95C8BEF7FE12FE4F94ADCE4558
      51FB2D42F361E69F89B56E81708CCE16FBBC31E9D9E4954C9C19389A984BE79E
      1C4A676277E0636CA67C2EE77A5C9FE5B82DE6A4C792F4B15EF97EF412FE2F55
      EC2E15B1EDB707707FB3A161EF867D514FD1476B2FFED2D883B59E3158793E02
      B6A129D03A7805BBFC93B1D23D82F2A34539D7E3FA2C6716F014A6F7B27080FC
      4265EFC522F97AFC12FEE6AAF61E38269E139B891D81B958687902ABCFF8D199
      CB01DDE90CBC9CF6BBA5A70268DFF1C78A633769FF8DC052DA83389FCBB91ED7
      57B3392DE459CFD127C0A203D76BBD775B83FFEBD93B8FDF5AB0CF138C45FB6F
      60A0CA0ACCD8E288992687A0BCE702E6DA5C80C28E13986EEC80699BED31DDC8
      41FCCFF95CCEF5B83ECB2DDA7F1D725DAAFB3C6AFDDCFFBF7407A0CECFFDFF8B
      77006AFDDCFFFFE20EC01BE66DBA73E7CEB304ECD8B1E31FD8B96B17CCCDCDD3
      B76DDBD6BFB6F3F0EBDE413035353D7DE0C00154F12F05E6E5212F9FEFC549C1
      69BE27C5E5DBB76F0F95D4F27B93AFC1DFD4CCCCCC6B3FE9E67B4EFCBBB2B7BD
      BDE077DB07777D6F0BF8F9DC427050208A646D303131F9C7772F1BC92FFABD7F
      FF7EC11D121C84BB7EBE024EFBEC60CE776D084EF67B7187DAC177B2F89E9683
      8303DBE185363482FF05EEB0D010F8DFB983C0800071B779AF8D35CC4C4D1F0D
      1D3A6485C5CEED8F0E1FDC8F007F7F14D0D890BD70F6EC59F60BB7EA7B5163B8
      0B0B8BC45DAFFBF7EE12F73D84920D0E38D88B3BC893264DE2E78C76FEFEFBEF
      86EF77B013F7A2F20B0A04FF8D1B37606969F9C277201ACC4DFD8E8A8C445060
      108203030941080F0DC5F1A38760696505C5D9B3A7F3E79A5BB76C75713E7210
      612121D4DE02B63D2C2C2C606565F5C25ADCD07EC7C4C623FC412CC223E2101E
      1E21B823C816FC5BAF274F38E3D0C183E5870E1DCCE434E73D080B157738B9FF
      EC87B2FEB7A827FFF3F1261F8A4F484244740ADC564A042263D2101111838807
      11D486705CBF721997F8F76ADD5D718DD21161E1027C8793FC1FB76EDD1236A8
      277F359B172331E911A2E21FC3555782E2E4DB045FB8521BA213D211151D87A8
      A8484413F81E2083D37C2791FFF26F136FDDBA55FCE53BB2F5E07F81FB61722A
      E21E66E21C711724DE44D8DE3E029CE636C43FCC426C5C226263621013134DFC
      D1948E465C6C0C521E3D1273CFD6567ABF9CD7C557F0BFC0FD28251D098F9E0A
      EEBC580F3C70188C074EC3A5A034E7711B1253B2C5F8C4C5C60A5EBE079B96F2
      088E4E8E34F6A6F0BC247D261EFBE14BF85FF0B5B4C799487E9C27B873A3CE21
      E2C070441E1C8DC8C363A5E034E5E545BB8A3624A764222949FABD87B4B45471
      67DDD3D383E6A505F948F8ABF85FE04ECF788A948C22C19D1DE68CA8C3631075
      743CA28E4D244C7A86E863131073748CE04F799C4DF64E157742F9BEB29B9B2B
      62A21E60BEFE61A43E4A10F771EBE07FEEE7C4FD243317E94F4B7096B89F861C
      208E8988769E82E8E3D35E40CC89E9883D3E05AEAB24C8C82E43464696B8FBEF
      B0CF01278F1F476545392EB89E42FF6537919946016355656DFC4D89DB4DBEB6
      3C7D9A87CC9C0AC19D19B88F38A622E6E40CC49C9AF502625D1410E73213E788
      3B33B70A995979C8C9CAC621C7FD58636B86EC2719282BA198C87C3B5AA8C621
      27E3615DFC9F1E3C7850EC11FCFBDD993964F315A433C05670C4BA2822F6B4D2
      0B883B3307F16766E32CD9FC6921F034271FB9247BCCF120C66D5B8A1557F7A1
      24AF00F7FD7DB1D7F912BE9C9784C2A7140C5555D4C6DF5CCE9F9B9B8B9CFC72
      9C25FE44D7B988779D87B8732F22DE55050994CFDC79C5BCEF17233F3B1747F7
      ED87BEB32324DBFA233D2D8D2F32932D6C61EBF9105FCD8B47494E6A9DFC1B37
      6EBCE9E4B45FACD3F98525282883B07FE2F9054838AF8678B785029C4E745F20
      CA0ACA8182A25214523F8FD93B42FFE441B4BB69815E877450995788829CA730
      32B5A0180168A61C8BF2BCC775F18B3B28EBD7AFA73638A180FCAFB8A412C595
      C019B243D2A545040D1916893C2E2BA13A25C4739CB8558E5861E0A36B9038CE
      8395DF692A2CC78DCB17A1B9FB0AB6F9025F2B47A3B2280355B5F3CBEFA07493
      B781D79DD20AA014D236245F5E2AC0E95271479CCA0A8B71C2CE098A872DF07E
      F411FCF9E03824C68380A272BEC48DFDB6E698E098838DDE4073E52812C822F7
      ABA873FED56C43517109CAE96047CDC0E9E512014E5750DFCB8B4B05B7D2D1DD
      9044ED45DBF853F8E4C27A4C3EB991782A9192180763733B0C3B0AACBE29E32F
      CF21FEF297AE3FD5DBE0E8E844E3502ABD932E039F33CB4ACA68BCF743F124ED
      E3897690C438A065D20948768D8557CC7DF0C3292F9F3F038D7DF731F624A07D
      1568C1FC95F982DFEC15EBAFBC0D6BD7AEBDECE8E888F2F28A67F7BC4B4BCBE0
      B0D71E638C3420719A0AC9ADF5903C3C004990393ED83141DA40B2B19DF9364C
      3D598A496729F6BBCCFC91FCCD0A293F9D035EB5FF10BE59B3668D13EF95DC06
      F9BD7CDB3DB6B878DE9D6C5185FDC19EF8D391DAB1B92F24260328CE3F2106EB
      41F07DE8DBBA60D205603A4189F89BCD61FE526A5A597DF8C567E07FFCF1474F
      5EC3297E00AF0FDC0E0F0F8F7FDC7D4FCFCDC2E36CE9F78B2AC931CF9C72C600
      ADAB683637162DE646E22BE25E6AF748FCC6774579BDF9D9062DDBB66D3B7CF1
      E2C57BC9679EF0FAECEBEB4B36ACFAE705FC2AE97706F8FB4066E27B24E5328F
      297F0E9A7BFC7D817AF24B64F1CA37B2BB067F77E9D24569E5CA95E7E91C55C2
      E7B8103A57BED0041A9FDBB76FC3DDCDAD5AA32AC59A8F67DF5D297FD5FE5F9B
      1DF8B3FD66B2CFF7F93704074C993265DDEAD5ABAFD3BE05575757C4D2998375
      F339273535F5A5DF55E058B101FCD53FDF7F4F22FFFD4BE9EF28F6A475FB16FB
      07EB64B0BFF25FEE23B7AD3AD8EE5C66686878AB81E7EFBAEE1A3CFB8D5049E3
      BEFBFFBAF16F63DEAF685EEDDEE1FFD4E7FFFF7F05FBF5D03DC139F5790622D5
      7B2A7983BF2529E3FFA281CF40FCE20DF3B778DBCF40ACEB5988D5F95FF90CC4
      C7D26720C694360ED174A64CA0257940B5672156E77FD53310F9F984EA0FCAA0
      1E51DE28A8455420A0E4197FF39AFC2F7B06E2327EDE5B548578EE7DAFEDFC4C
      3FD9B3FD1A801EFC4CC09D0118641D5C73FD17CF00F4290096324F642974E490
      3DE770656C8578DEE0D86371E2B9920FF8B97E850D43188154CA9FFDF7023FDB
      847FD37D455C1556C6558AE71B0AC4578967124E3C1A239EBBB7F881EC997FC1
      F57BE65F75CC0D2A4550D1B36751BEC0CF36E9BD2B403C37B117D98A6D2C471F
      C2C41371D08E2C87163F472F4CEA239A0DC0627E7E26C1BFB076FE81D4FFBB64
      577E0E253FF74F0E7EEEDF6D7E3624F90F3F6F50BB8EE763BE0AEC53EC5BBEF9
      75F4DF2A906C5F29C67FC9032934394DBC4B999BC03ED8182C177F4BB1946CE7
      9DFFE2B338E5FC83897F4D028F75059645533B6200CD1A58D248681158E7329A
      3FD7EAE2B70CC43A0ACF57C403869179F0F5B984E8EBCE887C4DB08E406F376C
      269DDA7180471DFC83885F9F9F57179D8FA86BC7107CFD24E282BD9116174608
      6D24C2848E10D21574FD143645E5C3AD4EFE20AC4F07EEDD3883A02BC7117AFB
      2222EF5D47A4FF3519AE36103239D2C1BA82AE38C3EBE605B81430FF3FE7FF40
      E237C804423C0EC2FFCA09DCBD7A0AFE574FE21EB525906443AE3A23B49EE0BA
      2CC3B2AC43E8A274D0A583702EAA9D9F9F2BBF291B08BC7000773D8FC3EDD00E
      B8EC35C22997C350B376C45013070CAF27B82ECBB890EC499B4D38B77F3BEE90
      CE00F70338F2127EE35C20E0BC23FC3C8EC1EDE00E9CB1D908CBA43C18925DB6
      5278B5AD9EE0BA2C6399948F53561B70EE8099D0E9EFE688432575F39B906FDC
      39BB0F3EEE477076BF194E59AE8361B6F49986DBD200937A82EBF273114DA81D
      272CD6E08C83A9D0E947BA0F107FFF3AF877D0DEEE7BDA16DE6E0771D6D10427
      76AD8109D9643BE9D99ED140900CCB1EDFA90717FB2DF03E7F10B749B753193F
      8B37A8D6F5DF9242B4DBA7F6E0E6B9FD24B3152748D69CF62B2BB28B7503C132
      2C7B7CFB4A9CB233269D0784EEFD4438D0EA9FFBEF609BA0BC9E5611F071B1C1
      B5330E38B9D71827CCF5D0D32A4AD86BC0EEFB0D02CBF4B48E82F3AE95386E6B
      483A1D85EEBF8883B96AF0CBEF5B8FF23A698D2BA7F6918C119CCD5773E1A8D7
      F8DC77D4B19DABE06CBD49E864DD327D2F7C165CEDBE75BB63365B7C3C4ED8E1
      A8F566EC3658EA23BB6BDFD8CF7CDB596CD0F4396CB911AC9375CBF4BDF05970
      F5FB76D53EFF7E214E6CE4EB95FA6AF0578F275F8813DF407C5AABBEFFABEFBE
      FF2FDE7FFFBFC0FF077529FAFE
    }
  end
  object ActionList2: TActionList
    Images = DMG.ilRozne
    Left = 288
    Top = 184
    object acKatWyz: TAction
      Caption = 'Wyżej'
      Hint = 'Katalog wyżej'
      ImageIndex = 0
      OnExecute = acKatWyzExecute
    end
    object acKatNiz: TAction
      Caption = 'Niżej'
      Hint = 'Katalog niżej'
      ImageIndex = 1
      OnExecute = acKatNizExecute
    end
    object acKatWszystko: TAction
      Caption = 'Wszystko'
      Hint = 'Wszystko'
      ImageIndex = 2
      OnExecute = acKatWszystkoExecute
    end
    object acKatOdswiez: TAction
      Caption = 'Odśwież'
      ImageIndex = 3
      OnExecute = acKatOdswiezExecute
    end
  end
end
