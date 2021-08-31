object FrmFilmLista: TFrmFilmLista
  Left = 472
  Height = 250
  Top = 157
  Width = 500
  Caption = 'Filmy'
  ClientHeight = 250
  ClientWidth = 500
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.3'
  object ToolBar1: TToolBar
    Left = 0
    Height = 26
    Top = 0
    Width = 500
    Caption = 'ToolBar1'
    Images = DMG.ilCommon
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 1
      Top = 2
      Action = acDodaj
    end
    object ToolButton2: TToolButton
      Left = 24
      Top = 2
      Action = acZmien
    end
    object ToolButton3: TToolButton
      Left = 47
      Top = 2
      Action = acUsun
    end
  end
  object dbg: TDBGrid
    Left = 0
    Height = 156
    Top = 48
    Width = 500
    Align = alClient
    Color = clWindow
    Columns = <    
      item
        Title.Caption = 'Tytuł'
        Width = 450
        FieldName = 'TytulFilmu'
      end>
    DataSource = DMM.dsMainFilmPl
    PopupMenu = PopupMenu1
    TabOrder = 1
  end
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 210
    Width = 488
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
  object pnlInfo: TPanel
    Left = 0
    Height = 22
    Top = 26
    Width = 500
    Align = alTop
    BevelOuter = bvNone
    ClientHeight = 22
    ClientWidth = 500
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Height = 15
      Top = 4
      Width = 22
      Caption = 'Plik:'
      ParentColor = False
    end
    object lbPlik: TLabel
      Left = 36
      Height = 15
      Top = 4
      Width = 29
      Caption = 'lbPlik'
      ParentColor = False
    end
  end
  object ActionList1: TActionList
    Images = DMG.ilCommon
    Left = 51
    Top = 146
    object acDodaj: TAction
      Caption = 'Dodaj'
      Hint = 'Dodaj film'
      ImageIndex = 1
      OnExecute = acDodajExecute
    end
    object acZmien: TAction
      Caption = 'Zmień'
      Hint = 'Zmień tytuł'
      ImageIndex = 3
      OnExecute = acZmienExecute
    end
    object acUsun: TAction
      Caption = 'Usuń'
      Hint = 'Usuń film'
      ImageIndex = 2
      OnExecute = acUsunExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Images = DMG.ilCommon
    Left = 120
    Top = 131
    object MenuItem1: TMenuItem
      Action = acDodaj
    end
    object MenuItem2: TMenuItem
      Action = acZmien
    end
    object MenuItem3: TMenuItem
      Action = acUsun
    end
  end
end
