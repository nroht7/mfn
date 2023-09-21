object FrmZmNazwy: TFrmZmNazwy
  Left = 486
  Height = 220
  Top = 171
  Width = 800
  BorderStyle = bsDialog
  Caption = 'Zmień nazwę'
  ClientHeight = 220
  ClientWidth = 800
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  LCLVersion = '8.0'
  object BtnPnl: TButtonPanel
    Left = 6
    Height = 34
    Top = 180
    Width = 788
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    OKButton.OnClick = OKButtonClick
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 0
    ShowButtons = [pbOK, pbCancel]
  end
  object Image1: TImage
    Left = 8
    Height = 32
    Top = 8
    Width = 32
    Picture.Data = {
      1754506F727461626C654E6574776F726B477261706869635803000089504E47
      0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
      1974455874536F6674776172650041646F626520496D616765526561647971C9
      653C000002FA4944415478DAE457BD6ED350143EC7F73A69E3541D081B6A4002
      C4C60203E2114824903C1489B908065606DE8205D1B112A883B74482174042EA
      C003F057508410748954354DFC7339C7374E62C7BE89106E061C1DC5F6F5BDDF
      77BEF3E36B544AC12A0F0B567CAC9C0092D9DD6EF77714459B6467E3B565B1F5
      5BADD67949D70E83B7DBED33F5BCD3E96C323613A8249E7F3DFC0688582A3027
      FDA58B4D18635664561A1381642CEF99A49A165555765CE6C4C6B8801002A494
      13B2BC207B1304018461B850816C9ECD11101616AAC0F7A590B0F370676E6CF7
      E52E046856408F59C504AAB605EB367958A4026A92DEEB3D8A5E055C771B3C6F
      1F603402DF1F9177B45C01BEA25F104630F00D0AD46C1B9CA76F6315C2A8D813
      E450D955B8CB0B3CE940E40F412D28610A16349A4DF8F2E85A31015BD0C2E465
      F0E2FE5219EDBAAF20787E6FE90AB8B1F7116426BC29022810A2710C7F1E7ECE
      CD071E8E3816B21A5FF77A3F60383C25F90D8AA9082E5FBD42AAD2CC4C74D349
      8862727EE7CD09E58356244B60406ABF7FD088AFEB1B7590B6045317C5B153CC
      711623A70A70261F10EA1504915120E4C57C9A5873E26BC7A951695A66024966
      D25CB40C2148E9A374D92898574097935EC8A69E201CC748601613D15086E4AE
      46A0E3D80F21889026A719738E0CC22C003D27C45289C86A191498827D787CBD
      A4F72FE6ED07D4F4B2C41D1257D534CC6AAAC00493C6CF6D35A95E3F51D70A73
      9B1AF367B945650D9A747E73BF07E188CAB0E0F9640E83FF3A3E99244482990A
      411428387A764BCF2852C2E258EB78BB1EC0C1F685A43E6881052F235A923BEC
      6CBAA40804848CA10234C44F1201D77567BAA13EF73C8F9236328650C5668128
      6E44A8CBCCB002971B83E5BD6635B6794363195B719C206AC1FB1C729FE1FBD9
      1A376D6A5204929B5CA37FFB9D20B887002E4D20F997C946A48861993BE38480
      EAF7FBEF68977A5BC7B1DC2F257690C11993B1D9DD0DB22DB2C65C672CEF08C8
      8EC8BEE318749D6C6DA920FEA3DD39D929D960D55F66BC57F8CFBF8EFF083000
      88A02053224E88F80000000049454E44AE426082
    }
  end
  object Label1: TLabel
    Left = 86
    Height = 15
    Top = 14
    Width = 22
    Caption = 'Plik:'
  end
  object Label2: TLabel
    Left = 48
    Height = 15
    Top = 38
    Width = 60
    Caption = 'Lokalizacja:'
  end
  object Label5: TLabel
    Left = 38
    Height = 15
    Top = 112
    Width = 70
    Caption = 'Nowa nazwa:'
  end
  object edNazwa: TEditButton
    Left = 112
    Height = 23
    Top = 104
    Width = 682
    Anchors = [akTop, akLeft, akRight]
    ButtonCaption = '...'
    ButtonWidth = 23
    MaxLength = 0
    NumGlyphs = 1
    OnButtonClick = edNazwaButtonClick
    OnChange = edNazwaChange
    PasswordChar = #0
    TabOrder = 1
  end
  object Label3: TLabel
    Left = 48
    Height = 15
    Top = 144
    Width = 61
    Caption = 'Po zmianie:'
  end
  object lbScPoZm: TLabel
    Left = 112
    Height = 30
    Top = 144
    Width = 682
    Anchors = [akTop, akLeft, akRight]
    AutoSize = False
    Caption = 'lbScPoZm'
    WordWrap = True
  end
  object Edit1: TEdit
    Left = 112
    Height = 23
    Top = 8
    Width = 680
    Color = clBtnFace
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 112
    Height = 23
    Top = 32
    Width = 680
    Color = clBtnFace
    TabOrder = 3
    Text = 'Edit2'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 112
    Height = 23
    Top = 56
    Width = 680
    KeyField = 'IdFilmu'
    ListField = 'TytulFilmu'
    ListFieldIndex = 0
    ListSource = DMM.dsZmNazFilmy
    LookupCache = False
    Style = csDropDownList
    TabOrder = 4
  end
  object Label4: TLabel
    Left = 82
    Height = 15
    Top = 62
    Width = 26
    Caption = 'Film:'
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 168
    object MenuItem1: TMenuItem
      Caption = 'Tytuł filmu'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Rok produkcji'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Crc32'
      OnClick = MenuItem3Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Oryginalna nazwa'
      OnClick = MenuItem5Click
    end
    object Separator2: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = 'Wyczyść'
      OnClick = MenuItem6Click
    end
    object Separator1: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = 'Szablon: Tytuł filmu (Rok produkcji)'
    end
  end
  object ImageList1: TImageList
    Left = 192
    Top = 160
  end
end
