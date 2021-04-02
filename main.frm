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
  LCLVersion = '7.3'
  object pnlMain: TPanel
    Left = 266
    Height = 701
    Top = 56
    Width = 915
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlMain'
    ClientHeight = 701
    ClientWidth = 915
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Height = 250
      Top = 451
      Width = 915
      ActivePage = tsPlikInfo
      Align = alBottom
      TabIndex = 0
      TabOrder = 0
      object tsPlikInfo: TTabSheet
        Caption = 'Informacje'
        ClientHeight = 222
        ClientWidth = 907
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
      Width = 915
      Align = alBottom
      ResizeAnchor = akBottom
    end
    object RxDBGrid1: TRxDBGrid
      Left = 0
      Height = 415
      Top = 31
      Width = 915
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
      Width = 915
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 31
      ClientWidth = 915
      Color = clActiveCaption
      ParentColor = False
      TabOrder = 3
      object edWybKat: TEdit
        Left = 101
        Height = 25
        Top = 4
        Width = 809
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
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 244
      Top = 2
      Action = acPlikKoniec
    end
    object ToolButton8: TToolButton
      Left = 185
      Top = 2
      Action = acFoldery
    end
    object ToolButton15: TToolButton
      Left = 236
      Height = 52
      Top = 2
      Caption = 'ToolButton15'
      Style = tbsSeparator
    end
    object ToolButton18: TToolButton
      Left = 1
      Top = 2
      Action = acFolderWeryfikuj
    end
    object ToolButton19: TToolButton
      Left = 70
      Top = 2
      Action = acFolderUzupelnij
    end
    object ToolButton20: TToolButton
      Left = 177
      Height = 52
      Top = 2
      Caption = 'ToolButton20'
      Style = tbsSeparator
    end
    object ToolButton21: TToolButton
      Left = 127
      Top = 2
      Action = acFolderCzysc
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 757
    Width = 1181
    Panels = <    
      item
        Text = 'Ostatnie skanowanie:'
        Width = 200
      end    
      item
        Text = 'Usunięte: 0'
        Width = 100
      end    
      item
        Text = 'Zmienione: 0'
        Width = 100
      end    
      item
        Text = 'Nowe: 0'
        Width = 100
      end    
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Splitter1: TSplitter
    Left = 261
    Height = 701
    Top = 56
    Width = 5
  end
  object pcLeft: TPageControl
    Left = 0
    Height = 701
    Top = 56
    Width = 261
    ActivePage = tsFiltry
    Align = alLeft
    TabIndex = 0
    TabOrder = 4
    object tsFiltry: TTabSheet
      Caption = 'Filtry'
      ClientHeight = 673
      ClientWidth = 253
      object pnlLeft: TPanel
        Left = 0
        Height = 673
        Top = 0
        Width = 253
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 673
        ClientWidth = 253
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Height = 85
          Top = 588
          Width = 253
          Align = alBottom
          BevelOuter = bvNone
          ClientHeight = 85
          ClientWidth = 253
          TabOrder = 0
          object SearchEdit1: TSearchEdit
            Left = 8
            Height = 23
            Top = 31
            Width = 218
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
            Width = 218
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
            Width = 241
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
            Left = 226
            Height = 23
            Top = 31
            Width = 23
            Anchors = [akTop, akRight]
            Images = DMG.ilCommon
            ImageIndex = 5
          end
          object SpeedButton2: TSpeedButton
            Left = 226
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
          Top = 583
          Width = 253
          Align = alBottom
          ResizeAnchor = akBottom
        end
        object Splitter4: TSplitter
          Cursor = crVSplit
          Left = 0
          Height = 5
          Top = 176
          Width = 253
          Align = alTop
          ResizeAnchor = akTop
        end
        object pnlFiltry: TPanel
          Left = 0
          Height = 402
          Top = 181
          Width = 253
          Align = alClient
          BevelOuter = bvNone
          ClientHeight = 402
          ClientWidth = 253
          TabOrder = 3
          object pnlFiltryTytul: TPanel
            Left = 0
            Height = 18
            Top = 0
            Width = 253
            Align = alTop
            Caption = 'pnlFiltryTytul'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object ToolBar2: TToolBar
            Left = 0
            Height = 26
            Top = 376
            Width = 253
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
            Height = 358
            Top = 18
            Width = 253
            PageIndex = 0
            Align = alClient
            TabOrder = 2
            object ListView: TPage
              object ListView1: TListView
                Left = 0
                Height = 358
                Top = 0
                Width = 253
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
          Width = 253
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
          Width = 253
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
    end
    object tsBaza: TTabSheet
      Caption = 'Baza danych'
    end
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
      Caption = 'Weryfikacja'
      Hint = 'Weryfikuj folder'
      ImageIndex = 3
      OnExecute = acFolderWeryfikujExecute
      ShortCut = 16471
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
    object acFolderCzysc: TAction
      Category = 'Katalogi'
      Caption = 'Czyść'
      Hint = 'Poprawia zmienione i usuwa wkazsowane pliki z bazy danych'
      ImageIndex = 13
      ShortCut = 16451
    end
    object acFolderUzupelnij: TAction
      Category = 'Katalogi'
      Caption = 'Uzupełnij'
      Hint = 'Dodaje nowe pliki z wybranego katalogu do bazy danych'
      ImageIndex = 12
      ShortCut = 16469
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
        Action = acFolderWeryfikuj
        Caption = 'Weryfikacja...'
      end
      object MenuItem5: TMenuItem
        Action = acFolderUzupelnij
        Caption = 'Uzupełnij...'
      end
      object MenuItem7: TMenuItem
        Action = acFolderCzysc
        Caption = 'Czyść...'
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
      4C7A0E0000001000000010000000701E00000000000078DAED7A77589647BAFE
      6C7A34E524BB9BB2D9E8663D4976CDB162EF0D1541144505153B2060A1F7A2A2
      28A2A274910E825401412982802288F4DE11A5235551FA7D9E793F2068D424BB
      E78FDFEFBAF6BDBEFB9AF9669EFB999967E699F2CE0B80E1DF046357087E041F
      82C73FDE7ADBC7F1BB0961754B96C5F52E5814DBFBED78FF8677DEBDE0C698C5
      24C6CC49C688A0FF0ABEA7B2D8AC9B5D9E3E8F5053D787F4CC7A4445D522E246
      2FB4F4AA30E107FF3EC6CC7489FFCE8B7CCEF5565E2F7B0F8DCD7DE04F757507
      3C3DEEC2D9F936DCDD1B111C021CB7E8C1E469D789A0AFFB22DF7BE2CCD9379F
      373489B8D9D92D080DAD4172F223C243686B17434BEB113435DAB16B4F2FBEFC
      DABD9F318DE9C3FC3FFCC1C7E1B27FADC00D0A2A83AB6B060C0DEF2131B106B7
      6ED5405EFE36BCBCB2B06E5D3AA4249F63BA5809DE7A5B277098FFD5B761F5E7
      BDFB1115DF8AAB212542DD77ECBC879B376B08B558B8300995956D888CA8C0B8
      F1059838AD029F7C7AA27D983F6D766CEF02F95E4C995388A68656D8D955404B
      B30677EE342025A501D3A7954149B9181D1D4F31754A2C3EF953323EFF934DFF
      307FEACCE85EB1B54F307349116A1EB660FBCE526CDD5107D74BD57021FCF78F
      A5983C251BF50D1D58BF2E11EF7E188F4F3FB31EE1FF6D827FE3C2CD8FF18FE9
      A578FAA41D6B240BC1DE49C5D8AF9331F64F8964A0EB58B820155D4FBB30774E
      02DE1F13873163CD3A87F91F7C60E72E21578CCFC75722E6461372C9FEDF7C93
      411D1347B8813FFD3111A9294DB89FDE8AF73FBC8E4FFE780D6FBFAD78EDE7FE
      3B3DF9C79F02FA1648D7E2EFFF28417161271E3E6A83BD4D0D6CAC1FA1B2A203
      358F9E61F2A4BBF8F0E35B18FBF1A901C6E4E7FDCC3F4738A635754638262DA8
      C4F8EF4B6169D988BBC96D546E3B2ED834E0EF13D2F1C198447CFCE94522C8D1
      2056F8C3CF7C6BC2711A9386FAE3FFEE32F8FDE4247CF655363EFD733E3EFA2C
      176FBF978C0FC68662CC47A738F724635BC630B683BDC83F31E4179A33DE7F5F
      C7FF934F4FB67FF4E9B9FE0F3FB2EAFFE043A3CEB7DF510C636CF302E2938C3C
      1BCDFF77B0DC29B76DA15D36E6D96409E0F1A58E393594FED30AA7DCE904B111
      5CE4C89B2DEE9CC7560E81CB97D348287E2E42592F30F35C06E65EC81CD1391A
      5C7E99536ED3307F3EA515106F574E0F76677723A2790025CF80D2EE21F490CE
      1E51584ABAAB0621E810BF983773989F46F22A053D384050CDEF810A078F17F6
      42ADB80F6A25FD502B1D800A817E58609B8D59460153387F01F1139E00EA257D
      D02AED83F630CAFAA05B398075FEE5986595869956F721C671261DB3CF670A75
      201B852C247E14F1F5A862460F06615CCD01983C0436045660737483D08EC267
      221470703B91CD16918E45B65908A73499A04ACC3C9D368259846D718D3844F5
      E2ED5029E813B0BFA01FC72B071158DD8D79A7135397D867E37C4537567814A3
      A25F64236EAF4A0AB5A96374A91DFA6554A70AC0AC4A84E0C7C0B1C456CCD4F1
      535FE690038D3B4D3870B30EB1E4913AD466BDCA7EE8138CAB067084DA625903
      4C8F7203B39720AC017394C478B70B7CE07EBEDC31079B832A70AEB40B5E2DA4
      B77610C7876051079C6DA4F110435C7F45B0DC8BD07E9C43A13358C80130F7CD
      3634A6B098EC104853EF25B2A34D07603B047B82DB531AA40E54669A2D58CA39
      618E65A9D660E98E60AEDB21EE94DD41FD8025DC96D4178B6C32B178084B6C72
      B0CAA614EC9234746AD330FAD1AB4D0773D9CEDB30E59FF2863B7FD8A4B3FD87
      4DDA2F62A3F6D6FF5EBD5F86B96D004B380D167B4C543E852CE10C98DB0EF031
      44CF58C298D7E00376563280F9EE078BB1A07172470899AF2AD8994D412B47F9
      D2CB58E55CC0D65EACE2FAC7B1331B837879CC554128977385F4DFFE7059B151
      10B8FFF1FFFF4FFC9FB09FA04C30AFEA4740F5B3DFE6FFE57DD0ABE883C1C37E
      18D60DC0A07E107EE4536677EB21A6E7F346FF37A272CC1E0DC09CE60B198B4A
      FC34E72E7E9AC791824587B37EDDFFA92CCB566093E5032CD950824327004D4B
      E09005202E5F8E192BD3DFE8FF76F4DF89DA3491CADDA633802D3A8390D51285
      0A068098C4FD37FBBF5D16965ECAC2E445F7E01FF582FBC33F0698B63AEDCDFE
      2FABB9F53BC9BD3262CBEE63E9BE3E2CD8D58B790ADD42B854B10F3324D37F93
      FF4F5918113047A60873147A305BA15708E76C28C2D415116FF4FF9597F2D86A
      2F41FF382E3B676D3AE6ACBD0F1E4E138FF88FFFFFAAFF8B7CFF00AD7F1CAA84
      B2DFE8FF5A24A8456BA554480D66D914089879210F62E77330FB42F66BFDDF88
      7C9FC380D64C95A04C9C3A7916B696276063690167477BC4173F443ED98BD7E3
      95FE4F73CC8CB3745638130DDB1326688D37012A1C800797F038D912678E9AE0
      746A39FC6BFAC9FF937EE9FFE447A534BECF9E3E8D963863A0AB0C784E9569A5
      F5AFD607CDA9E7696F7B1A4677DB305DCF57E317FE4F6DD6A175DB484383CA75
      14715B5281FA70A0EE32D0EC8D23BADA58E35DF56AFF27EE310A750F1EA44398
      2BD046E5D6D356BD918E3B6DA4E349088CB5D431F77C7AF20A5ADF7EE1FF5407
      1BEA770363133425D24451EF2B421BE9E8894563A1178EEA69628A8E8FF24A97
      02F64BFFA731669F8FB556513050574323B517AD7E648730341478434FE3003C
      AC4F60BA6906E61CBDCF7EE9FF3ADBBFDFA4B3EDEF9BF4E5D76E94D7535351ED
      51565683B2B22A0EAAAAE0A8B61AE6DF05B69059E71EB9F76BFEFF1961FA68BF
      9B76C80FFF2433AC2093CE3317CD1F2F43DC399F2D732D671A7AC64C47FD20D3
      D654673A9A879991961A2F4B6CDE210FCC3FE486EF166F5560FFDA335C9F31FF
      59FFFF1F59FF83AB30F3CC7D42BA8059846DF1CDB4FEF70BEDD84F7399324189
      708CF6E5FEB4FF9F3BE2FF3D58E15506DAE2A36408E5042DAA832EF767CAE073
      99E6036A27D5CDBD0DD0BFDD8229BA570E0BFE9FD202D5B83AD83B5F84A9AE3A
      F4C96F745415A17DE2148C1E01C684A34E6E38AE7B18E67A1A386EA0092DF373
      DCFF3F5BEE9487CDE135303E7D01D1D74230D8DF8B86DA47A87F548D30FFCB38
      70D40226B68E880A0D16D6DDA76DAD68A4FCF0607F98196867AF70CEC742E712
      9C34D410F28F9A1A4179EF4E9818E8C3D4481F66867A30E3A1B10185065051DC
      0BB94D1B505E522CC8D2B86C5B74A90C66DA07D0D2D820C8AEB58C80DAFE7D82
      BEC74D8DA879588D3B89B7606AA80F69AB48C8AE97467868088E9A990AEBFF78
      29355983434A42BD8F1F35C54115256CDA2003F3A34760A8AF077D5D1D681C3A
      080579391C20BDB21BD623D0DF171A870F62854B11F7A70F0E2BEF2ABB1A1880
      A2827C2425DCC2B933A7B178E1024C9D3CA975E60CB18CCDB21BA93C13848604
      22E08A2F6CCE9FC53679B981E5AE654C47691BD73171A7C2D60A3595FDD0A1F9
      51455909D3A64C6EFEF28B2F5650DE0FF3E6CC299F336B2654F72B63CFAE9D58
      2FBDF6F18F3F7CBFF625BF9EF8D21A3F99F0EE1BF2DE8F3B28E316AB229515A3
      BCE6698CD21AC4284BE2E67E29DC54598B38D5B54FE3D4A4B3120EC9B8BD6E22
      212E9E9565A3B79CE6F90E1A681DE97898E48FFA9CDB7818E583A67B71B87B70
      0D5EC78F5192A041D100A47AE0EC9669409E2D322E28C36CF938E49B6D4053C0
      69141F5AFC5A7E34E7B73F84D5E619505FF03590EF807C3B25FC799E3ABE90A1
      73E79A40B095516012916052E160D28475E14F994C441693BDEE16AD48FC265A
      3133688DC87203B26D506CBB076C5502DCE8BC7D9EE691AB34F798D2BAA41CDF
      0F8F22F2A1880EB8A43C01E980507E6D3E70CF07487326FE0594DAEE065B1183
      EBE4D733B380F159837837EB19D849E29C780E66DA0DF9203A47AEBF8668E535
      DDFDF909A2F2B3DD814C6B945CA0F3DDCA580453996CA601D82C5D7C9CD70D76
      BA0BEC1B3A378ED3C6FA2B9427730D3E0A2BFCEB83EDD19EE80ED7FD4B715462
      3CE4677E47ED8D8307ADC3F332811FB306F04936956F49E59FA2F0E873ACF0EC
      277E38668CFBF21F29863B60A9B0080EBBE7C1F7F022584A127F751CECA85BE6
      A50DE2FBFBBDF8388BCAB6ECA4FA930EB327583DC4A72E78EBF2CE55FEB53EB4
      B92F271F2F7642B99312B52D0C7AB93457E750F9147E5244F2D63D60568463DD
      5845077BE2770FEF4DAF2BAF6D6C0E392EF00B1DF6435AC906F3BD9BF1F6F223
      D45F56786BA71DD8421B30B1937877A2117E3CF680DAE8E63F6A284C8E505E5B
      7153751D920F48C167EFC64CB63305B2A91D78779B03F10E93DD0E82CD3B8FEF
      2C1AF08E423CD897D3FFF106FFF991ADF0BA3CC1B10AB369EEFC84265466D38F
      B1768318AB55325CF65BBFB2CE7ECBA4AE36FEC5B7069FD322C96C7AF0B601ED
      9B64AE36FE8EBDFB64261DDAC2A4AF09FDCD3684B50CF9EEEF7926BFE4F723CF
      AD5BB746909090C092EE2463DF7E75F42518A23DD6081D84BE44436CDEBA0B89
      B7EF209EE4E2E2E347B066F5AA11484AAC62526B2421B1561608DB84DEA02D02
      785C5E611FCD5BBBB04B613BDBB57DDB08EEA5A60A481DC2BDB474A81ED6052E
      4F013CA713684EF099826D3B1591929A86E4E464C67177089BD749B0CDD2126C
      E3DAD56C9DE46A262D2589F5329B20B14101AB36EC81C466456CDCA6849DBBF6
      61DFEEDD50DCA9C054762B30B5BD0AEC0061B9BE1F5B6EECCF961807B2ACB464
      763F2D0D6A87B4811413F4DF36457F12EDBFEF9A60FB8E3DA07A2223F5365B6C
      18C096195E61CBF42EB3557A5E6C95A10F5B69ECC716EAFA30192909484A6F02
      C237A33F588EB045886FDDB10FFBF7ECC0628300266EE427E2E87912DF93AD36
      F46612A657029619F82227E33E0EA8F3F64FA6B64F15C16712147629222B3D0D
      2B8C83B0DAC42F8073560DF38D2FFB499A0660F2167DC86D9086ACEC66486EDC
      81D51BF740728B1264B72B63EF5E451CA6B56BF2667DAC31F507E770AEB88E47
      D0725D2F7C3171113E1A370526FADA909090A2B98CCE0E29A622507CF992E530
      D6D32299C924BB109CC3B94B345CE17A330FAE7105708B2F86735C096C826FC3
      6BEF38B8EE992080C76D43EE0879AE24C365398773171E70444A4923561FBB0A
      C9E3618470AC328FC0C5F82A38C4550BE0719EC6F3B80C97E51CCE5DA06A0FFF
      D40790B18A85ECD99BD878360ED267E2B1C6321EAB87C0E3EB284D96F2B80C97
      E51CCE5DA86287F33115D8EA9082ED4EA9D8EA9886CCDBD128488945FE10783C
      392E5AC853E03224CB399CBB68BF0D8CC2ABA1E45304659F620A4BB0FED47548
      98051282861028A4F13C914C91C0E1DC79BB4E262C523A8F854AD65824E03C16
      295F10F25E004FE37924B370488E73C98527BCB4AEFF1E4C10DD3F8C5ACF237D
      70C5D31E1157CE4E1A9D1E77DD0BE1BED62F080FDF21C868E5E2BDD58360CB80
      9B372EC3F69416BE93ADC13BAB80F757D3BCB71C88BBE10347AB4360E23C6D10
      9C33727F36A703AED7FAE070154888F1C1110D69D87A15E252F8005CC27BE118
      0A24C6FAE0A886149CC200D7887E70CEC8FDC9DFEAB1E1701BD817B56063C2C0
      3EA279F2EB46B0AF1E111E12EAC0C652FA585AAFBE189225CE30DFDBC5928201
      74B654E2697B359E753EC2F34E0ADBAB089578D6F1005D1D0F85BCCED64A4156
      C411F1EDACAD2818445DDD433436D6A1BDFD31D2D3EEA2ADB519ED6DCDC2FFD6
      D62634515E7DDD234156C411F1CF599DC2E0E0001AEAEBD0FAB819F2F2F29838
      F127F4F57463C70E05C20EC8C9C923E56E321A1BEA0559CE19E65B9DB2A0B441
      343737A18DF6D7555595D84D732D7FE6CD9F2F8403037DE8ECEC404BCB63E1FF
      19E20CF34F5988DE6BB7B5B6A2A3BD1D7DBDBD5050D821A4EDD9B3075B366DC2
      2ED2C7B9FC0EEF59D7339C3C716C847FE2989920CBF53F79D289FEFE3E6CDFBE
      FD85F76D727272C8CCC8A4F6D70A7BEF2BBE3E23FC63B42FE64FD7B367E822DD
      FDFDFD827C694909545555A1A1A18195E2E27077718687EB252426C423FA46E4
      08DF94CE06FCE9A57AF7F4F4A0AFAF6FA4DCD2D252E4E6E622213E8E6CD38696
      C78F51589827D461986F62A03B223F303020D89263F4E3EEEA8C7AEA9FACCC0C
      A10F02FDFD46F8C6067A78D373F7CE6D24DE8A477E5E0EAA2A2B8534BFCBDE23
      7C3ADB2718D2DCAA4BFB7E5DADC3A320FA6F77C11ABE3E5EF0F1F280B7A71BC1
      9DA3F3E7FBC37F690E983A8AFFCA679E479332E1C2EBF27F8DAF92D235A078E7
      29FE15BE986BE3D1B0477DE0E0F1DFC39FE3D13466A56F3368DB2A80C77F0F7F
      864BBD974376172C1A0604F0F80CD746CFD7F1E77B357BCD766FCAA67A62EAA5
      462CF0684448431F542A45E0719E368DF2480FE6902CE70CF3E77A343EBD58DA
      8D741AB6A9DD8328EB1D8459753F944B7B05F0384FE37989DDC09182E798479C
      51F59F3AF3524DD3C6E4A7D853D28B5D453DD853D803C52211785C48235DB224
      33EB526DD32BFA7FF2B433D911B2D45F160FFAB0B3A01BBB87C0E316D57D9049
      7C022E33BC877CD97E6FBDFBFE7772B73A61477DA690FB1C3B87C0E3171E52D9
      511DE032AFB3FF6CB72679136A9B1A612B9D571486B83CAE56D80D838C2E6E3B
      F9D7F29DAB9C4F54F560339DB564A81D8B7D1F0BE0719E6646369EE150E9FC3A
      FEC688C70D8A79CF217EAD0DB39DAA8ADF7AEFC3991C3CCED30E173EC79AC0E6
      86D7F1A5425B31CFBB79E087FD1755E9EF3F470D957FF2B445BE8F079607B4E0
      0DE36FD8373F79C570FD6454FE0BFC7FFFFB9D179F6F248D56FDB8C7163F29D9
      E347F993BDDF8AEBAD7EDDD87F99FFE52A7DB159C68110A77D96C499182CD1F2
      C05469237CB35C57ECB7F0BF9536ED5D72321232B689D86A730B6BB5DD316783
      29FE2AAED3FB5BF87F5D7F143F29DB611A9D1F27C99963DD111FFC8F843AFEB6
      421BBFC61F2F6178E46B711D6CB0BE8EE3771EC13AA70DC7926BB052D3165F2D
      D5C2042993236FE27FBD521FE3966A62F7C55B389FDB0993F84AE844E463A586
      3DBEE17912467813FFB3255AD44E3DFCB4D11C27EED6422B3C8FF68BC998B4F1
      08FE46DC3F2ED57923FF7D31C5B4F7C4944AFE6BFE21185C4DC14EBB702C543B
      864FE6A8E0C3592A25947FFF4DFC395B14C5159DC2BD3443B27021BF13069179
      903B1B8403DE8950BC18C13FEEFAE1757C359FA438F3A40770A1B3B24B3570A9
      7200C7EFD6E178722DDC6B28ED01C0F30FF8DEB67B99AFEC111F7C32A50EA7EE
      35C28273EED4E02485E6141E4B7A8813A483A7F37C2EA7E6732778345F2B24BD
      CEEC5615B4C2F26053F014172BFA297C02ADD09C51FF9F429BEC7924E101F638
      DFA81BCDD70ECD845703B0E5F4651C4B7C8423B7AA7134F12176B9C409E19184
      6A215DF68417FC5A817DAEB118CD57B8109CA0E846670F7317A8F8A6087DB69F
      A0E81A2384FC3F4F97A57C25F738ECB0094E78C97E13FE957DFBFF052E5FBEFC
      0BF8F8F8304F4F4F161717879898981770F3E64D503A1BC6ABF85E5E5ECCD5D5
      159D1D1DC27E92A39DF65E1CD1A423363696EB79255FE0BAB909DC0C3A8B0707
      05C3C5C505418181B43F7D8CA8A82894D19E6EA82EAFE0BAE369573772F28A90
      975F085757775CBF7E43D0D1DAD2821BC42F2F2B13F696BC1EAFE21695D72142
      87A1B4AA1111D763E0426D090F0FA7BD798B507E626282B08FE47518CD6D69ED
      44E5A3565CD36368BA6D89087D8607357C3F5E8DCA8A72B4B588EA9F909080A6
      A64681EFEDED4DB672A3BD69076A1A9F209CB8B5D13A28F35A8DC624735CD362
      A8A96D425D4D2D1C1D1D495705ED25E3D04E7BF598E868787878D0D9A2058DCD
      6D08D3E4DCC3A80C914755C81684EB3234B7F5A2A3A5036E175DD0D5D9899C8C
      34B85ECDC0B3276D54BE88FF94F6ECADADED68ED1C40A836C3A31B8A08A3F677
      74013D4F7B70C5C50BEFD8CBA287EA7827FE3AFEB4A71283DD1D888D89E28357
      CCD9D919CF9F77E3C95302ED4FAE1E66784EFB2EF40041CE9E18136284ED1156
      687E5085B05B39F87407ED81073A053E7FEFC475383939A1AF7F00CF7BFAD1D3
      271C9110E2E4816FABE8CC66258EC2FA0A642727E2DCCD267CBE93DF6E3C17F8
      A3C6221C49C7F0E3E7E80A9675122CFB3CDEB196A6C3C93324DC8CC5A628E0BF
      14CAF86981EC37C27F8BFAA22D33331397A82D6ECE2E389D1B86B7CE4BE30F67
      A5905A5388AAC242183BDCC1D86DE538E8D22094111D7563A47C7E8F60656565
      1C161A9A728BEA52949D87FEF6AE91FAC4DCB881FE9EAE17CE05D1D12FD49FEB
      F89CF03DB7C7E953968621C1C1A931345EEEA5DE13FA8A8397194588A6F4C8C8
      C8EA37BCF31BD1F506FCCFFFC1F783C9A3EF0F47DD21C6FD96179323F787346E
      4A9E8B307C87C875F1FBBDF9B62F231B8BEC85FBB750E1FEB05B747FB837A71B
      7B0891CD03C29D5B398DA38A815780C6163F852F71C811F4673EE7F787BD3838
      04358EE27EACBA528169A7EF63CA4B986A751F33AD33B0C43E47B8C34BA5B234
      49A90E29E77786BA95835817504EFBDD06A13D05CF7E463E0D817C0A4BFA44F7
      985CC76C6AEB0CAE93C0EF1A67F36F7F629B70A0B00FFBF37BA1944BFBF851D8
      9BDB8BE87680DF5DF2F2AB21BA1B2D217FA3ED3FCA09874A07A05ED20FF5E23E
      1C7E090708916D543EF117933D7549C1C10AB201613F4195DCF320E1F06BA04E
      325747F14DC81D2E1554A3EC961F4A1202504A284B0C443947D2CF284B0C40F9
      AD2BB8985F8D2B9DC3FC6CE17B81E2186FE4DC0CC09D6007C4799EC24DF71388
      7131C78D8B4711E96486300753C47A9F454E5C000AA2BDE1D5C5F9FCFE341BA7
      E824941DE981189FB3F02AAAC49156D13708025A45384AF5F52E7A801B1E56C8
      245977EAB385B622FB5FA0BEC8087741B88309CE50BA0DE9B37D42E81C0A9F88
      D2CE5318626328C87AD0185A6C9783A50E391DB3EC8B703FD409E1F686986557
      2CD46BF1A8EF9038781ACF0BBEA027C8CEB22B12B8FC1CC67D3125C816576D74
      F16B6B7FD0392DA404D90DCB4D7DC5D9E1B7DEFD0BCFB5604F1616E82E161AE0
      7633C4DF0521575E014AE7F9D7823CC42283BDD87501DE02887BF17AA80F0AB3
      EEA0AEB2006D344FB7D6958F80FFAFAF2A4069F65D245D0B4052889F5372A83F
      BB1B1A20E0AABF2BAA8B33515D9449736C3AAA0AEE0B7840F1EAC20C3CA4F4DA
      E22CB4971760959F3E98C542B0D3CB18B35AC9D899958CD7AFAFAB0DADF59578
      407A2A0AD2F1A0200375C539682B2BC4D38A12F43EE0F792ED6047E7C2E56121
      D8C965606724183BB7965D0D70456AE20D343C2A43577B23AD59D4C97DDD28AB
      2FC1140F15B0237389378F301FECAA31D85D77589427938E156067A55868A01B
      5212AE23FD4E2CF2D392F0302F1DB7D36F72FD60F1E660453E60C5974561BE07
      588E0B589E1B7697DD20993520FBE15E5234B2526EA138E32E1E17E742D2470F
      2CCE142C8ADAEB2C07768960BE082C96CA2FF5C082C6382A5F5C18036E17CF45
      783B5B2326DC0F994931E8A036336B4930BF7D98E5AA8A883BE10889F2456D0C
      D5E9D8027C5E1746365C211A3FE7A4998F9B6D70CF931614E7DC43727438E9F1
      0733138349C83974A5DE073B3E0F0B1DF7A3A7A4143BAE5B896CC7B967A51489
      CFC705D26E47A3A9B602DD4F1ED3BADE33B2BE31D319706CAAA372E702CD8D08
      8BF18783CF39EABF9531CC5303ECC2460CDB2F6394FD06688FC38CA7C3B89EDA
      924CEB7888B15077E6487670DA0A1646B6B96E497D231ECBED979A785DB05F11
      D9AFA12807CC641AD6E506919DC9D6B98402B27BB137D9CE17ACFC0A5812B5E3
      FC7A30A9898BDD9CCE054784782139FE1A0AEE27A1A12417A8AD11C6CACCF44B
      24EF49763711F581C55230CB9560275695B205DFF1BBF7F7F9B171CF4EB9EDBE
      1EF6F7B82DC20851819E480F213B5A2CC11F53AC055E8A8F67B2F6AE9DF243BE
      3751E05AAF13FC6FE85BA11F5EE9F356348E4C17C70DADE563D899558C5953D1
      C415F0DBFC7DC2EB32E5AC02D8AEF35799996F3C93B5BC42F160B6C1E20A933B
      7F8D99E869315382B465109332F761AB4C5D99ECC92CB6F974D65F276F7184F4
      F17BD7DEC437D6D5226832298B00AC39E2895526AEEB3659E6184CDAE4889586
      F198B2D410AFE55B8733231D0DA6AFA90E1D3AFF1D8ECCC76A3377CCD8ED8475
      C7D305EE0FCB55E45FC59739E1C7E4CE8632438D0328B89D089D832A381C5705
      653AD72E3376C10C590B4CDF60E5CDEDF902FFD415B6D33A98AD37BFFCC116CB
      C00707AE170ADC8C981BD03DA402E58832ECBA9C81857ACE98A4A0BF67AE963D
      DB42FC9DD621CCF4721C93B1F0FD76BB55C0054DB718E844E642ED5A1E5423CB
      046E4A5808F4D455B123A0045BDDD2304BDD1E73B51C799DABB69D09CA30F48A
      816540028E84DF87E68D3CECF34E866668369483F3B0C33F5FE026F9FBC280DA
      24E75D8C19EA0E98A3E5C40CBD6F0EA656D6C3E1763174620A2177290EFBE98C
      A9175980DD97EF61B7DB6DECF3CB819C4F3E0C350F20DEDB1D66BAEA820F73FE
      4A8DB32EDBEC23B1DE36125B2C03601C960975E26E754E80924B2294FDB22067
      9F80ED5E3958619504537D2D812BA67589CDD1BAC887D05F966AD8F6E87AC7C3
      2CA1023BA9CCB5C7AEE0B0EF3D2878DDC77ACB70ECF1CAC28A63D7F0470913FE
      EE4CEC94A90E9BADEBCAE6EB3AD378BAC2BE9DBE5462A9B633244D3CA17F3911
      9AE14550F04883B8A137F6FA6441FC6838FE2269CCB993BE5A779C7D257D9CFD
      45DA9CFD75DD31814FCF7BFF5CB3EFC06C155B48595EC3E68B77B054D78D6C48
      DC633F73C7C91C67E336106444184F71CE9730F610DEAFFD79E27CA9493B4E37
      4E933F0245B754889B47E0EB35468DC35C2EFF3286F94BB484D78AEFF177A3DF
      2CDD67345EE6D8C0376B4DDB445C73F63AFE1BF6EEFCBBC129BFE6DCFFEEFEFD
      7F016616D001
    }
  end
  object ilMenuL: TImageList
    Height = 32
    Width = 32
    Left = 560
    Top = 123
    Bitmap = {
      4C7A0E0000002000000020000000E05100000000000078DAEC7D0754554717EE
      3131C99FDED4F4C4F4C4125B62EFBDF7DEB037142C2816AC800A58408A080262
      4105510151011BBDF7DE7B07E9BD7C6FEF73EF552480A0E67FFF7A2F77AD6F31
      CC99BDBF993D7BCABE77CE390004B4027FFCE1FC3A6148AF5EAE7A7FFEE9E6DF
      A78F6B46CF9E2E950C4EFFF5979B7FEFDEAE7A5C86CBA2957A9F876EDD1EBD4D
      FA5408259327FB961C3C98587FE1420E6EDE7C8CFBF78BF1E041316C6C1EE3E2
      C51C1C3A94583F658A6F498F1ECE252CC3B22FC3DDB5EBC3B9A4277FD9B2D08A
      AB57F370E346218C8CF270F468160E1ECCC4EEDD19D8B32703AAAA99D0D4CCC6
      D9B379549742585AE661F9F2D00A96EDD6EDE1DCB6F2FEFEFB837654778D61C3
      3CCA8D8CB26061F118FBF767425131159B37A761EBD634AC5E1D8F2143BC3162
      842FA5E3B06D9B247FCB9634B16E972F3F868949365807E9D2649DADE1FEEDB7
      FBEDA8DDD7A74DF32FBB74291FEAEA5958BF3E051B36A4405E3E159B36A54241
      2115030678C1C5250FF7EEE5503D7CC4BA713E5FDFB85102B6D3952BF9605D64
      87EBACBB15FC1AD4CF65172EE44349291D2B572653FB52B064493C66CE0CA7FF
      13A92EA9E8D1C3858AD78BE034D76DD5AA24CC9E1D89152B12B1766D0AD6AC49
      C18E1DE9E076905F94FDF6DB03CD96B87FFAC9696EBF7E2EE567CFE6507BD220
      27978C65CB9231695228860FF722BBC660F0600F517F637E39B9040C1CE8897D
      FBA2C5B293278752B964F28364B14F4C4C72D1BFBF4B397334C5FDE38F8E6FFF
      FCB353FED1A32950564EC5A245098444EADF006AB71FD2D3CB452ED63F756AC4
      DFF867CC88C4810331E2FF19191564077F8C1C1940764BC2E2C589D8B52B0D1A
      1A69600EE66ACCFFC30F8E2A64A3F263C732317F7E2C210E4387FA62DDBA5094
      96D6887A83838B28CF8BEA15FF37FE79F362A9DD9E080A2A14F3CACA6AC807C2
      441D0B16C48B38712293FBA19CF8551A7277EE7CF7F51F7E7028397C3885FA30
      9EEA1E23DA7CDC386F5454D48AFA1C1CB2D1AF9F07B53D1C0B1726FC8D9FEDC5
      76E9DFDF03B6B699627E65652DF5830FE90AC39C39B1E44709E493A9602EE694
      F17FFBED9D217DFB3E22FE544C9F1E49B68CC29F7F7AE0EEDD6C518FA3630EFA
      F675A76B51983B3796DA1AD744FBE344703FFCF59707CD03923AF018615D3367
      468B7A8F1E4D235DCE25CCD9805F6FC182A03A058538B24F38468D0AC4D2A541
      A27C79798D68076EC3AC59D14FD0989F6D367BB6E41AEB601F2C2EAE16AFCBCB
      878A3AA74D8B205F4C20FB05D531A78CFFBBEFEEF82B2844517E24264E0C253F
      F686B9798A286B66968241837C44D969D32245FB301AF3CBF2195C6EF0601F18
      182489D7AF5E4D1775721B162D8A027331A78CFFEBAF6F676CDB164372DCE7C1
      A2BD7C7C1E8BB20A0A6162DD5976F26446B8D8BEBE7D3DC4B947625F77318FC1
      D719A34707922F85883A02020A459DE3C78750FDC2685E890573CAF8BFF8E256
      A5B2721CC68E0D12E57AF674455191C47663C77A535EB028CB98308121B167DF
      BE9EA2DE51A382C4BCA7081175F15CC13A4A4AAA41EB26C68C0912DBB76B571C
      9853C6FFD96776955BB746939E001AEFFECFF08F19E3258E63969581758F1D1B
      DC049E96E1FA8D1CE925EA282C94F0B31E6E9F92520C98F329BF6DC6AA55A124
      E74F73B92F681D476464B128BB6C599038BFF33CC4F28DC1756634CE673D8B17
      078A3A22228AD1A78F1BAD457E54477F1A8761604E197FA74EB6FE73E7FA8BD7
      D84FFAF47117C71CCB6A6AC68BE389E791A143FD44B09E96C065D83F58563677
      B08FB01F4F98E04F735B209853C6FFE9A737F5860E75A9A3758AE618499F6ED9
      122ECAA6A6968BB61B38D08BE4BD451D0DC17ECE6898C765694F84CCCC8A273E
      CCF347FFFE5EE47F015447D73AE694F17FF4D1F5219D3BDB9770BDB89E0CEE83
      C4C432519ED79D5EBDDCC4BAF5EF2F835733F014EB7BF4689C281B1F5F4AFEE4
      22DA9041F30C988B3965FC1F7C60FDFA871F5E2F99368DEBEF21CA33DF9E3D51
      A28EEAEA3A5A4B43C47C59FD64F8EB2F0964FF73199E6F6A6BEB44D9EDDB2345
      7FEEDDDB4D1C0FD3A7FB82B998B3E11A40FFABFCF4D39DF24993BCD1BDBB3368
      EF24CE2B172EA48A7A780D52538B15F5737B247594C145E4609BABABC78A7326
      CB9C399324EA9061CA141FFCF2CB9D72E66ABCFEBDFBAED5DBEFBD772D7FC810
      57B2B30BBA7479407824CAC9E672993DD9B66C0F1E9B3C3FAC5D1B2AFA5A7272
      D993729696E9D4061774EDFA88F090F64BECFFAE600EE66A6A0FF0CE3B96733F
      FEF87AD9F0E1AE24FB90EA7A0FBFFE7A5FB405DB3125A5FC89FEE69090504A7B
      97705186F63BA27C8F1E0F694CBA817533474B7BA0B7DFB6D4E8D8F146E9A041
      2CEF446BA5A308DA97893EB9776F34ACAD33C4759EE73506A7AF5DCBA0FD7094
      D837CC4B6BBC88DF7FBF4773810B8DF71BA56FBF6D71BC256EFABC2108EF7DF0
      D65B17EC3FF9E45A59EFDEF749972368AD12416BB66813DACB82F693A27DB99D
      9CE6BC9F7FBE47651C686DB9CBEB0BE539924FDCC7A79F5A97BDF596F91D41F8
      4F47E2789F799AE6163E2074A2E4776FBCA16FF4EEBB572AC85FC80F1C49DF6D
      7CF9E52D823DBEFAAA653077D7AE8EEC6B601D6FBCA1632608ED7F25DDDF4AF4
      8B3CED1BF1FF87F011E10BC20F842EAFBDA6ACDCBEFDC5A20F3EB0ACFCFEFB5B
      A0F141BA99E316AD1F763C878AE034E7D1B816397FFCD19EC6D8D5CAF6ED2F14
      BFF6DAD6BDA4AB37EB93EAFD42CAF356F3ED17EBF90BE10F41F87CC86BAFA91A
      BFF6DA85F2B7DEBA54FEF1C7D7EA3FFBEC26F1D9529FD889F8FA6B5B7CFEF94D
      F0352A53F1FAEB17CA5F7BEDC03952358674F495E811F5C9DACF7DD0AE893E78
      9DF01EA103E16BC28FD27AF71284B70708C212F976ED346FB66B6714DBAE9D59
      BE205CA866709AF2E2DAB5D3B01584858A64CA6124D34F2227CAFF28D5C77ADF
      62A2E7F821D7E31DC227527B7D2BD5F11BA1ABB43DBDA47695A19734BFABB4DC
      8F52B9CF091FB686B799BAB4635F91FAC7BB525D5CAF8E52DD9F4B6DDA41DAAF
      EF4BEBFE26E1B5571587FF53E0B68DD0F3BF35442F08834E05626013E07CBE4E
      E5ECA4B678959FF759772C851991B4238AAA680294CFD707EB06416ADF57F9E9
      C8ED63EE25815558165889E58DB094708FB6C37F1EF3C3009D80266DD412A4B6
      BBD58CED3A317F282D2D2B832BB12EA412EB431B80FE5F43F95732EB1043B688
      A96C1BA2AB8004DA0A701D9AB19DC81F484BE75AE2DB1856894D8D204F5847D7
      D684B40DAB092B42AA104EF5660EE9986992DF9BF8D787554121BC0A8A4D4041
      8A4D52283C4175B3D844584FF024DD8325FC9D9AE2E76B6E25C0C6882A6C8EAC
      C29656606B7435B6C5D44029AEB6596C236C8EABC37DD23D44B765FE47544621
      AA1A5B09DB9E0325E2DD115F871956F1E87FCC177D9B83962FFE6290DFF6D726
      BF25DF1DF4777F14F9EF53B8B125867557637B6C3576C4D6FC1D713550A636ED
      4AACC3CC6B099868118F18F2AF08EADFF0F21650F1146184E8DA67FCB1D310E2
      BF5B042811AF3271EC4EACC5EEA43AEC4EAEC39E465049A9C76CE29E76251E1B
      C26BC8C7AAB03288FCAC155846D84FEDF0CAAF41BF238F7C88FB5319BF3DF12B
      C7D74225A95E6C5B3F2D1FD17E8DD19F30ED6A3C3647D54231827C8C7C96B1F1
      7908ADA2B15D05731AC7BA3ED9E8B6416F8F74BD10F96D889FDBBBCEB300E32E
      C6C0A31470A53E716B007782276173540DF96035B690BFB6168A848D345EEE13
      CF1AEB587CF853AF1ED2358DF80370BD10D89706CCB24EC036B75CDC2BA8C746
      F235F6494519C8E737B3DF13949AC1F6E81A6C8FA9C58E983AF2192928BD8D3A
      FD68522D1C736B3142C73B9B78BFE2F551C66F49ED3A4811E93083209C4EAC24
      3BD563EB135F7C16CACD60178D359504607F12E94A060EA5487080D22A947721
      17D0F2CE43AF2DE78E4BD77071FC0D25FB5FA5F1B723B21C238DC37193E67AAD
      941AEC8C275F6C05F690DFEC4D94702DF10DC717A63B20ECEF45E823452F74A2
      BCA3D131D8702307DF8D5C364ABA4778C26F4173949C5306D63BA5E34601B097
      6CA592C87A9F873AB17D47D2813FAC75201C1B8D058F74712AC90567337C4570
      7A3EE50927C7E30BED433CEEBE91EEB144FE61343759D0381D63128E13711538
      9B4D364CAE251B3E1FAAD4664D0ACF7EBEAC8A7774A7432FD91D8BC32CF1EEBD
      7D106EAE13C169CE3348F5C4C76716923D469835580B3B0DA7B9C020AF1EC30D
      8261417E7832A31EAAA975507B0ED453EBA1413EB33A288ADA3D069A49CEF8C6
      4D13C21D2508769B20FB709AF3BE71D3C2F11477BCAB370FC2B6A143A57BBB4E
      23F483A0125A0C39DB245C22DB1FCEA8237B3E1FCCAD4D3EF58DF90E2C763D8D
      DFBDC8C68E3B2138106E293CE5A7B49847D7BA78E963A5E73908EA63DDA47BC4
      4EA34E0763895D220E511D8C885F3387FCAF15384EDCA7693C0BFB7B433EC61E
      82137353DBEF6C8160BBEE293FA5C53CBE466514E21C20688C83742FDB69B461
      08D807AE50D86E44F38E7E49EB709ACA9EA3F95F38D817FD42CC48F70E3CEF23
      38296340E879E21F2FDB0F741A733AB098EBC07E3094E682D662F8A9608CD78B
      83707800BEF4D383707FF7F3F9A9CC57FE06C43F41B61EF31CDCFBC7A9F29B3A
      8F5FB9B14D18B36CC3D7FD67AE16340643705787E0AA0AE1810A847BCA10EE2A
      3EE5A4B498C7D7B88CFB11089A1365FC6F48E7221E93DFB511DF8AF18ECA203F
      C16E2B042FF27DF7C3D27AEC7ACA4F6909EF6149193BF2830363FC1BECC7DA49
      E78337DA081EC31F0B537E5B229C9A01C1FB38049F63103C8F12DF81A7FC9416
      F3F81A97E1B253BA2C91FADFCB7E780C7516760CB7110CE642F03D09C19FE04D
      EDF4509780D39CC7D7B80C97651989ECCB7EDA49E3F6EE82D2B05B82CE4C08B7
      C9DEFEDA1082F524E034E7F1352EC3652532ED5E510CF3BAD487BA0B637E5E2F
      A88C0A163427487C9CC169CEE36B12EE4F1ACCFFC22BACC30752BBFE49184E18
      25C570695E67699957CDDDB02FDE94FA5547E9F8EA244D7F28BDD64EF81FFAFC
      1BFFFF1BFFFF1BFFFF1BFFFF1BFFFF1BFFFFBF10FF4BFCA74682382928BD957C
      F64872CD3F17FFC755636702F90EC5A42A14BFEDA518766F8E042A94DE45F19A
      39CDE19A3E39E8B9D5F495C6FFBB895785FA6E7F16B0CEB100435706E2BB9F1D
      F0DD2F8E12507AF0CA209CF22AC69A3B89F866CCA25717FF53B9FD1407ABE603
      9355A2D0A39F33761E48C6A5EB25B8E1502182D3CA0793D173A02BFA2EF77AB5
      F17F1AC5C2C43D767318068C72C7159B32A81C2FC4D079D9F87964BA084E73DE
      55BB320C9DEC8D5FFFB47925F1BF1A73535D151F16A117B5FBE2F5324C59998F
      EEE3B3D16B5236FA4C9180D39C3765553E2C6CCB31609C277EEE7DEEA5E3FFA3
      3496A95918B12608FB8FA462E1E642F49E928BBFA6E7A2EF8C5CF49382D39CC7
      D7166E2984DAC90CFCD6DFE1E5E3FF3CE014ADF1EC5F3A2665D4D67CF4989887
      6EE372D1B511388FAFF5999A0FDDF315E832F0D14BC7FF06E4B3C6B489FCB18B
      23140F5692EEC2E7C6DF5C66B35A25F13F7CE9F87F985E20469A04E1D71EF7B0
      746B2506CD2A7E2E3F979153AA44B7410F5F3AFEFF6EACDC862F074D59DDA5CF
      034C5B598E89CBCB3062410986CC29C6E0D9CF82F3F81A9799B6AA1CDD073F7C
      65F1FF6FBDAEF98D5B9081B9F2D598B9AE1233D65660C69A46A03CBEC665C62D
      CA4097FE36AF2CFEFFA2B3FC92DE233CB148B156C402856A2CD854F52C284F76
      BDF7484F7CF983FC2B8DFF7FFDF382CD5F637DB06C6B3D962BD563D9B63AC86D
      AD15C169318FAE71192EFB4FC4FFBFF43E77ABCF684FCC58958BD53B693FAB22
      01A7398FAF71997F32FEEFF4EDD2F5BFF5BB16DC95FCBBEBA007523C04E7F1B5
      7FE3FF7FE3FF7FE3FF7FE3FF7FE3FF7FE3FF5711FF47CBE2FFE6F08FC4FF8998
      4A31F8FAC85AAC0AA7753E9CC62E23420A4ACB8501CB436BB122B8FA95C7FF53
      2D13B0390690276C764DC601E38B38B67F1734A5E034E76D764DC2FA28F2ABF0
      5A1A57D5AF2CFE578CA987423CC5CBE6D7607C52137131317FDBE7C645C7C0E8
      8426F659D861532CC990ADE4692CBC74FC1F433E9D40F1A9C52D98199C02EA6A
      5114721D09E71722CE6C16122ECE47CAF5B5288BBD2BD6C34CFF1495B58322C9
      1CA6F6BD6CFCBF3DA11ECA9EC9D0D75417F5275F5340AEB719AAF2E251911582
      D2046714845922CB6917F25C8F8865F434D4A1E4918CB3B9808617C5FF5B5E30
      FE4FA8C54E3E4F70C60CA181C1C80FB88A5C1F33D414A5A33C231025890F5014
      7383F8CD91E77504D90F955196781F21FE41D86B780E37A94F975F8BC737A397
      8E79A1F89F7C7337D9E890D2665454D58A36E776337729F114C7DAA038EA120A
      430D50E07F048F7DD4F0D8F320CA2A6A709064ACA88D1463554A638DF66D8EFF
      53EBB19FAF6D51400DAD29F1E67350991D2AB65BE48EB14049B4314AA27408BA
      280E3F8922FF43A8AA2619E2570DAF44DF7D36D6D275A05D9BE3FF746A3BF5A1
      CAE68DD4FE7A24592CA276BB90CD6F8AED66EEB2387D54A418A322D50465F1A7
      511AAE81F28A5A1CD8AE08B9DB59F879CE8E058DD6C1D6C7FF64FBC3F9C4BF69
      03F2F20B914A7E5E186645FD7D5EB439B7BB22D918B5B99750976781AA34AA47
      9C2EF2720B7088F88719C7F09CF7BD34767AC2DFA6F89FECB35FDF08AE8F1E21
      3BD00AD9F7F788BE56E07F54B439B79BB9EB1F5F464D86118AD39DE1E2EC8C75
      FB75D0F7C84327E91AD4700FDCB6F89FE6EF13511938BA6F1732327390EDAC86
      5CE79D28F0534749B836CA134EA39ADA5D93618CCA948B4849CDC4C17D2A30D6
      3E8AEF171C9093EEFF9F59FFDA14FFD31E70B04104561FD0C3F1236A4849CB42
      76A80D0ABD555112A886F2482D54C5E9A120F9011293D2A1A6AA8A2B16179195
      1A8F2B069A909E6F6EF86973FCFFDDF855F25F8D5EBE61F5E2F9B6870EEC87A3
      D37DC425A4505DB2C5FAC4C527C3C1C109FBF7ED85C6613578B9938FE6A4C331
      2E07034FB863C8E1DBFD1BF4C18BC6FF7CBEB9D7A001FDD76F58BB2678DBE6CD
      D8AAA82882D36B56AEF4DDADBC0366C6A771FDE259983A47E25A267F774C73C0
      095748E77EE105E3FFF60DE2ACE6E2BDC1843107772A61B3C92374B60416BB00
      F654876DB45C8D3C257E0FF9E63F18EF7D2AADDB90D1076FE09B8BC0EF57698E
      7505EEE60123B4DD219E5DF8673F6F4ACFBD0F997CE032BEA33AFC660D2CB20C
      711AA3EDD6DC7EF01FADC3A4FD5730E1802573F7F92FB4BF711DF89E801152EE
      2F5ED1F72F6DA9C3C7529B7FFC5FE6FE37FEFF37FEFF37FEFF37FEFFF7F7FF7F
      7FFFFF7FFBF7FF66C0E3E54852CD3F7AFEBF25B06F9964D551FC9FFDE2F1FF0B
      62174199605BC0F17FDC8BC7FF2F883D04CDB43A58E7D661F8A980178FFF5F10
      ACCB98E27635BF7CFCB9F7661BE2FF7AA8914F72DCDF24F81A9779E67B82BFCB
      1C225890DF2FB99E841F662BCF6B4DFC7F987CF14816A5732531BF7A23701E5F
      E3F307FCBD80ECFB81A664F88C8019F9D75F7A31F5AD8AFF495E937CF068CC63
      1C3E7E1C6ACA5BA1B693B14D8AAD62DE6175551C8D7D2C96D56A414695657629
      E1C8BE9D3872686FF9E64D1B7E6E68FFC6F1BF2EF9E2B1F802A8EDD882406F4F
      941717A1A2A41895A5C5A8282D4139A5CB282FD0C70BEAFBF7E258420174685E
      3F96500875E2E57C96299796AFA0BFE5520406F8435DF510D6AF5DF3ABECFCC5
      B3F17F1006EA8563EB96AD08F6F341465A2ACEE8EB6287A23C766ED9881D5B14
      28C6558099C9596465A4C3DFD31DF24A7BD1CB20015BB66E475890BF987F5A5F
      4F2CC7E595B76CC2F6CD0A38676A828CF434787B794279FBB61C690CF04CFCFF
      DD98651B3AF69DBC5269DD72E46565E0CC69032C5D38D7F1EB41D3D67CDA6FDA
      4A2595FDB5BBB66FC536D2BB456123B6296E82F2D64DD845609EADF4FF16C58D
      E2752EA7A472A0AEC3A0B9AB8863DCD2C50B9D585F6E761614376E8494BB71FC
      CFBFE977935FB118298971503DB80F3DBA759B2D8DF7BB29AE5D8EB2B2321416
      16A1A0A0805048E9A7E0FF399FAF975339C5752B20BD07FBBB9E3DFE98A57A70
      3F5292E2B176F5AA86FB9186F13FCF0B5FAC5CBA1061C18138A2AE86F973665F
      93DEFBFCF9A279B31317CE9B8BB9B36761CEAC99E2DFF973E7600181FF36CCE7
      725C9EE43E7BE79DB7DFA13256AC2F2C2410CBE596B614FF765A347F6EFEC5F3
      66B8E7E880FD7BF760EDAA9558347F1E162F988FD52B971196C3C4F80CB4340E
      63EAE489E5243365CAA489599A478F88F96B57AF208E2558BC7001162D9827CA
      B31ED6C77A29BFB605FE8F7EFAF1C7E92C6768A08F3BF676B87BFB161CEED8C3
      C9E10ECE1A19425F571B2ABB7763D284F1F8F28B2F6671DF7CF5D597B3264F1C
      8FBD7B76D1751DF2415D51C6F1AEBD28CF7A581FEBFDF187EF67B4107FB35F7E
      FBED37DFCC9D3A7952EDE48913C0A0F661CCA85118D8BF1F860C1A88E1438714
      7CF1F9E7F3A43EC373DAB75F7DF9E5DCD12347D4F2F581FDFB63E4F061A29C4C
      07D5B7E0BB6FBF9927F5B5B75AF85EE53FD232031A7CAFD31023A5F1FCB7D2B2
      2F2AD3D2773B6F3588D99BC2478D7ED37F1199FF854F3BBB3593FBDBAE9E2877
      6BF50475FB55132C6FAF1A1F7477F5F8D2BB2BC7C2457931DC762E86E3EA7170
      5C3BA1F4EE9A894177D64EB4BCBD7692BADD9A4972B7D64EE9FF12ED79C369C3
      947CAF431B1061AA89441B5364B9D9A138D21BB5B9FCFC1E3E535588B2FC0C94
      1764A2202E04193EF79178F72A222FEB23D8E010DCF7AF8593FCB4FC46EB5A6B
      3F1FB9EE5E4E1CD5407E1290160024BA0391B640C865C05B9BA00E77CD15F03E
      B10EC1A6FB11724E15B1378D1067678634577B1425C5C067CF3CD97CDAD64F27
      B7BDAB800ADA20B85D043CCC012F33C0F72CE06708F8E8D05F2D789E580F1FED
      F5F03BBE163E8757C0FDC062EA97B9B8BF7132F2A282E07F70C18B7E9FD7C965
      CF0AA08C167E4F6AAFDF156AF755849B29416D467720F03410701C5EDAF208D4
      57C0FAFEDFC0427E220234D6C06BFF523CDA320339213E2FC7BF6B195092436D
      B542F0D95D38B6A02FF64DFA0DBBC7FE40753943FC2744FE1083CD58D6EB33AC
      ECF325360DFC1EE7978D82ABD21C64F9B922F025F89D772E058A32A9EDD6D83A
      F41BE2FD092AE37FC18E91DF0141864FF883F415B1E48F8E58D1EB73C8FDD109
      0B7EFD081E3BE620D3D309916AF35E825F0E28A04DA2B725D9DB4AB43F42C817
      024DC80F7401FFE3F03C290FBF531B11A4B31161E487619A2B11726811FC764C
      43A1AB35520F4C7E617E1EE3C84FA1FEA7BEF7BA44F5201FF426FFF33220B0FF
      1D23FE0DE47F1B10787C353CD457C270FB1628AFDF8DB98B0F61D4161B7C3DC5
      10C2D85BB9C2385BBC23E78477973B4198600361B24DA930E9469030E5BAA530
      C55A5D987A4D4E9876ADE17CD1C961F578203711F5C45FE7798160466923823E
      F16B3FE1F725FF0F3FB11C6FCDBE8E7737F86290662416992761B743168C838B
      E1905D83481AC9618410DAF786924BDBC754C2D0ED31546EA442CE381AA38E04
      E1AB0DCE10A6DF92CD179D1CD64C009243A89F6D5BE4F7D35E87E813B46F1873
      0FFC542A3BD27F92BA6D1F4D1B73226B319CE2EB0FBD4B20F81441502D84A051
      845F8CCBF0A7691996DCA8C43AFB6A9CF0A8873BC5079F2B38CBE68B8E37568C
      8B79EC7C832AEEF80CBF687FEF53A2FF79EBC8C35F673D62987F94A3F81DC650
      9AA6FA79D4E20FCF1AFCE459852F3CCBF1A167095EF723FE238512A8130ED2FF
      7B093B090A85B8130D7CBBE3C9F7FF1F1BCF1B6E126DA20EC4B810AF845FEC7F
      7FAA4330F97F24CDB3865B11765A0109A7964318ED88D02A609417C5CBFE5487
      60A01BE13BFF1A7CEA538637FD89478378358B21689551BA0AC261C27E4A6F2B
      8675683DBEDEEE2AE37F7776CF9FC6BA6C5F487DE047BC16340F90FF055F809F
      C17A9C5CD81BAA537EC68A3FBF84D2881F61BB61088471F7E15B098CA5E23FE9
      F9933D540987F089BE373A0654E2AD806209FF71E25BE50EA1FB3E085D098B29
      BDA30CE703EAF1C5537EDE6F7E6BB76A7C4EB1338DBBB05B34E62FC346650E0E
      4CFE1587677681D6DC6ED830F87B9A73BEC1B63FDF8730F101DC295E1D474B85
      F08B3C841E5B095B20FCBA1E1D03ABA5FC648313E510BE5C03A1B30284EF089F
      535AB91C8664B706FC3C0E3E559BD4EF809FEA7A20C905BEA7B74065C2CF3838
      E5371C9A4A7598F11B56F7FF1A1BFA7F09B97EBF88FCFC9DDE581F6064103080
      1CBE3BE1FBA03A74F02D7F6A7F2DF2C5E395F4B706C251C2214AEF28C171D77A
      7CB0F161C3F9E26D7E6691C3DAC955556E16D83BA51BCC368C4280A13C72ECF6
      22DF7E376E1F5802A7FD0B7173DD20B2FF3DD8534C39C693FADFAB0E7F79D7A0
      8B7715BEF5AEC0A7E4FF22FFD142491D8E922DD409078B253EA85404D5077534
      2FDC6CC8CFDFC3745CD6EFF7E5EECAE4079176D40FB4160518930FD2180CD286
      EFA94D08D29547BCB61C8D3F275CCB97F00F21DFFF937CFF77CF0A7CEB59864F
      BD1AF1F318E0B17880A042502AC42E07E29F66DB78BEE4FDE08F260B46DA44E8
      6C05C2692EF6A3B5C75BE7C9FCEB4FE33FE624F14FB0876132B028B08DFC7B0A
      D151AD186BAC692C4CFF1BBFEC1C6F0FBBD593F2C34F6CA231602A99FF69FDF5
      A4F5C78FC67FB4CE2A7C33F73C96DB3FC6BA70E6AFC59F5ED5F8DDBB12DF7A95
      93FD4B9FF63FFBE051821AE100614F117EA63131CE3887EC7F25A689EFC35F97
      D6A93FED07F323A8CDF0D7235B9C828F9E22F16F40D0EED958B2781F7A1F8FC5
      8E38E2271FEC4B76E8467ED839B0161DFC69FC8590DF1F2B938CBF6394D620BF
      53AFA0FE2F41FF3395F8614730CD21FA26CDC41F6F487F9BEB6F3C7FD42DC7F5
      D3C0B8273F038F36CDC0A585836DDEF9AACF4A61F123F199132369DE117A6DC3
      9B0B0CF091B63B3EBC118F376C62699CC5D07C477F57D03C3B504732FE0E5660
      F2A56AB45FE848E376C658694C293453874ED2E7790D5BDAEFF74D4BFB7551E4
      34F78F8809D7B397DC2FC6429A4BBF3A4663B98F1284013B898B305819C2CF3B
      683E20FCB21DC20F9B212CB88FAF756AF0C7B16CF23DEB1C690CD2FE39E799DF
      93D6E31B2964CF4EEB240C3870A0A38207E41369FE253F785FF10A847EC43B74
      0F84912A34DFD1DF2EBBA81E54AFF117C90F6BD0CBB8066FAFA4797FD0FE03D2
      EF9E5BB36797C5E6AF37282FCE17C2249BAA498E859840FC5D43818F4EB8A2DD
      383508FDB7519B694EEC7508C2329A6734ABF1B97605BE3B4C6D9F615B257D3E
      DADB2F11AF88F385F0FBE2E5ED173B624A482D7A07D5E2BBC01A7408ADC35BB4
      380ABA34DFE95489FEF7966629BE395982D71650BF775DBC5CEAF7AFBD64CC24
      CE17C228039BCFF707604804CDBFE4FBE2FA17582259FB08AF6B96E0136AFB5B
      EB7D697F74DA46FA3DCA7F5EE1B9FF1EC224EBFC8FF6FBE3B7306ABF1FF33377
      11DA1D2BC65BB406BDBE96B8A75FCF97FAEEAB3EF72FCE17C2E46BF9EF921D3A
      0694E33F511568A75D4EFCA510D6FA11B775BE584652F6559FBD7F325F08A3F4
      ED85A97610A6DA4AE6D799941E437912EE2F5E303E6C6D1D64F3C5D006DF370C
      95E675FA07B91BCF171D1A7CD7D0419AF7A2366FBF71FD3A7B858DF2905FBFCE
      BA95BFBDB7E7B20AF2F260D997FCBDFE7DD2C1DC58B76E0356ACD908B9559BB0
      74A53C96AED840588FA5CBD74AB1067284152BD660DD9AB5905FB78EF95FF6F7
      FA8EEBD7AC465C42A2C805D3EF81CB83801BD3803B14B3DDDF08B82A53DC7490
      D6E923B45E9FA0BD8B2E96CAAD405C7C0258B699DF9C5B1D9BAD5BBD0AEBD7AF
      C7C265EB00F39EA8BF3211B53796A0E6F646D4DCDB8D1A1755D4BA6BA18EBFA7
      08A07821CC000B162DC37A6AFFBA67BF637D21FE35A423363E11F3E5D6029706
      A1D66A2E2A6DD7A3D269172A9CD551E9A98D2A5F4354079AA23EE43C10658AF9
      8B97934C02D6BC027E6E83E226452C58BA06B01C8D9A1B72A8B8BB8DB80FA3CC
      590DA58E3B506ABB0E651633507581E2D80B7DB160C96A51E695B47FE50A1CD7
      D2C2BCC5AB00EBC9A8BEB50EE50E4A2821CE22BB8D04051453BAF4DA12545E99
      0E580CC73CE26719967D59FE55CB9789F69FBB7005603B1BB5B62B516EBD0425
      B7E451E4B813454EBB51725B1165362B5063351BB83A127317AD146558F665F9
      57AF580EE5EDDBB16031F1DB4D05AE136E2D459DA3226A9C5550E5720075F768
      BF6CBF92C605F15B8F14CBB20CCBBE74FB49C7AE9D3BB168E90A4C5FB40E13E7
      AFC784B96B3061CE4A4C98BD1C13662D93623926D2FFD3E7AFC0A225CB484619
      AB5E013FFF4E109F9884398B96D3F8FF81FA7730D980C6FF6D1AFFF7688FEEB2
      5332FE7D68FC079D14C7FF9C798B104F73C6737E636815FFCAA58BB14F4505B3
      1690FDCD7B0157263D1DFFF725E3BF8EC67FBD6CFC879FC6AC390BB16FCF1EB0
      EC4BF32F5E80FDFBF661C6BC6562DBEB9E37FEA3CD3063F6425166E5E2F92FC2
      DF7EC29E8B37C7EFB988410AA7B17CC11C71FE9D367B8938FE6B6F3E7FFC4F9B
      BD489459BE6036066D3A8D8907AC3061F7C59BAD588B5E1FB7D3ECFA242ADF73
      CE56ECBBE48265C4AF7AE820A6CD21FEEB535063DFC2F8BF4AE3FFF2702ABB94
      640E89B2AC8375B14ED6DDC25AFCFA3865B3EB93F75BA2EFA25DF86DE4428CD9
      67453A66E3B0BA1AA6529B603787C6FFAA16C6FF1C1AFFA3C4BAB20CCBB20ED6
      C53A593773345187D7C728995C9FA07205FD16ABA0DBC495E83A612526ABDF82
      DCFC59484864FB2F20FE6912DFB79743BD138D7F97BDA8763D88FAFB34FE6FD3
      F8BF49E3FFFA284CA7FE4FA431C3B293D5ED455DAC937533077335A843FB915B
      8CEC466E3F879EF376E2B36E43F0458FE1F8BCFB30F45AB417A306F5C5517555
      CC99BB501CEFA3662CC788697218397531464E5E48588011528C9AB21013672E
      C6DCB90BC4DF4187FED50BBD2956655DAC937533077331A7D41FDE1FB1D50426
      8EC130710AC5B9071138F7308A1009D3079130B671C1EA654B307EF20CF2AD5F
      69FC0DA1798ED277683E78A800B8EF06BC78FDD704424E01B18618367C24562D
      5D48B2AE30231DAC4BD449BA9983B99853BA37E93844D1087EB15918B9FB32C6
      EFB3C484FD128C278CDD6F8D8B4E01E8D9FB2FA46BFC46DC3CFFD25CC036E767
      9C79691037CD3B81FA34F68D9174630F7AF6E84132FE247B5DD4F1441FE9660E
      E6624ED999E5211B0DF1302C15E30E58638ADA4D4C53B71131953085305EED16
      4EDBFAC06DEBD7B8B7EB4FDC39301AB7D567E0B6E642DC39B9027775D6C0E1D4
      3ADCD75B0F8FD3AB70FAA6BB283345AA43A68F7533077331A76C9F3A64E369D8
      F92761B29A2D661EBD85591AF6CF60FA517B4C3C7C07C68F9261F0200506F7E9
      EFFD4418DC4B90C0295E827BF1307E108F89EAB74599C67A5837733017733EE1
      9737C055CF044C3B7A17B3B51C31E7D8B3984D98A9E988691A146B1E75C0E423
      8D7157C414C2340D07B1ECEC634DE821DDCCC15CCCF9847F833E4C9DE330EBF8
      3DCCD37E80F9CD60CE89079871FC01A6683DC06486A6145A923CBEC6659A9367
      DDCCC15CCCF9945F0F7A4EB198ABE38C05A75CB050F7EF584098A3E30A8B3BAE
      880DF14674B037A28224E034E7F1352EB340B7191DA49B39988B399FF0AFD785
      E6ED582C34F0C092D34D633161BE81171EDCBC88BB372EE3F6F567C1797C8DCB
      2C3EDDBC1EE6602EE67CC2BFF6140EDAC660C9195FC819358FA5C60118BEC510
      8337E911F41B414FBCC6655AD2C11CCCC59C4FF8D7E860E78D38AC300B260461
      657338178265C67E987FF23E16505F3604E7F1352ED39CFC0A11C1221773CAF8
      87527AEB8D64ACBB1C47886D0171587F85C0F73E8A489042FAFF95B856E960AE
      A14FF93B0E58A2E636648D3606AF3AD97AAC6E8436C83217734AE73F9E83BB4A
      BFDB1BF55FC23029E7FBB235A8D1FD23FF3464ED6EDFE01C7E937BB133BA5AB7
      54F7EFC566F955B75A1BFFB756A6D17D004DC6FFE78C686F5B5B01C5750B5B1B
      CBB75AA6F17D085FCD2BBFF5D9BC3A749C53874F692BF3366D75CE191E457A72
      1C14D6CCC3FBB3800EB4C5E2EB4DE17932AC9B39643669C4FFFE67D32B70F97E
      2D2EDD63D4C1CC013033D440909F2736AD998FF3F7690B7EBF5E2CD3149A93B9
      4432AC93CB3087CC268DF83B7E36A90846372BF1D198427C3ABE18EF8DA9C665
      332D3C72B281D2C605F8707C1D3A4C2841C709454DA2C384A6653E2519D6C9BA
      9943F69D4823FE4E5F8CCDC5CE53A5F86C4C0EBE1A9F87CFC6964071BB36F48F
      2963D6C2EDF8627C19BE9E908F6F26E43689AF273423333E5FD4C9BA99431693
      34E6FF7C783A666DC9C567C3D3F0E5C8747C313207EF75B5C03B5D2DF17EB7CB
      F87214D56B543ABE1E95D624F85A5332AC8B75B26EE6688EFFBD9EC9F87E4432
      DEEC1287FF7425748BC77FBA27E1ADEE29F43759F27FB7B8E7A00919D2C53A59
      377334C7EF68678E7FFAC31CCDF15B5EBE2096E1F38129C9F1487D45605DAC93
      3FCCD11CFFA50B92F6272725924C12525364487E2ED2521929229EBD9624EA62
      9DFC618EE6F82F989B89655253584FEA13A4A7A5232B3313B9D939C8C9CE4646
      7AC6936B19E9E9625E5E6E2EF2F3F2C4BF8DCB3058277F98A3397E73B3B36299
      F4B454F19C2A232B338374E6D0DF7498999942FBE4493CCECF436646BA88FCBC
      5C5CB97C19BAA74E414F5717A7747470FCD8315186AFCBF4B04EFE304773FCE7
      CE1A8965988B7919B939D978F4F03E060D1A847EFDFAA177EF3E282F2DA13666
      8928A3F4E02143B070E142AC5AB50ACB962F17D3058FF3919D95F9440FEBE40F
      7334C76F62642896C9CECC225909D89E7EBE3E30D0D787BEAE1EFEFCF34F5456
      5488F98CAACA4AAA536F040705A1AEB61615E5E5282E2A12AF6567653FD1C33A
      F9C31CCDF11B9F392D96E136CBC0762C2C788CEAAA4A9C3D7B167DFAF4410DA5
      B90F38DFD3D343AC9383C35D64922F70B992E222B15F1AEA61F0C7C8D0A059FE
      33A7F5C5327924DB108FC99615156530323242AF5EBD505B5B8302E22E2C2C80
      BBBB1BFEF8E30FF4A67AB11D264E9C888888701497501DA88E0DF5F0C7FAEAE5
      66F94FEB9F12CB3CCECF7F06058F1F8B3637323A23F2D7D7D5A188CF1B1714A0
      B4A40435D5D5A2DC9D3B77306AD428AAC324318FAF37D4C31F7B3B9B66F90D4E
      698B6558AE218A0B8BC8AE55303696B49F3F25C5C5621DB8AF39CDFDCE9F5334
      0EB88F984F222FB11397C9CDC981ED0DEB66F975B54F883A8A8A0B5154F41425
      25C5A8A9A9C65963E327FCA5E4F79C5F51518E2AEAF3CACA0AB1CC491A9FCC5F
      5A562AF639FB01EBABACA884BBAB0B6E585B35CBAF73424BA2BBB844ACAF0C65
      A5A5A26F1B137F8F1E3DC4327CB69B7DDFCCD414CECE8FE04B63C4C2E222468E
      1C81152B968BBC3CEEA2A3221115194176B74580BF2FACADAE36CB7F524B43D4
      CDE7CB4B895306FEBF86F8F5690CFEF2CB2F62990AF2875ACA93975F8FAEDDBA
      A167CF9EA26D76EDDA89C4847838DEBD8DFB4E8EB879CD0A763637E1EDE521CE
      95572F5F6A96FF98E651A9EE729497973D03B6717D7D9D789DED5C51598EEAEA
      4A4979EA7B9EDF783E4AA5B93E28C01F572E5D94AE78F5625FF138E6F65BB430
      FF6B1D3D2C4AB05DD9DF1BA39AF2D90F65D7C5BF540FEEE7D49454C4C7C62222
      3C0C5E9EEE30968EE542F21FEE8784F85838D33C7AE19C69B3FCFCAC00FE54D7
      D4507BAB5A05EE872C9ADB787DE3BE0E0D09C6A3074E30A679A69CEC227227C4
      C1DBD34D6CBF690BF3EF11D583227F1D8DEF1AAAC37341FDCF36E0F995D7DAD8
      9868B1FDB76C6FC294E6D9C7B41E2626C6D3FCED0D773717B2411C8C4EEB37CB
      AF7E68FFD38D4A7D7DAB504DF30C8F756E27AFF3E161A1B8486BAC0D8DF3B4F4
      54F8FBF9C0C5F921D52B94E6C03C18E8EA34CB7F58DAFE17F9B04F8604058AE7
      FC5D1E3C205B44C1E5D103B8B93A2332224CDC1388CFA2D139D91C7F47955DCA
      6E6A07F7E3D03E151CDCB7A7451CD8BB47FC5EF698C611F0B839416357FBC431
      E89C3CFE3770FEC9E35AB2EB25CDF0FF37E2703EFFDF4B764EBB71FCF75F8AC3
      65F7DCB426FEFDC7EFFD7F99F306034DD32F112C847FEE798ACD7EBE99B1E3F3
      A956F960FC03F7E43FB7ED3DB5C38EEB049482D1E378E0EE57709EA82D9F777B
      1A6756F8E6D5C0F7710D38DDE07ECE7FFC5E91EEAA0FE76DB853886BD935304F
      AFC1068742FCAE7C7DD47FE99E96B77A9E8AB6BD18598E3521E5581458068BA8
      72F4D28DB1F92F3D53E383C1E639F02BAEC7149F3211AE05B518723E07C2DF9F
      2DF4AA3FAFF5225FDBEF568C23F15598E5572682D39CD7EB9FF7C377FA9CCDAC
      B89B5E8D4541E598EB2FC14CC2DD8C6AFC79F61FF5C376BFEFB01E31FD5A3E2C
      736A3137B01C0B8324984BB890598399D6F9E032FF901FBED94B37DACA38BC1C
      8A515558185C812552707A6D04C50711E520DFB46AA31FB61F609AE9F597690E
      7A9FCD46AF66D0D3381BDD0DB3702BB75AE45B1A5201392938BD90703DAB1AFD
      CC72C4B2CDE9618E3F4D72D0DF2C2B4EBA0E7DC03251B540086D6783CBEB11D4
      0C82CBEA7138A90A8BA9A05C68259649C169CEE36B41652DC813A89A88A80196
      D817C89EFFFD69EF93C18F66B895428EECBA38BC128BC22AB19011FA149CB798
      B094B09CCAAC6804CE5B2A2DB328F45959D625CA7319E298EE5A82BF74431E49
      CFC7F1DAF1472F0D5F9709B70AB132B20AABA3AAB192FA93B1A201F8FF55CF41
      53320C5127E91E4F1CCC253D1728FBFE9FEBD1F397758647465ECDC772EADF75
      31D55843755D1DF972601DAC8B75B26EE6602E29A7ECBBF9F6D2B3D8BF7DDA67
      D2BC21E773B1C0A314F2F1D5581F5385B5512F0696651DAC8B75B26EE9D9DF8F
      9BF85DE035E9DCD19930E42FDD988449F645D8105B433A6AB03E96EBD24A5059
      966159D6C1BA58A754F73B2DCC91B2FB37BF24F4EDA1FAD076C4957CAC24DFDE
      48ED908F6D1DB82CCBB02CEB1024EFC0FE52AABB3573D31BD27D68CF6EFB9C2C
      E56E3FC6C6C45A6C8CAB691536515996E94EB2D2BEEEF802E74F794FD7B1E7F1
      207BCDD00A1C4CABC526B2A9422BC0FC2CC3B252EE17DD1F7EF427CD5757B3EB
      B035A9168AA477F373C06514A82CCBB0EC0BDE9329FA42971DD6A327D37A73B5
      1050249D5B085BA5D8965C0BA5943A119CDEDAE01A97B52800589675BCE07AF4
      466F9D087325CF52F1D9145B929987407CDB53EBB1330390F329C702B732ECCC
      8498B72D455286CB9ECAAD8792572958C70B9E3D7EBFCF99D40CE3B41AA8674A
      7877A4D661677A3D76A4D563BA4331FE5075B9CF9844731AE789D75225363948
      322CCB3A5E647FDE69C8826F465AE4E24629A09C5E07E58C3AECC9AEC7E6B85A
      8CB6CCC3EF5BAFE84BCF75F7EF42E9619772B185AE71999D54568964F879A723
      4807EB6AABEFF73A16A0B2EC5E31CE1701BBC8BEFB7281550195E0BDDFF78B0F
      2B0B92671A7494A2CB0F94D78FFC4DCEBB5C2CBB2B0B3023BF59476B0DEB6AE3
      1878BB8F7EBCEBD1D82AF1FD9ABB49D74CC722F437C94687BE53790EFD596AD3
      D7A4E0F4CF7CADDFD98CCA29F685A28C1EF11F211D7DF4E25CDB78BFC547FD68
      3F625B071AF775186DF518FD0C93F3A5E7D9657368BB46F326E7F1BDF743FA9D
      49CE1F669187FD24CB3A865ECA6DD338FC4F876F3EA73D51493FD36C30BAABD8
      5F91F6F5572DCCA1B2B99BCBF4EFBEF7CE1599FC00D38C12D6D996F64BBF2718
      295D37BAB5610E95CDDDDDA4B2CF7CE7D086FB093E6A7086FFDD36FACFEB5299
      0E8DBF7368E937F0FF8167013E774EFE64E8C629DFCD3C98D165F949FC2E771C
      BF2ED644E7E9FB333E1FBE694A6BE7D917E47FFDDB315B4DFEDA711143351C31
      82A1760B83775AA09FBC217ACC53C5F7C3154C5AD34F2FC0DFEEF311EB86F651
      BA80E11A77315AD301E319941EB3D70AC3369F455F390DF49CB8039FF5931BFA
      3C3BBC00FF9B5D171F761BA47E5BE49E78DC09D34EDCC30CFA3B45F526C66E33
      C390655AE83365377E1BA9E0FEBCF8E705F83FFC63AD1E86AAD961DC31E2D6BE
      8FB9A71E62A1F63DCC56B7C1A4ADA618BE420BFD66EC4597B14AB2B8E295F17F
      FC7997CEBD379B60F881EB98A07917B34EDEC762BD8758A2751B83579E449789
      DBF0FBB8CDF86BD24EF41CB7EDB9F77CB491FFB5EF7A4C1BD365CD29FCB6421B
      3DD6E8A2F7EA53E84AFED671F01ACC50BF020DBF3C6CBCEC856F072E478F315B
      F176C71FBE7D85FC6F7C3F74ED899F166B60B68E0306281A62A89231D65DF0C4
      C990229C082EC461CF4CA8BAA763E4461D741DA988CEE3769C6B691CB491FFBD
      CEE37696FF307D1F34FD0B7085F6556629807E64058EF9E7438D78F73D88878A
      532CE61CB98ACE83D6E2A7C9FB2A84BF3F67F945F85FEB3070E5FCCE13F6E047
      F22B958729304D037423CA446E75E2DEFF2001BBEE4663877D04661CBC889F46
      2BE1C7C97BF149F749BD9A1B876DE07FB3C3B04D17BE9DB01B3F0F55C0B2338F
      6094588713410538E29589838F92B1DB21064A7661D87A3318A3144EE1A7F1BB
      F0FD24157C3662F3F9B6CEF94DED013F19B625E2EBF1BBF1C338654C5236C799
      841A6891BFA9BAA692CDE3B0E35638B65C0F84E2353F8CDD6E4AB6DF8B6FC95E
      1D466E8D6AAE0FDAC0FFC9C723B7A3D3E89DF886DAF5DDE8ED38F030191A3E39
      D4E709D87927125B6F0441C1CA17EB2EBAE3D769FBD1996CF5C5D85DF878B862
      94D0CCF38DDAC0DFE1E3A18AD19F8C54C26754872F47EF40F77947A0EE914176
      8F86926D0814ADFCB1F18A0F066FD4C7D76395F1E5989DF894EAFCD130C558E1
      E933FE5EB8FD1F0C5CF7F0C361DBF0FE902D786FC0260CDB6A22FA80B27D38B5
      DB0FEB2F7A609ED625FC3C6D0F3EA6321F10B8FC07FD565D7F05EDE7FEEBF666
      8FA56EDDE5B4309DC6D7EEDB21B8407B4B9DD062ECB60FC1AA33F6987EC008AB
      CFDEC62CCD6BE84EEBC01B3D57844A7FCB79F725F9DF182BBF77F8BA734E8FB7
      DDF0C5F1803C5CC8A6F14F63F06448310E3A278B7EAF7C3B12679340E3E23194
      A81C9767B9E6CE1EB692BFFD4AA33BCEF2179D7192E6386EB34144098EFB6642
      3B280F67622A71361930A6785737B41027FDB3E97AA9588ECBB31CC93F6AAA0E
      ADE07F63C5993B99FBEEC5C09C620F139AEFCE26D6C398C07F75820BA0F6200A
      26D466B5875138155240F978729DCBB31CCBB39EC6F3C073F889FB7694AA4BB2
      6867438AA94EC75437400D0C6319B50D5023E6372CC7722CCF7A585FC33A3C87
      FFC31546777191ED4D36D68FAA10A117590E5D29F4222B9EE44BAE5548F32590
      E5B3FC45F217D6D7704FD0027FBB894A9AE3B65AFBC22C1538155E264227AC0C
      67136A719962EECB6457B3C45A6887968AF9DA61A530A1FF2FD1B54BE9D40754
      8EF365B2AC87F5B15ED97AD0D2B3B0671E3CA3B0FB4E388CA96FB5C9C7B5434A
      484F290CC8C66689D5B0CEACC5DDC775308A2E237F2F826154196E64D5E132C5
      DA2609D562392E2F912D167D82FD80F53675EEB411FF7FE61D3DAFA3EA9C8433
      F1B538EC960A359724188417E3584001B4021EC338AA1837332A601E570C2D5A
      8F8D228A7031A914A7C38AC4EB5C8ECBAB3927E24460214E4757E188473A58AF
      20BDEFBD05FEF7E4F46C22F5A8FE3AA125D0F2CDC36EBB4098C61488EBBC3AE9
      39E8924A9C39B0482AA27D4F21A5F3702A300B87289FAF73392ECF725C176DD2
      A34BFA58AF6C3D6A81FFE3E54677CBD9F6C7FCB9BD05586F6C87B3D18F3140E1
      0CFE5A7F1ABB1D63B1FD56240C43D3A170FE1E4EFAA662BB7D24E5C788D7B91C
      9767392DFFC7D0F4CB8739F9C5F23377CA65F3710BFC1D571A3BE0B2F89ED83C
      1C0F2CC26A5D4BECBCE1457B2E13F4A13DF0165AEF365DF3A775C717DB2E3BD3
      FA1B894DB406713E5FE7725C7E8DC175519EF558E4026BCD1F3679EEB6117F87
      4527AEBAAD3AEB08C6DA738F306CF936CC3D6C8A791A172077FA36961ADCC682
      E39698A36E82D9878C3147CD44FC9FF3F93A97E3F22CB7F6DC43C874AD3CEBD0
      E4EFFEFFA53300CDFEEEFF5F3C03D0E4EFFEFF37CE00BC62DEF6274E9CB849C0
      F1E3C7FF8613274F425B5B3BFBE8D1A3439ADA0FBFEC19044D4DCDEBE6E6E6A8
      E727051617A3B884CFC549C0693E27C5D78F1D3B162A34F1BCC997E06FAFA5A5
      E5728E74F339277EAEAC87AB0BBC3CDCE1E3E921C2CBDD0DC141812897D64143
      43E36FF75EBE20BFD8EE73E7CE89DC21C141F0F1F2146176D608DA7CD6866066
      7C06DE540F3E93C5E7B44C4C4CD80ECFD4E105F89FE10E0B0D81AFB73702FDFD
      C5B3CD670CF4A1A5A999366AD4C86D3A278EA55D3C7F0EFEBEBE28A5BE217BE1
      E6CD9BEC17760DD7A217E12E2B2B17CF7A05F8F910B71F42C906E626C6E219E4
      E9D3A7F37B467B7CF5D59763CE991889E7A24A4A4B45FE478F1E415757F7997B
      20DACC4DED8E8E8A425060108203030941080F0DC5558B0BD0D5D3C3C2458BE6
      F0EF9A470E1FB1BE72E93CC24242A8BEA56C7BE8E8E8404F4FEF99B9B8ADED8E
      8D4B4078441CC223E3111E1E297247922DF859AF56965770E1FCF99A0B17CEE7
      719AF322C242C5339CDC7EF64369FB3BB592FF697F930F2524262332261D76DB
      051151B199888C8C45644424D5211C0FEF39E12E3FAFD6DE160F281D19162E82
      CF7092FFC3CDCD4DB4412BF91BD8BC0249C969884EC882AD92808A540F82276C
      A90E3189D9888E894774741462087C0E90C1693E93C87FF9D9C4478E1C11FFF2
      19D956F03FC39D929A81F8943CD81077699233C2CE0C10C169AE43424A3EE2E2
      9310171B8BD8D818E28FA1740CE2E362919E96268E3D4343C9F9729E179FC3FF
      0C775A7A3612D31E8BDCC5710E8830198108B33112509AF3B80E49E90562FFC4
      C7C589BC7C0E36333D0DA666A6D4F79A70BC2B79271EFB610BFCCFF85A66561E
      52B38A45EEA2681B449A8F41D4F90988BA3849024E535E718CAD5887D4F43C24
      274BEE7BC8CCCC10CFAC3B3A3AD0B8D4211F097F1EFF33DCD9398F919E532E72
      17845D41F4C58988B69882E8CBD308D39F20E6F254C45A4C14F9D3B30AC8DE19
      E299503EAF6C67678BD8E808AC50B9888CB444F13C6E33FC4FFD9CB873F38A90
      FDB8123789FB718839714C43CC959988B93AFB19C45ACE41DCD599B0DD2120A7
      A01A3939F9E2D97F93B326B0BA7A1575B535B86D7B0D43363B232F9302C6FABA
      A6F8DB13B79D6C6E79FCB8187985B522775EE059E2988558ABB988BD36FF19C4
      592F40BCF53CD810775E513DF2F28B51985F800BA6E7B0CB500B05B939A8AEA4
      9848FB183AAD8C47614E4A73FCEF9F3F7F5E5C23F8F9DD798564F36DA4D3DF50
      E488B35E88B8EB8B9F41FC8D2548B8B10837C9E68FCB80C785252822D9CBA6E7
      31F9E8266CBB7F1695C5A508F0F5C4992B77F1F1B264943DA660A8BEB629FE8E
      32FEA2A2221496D4E026F127D92E4582ED32C4DB3C8B04DBE548A47CE62EAEE0
      75BF02250545B0387B0E2A574C211C1D82ECCC4C3EC84CB63084A1630A3E5996
      80CAC28C66F90F1C38E06C66764E9CA74BCA2A515A0DD1FE49B75621F1D61A24
      D8AD16C1E924FB55E2B5D21AA0B4BC0A65D4CECBC6A650B13A8F9F9D75D0EFC2
      56D41597A1B4F031D434752846003E958B434D715673FCE21994BD7BF7521DCC
      504AFE575159878A3AE006D921F9EE5AC27A29D68A797CAD92CA5412CF55E25E
      7E490FC3D21E40305D063DAFEB74B1068F9CEE40FED43D1CF5043AC8C5A0AE3C
      07F54DF3CBCEA0F496D581E79DAA5AA00A923AA43A6D12C1E92AF18C385D2BAB
      80A59119165ED4C19B3197F047C45508EAC381F21A3EC48D7386DA986A5A8803
      AE4047B96812C827F7AB6D76FC35AE437945256A686347D5C0F52D82084ED752
      DB6B2AAA44EEC516A720449F41E7846B78EFF65ECCB03A403C75484F8A87BAB6
      11465B003B9DA5FC3585C45FD3E2FCD3B00EA6A666D40F559233E952F03EB3BA
      B29AFAFB1C165AD13A9E640421D6049F275B423839092EB101E097533ADDBA81
      F5670330C90A50BC0F7462FEBA12915FEB39F3AFAC0EBB77EF76323535454D4D
      ED9373DE5555D53039638C896AEB2198CD82E0B617428A3984206DBC757CAAA4
      82646323EDA398655585E93729F67362FE28BEB342C24FFB80E7AD3F84CF76ED
      DA65C66B25D741762EDFF0B421EEDCB2275BD4E35CB023FE30A57A1C1A044163
      28C5F996626745040740C5D01AD36F0373088B89FFD325CC5F4555AB6E0DBFF8
      1BF8EFBFFFDE97E7708A1FC0F303D7C3C1C1E16F67DFB38BF2915520B9BFA88E
      1CF3C6B52B18AA701F9F2E8D43A7A551F884B83719A589CFF8AEAD69353FDBE0
      F3CE9D3B8FD9B061C319F2995C9E9F3D3D3DC986F57F3F805F2FB96780EF07D2
      12EF23A9917A4CCD53D0D8E3FB055AC92F48E395CFA4670D06F6ECD973F1F6ED
      DB6FD13EAA92F77121B4AF7CA60AD43F1E1E1EB0B7B36B50A93A71CEC7937B57
      6A9EB7FE376507FE6DFF53E9EFFBFC0CC1A13367CEDCB373E7CE87B46EC1D6D6
      1671B4E760DDBCCFC9C8C868F15E058E15DBC0DFF0F7FD3704D9F32F25CF51EC
      4BF3B61BFB07EB64B0BFF25F6E23D7AD21D8EE7C4D5555D5AD8DFBEFE6CE1A3C
      7946A8F062F7FEBF6CFCFB22DF57746C70EEF07FEAF7FFFF5FC17E3DEA747061
      6BDE8148E51E0BAFF0599252FE8FDAF80EC48F5E317FA77FFA1D88CDBD0BB121
      FF73DF8198257907626CD58B2186F6948934250F6DF02EC486FCCF7B0722BF9F
      705D4435D645D6BC10D644D6C2BFF2097FC7C6FC2DBD037133BFEF2DBA567CEF
      7DBF63FC4E3FE9BBFDDA803FF99D8027FC315C3FB8F1FC2FBE03D0BD14D8C43C
      5155D82A83F43D87DBE36AC5F70D4EBA1C2FBE573282DFEB57D636841148A5EC
      DD7FCFF0B34DF899EEDBE2EBB13DBE4E7CBFA188847AF19D84D32C62C5F7EE6D
      8890BEF32FB875EFFC6B88A54155082A7FF22ECA67F8D926FD4FFA8BEF4DEC47
      B6621BCB308030CD321E8A513550E0F7E885497C44BE0DD8C0EFCF24F89635CD
      3F8CDAEF4376E5F750F27BFF64E0F7FE79F0BB21C97FF87D838ACDBC1FF37960
      9F62DFF22C69A6FD7A8164FB3AB1FF37464820CF69E2DDC4DC04F6C117C116F1
      6F153691ED5C4B9E7D17A78C7F04F1EF4AE4BEAEC5E618AA472C20DF081B5F10
      0A04D6B999C6CF83E6F87503B187C2F36D09806A54313CDDEF22E6E11544BD24
      5847A0AB1D0E914EC578C0A119FEE1C4AFC2EFAB8B2941F483CB087E6885F860
      5764C68711425F1061A28E10D215F4F01A0E4697C0AE59FE20ECCD06FC1EDD40
      D0BDAB08F5B88328BF8788F27D20C5FD36422A473A5857D0BD2B7071BE0DEB52
      E6FFFBF81F46FCFBF3801087F3F0BD67099FFBD7E07BDF0A7E549740920DB97F
      05A1AD0497651996651DA22E4A07DD3D8F2BE54DF3F37BE50F160081B7CDE1E3
      781576178EC3FA8C1AAE595FC41A7D538CD230C1985682CBB28C35C95A191C84
      CDB963F0269DFEF6E6B8D402BF7A11E07FCB145E0E976177FE386E181C806E72
      3154C92E4728BC3ADA4A705996D14D2EC135BD7DB031D71275FADA99E24265F3
      FC1AE41BDE37CFC2DDFE126E9ED3C235DD3D502D90BCD3F06826A0D14A70597E
      2FA206D5C35267176E98688A3ABD48B739F10F6986FF38ADED9ED70DE16A771E
      374D356079721734C826C748CFB19C36826458F6EA0965581B1F86EBADF3F020
      DD66D5FC2EDEA026E77F5D0AD13CAE9D86B3CD399239024B92D5A6F54A8FECA2
      DF46B00CCB5E3DB61DD78CD449A7B9A8FB1C110ED3FBFBFA3BC220A8B8AF5E24
      DCAD0DF0E08609ACCEA8C3525B197DF5A2457B0D3D15D026B04C5FFD685C39B9
      1D570D5549A7A9A8FB2FE260AE46FCB2F3D6E35DACF471EFDA599251C315ED9D
      7C71FC4BFCEE3BFEF2891DB8A27F50D4C9BAA5FA9EF92DB8C179EB9F2F1B1C76
      77B0348285FE219CDABFC95D7AD6FE457FF3FD59679FBCFB45DD03609DAC5BAA
      EF99DF821B9EB76BF0FBF73371E20B7E9EABAF117FC378F29938F115C4A74DEA
      FBBF75EFFBFFE2F9F7FF8133F7EDCE9D39D9CFC24C57FDAAB941C85573FD14CB
      F306680DB82CCBB02CEB68E33D4FAF5F36D3D3B0BC60803BD72FC0EBE12D4407
      7B203EDC0745D98928CC4A68115C86CBB20CCBB20EAE13EB6CC579FCF616A6BA
      B6F6D6E64808F7457672243213C39191108674DAC330D2E2425A84AC1CCBB02C
      EB48890902EB64DDCF1943EF5FA5BA2645F813FCC43AC487F9BC14584722E962
      9DACFB39734847EA33E4A5C723DCCF454484BF2B2203186E6D84AB282BD3C33A
      59F773CEC377221B01B565C8498D45A8F723F8BB3A20C0DD91E084400FC6BDE7
      C0492CCB322CCB3A7252E3486739AE5F347ADE33C83B711D03BD1EA2B294362D
      D5A5A82CCE45764A0C5263421119E881305F9716C165B82CCBB02CEBA82ECA45
      9CAF07ECCDCF3C97FFF2395D783EB80D0FF2DD10D297121B2AFE5657F2381375
      D525A8AB2A465D65316A2B8B9E01E789D7AA4AC4B205249312174AB67743B8CB
      3D086AFD29D65DDD8AF6EBC1EBD15D78BBDC859F2BD9DDE33E42C81EE1BEAE88
      0EF0405C880FF9520052A34390151F819C8448A4537B5322039118E687387E06
      B0BF07227C5C10EAF588F6DB0F91E8E10AE1F0100896AA100E8D6CE9B9E79D2E
      51FF7B3B3BC087FACEDFFD1E82885BB42B71C7067B933FFB23252A08E9B161C8
      26EEDCC42864C545209BFECF890E435E440872C3829013EC8F8C001FA4FB7A21
      CFDB9BDA3F18CA29915487FD941ED55C1D3AE8681DB87BFBFA45F8BA49DA1E4C
      FED31C3F731724C7A22831166994B7FA9A3ADED79E0161FF5F100EF4837090D1
      9FDA3C90FEEF8F8369E15818E306C19AEB30BAA93A7C74EAD821FB5BD72ED07C
      719EEC7017A1BE3C06DD101DE485F8501ECB8164FB6064C685A32029163569C9
      D86D7F0ADF9C5986D90F4E43273D14A7F3E231313B045309D3A4989C1504DD4C
      6ABFCB692C4BF080607390FA64AC5DA3F9E8A3F3462751949B863B372C70E9AC
      0EACCE1BC2C9F62ADC1D6D102CFA01F9646410F2136350979E826957F7608C8D
      1AB4B3C23137DE193F8558E19BC0CB10022EA05DE0450928CDFF0B1E86103C69
      0C789FC5CA0C7F089AE31ACF471DCE199DA036BBA2BC280705D9A988217BFBB8
      38E29E9D156E5999C3DED21C0E14CB78D85A6396E1668CB655851AB5EF8B50E2
      F423FDFE34C603CF42083625983D4510FD1F40F901C692FFEF52FB55463E6A74
      2EBFD3396ABFD7A33BF07C741B6164F734F2F1E2FC74B13E3C2FA186505785D8
      AC58BC796A363667F9E2BDD0F3A493DA156602E1D16108E6CB211C1D49FD3E18
      822A416D28A50911E68473101C0E40501EEADCE0BEFF06FC27C47E17C79F9B93
      64FC910FF2388E0EF414C758616C04269E574257B753E8956403219CB8A34D45
      DE778F4D85CE9DB3B07C68899C403F64FA79E3B1B70FD5611884240B080F0ECA
      B87B37BAEF5FC27FE624D9BBF9F1974CFE5791104B3EDE17BDD26CF07E02B53D
      9EECEA7504EF1D9B86ECB040648606223EC01311D48FE15ECE48F2249F3F4CFC
      1E6A10760C7DD480BBB1FF77D03AAC72F7CE0D1A7FEE4D8F3FF6BDF4288A590E
      0CC087395610D2C8A6E904F345307032477E642812827D10497D17E2ED8C60CF
      8788F17096CC3FDB06DE91EEF73B3433FE3F3A7E64AFBDFDB58BCD8E3FE64F8A
      0AC447A7E6897510F6D3D83E38501CE7B69E76288A0A4726CD3F71815E62BD83
      690E7477B08187CD359C5353BD21CCEC324CD01A4FFE315AE2239A63211C9B5C
      288B3B8CF5B5509C9786BBCD8CBF48D299171F89CAD4247E3826C0CF72E4DFD8
      5293511B178BF11794C8D7FA22D8E936EE585D8095B9211C4857455E06EC4DC9
      4F96765FF483F926B89494E25C563AAEE6E7CBC621C7211D8CF43511EAD7F2F8
      BB43F393E3F5CBB86F73058F6C2CE166638540DB1BE8A7B30CC2A53DE46B8390
      E4ED4EBE1284828C64D4153F46A2BF172EE86A919D06A52F73BF8C8B59C910EC
      68BCDE26DFD11AF7E4F9E346FA1ACF197FA522EA692D04A3B65CFC6D73CE4DF2
      EB4B4AB02F2EA0F60F00CA2B509B968258F243133B531CB43A0E417D347A58ED
      86EDE32CF4F7BD05E11E8D192B9E0746DC97DD1F6BA4A7D9E2F88B231F48A6F5
      8FD7BC82C4688038265DD806C1621BCD8131384910F64BE7FD066BC0FB666B31
      D2D50CDA9931981FF108C2439AA71ED17C71620A84419D270A92E705753AA3AB
      D1E2F893AD3F99B1E1A84849C4C44B3B684DDB0EA5940008CE06D89CE88DCDC9
      7ED842FF6F266C9121D91F2BE33CD03DE82604579A03DDC9EE06E4C35B06F3BD
      61DF4AFDAFD3193DB2BFF39D27EB5F73FCBCE6D6D2DA23ECEB83E94934BEBD8C
      25733BCDF11FFB5DC047FE17F12181FF7E4C10BCA8BDDE54C68FE65EF7D310F4
      897BF70817E9BDD1EF4B63848E47D5F6389F33D611EB10E2E32C8EBFC800F706
      EB5F80B8FEF1DEA32A2D09932C7642B055A639DF4432B70748E7FE10E20939F7
      143C47BBEB40B8AA48369F0A614D5F43E9F3303E69301788676F766E93BF725A
      E708CCA91E36E4EFEEF76EC197F642A9BCEEC7D13E2331128F694F59919502E4
      E762AEA50A843BE4F7116692395E6D38842334B68F8E908C718D3104F271B5B1
      79C2C68157A4F1F7EF52EEF68D62E44FA5B1F9D07163866FDAB679DD65AD237B
      134F681CC8D13BA90EDD136A382542554C9F39790457748E63A0C61208F70F48
      E6F8A3A370F9C891A8C35B375BCC1E336623E91A2D3DF73E486AEF2F5A78F689
      EC7EF14ED2FBFBBB13FA49EFF71FD1C2F72BE384ED839DFF4F7B671ED3F679C6
      71523551A5A9EBD68D2555A775ABA6ADD11A961692AE254D394A73348C400249
      48C2650E1BE30B304EC3154658491AAE5020E132B6B94FC736B6C1A4DC84CB36
      B6B14D48D6E568A33655BB6ED2DA6D9DF4DD63EB8796A2A06609CDFED82CFD64
      09197FDEE7FC3DEFE3F7F7BE1E13054BF1BC9D61B9BE6303F37D4F32DC7B797E
      7DE937FEEF30CF4AFCF01BFA2BAE7D1D7C3C3203273C8ADE74F19F65FE77ADC7
      C3D98B6C69AD8E17737DFFBFD0C258EAB13CE1711FFB9FFDBFFFF1505FEB9E3F
      508D4DE1EEB3675673AFBA4783F3E4CA5DB9320465491190590FFF63D5CBCFBB
      5AB7717F157A4D9F416DFE0C5E3B0B566B0C8F06E72B5405DDE3B8F5C53FF1C1
      5FFF41EF5FA1F99213DB4415AE3323D7FE72CF299F8DFBAAA0357D8AA0EC716C
      E7ABB1F98D3CAC52BC3C9E96C2C6F08D3F83AB7320A5D7E6BE548B1FA366C886
      97F945B2E7F656414772EFC81E23FE283607E582C96F0FCA5F27E0A5503DF215
      B8F1B1E019AE40D4EF8480F85C9505CD965B28D69BE077AC153BB326C836C47E
      3D07CCBE203F7E00FDAFDDFBFBB68F257C0EF0B72FA9D6ECC3979FFF09FCC438
      F0FAAF80AFB523456505BBCB8273D3D791A79CC22BE90A6CDA9EF5A0EC35BBD3
      4B9F0DCB57DC8CA9D441FCDE1F20E4C463AABF0F231A0DFE72FB23089258E068
      1691AC9C273ECD8FDBCD7867E82AC4AD13F08ACD51336BC8EE87FD48486E5D5A
      78610BD2DBC7913DB80881CE098E6E113C624EE8B518545DC0EDEBD72064C723
      5EB980C42E2BE2DB4C886B31225BB78024E930BC93CFF4FC877BA9AC093E5EF9
      D2DE3CB9852F1B40D1E822DE322C40A89D4772971909AD33A4EFAB48E526624C
      7D0103DD5D54333820E22420A6D341EC39C436CE224A6E84A0731E911517E1CD
      2D56DF435FDDC5DD1A765261619FEF45C99013A7C7DF87486777B3A3A423E034
      8D43E21A07E99AA524BFE3246258D98DFE8E76AA818DEE311D69A1CF2ACC38DA
      308B23D219C4CAE7B0857F76C59E6000E7778F879CA817859D6CFC224D6E40DD
      A52BA89CBD0171BFC3CD4EEA98C1BEB25E646BE620EEB523B9DB82843623A21A
      2E21A1C709572C0E125FDFD68AF9F151A4A724E1A0C286C80623226B6770B8CE
      B8C45FEA09AE093D51E7179A2F2B0C2D68BA195BD68D539A69A89CB770DE7803
      C7DFBB8C54BD1D7CB51521256AC4546851327215BC0B36625B49AE3144D70C21
      5549B66EB722AACD0121370986B616689B684ED9AF8798CFC6FE7A2B0ED41871
      A8D6842D82F23B7B628F459C6AC319D524740BB730FAC1E7289FB906C900C9D2
      E7443AC5F3EED33DD8912347D9453B72072E23B9C7429715E1644B76C328C42A
      3BF98119714D261CAC9E4064A38D981CE89B1BA191CB304236910893115C398B
      00D7D982F105C377C8FFC46E71498D4031883C922B95F49C6E7022833821A51A
      78A79423BF631C1553D721D4CC834B72B29A67105CA84466B71142A50DF1AD26
      44C9261156D60776D32CA29B2C38403A4F23B9753229D4D27A0CD058723284F0
      62158C2DEB41B8EAA54D111457A95A92AB7B16BE9972FC3CF2248ECB0C90996E
      E098DE092EE93B85AEF0CA01849FEE4201D984DD69A1F832935F4DE2B7341E01
      C51AABD184C3B593082D1F269D5B201171A1A7316464B8F7650962D89E77F8BF
      7B9DAD6FB4386F4FAE1CBEFC7751AA9E4487F54364192E834732F354F3886B9E
      82AFB81E92C61164E917C8E7E6DC3A0F3D6BC09EFC4EE468EC8851B8F43F8E37
      0B3588914EE350BD09110D76E4BD255ACA7BCFACF09B96FB3CF35D924A7346CB
      28322F5E81B0D70181D6E1E6BEC83F87A3E42355147FC9945313DAE790487C7F
      B2E551B25196DAE18EEF88AA51ECA0BFB11AA64807B3E49B66BC9022C50F02D3
      46BE21EF3DC2D4C9DE3B8F9DBFCD928D82D53A8D5F2594C28F5F8E22ED1C4E18
      1619AE05B164E3CDC95548970F4372C1C536615FC53002339B21689DA318A358
      27B637B716EB5F17DCADE7B4521DB9E169AF6DFB822475D89D518D8A019BDBEF
      123BAD48EC984312C5D7DEB27E6C8A2FA6183583D76973B343CF0EE2D5D45AA4
      D3E75C317EA49E6107F057EA39AD783F75CD4B376CDC1AFE5A6A350E570F526E
      B383D365431CE5501F511D7665D4E0DCD81FC1A25873B15D7B01B9CEF8CCECB1
      E120C37ED1C50EFC1AFB5EF3FD1AE619F59F7AFEC227C297F72EC2CFF6C12FA7
      154F851C47B16A0AC583EFE328D93A5A6EC69E2203B62414E384C68183350C9B
      73DFECE56378E6B1EF79BEB135B1E8139FC45228A66F824DFA8F261F8FA67CFE
      9B3439B6714AF0B676E1DFECE41AFCC8FF81D8CBD737BBEA849737868935DEEC
      72CA7743743FB362AB488A405E190AFAAEBAD991750C3B80B71AECAFD5394C9E
      FEB5E7F3FEECE70EBDFDF757258D788975068503D7886BC4618AF1173835E46B
      ABCEBE738EF75D66BDF9B69F04715A7EB6FF24DDC3EA117E6E92E4AE85A7FFB7
      C65E6E8FF5CCFCDA6FFD6B09AD4F07E792AF09C7BF65F6DDFA044F313D825798
      DCF230D8771BC793ABB046E17F7AFDC1BF005FB34EB4
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
