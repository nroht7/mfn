object FrmMain: TFrmMain
  Left = 72
  Height = 900
  Top = 86
  Width = 1600
  Caption = 'mfn'
  ClientHeight = 900
  ClientWidth = 1600
  Menu = MainMenu1
  LCLVersion = '8.3'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  object pnlMain: TPanel
    Left = 266
    Height = 821
    Top = 56
    Width = 929
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pnlMain'
    ClientHeight = 821
    ClientWidth = 929
    TabOrder = 0
    object pcDanePl: TPageControl
      Left = 0
      Height = 300
      Top = 521
      Width = 929
      ActivePage = tsPlikInfo
      Align = alBottom
      TabIndex = 0
      TabOrder = 0
      OnChange = pcDanePlChange
      object tsPlikInfo: TTabSheet
        Caption = 'Informacje'
        ClientHeight = 272
        ClientWidth = 921
        object DBEdit1: TDBEdit
          Left = 56
          Height = 23
          Top = 24
          Width = 851
          DataField = 'NazwaPl'
          DataSource = dsMain
          Anchors = [akTop, akLeft, akRight]
          MaxLength = 0
          TabOrder = 0
        end
        object Image1: TImage
          Left = 8
          Height = 32
          Top = 16
          Width = 32
          Picture.Data = {
            1754506F727461626C654E6574776F726B477261706869636C05000089504E47
            0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
            1974455874536F6674776172650041646F626520496D616765526561647971C9
            653C0000050E4944415478DAAC575B6C145518FECE5C77765B5A216D77D10695
            2A464D008528A1D2A668622451D45A53D22A21CA439F2431CA833184F0501323
            E101E38391C4945E842D05DB07111F8CC44A008B3440D062EFB72DBD6CB77B69
            F732FE6776764B5B6C675AFEE4CB64E6FCE79CFFFEFFC30048DE33679AC0D82E
            3D91800E3BC4B91904C6108FC7CF96959696D287186C522609A0AF94868787F5
            9375758D749E68E77289E0A0FDC64B675737198259D79FF63DF6E83AD4D4D6A2
            62CF1E941417BF595357D750515EFE2E2DC7AD9C21701BA6CC2E088201511497
            448A9713A3E7D8F804DC6E374A8A8ADEFEC1EBEDA5CFB25501D2C4B5E787F2E7
            5248F119FBB8195515BE91BBF0783C28DCB6CDD370FA74971521160860172952
            55199AC3911662C7F6ED6BC9124B0A31470051E46665D621B2742E88A204A7D3
            810C972BED8EA2C2C2B514E0FD8B092199D134C702568921C9FB6441014ED6D7
            83DD939C094AE94A0A4CA21C828B30F1FF02A45D20D81280B831150862EB962D
            06EE4789A472CAE216981703962D40BCC1700853845430A6D293933B2F376D5D
            4B0208360530A5B86F7DB05388966D81C52C635588B902882C1D580F8A04067B
            2EC00A0460298FB0D90C512466C705E2F23525552582220990787D3055CFD698
            5D0BD8D75AA4CB545940249AC0811337E06D1DC0A02FC4A5025344B8DEF1FEA3
            8AF1FAB1FAB2AAF94D6A4110DA257EB95315F1E39541BC77EC1A4A9EF3E0B3CA
            4DC87BC861B881F7ABD1C9E95517DB7DFBCF2B67F74F87C75F1F3DB5B7D9AC57
            F30410986DB36BA479F3D521EC3B7E1DD51F3E8F604CC74F37C7706B700AA1E9
            04B234111B3C19287A2A07C59BDCF8B2A1FD1CDEFA76F768E307E7B810CB6E46
            DC5D32F58E19BAB0E2681B8E556D455B5F08272EF6A3C317C6E1DD4FA0EFAB22
            C449CF7F47C2F8EEB77E5CEA0CE0F0FB9BA164E434F106BAA01909E6C156C04D
            2F93F69F7C7F0395AF3C8ED6AE00DA7AFDC8D424686AB2A9C168D314030E1119
            84AB3D7EFC7AC78F7DAF16604D59CDD78607E76741B21F2C0D41A08C61124EFD
            3E80F5F9AB71AD670A2E458643960C1C69E9C4B39FFF014D91284025E3C9D7FF
            EC0EE061771674492BA72BB56507619257A0680FA22F108553496ACD0B608CEC
            7EFDD08B065F61F5152862B27DF3A893133A7AFC333C40556E20614125142CC2
            9C0578E5998CC4682091A0C822B98540A9D770D99774AB244232BFF375CEE727
            7E5357618E0544C62C8FE5229BEDFE1391B85107F8665290024FA76224989550
            30209A31C1B7F9893F552957500792BCF9792E4467E2C870CA3484E84901C0D2
            172AA6E6A9773E4BC6626401E833B359C0D89CA9D80AC80FC69EF21DEBD0D533
            0695CCAEF2CB0C8D59BA4B1B1923264BB483D679D11A1898402238D4C2E71521
            75B1DD5A90A22FF66E4457F73882A1180DA59405E4630745FC1B1BD718EBCD55
            CF40A23850E89BA6C98890FF6FDE1EC6DDA6AA43B41CE127E53636357550FFCE
            34C6271BC3048F6C1EFDED830C477ED151FADAD3C85EA5629A7A4284DCC28B10
            8F554DE16E1030199846CB855B08DD3EFFB1BFF5782D1DE1E30264BB5CAEF5C1
            60306B05BD587864E7473BA7725EFAF485CDF9D850908B4CA762FE390281D00C
            FEEEF0E1F25FBD88DEF9F9E0E4A56FBCF4994FCB61668ECCAEC506478B830D57
            2067F5AEA30785ACFC97133A93672BAC1E4DF87B2F8CB51CA8A6D701C21021C8
            53E8418D3F3C887861C936C7F02C53316676BD28C14F1831C7F348AA1B3ED8F9
            2BF967AC998DE6DE2297302F0DCF9F07FE136000FCF3D283FF71C85F00000000
            49454E44AE426082
          }
        end
        object Label1: TLabel
          Left = 56
          Height = 15
          Top = 8
          Width = 22
          Caption = 'Plik:'
        end
        object Label2: TLabel
          Left = 56
          Height = 15
          Top = 56
          Width = 41
          Caption = 'Scieżka:'
        end
        object Label3: TLabel
          Left = 56
          Height = 15
          Top = 104
          Width = 203
          Caption = 'Scieżka względem katalogu głównego:'
        end
        object DBEdit2: TDBEdit
          Left = 56
          Height = 23
          Top = 72
          Width = 851
          DataField = 'ScPl'
          DataSource = dsMain
          Anchors = [akTop, akLeft, akRight]
          MaxLength = 0
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 56
          Height = 23
          Top = 120
          Width = 851
          DataField = 'WzgScPl'
          DataSource = dsMain
          Anchors = [akTop, akLeft, akRight]
          MaxLength = 0
          TabOrder = 2
        end
        object Label4: TLabel
          Left = 56
          Height = 15
          Top = 152
          Width = 46
          Caption = 'Rozmiar:'
        end
        object Label5: TLabel
          Left = 184
          Height = 15
          Top = 152
          Width = 33
          Caption = 'Crc32:'
        end
        object Label6: TLabel
          Left = 296
          Height = 15
          Top = 152
          Width = 28
          Caption = 'MD5:'
        end
        object Label8: TLabel
          Left = 56
          Height = 15
          Top = 200
          Width = 73
          Caption = 'Data dodania:'
        end
        object Label9: TLabel
          Left = 56
          Height = 15
          Top = 216
          Width = 92
          Caption = 'Data modyfikacji:'
        end
        object DBEdit4: TDBEdit
          Left = 56
          Height = 23
          Top = 168
          Width = 120
          DataField = 'RozmiarPl'
          DataSource = dsMain
          Alignment = taRightJustify
          MaxLength = 0
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 184
          Height = 23
          Top = 168
          Width = 104
          DataField = 'Crc32Rip'
          DataSource = dsMain
          MaxLength = 0
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 296
          Height = 23
          Top = 168
          Width = 160
          DataField = 'Md5Rip'
          DataSource = dsMain
          MaxLength = 0
          TabOrder = 5
        end
        object SpeedButton4: TSpeedButton
          Left = 456
          Height = 25
          Top = 167
          Width = 23
        end
        object DBText1: TDBText
          Left = 136
          Height = 15
          Top = 200
          Width = 41
          DataField = 'DataDodPl'
          DataSource = dsMain
        end
        object DBText2: TDBText
          Left = 152
          Height = 15
          Top = 216
          Width = 41
          DataField = 'DataModPl'
          DataSource = dsMain
        end
        object Label7: TLabel
          Left = 56
          Height = 15
          Top = 232
          Width = 95
          Caption = 'Ilość uruchomień:'
        end
        object DBText3: TDBText
          Left = 160
          Height = 15
          Top = 232
          Width = 41
          DataField = 'IloscUruchomienIpf'
          DataSource = DMM.dsMainInfo
        end
        object gbxOcena1: TGroupBox
          Left = 496
          Height = 80
          Top = 160
          Width = 272
          Caption = 'Ocena'
          ClientHeight = 60
          ClientWidth = 268
          TabOrder = 6
          object DBText6: TDBText
            Left = 232
            Height = 40
            Top = 0
            Width = 113
            DataField = 'OcenaRip'
            DataSource = dsMain
            Font.CharSet = EASTEUROPE_CHARSET
            Font.Height = -29
            Font.Pitch = fpVariable
            Font.Quality = fqDraft
            Font.Style = [fsBold]
            ParentFont = False
          end
          object imgOcena: TImage
            Left = 32
            Height = 32
            Top = 8
            Width = 192
            Picture.Data = {
              1754506F727461626C654E6574776F726B477261706869639205000089504E47
              0D0A1A0A0000000D49484452000000C000000020080600000044987785000005
              5949444154789CED9C5B489C4714C7C75BA406ADC558424B485E0221841A5F8A
              2F2934ED93CF421E7D16F745119510745956BBB05E56B45EC0BB46D7BBAEF7FB
              1A5FBCA0220A2A94228855D13EF5217D9BCE7FF6FBACA16EDCB53167D459F8E3
              3833E7FCCEC20C33F39DF996B1CB7FC25C2ED75BA13694FF879FEBC6562506CD
              A7E4272727DFAFAFAFE790F837FAB6B0558941F369F961369BAD787E7E9E43F9
              F9F9AF455DE82D60AB1283E6138F81BB454545EFF7F6F63884B2A88BBA056C55
              62D07C427E487676F6AB9E9E1EBEB9B9C957575739CA168BE527B4DD60B62A31
              683EF118882C2828F0ACACACF0DEDE5EEE76BB651085858503A2EDCE0D66AB12
              83E6138F8198F2F272BEBFBFCF9B9A9AA4767777794545050E23313798AD4A0C
              9A4FC80FB55AADAFC7C7C7B9D7EBE5ADADAD5228A30E6DECEA0E23946C5562D0
              7CE23110555C5CFC7E676787777474F0B6B636290481BA929292AB3C8C50B255
              8941F309F921E9E9E93F363434F08D8D0D09C6FE0B42796D6D8D37363672F461
              9FFE3042C9562506CD271E0377C4E1A36B7171910F0D0DC919D8D9D92985727F
              7F3F471BFAB04F7F18A164AB1283E65F113FDCE5722D086109E16289F12BA7D3
              C9B7B6B624B0ABABEB03A10E8FA5CACACA3EEA038CD2D2522E78BF09760425DB
              10E9F7D77C723E8B81D1C9C9093F3A3AE2878787FCE0E0E05CA10D070ECCBAEE
              EEEE0F843AB4F9B335EDC1383E3E96CB96607F49C93644FAFD359F9CCFE26C36
              9BB7A5A5E5D491B9AC9C95598FD986C4C37942DB45F66034373773BBDDEE15EC
              7B946C43A4DF5FF3C9F9F222D177797979EFEAEAEA647201FB29FC3D4F7D7D7D
              1F953F3BD3676D6D2D070B4C05D8D18AC4A0F9747C166ECC84E7A9A9A9BF5457
              57CB59323030208D2E025E24F8802FF8846F30C03298D4EC704562D07C3A3E33
              27C157424F1212125E21ABD6DEDECE0707074F03B98C600B1FF0059FF00D86C1
              0A5780ADC2F7D77C7ABEFC20838624C223A1170E87E377DCB58603C8E3F10425
              D30E3EE00B3E0DDF51ECBFD93A4AB62A31683EFD1890098448A16F84BECFC9C9
              F1545555C9BD93E93050C106B6F0015F86CF48E63F4941C9562506CDA71F03F2
              83E7A3F142CFB3B2B23AB18420F910A8868787E5B2035BE6DB6FC51B3E5567AB
              1283E6D38F01F99E65BCD56A1D9E9B9BE3B3B3B3A7CE03116C606BC0837D6793
              92AD4A0C9A4F3F06582CB266B87B313A3ACA474646021202800D6CE1E31AB255
              8941F309F921168BE5673C9B458A198E1184A9B1B13179051542F96C1BFA2200
              D8C2070BFE7212255B9518349F780C44D8EDF6262C3B4B4B4BA750686262824F
              4D4DC9CC1BF65A28A3CE6C47DF858505B964C107BBC41E9C90AD4A0C9A4F3C06
              A29D4EE71FCBCBCB723F6582272727E55FBC89939B9B3B0DE151D3D936CC4AEC
              D9600B1F2CF89FADA064AB1283E653F29392921EE031126EDFC129343D3D2D97
              1764D4D2D2D27E45370865F191330F7D100882D8DEDEE69595951CBEAE0B5B95
              18349F961F264ED06F7089687D7D5D2E31985178B68AF73153525272449FA7CC
              77C2869EA20E575AB12CA12F6CF092026CE08B057E12A764AB1283E6138F812F
              1C0EC73C961E2C239855B841876BAB89898948273F66BE6525D410CA8FD1264E
              DE7FE3AD1DD860EF862BAAF0059FD780AD4A0C9A4F3C066201C37B96984D3535
              35F8F1A13F45FD0FECDF74F2D993758851F750E805FA62E9999999913EB03CB1
              C01F4751B2558941F329F9717171F7C572F2179614282323C3CD7CFBAD6F99FF
              74B299C6469FA4CCCC4CB7690F5FF0A93A5B9518349F7E0C60B6240ABD64BE4B
              44CF58E0E964338DFDCCB07D69F80A78052064AB1283E6138F8108C3E06BE6BB
              377D97057988316CEE193E6259707781A8D8AAC4A0F99F89FF0F480C920EE042
              11250000000049454E44AE426082
            }
          end
          object SpeedButton8: TSpeedButton
            Left = 8
            Height = 32
            Hint = 'Ustaw ocene'
            Top = 8
            Width = 18
            Caption = '...'
            ShowHint = True
            ParentShowHint = False
            OnClick = SpeedButton8Click
          end
          object DBText7: TDBText
            Left = 32
            Height = 15
            Top = 42
            Width = 193
            Alignment = taCenter
            AutoSize = False
            DataField = 'NazwaOceny'
            DataSource = dsMain
          end
        end
      end
      object tsPlikParam: TTabSheet
        Caption = 'Parametry'
        ClientHeight = 272
        ClientWidth = 921
        object Image2: TImage
          Left = 8
          Height = 32
          Top = 16
          Width = 32
          Picture.Data = {
            1754506F727461626C654E6574776F726B477261706869632705000089504E47
            0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
            1974455874536F6674776172650041646F626520496D616765526561647971C9
            653C000004C94944415478DABC576B4C145714FE6667965D16C436692B8B092C
            0F01A1DA1FA5292F05497F544C4C694909B86ADB58135B2BBFFBA22518436BD3
            A4A6A12AB468605DB0F2B2D6FE2C9A56592DAD055B8D058B1450C05413607759
            77777AEE30B3596081D985F4242777E6CEB9F77EF7BBE79E73861345111CC709
            2D6D6DEDF4B04DF47A21221861D61C341C078FC7D3F16A71713175B8D50F17A5
            E556110071B9323A3A2A5AACD6569A8F57BBBE20B77A1908FE1EB8C318096A03
            F1A638349E3A057359190AF2F38B1AADD666736969097DF62C355E23B79C42BB
            46A39194E7F92555B19526A0F6DF070F111D1D8D82BCBC574EB7B4FC43DD5AB5
            007CC276CF2665ED52AAD849E3188D3A1DC6C6EFC3683422372BCBD87CE6CCC0
            52200202085615D1E9B408D7EB7D2036E7E4C410138B82980780E719AD9C7AE5
            39DF5DE0790106831E911111BEE3C8CBCD8D21071F5E0884E0E74DB318502B1C
            666C93939260696A02E77739BD74A5779263923C491A41FA706100BE23D00405
            80AC31393185E73232240D24DE99CD852DCEC01C1F50CD00D94E39EC9824559C
            D12FBE207ACD533E765501D004094046B15080531D884266603166D480980F80
            E77C8EF57F48C023C00A01E0423B027E45E85FEC5D0503A12FCAC64B7982D7F8
            3860EF413961B0347372F2628BB385BF3B771E3DBDD7A5DB919D9989B0306D10
            B980C26B30CA6B79E8F43A9C3BFF036ABF3E412034B8F67B2FCA0FEC47F93B6F
            A3CB76459AF750F561DB27873FEF98BBE96525A399B42DA0ADBD038FDC6EC427
            98F051D54124C49B30343C82A191BB30C5C6E2EAD55F9191F1AC29252579FBC1
            43D567FD412CCB075832D212F523B4505C5C1C9ED9B8011B9F4E873EDC805FBA
            BB259BAD852FC2E9748027B0D77A7A59A8CFA4EE70D289456E81A812002F9DFF
            BEBD6FA2A2B20A82A0C51A0ABD376FDCC4C09D0162478BF1B171A4AE4FC518B5
            369B0D5595152FF8DFD0909D90D969B502ACCDDF12C5DD484D49C6DA1823AEFF
            7103B7FAFEC2EE9D3B24BB930D16E658D890BE1E71741C1F545476D3D8EF09C8
            4BAC780D1809D510A09462972E5DC6FBEFBD2BA5DE5B7D7D181C1CA4C5CD484A
            4C90BEEF79E335D49F68406CEC5A14166E25D05A7C71E4C836E518E601E0590C
            5743BFCC94C7E30655C370B95CE40F02016115B9D72F2979A52B2AD0710C0F0F
            C140FE41E5BB54080704106C1CC8CECEC2B1DA3A98C8090B0AB6202D3D1D3547
            6BF116F905939AE375C8C9C996AEEA850B1771EFDE28A6A71D17E7FB8012C988
            5A35594C016A2E2BC5A69C1C547FFA19446F1E12E3E3A5392C4DCD9876BAB079
            53AE04CE4DD7941DCF155BD781AECB3FFF48439DB30028671A0A0B0D160BB2B2
            32B13AEA31D89D76A4AE4B4172E23AC9D7D9BCD3AE694445AD269BE759CDF931
            01B0D230C72C009C284EB4B6B7AF92CA2795C504032A083353D8A7A6D0FD5B37
            3A3B3B919E96460E5728F5B7B6B6A2FFF66DE46FC9877D62120E87A387BA1F29
            BF6F0A00D7CB454579D43E1E622E167698777D181119997EFC68CDAE3D7BF79D
            2D2929913EF4F5F7A3F6D857DB8989C669A7F3CFFA6FEACAFDBD94937F4EB572
            D51A166206D6CBE05914F39877BFFE6584C1902B3163B7FFD470B27EBFFC8DED
            FA2EE903850105C04A1436E1327BECD948FA84FCEDBEBCA85B0EB10EFFBFE795
            0210088C5E7E77CE5DD45FFE136000384FCFCA005358E70000000049454E44AE
            426082
          }
        end
        object Label11: TLabel
          Left = 146
          Height = 15
          Top = 8
          Width = 55
          Caption = 'Szerokość:'
        end
        object Label12: TLabel
          Left = 234
          Height = 15
          Top = 8
          Width = 56
          Caption = 'Wysokość:'
        end
        object DBEdit8: TDBEdit
          Left = 146
          Height = 23
          Top = 24
          Width = 80
          DataField = 'SzerokoscIpf'
          DataSource = DMM.dsMainInfo
          Alignment = taRightJustify
          MaxLength = 0
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 234
          Height = 23
          Top = 24
          Width = 80
          DataField = 'WysokoscIpf'
          DataSource = DMM.dsMainInfo
          Alignment = taRightJustify
          MaxLength = 0
          TabOrder = 1
        end
        object DBNavigator1: TDBNavigator
          Left = 106
          Height = 25
          Top = 240
          Width = 208
          BevelOuter = bvNone
          ChildSizing.EnlargeHorizontal = crsScaleChilds
          ChildSizing.EnlargeVertical = crsScaleChilds
          ChildSizing.ShrinkHorizontal = crsScaleChilds
          ChildSizing.ShrinkVertical = crsScaleChilds
          ChildSizing.Layout = cclLeftToRightThenTopToBottom
          ChildSizing.ControlsPerLine = 100
          ClientHeight = 25
          ClientWidth = 208
          DataSource = DMM.dsMainInfo
          Options = []
          TabOrder = 2
          VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
        end
        object Label10: TLabel
          Left = 56
          Height = 15
          Top = 104
          Width = 68
          Caption = 'Kodek video:'
        end
        object Label17: TLabel
          Left = 56
          Height = 15
          Top = 192
          Width = 69
          Caption = 'Kodek audio:'
        end
        object Label18: TLabel
          Left = 58
          Height = 15
          Top = 144
          Width = 51
          Caption = 'Kontener:'
        end
        object Label19: TLabel
          Left = 58
          Height = 15
          Top = 56
          Width = 46
          Caption = 'Długość:'
        end
        object DBEdit7: TDBEdit
          Left = 57
          Height = 23
          Top = 120
          Width = 256
          DataField = 'KodekVideoIpf'
          DataSource = DMM.dsMainInfo
          MaxLength = 0
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 57
          Height = 23
          Top = 160
          Width = 256
          DataField = 'KontenerIpf'
          DataSource = DMM.dsMainInfo
          MaxLength = 0
          TabOrder = 4
        end
        object DBEdit11: TDBEdit
          Left = 57
          Height = 23
          Top = 208
          Width = 256
          DataField = 'KodekAudioIpf'
          DataSource = DMM.dsMainInfo
          MaxLength = 0
          TabOrder = 5
        end
        object DBEdit12: TDBEdit
          Left = 58
          Height = 23
          Top = 72
          Width = 256
          DataField = 'DlugoscIpf'
          DataSource = DMM.dsMainInfo
          Alignment = taRightJustify
          MaxLength = 0
          TabOrder = 6
        end
        object Label20: TLabel
          Left = 58
          Height = 15
          Top = 8
          Width = 41
          Caption = 'Format:'
        end
        object DBEdit13: TDBEdit
          Left = 58
          Height = 23
          Top = 24
          Width = 80
          DataField = 'FormatIpf'
          DataSource = DMM.dsMainInfo
          MaxLength = 0
          TabOrder = 7
        end
        object Label21: TLabel
          Left = 336
          Height = 15
          Top = 208
          Width = 112
          Caption = 'Ilość strumieni video:'
        end
        object sbnInfoDodaj: TSpeedButton
          Left = 58
          Height = 25
          Top = 240
          Width = 48
          Action = acDodajRekInfo
          Images = DMG.ilCommon
          ImageIndex = 1
        end
        object DBText5: TDBText
          Left = 451
          Height = 15
          Top = 160
          Width = 41
          DataField = 'IloscStrumIpf'
          DataSource = DMM.dsMainInfo
        end
        object BitBtn1: TBitBtn
          Left = 336
          Height = 25
          Top = 240
          Width = 156
          Caption = 'Szczegółowe parametry'
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000064000000640000000000000000000000FFFFFF000000
            000000000000000000000000000000000000000000000000002A000000330000
            002A000000000000000000000000000000000000000000000000FFFFFF000000
            0000000000000000000000000000000000000000002DA17344DDA77745FFA173
            44DD0000002D0000000000000000000000000000000000000000FFFFFF000000
            00000000000000000000000000000000002DA17342E9C5A37EFFFBF4E7FFC5A3
            7EFFA17342E90000002D00000000000000000000000000000000FFFFFF000000
            000000000000000000000000002DA17342E8C4A47FFFF6EDDFFFC19E79FFF6ED
            DFFFC4A47FFFA17342E80000002D000000000000000000000000FFFFFF000000
            0000000000000000002DA17342E8C5A581FFF8F1E6FFB4895DFFA3723EFFB489
            5DFFF8F1E6FFC5A581FFA17342E80000002D0000000000000000FFFFFF000000
            00000000002DA17342E8C7A684FFFAF4EAFFB3895CFFA2703CFFA3713DFFA270
            3CFFB3895CFFFAF4EAFFC7A684FFA17342E80000002D00000000FFFFFF000000
            0026A17241E9C6A784FFFCF7EFFFB38A5FFFB89168FFFAF2E4FFF8EFE0FFFBF3
            E6FFB99269FFB38B5FFFFCF7EFFFC6A784FFA17241E90000002AFFFFFF009D70
            42CCC8A887FFFDF9F2FFB58C60FFA67643FFA57542FFB89066FFFDF8EFFFA26F
            3AFFA77745FFA67644FFB58C60FFFDF9F2FFC8A887FFA07343DDFFFFFF00A675
            43FFFFFFFFFFC4A481FFA3723EFFA87847FFA67542FFB99167FFFFFFFEFFA472
            3EFFA97A4AFFA97A49FFA4723EFFC4A481FFFFFFFFFFA67543FFFFFFFF00A777
            46ACC9A989FFFFFFFCFFB48D62FFA57442FFBE9A74FFFFFFFFFFFFFFFFFFA574
            41FFA97A49FFA77744FFB58D63FFFFFFFCFFC9A989FFA77746C1FFFFFF000000
            0000A67542A7C9AA8BFFFFFFFFFFB68C62FFA3723DFFA2703BFFA2703BFFA676
            43FFA67643FFB78D63FFFFFFFFFFC9AA8BFFA67542A700000000FFFFFF000000
            000000000000A67542A7CAAB8CFFFFFFFFFFB58C61FFBA946BFFFFFFFEFFA371
            3DFFB68E63FFFFFFFFFFCAAB8CFFA67542A70000000000000000FFFFFF000000
            00000000000000000000A67542A7CAAC8EFFFFFFFFFFB38A5FFFA06C36FFB48B
            60FFFFFFFFFFCAAC8EFFA67542A7000000000000000000000000FFFFFF000000
            0000000000000000000000000000A57542A7CBAD8EFFFFFFFFFFC6A886FFFFFF
            FFFFCBAD8FFFA57542A700000000000000000000000000000000FFFFFF000000
            000000000000000000000000000000000000A57542A7CBAE91FFFFFFFFFFCBAE
            91FFA57542A70000000000000000000000000000000000000000FFFFFF000000
            00000000000000000000000000000000000000000000A77745ACA67541FFA777
            45AC000000000000000000000000000000000000000000000000
          }
          TabOrder = 8
          OnClick = BitBtn1Click
        end
        object Label23: TLabel
          Left = 336
          Height = 15
          Top = 8
          Width = 38
          Caption = 'Rodzaj:'
        end
        object lcbRodzaj: TDBLookupComboBox
          Left = 336
          Height = 23
          Top = 24
          Width = 264
          DataField = 'IdRodzaju'
          DataSource = DMM.dsMainInfo
          KeyField = 'IdRodzaju'
          ListField = 'NazwaRodzaju'
          ListFieldIndex = 0
          ListSource = DMM.dsRodzaje
          LookupCache = False
          Style = csDropDownList
          TabOrder = 9
        end
        object SpeedButton7: TSpeedButton
          Left = 577
          Height = 22
          Top = 1
          Width = 23
          Flat = True
          Images = DMG.ilCommon
          ImageIndex = 34
          OnClick = SpeedButton7Click
        end
        object DBText10: TDBText
          Left = 112
          Height = 15
          Top = 56
          Width = 50
          DataField = 'CDlugosc'
          DataSource = DMM.dsMainInfo
          Font.Color = clGrayText
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object lcbKlasyfikacja: TDBLookupComboBox
          Left = 336
          Height = 23
          Top = 72
          Width = 264
          DataField = 'IdKlasyf'
          DataSource = DMM.dsMainInfo
          KeyField = 'IdKlasyf'
          ListField = 'NazwaKlasyf'
          ListFieldIndex = 0
          ListSource = DMM.dsKlasyfikacje
          LookupCache = False
          Style = csDropDownList
          TabOrder = 10
        end
        object lcbJakosc: TDBLookupComboBox
          Left = 336
          Height = 23
          Top = 120
          Width = 264
          DataField = 'IdJak'
          DataSource = DMM.dsMainInfo
          KeyField = 'IdJak'
          ListField = 'NazwaJak'
          ListFieldIndex = 0
          ListSource = DMM.dsJakosci
          LookupCache = False
          Style = csDropDownList
          TabOrder = 11
        end
        object Label31: TLabel
          Left = 336
          Height = 15
          Top = 56
          Width = 64
          Caption = 'Klasyfikacja:'
        end
        object Label32: TLabel
          Left = 336
          Height = 15
          Top = 104
          Width = 106
          Caption = 'Subiektywna jakość:'
        end
        object SpeedButton10: TSpeedButton
          Left = 576
          Height = 22
          Top = 49
          Width = 23
          Flat = True
          Images = DMG.ilCommon
          ImageIndex = 34
          OnContextPopup = SpeedButton10ContextPopup
        end
        object SpeedButton11: TSpeedButton
          Left = 576
          Height = 22
          Top = 96
          Width = 23
          Flat = True
          Images = DMG.ilCommon
          ImageIndex = 34
          OnClick = SpeedButton11Click
        end
        object DBEdit17: TDBEdit
          Left = 336
          Height = 23
          Top = 159
          Width = 264
          DataField = 'SkalaSefIpf'
          DataSource = DMM.dsMainInfo
          MaxLength = 0
          TabOrder = 12
        end
        object Label33: TLabel
          Left = 336
          Height = 15
          Top = 144
          Width = 161
          Caption = 'Klasyfikacja filmu wg skali SEF:'
        end
      end
      object tsPlikFilm: TTabSheet
        Caption = 'Filmy'
        ClientHeight = 272
        ClientWidth = 921
        object pnlFilm: TPanel
          Left = 0
          Height = 272
          Top = 0
          Width = 921
          Align = alClient
          ClientHeight = 272
          ClientWidth = 921
          TabOrder = 0
          object Panel8: TPanel
            Left = 1
            Height = 270
            Top = 1
            Width = 56
            Align = alLeft
            BevelOuter = bvNone
            ClientHeight = 270
            ClientWidth = 56
            TabOrder = 0
            object Image5: TImage
              Left = 8
              Height = 32
              Top = 16
              Width = 32
              Picture.Data = {
                1754506F727461626C654E6574776F726B477261706869631806000089504E47
                0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C000005BA4944415478DAC4575D681D45143E33B37BEFDD9BA4B9FE8048D1
                E7BC161FB528BEA44D5FAAADA828083E54AC589B620B36820F8D426D631A5A6A
                7F042D5A68B5AD15DAA401C1825584BEF44F0B82087D2B8869356992BB3B3B7E
                DFEC6E7A1B5BEE260FBAE4647FEEEE77BE3973CEF96694734EFECF2368BD514A
                056B9F7BFE242E579118EEC55A7BFCEB13C75EC0B364A1D8CF3CBBF68831664D
                8185E3F4B1AF8EAE265631F060DE47115E5CD5DBDB2B7CC1182DA3A747D70C6E
                1B8CD334152779B4EE3CFDFB8033A3B55CBC7849FA56AE148B6F49607C7C7C15
                7DC0FEBE6B0470D4F82FB156C6CF9C912030126A27572F9C1749634F0A5042F2
                DE0A12AE205350D4A24D203AACC8D8D898C7EB5DB1A2D5C73D0928FE25492220
                2DCEA6A25553CEF69D944EFCB2A422D215C2708E601DB8AED2B448C564560562
                05CF2A559173EFAC96D4543C16313D7CFEEF5E04183DFFF2C0D6CD126825431F
                BC27350074E3CD25F8BD13567734E79F572D9C3925E0E32D28408193DAA66C1D
                189014EFFEF8D37951AA4D12FAE0C1A90070FB874320C0D119A9E3AD08A3AB9B
                443A0CAF9D44F8ADA6F3D17B539E70665A1C9E210181B3130444962F7F32C36E
                4780F3C799369843830F94331221A41172A11638841867DE079931DC35BC1782
                54186464E83C0D3818835C08C53AE73189DD9600C3647D0E58B188A3C187353A
                53700C277510A8C369079F85994D369D5C9F42663545FE9A55329B2A99410575
                AB14F56681E53C66A929C86B5FB66CDE24061F0C6F1FCC924B65A1E7E8498223
                BE3E99CAC4B49304838BE134B6706EB54CE3FB291068E09B2D6FF7230222DF9D
                FDBEE805ED73C02107863E1A114E59883032021544C0673C1C4FDCB272AB997A
                12AC8404CE9B48C659D610DE4BE1A889EB0039401C1258B6ECB145E4000153ED
                E79511488074EDA6C554A408BDF3640819ABACB62C8827087780D0079E8C1613
                C0054B7A2139905AEB7380D7FC84D53083329E80A73A6ED09F60C88D30CDE635
                D6D244E671844AE759983729E2B00F10B3740EC4B1954DFD1BFC148C0CED9029
                00DC8C0D12CF880B99E1C86A38B701220537D6A7AAF6499BE4A261E91C11E8DF
                B8C197E1E8D8B7E57280C1E47BC3BBF660440C61244FFFBC0D5D31F6FD97414F
                DD9D3AD0D1D2DE980374A4507E974C24C3237B853AD2D3D333BF09DE2B09C53B
                0A51D41A40CC88ABBF5C9ED30226A80FADBBAD01F3F5C00F02047425C2F42146
                9C127CAB75A929D05E3CC89A844369CAA9A7BE94AE420B723DA016B01FD45AB5
                20609564CD2984165C78FF451F310A57E273A04412B20DC736910D6FAE47049C
                ECDFB553227069508470DF05C0BAB468419A6B01C9DA0C30E440E0CBC6896C7C
                6BA32771E29B531EBB7D0498C938EFD9B3DFCF676D4E0B50F3C6420FA809CE6B
                43CDDC5D0BB88E2008D704BB81C39BA58F2CF5D8A5CA90310B42F471AA7FA2B2
                966B322DA0456DB50095814610B07E439DD5BF5F1549B92A4812E800D6025C03
                013773A66F6B41D4560BD037D0051F6239DA4C888859AA0A0A2D7863FD3AA68F
                1CD83D9C690146595E0B944C62EA1EC614BE0E1CAEA28E1C3D5E560BC497DBC7
                FB0E7A02211EF8550EDAEB82B480E0C805E29040A3715FB9322CFA35B58004E6
                B40011588816985C0BB4C7517760B79D02BF02F64D87AD56655A60CB690187E9
                E6B40043201688A4F9CAB854152468BBAFAD7B15ABA1540EEEDB2B93D482A691
                4E5406573AD48034A01638DF2913471DC8B5805170B916E09E382470E8F3C365
                AB40FB8671E0E0A77E0C3AA849DF6F3B3092448ACD44D18E8B4DD503F922342B
                F35C0B742097F1EDFE4F3EF33F56ABD57253502C1AC2302C5AA35CF9F5F75C88
                CA1DAAD89CA01F9B96D22BB320715353533F7476763EAEF394BD71E3C6B9C35F
                1C1A5CCCD6ECA5975F79B7D1683C513C20F6FC0D956ADD9C22745D383D0A7B30
                2747A737617FC2661648803BA0FB61DD2D587FC0AE716754F89D4F20C8F76EB5
                3C925C47CDC2A61713811CAB987C970F62BA75733A9FC07FB62D2FFCFE23C000
                7529A670889927520000000049454E44AE426082
              }
            end
          end
          object Panel9: TPanel
            Left = 57
            Height = 270
            Top = 1
            Width = 863
            Align = alClient
            BevelOuter = bvNone
            ClientHeight = 270
            ClientWidth = 863
            TabOrder = 1
            object pcFilmy: TPageControl
              Left = 0
              Height = 230
              Top = 40
              Width = 863
              ActivePage = tsFilmPodstawy
              Align = alClient
              TabIndex = 0
              TabOrder = 0
              object tsFilmPodstawy: TTabSheet
                Caption = 'Podstawy'
                ClientHeight = 202
                ClientWidth = 855
                object GroupBox1: TGroupBox
                  Left = 8
                  Height = 185
                  Top = 8
                  Width = 168
                  Caption = 'Okładka'
                  ClientHeight = 165
                  ClientWidth = 164
                  TabOrder = 0
                  object ToolBar4: TToolBar
                    Left = 0
                    Height = 165
                    Top = 0
                    Width = 24
                    Align = alLeft
                    AutoSize = True
                    Caption = 'ToolBar4'
                    EdgeBorders = []
                    Images = DMG.ilCommon
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    object ToolButton4: TToolButton
                      Left = 1
                      Top = 0
                      Action = acOklSchowek
                    end
                    object ToolButton5: TToolButton
                      Left = 1
                      Top = 22
                      Action = acOklWybierz
                    end
                    object ToolButton2: TToolButton
                      Left = 1
                      Top = 49
                      Action = acOklUsun
                    end
                    object ToolButton28: TToolButton
                      Left = 1
                      Top = 76
                      Action = acOklPowieksz
                    end
                    object ToolButton29: TToolButton
                      Left = 1
                      Top = 44
                      Width = 5
                      Caption = 'ToolButton29'
                      Style = tbsDivider
                    end
                    object ToolButton30: TToolButton
                      Left = 1
                      Top = 71
                      Width = 5
                      Caption = 'ToolButton30'
                      Style = tbsDivider
                    end
                  end
                  object ImgOkladka: TImage
                    Left = 24
                    Height = 165
                    Top = 0
                    Width = 140
                    Align = alClient
                    Center = True
                    KeepOriginXWhenClipped = True
                    KeepOriginYWhenClipped = True
                    Proportional = True
                    Stretch = True
                  end
                  object ImgBrakOkl: TImage
                    Left = 64
                    Height = 64
                    Top = 48
                    Width = 64
                    Picture.Data = {
                      1754506F727461626C654E6574776F726B47726170686963861B000089504E47
                      0D0A1A0A0000000D4948445200000040000000400806000000AA6971DE000000
                      06624B4744000000000000F943BB7F000000097048597300001BAF00001BAF01
                      5E1A911C0000000976704167000000400000004000EAF3F86000001963494441
                      5478DAED9B79905C479DE73F99EFBDAA7AF5AAAAABEF4BADD66559922F61216C
                      E3E130361B43702C03F64C0C0CB02CCCD8C2300B3103968F9D883960D8830166
                      8105866322D82196D32C0C086C0C36065936D67D5FADEE965ADDEAABEEE31D99
                      B97F5475ABBB25634936B3B131F38B789155FDAA337FDFEFEF97BFFCE5EFE583
                      7F937FDD22FE2506F904300D62736F6F3CBD6A95E7F5F767BC952B13D2719296
                      6DC7643A1DC864B2EA9F3BE7D7A6A78B959191F28E471EF13B3B3ACC7BC7C6FE
                      FF23E01F8063C0E678DC4BB5B7F7BB9D9DEBDDEEEE8D899E9EABE2DDDDFDB1AE
                      AEEE446FAFEBB4B5C5AC54CAB65C37325A07612E570FF3F973C1D4D4983F3575
                      BC3E39B9A73A3E7EB8303A7AE6C7BB775736B7B4F04785C28BAAABFD6276F6BF
                      0105B62BE58A57BBEEEFC4B3D97F17EFECBC31D1DFDFE72E5FEEB9CB96C9786F
                      2F4E47074E368B4C26918904563C0E809548607BDE3A2B91C0721C630951B1B4
                      3E1B1362E79DAEFB93EAF4F42FBF21C4482C91887E6F62E245D1F945F180AF03
                      11C43CD860C35D12DE18CF66D7A4366C70331B3792BCEA2AE25D5DC8781C8CC1
                      44114629D01AA3354889B02CB02C642C86B02C8CD6A87299FAE9D3D44E9EA43A
                      3252F327268ED72627BF5F9D99F97649A9430E847FF8FF9280CF03FB41BC0AD6
                      C4E0DD16DC6527932B531BD65BAD37DF4C7AC3062C2F850943B4EFA3C3B001DA
                      180C8031341A73FE33208440D836329140C6E31815511F1D25F7AB5F51DCB953
                      8585E290866FF9F0D547E1E4263077FF4B13F05DA00C690FDE6AC1FB9C44E225
                      991BAEB7DB5FF54A92AB56238444D7EB0D6B2F003707940524CCB70BEFCD7D06
                      8465215D17A314D5A387C93DFE04D59343918EA25D117CB6020F27A074E715E0
                      B02EF71F3E03FC10D805AB93F017B6941F49AD5EB9AAF7AEB7CACE3B5E8BD392
                      45576BA87A1DAD54C3DA73565FD0EA25EDFCFD8BFD562954AD860E4362DD3DA4
                      376EC469CBCA6072B25F57AAAFB1A1DB8723DF865C17F0A3DF96077C113804E2
                      65706B0CFECA7113AF6C7FE5AD56D7ED77602592E8BADF98D34B2C3B6FFD3931
                      066DF4FC7468682210F35E42A39F8B7809C6806561255DA27C8ED9471FA5B477
                      9F52917A2280BF7812B6BF04CC7B5E6C023E030C83DC08BF1B878F273ADAAEEB
                      79E3EBC95EBF111346E8485DC4BD1B2318A351814F582C10E666090B0554A984
                      F2038C8A105222E3712CCFC36EC9E264B358A934D289353A584854B36F630C56
                      3C86746C0A3BB633FBF35F10556BFB7CB86F2F3CB212F4A5C4854B22E0B34DCB
                      DF0CFF3E06FF2DD9D7B3A6FFCE37E30DAE46D7FC0BE6AE008C10E8D0C79F99A2
                      726A88DAC808FEE434AA5CC18491314A870654932629C01296B4A5630BCBF370
                      BA3A482C1FC01D588E936D4758366883C12CF60829B13D97DAB1C34CFDF0C704
                      85D2711FFE7C3BFCE05A305B5E28019F043E047C155E9B80BFF796F5AE5B76D7
                      5B70BBFBD1F5104313F082A0A5A380EAF8198A070E50393144582869AD745EC1
                      700447159C8A604C43C94024202E216D439F035759B0C6829552CAB4D3921289
                      958378EBD611EFEA45487B51909C6BEDB4873F32C4D40F7E849F2F1EF6E103EF
                      80C73E03BCFF4A09F820F007C07ED894842F24BB3A360DDCF56692BDCBD141B4
                      7819030C063F37457ECF2E8A078E1016CB41643812C06315F859010E8DC2E4E3
                      503F0ED1D2F136837D0B78DDD095858D2EDC1687DB6CC11A3BEDD9C9ABD790DA
                      700D4EA60D10F3CBE71CF54E2A893F3AC4E40FB61194ABCF56E14FAE85DD5F03
                      FEC79510F0052080DE0C7CD6CDA47E6FD95BDE407AE55A74A02E08725A479487
                      8F31B3FD696A63E754A8CDA11A7C7D1ABEBF0B4E7E07FC4B0D3803C069E01DE0
                      5E03EBDAE15D1EBC474A914A5DB796EC4DB722ADF8055E800127E3513D7690A9
                      1FFF8C3008BF5384F73B30F1DEE718EB3953E14F00A7207E156CB11CEBF56DB7
                      6E2639B092A8165C005E457572077633BB632741B19AABC137A6E18BDB617F1F
                      44DF7D3EA697C8E966FB32A8F930644160C0767A3B70D75C85C14245D112F00D
                      9D54AE4062CDD564364D91DBB1EB8D49C3C1A3F0B14F81FFC18B8C75D13CE043
                      C0EB810ABC260E7F99BD766D6BE7ADB7821218B578ED8EC21A33BB9F66E6A99D
                      D42BF59305F8EB03F0E98FC3F03B413F7B19C017CAE78008B2AD705F4CF0FEC4
                      B2CE64F6969B88B5765FA0C3A2BC426B7410E1AE58863F396185F9D29A14ECBE
                      19865A80ED4BC691171B7C05F073E874E0DE586BA6BF6DF38D606C5418A19542
                      478D360A6ACCECFD35D34FEFA15A0B0E4CC39FFD337C19C80B1A21FE4AE43340
                      1DB269F88825F8D3F8B22EAFF5A69B88A53BD04B74D051845AF23DACD7090343
                      F6E5376125E3FD0EBCFF71E81CBC140FF830F010B0077E3F26C5FB3B6EDE184B
                      AF5C8B091A6CEB26EBDA44144E1C64EAA99DD46BC19159F8F02760DB2688BE74
                      85C001BED0D686C964B26963EEB38DF9D3E440A7D7BE79334EAA0D135D7A46A9
                      EA3EB18E0E4C54A336766E40C2892DB027049E5C30DE0531A01BF82874B7C3DB
                      E29DAD5E7ACD6A74A031FAFC86050CB5D931A69EDD4DADE29FCDC15F7E117EF2
                      06505F7901E0BF75FBED4452B6BAB5DA569DCFDD2B1DE5B5AC5E859D68C104CD
                      45634122A49BED051BAB665BCF95485F7F1DC5A327BD285F79DB7F816D5D70EE
                      393DE08F810F00C7E14D3129B674DCB821EEF5AFC0440BF274AD89C20A933B9F
                      A13432592BC1A79E81AFBE1482CFBF00F0DFBBF34E946DB7B5B7B73F90EAECB8
                      37D9DDE2A53A3BB070216AA6C57A713BE78DC6688CAE355B31AFA70A0262ADAD
                      0D2F3873AE4BC2C1B7C1812230179B16C58001E0EF2065C11B9D162FED2D1F40
                      07061545F3734DE988E2E9931487C6A8C3CFC7E02B2F87DAA75F00F81FBCF39D
                      4496D5D6D5DFFF40BAB7E7DE44672A198F39485F4218815210355AB3A4452974
                      50A278743FF5E933681D35F4550A1545D4668BA4D6AFC34AC5D316BCE1BF82B7
                      7CC1D8F304B4029D403B5C2DE016B7AF032BE1CD073EA5145A29C27A81DCB113
                      F8F568B2005FF83B187BF2B2219F971FDD7D37A1106DDD83830FA6FBFBDE174B
                      4957E46631B9FA05E08922C482EF422B8CA9503C7688E291D35486475141651E
                      BC560ABF50C44A65490CF420E0960E58DB05C496127017700F60C3ADD2B1FA93
                      FD3D1865A1A366848D145A4754CE9DA13291A30E8F8DC02F3E023C7C85E07FF2
                      C10F121AD3D6BB6AD5439965FD5B9C8476F5D819F464791EBC882E24C1280546
                      83F4C91F3B4CE1C4D92850146B53791314A7D05ACDAF0891EF1394EBA4D6AC04
                      C932076E7D0FF0EEA504B43708480AD86C797127966941850AA522948AD02A42
                      45358A67C6F0EB51BE0CDFF912E4775F21F8473EFC61EA61D8DEB37AF5439965
                      FDF7D896EF46C78FA2C7F2887089A517B42652486390B18899E347C81D1BD365
                      657E380B9F0CEAAA5C9F9CC268BF61B0A6D7D666F3B87D7D585EC211F0B27BC1
                      ED5E4A40A2310DBA045C136B4D219D043A5C607DA5082A792A93B3047070069E
                      7E08F8E99558FE231FA15AA9B4F7AE5CF550A6BFF71ECB94DD70FF5ED4C8CC22
                      B7174B3CC0441152804C1A268F1D66E6E8695D56E68767E1FE59F8C7C070A43E
                      53684C03BD601A94CA58C934B18E16806BDBA12BB194808EC6BC1844B02C964D
                      618C5C104C1AEE5F2FCC522FD70960FB2FE08AEAB23FFCD08728E572EDDD8383
                      0FA57A3AEF9641CEF59F7D063534396FF9F96B81E5451461591299B1183F7698
                      A923A77539323F3A0BF7FF011CDE076703783AA80444B512469F0F8461B54614
                      6AE2DDED00CB6230985D48C08DC0758DEFCB8C14293BE9A223D370FFA8E1FE5A
                      87D40A79C24057EAB0EB9B10EDB94CF0DFBBE71E0A53536D5DCB963D98EA68BF
                      5BD4665C7FC753A81313E7C137C18A851E1045588E8D6C8D3376EC1013874775
                      3932DBCEC2D64FC2C1ADC0A310D4E0993054B5B05CC2E8B011C0A3081973B0E2
                      49E21D6D18410A58B601D83C47C006E0958D2F83C291712B116BBAFF5C305198
                      C8C72F55880CB91A9CF81EB0F332C07FF35DEF6A80EFED7BC86BCDDE23EA536E
                      B4633BFAF83832508B2DBFC003441461C763C80E9791A307387B7044579AE03F
                      0D075F0BFC9CF9F4F978A4C987D53A98082B91203D384876ED5AA64F8D303B32
                      82B0455CC28A573771DB736E30089686766C298565A12285D1E72B3CE0E3D77C
                      2298AEC3F4F46580FF5F77DE497E72B2AD7FC58A87DC96F43D5630E39A03FBD1
                      43530805731543B130CB6B163D9C740AD593E2E481BD9C3D30A2AB91D936015B
                      3F0B07EE001E6B8E31D120603282A92854BD6E671B91F198191B63F6C927A9CE
                      4C93E970C096D284AA7D102C1B944D63EEB3AE4140CA0881413409D0F3DB586D
                      42A2302282D932942FB59CFCE5D7BD8EDCD4545BFFC0C04389B4778FA3F2AEB5
                      F7180C4D239BE0CD02F073854F01C45A32A8DE34270EECE57403FC8FCFC1FDFF
                      130EBCA669F939F181329422C88541C0E4E143CC9CCE51AFD59ACF1AC0080784
                      4083770D58CE1C010ED0D2F086B4B144B32ADB20C0343DC410A1B44643A01AC9
                      E9F3CAA7366D626268A86DF9EAD50FC6DCC43D714A6EE2C808E2D46C73AB78DE
                      F2342D3F97E3C7DA5A89FA331CD9BF9BD1FDF3E0B77E01F6BF1A7862C9580A08
                      1B7AF9511861666750351F092CD4D54830906E01DB81C086466D2A6A7422B431
                      548A0508236CDBC1B66D6CCB420A856E74261488E723606B22C1D0CE9D6DFD7D
                      FD0F987A6D4B4296DCF4D00C72248750CD696516587FAE2C2E044E7B1B617F86
                      43FB7631BC6F445723F39373B0F51F60FFAB805F5C643CD504DAB8048E25B096
                      806F5A1F0D620EB30D5003661AAB6D39529ADCF859CA133E9665138FC771E371
                      BCCE180683868404DBF0DCF221A054AFB7B5C0FDAA5CD8929025B76346123B5B
                      01E9206D8110A2E197522284C00801088C25A8B75AECDFB79353FB4675A509FE
                      2BB0FF15C02F7FC3B8126C0D312408D3F0DC851E20648380082A33A0BC3902AA
                      C029509BA0A29B057D1545A82044D76A8480D1719002032D2E78164C5D4C89FF
                      D4988F6D69B8DFB2C4FB5A5B44B2BF308B1CCD1345064123C0CD7B401461C2B0
                      F1FC5047D45A6D8E0C2B464E97E6C1FF23ECBB05D8F11BC03B401252065A852D
                      4137C69030EF594280D2A0A0720254C71C010130DAF0807CA88C119610520AD0
                      669E4511196CCF024157CCD0EDC1F052253E00D4A12D030FD896D8D2DD9D48AE
                      4561EF1EC68FF47C5F734A2DAA134AF03B131C5611C3E3755D0EF523E760EBD7
                      2E013C401C08A103418715938852383F86048C14084B10296D22C88D82BAB179
                      8FE3C038181F46A2C8F846D070D3851D041AC7912045AB84352F07AE5EA0C0BD
                      4DCBA79AE07B7ADCE43A5B921AAF23238D45A3F8602FB91CC09182B0DBE560C2
                      E2E4785D1743FDC87813FC4B2F01FC0D34921A0BD62045AB634B4CA817916DD9
                      8D691629E307303A02E6D81C014781AF35181C0BB5A946DA60C7E462170A3431
                      29B062D295F0D2FF0ECEA6A6025B9A96F7E6C0F7BAC9F5B62075B67601F80B88
                      9002BF3BC1DEB8C5F1F19A2E86FAD1B3B0F59F60EF262E2DD9BA06F85BB0256C
                      B26232E94820D0F30614801D97686D0815551FCE3C0C1C62C15EE00450819140
                      9B713FD0C492F6A20E4CA4B1434DDCB31170EB0AE8F3803F5900DEB2C496DEDE
                      6472832DF19AE0E502D017788014D47B12EC4A581C3D5BD5C5403F3A0E5BBF01
                      7B6F04765D0278807483846E09B7C43D1B3BD098C82CD23FE65AF8BE223066BC
                      0223C7CFCFBC86CC0093301EC0D15A25C24E5A48797E1A0803944332690729C5
                      3A176EBEA6E9F61E3C685B624B5F9F9B5CEF0892635544781EFC5212AC39F0BD
                      2EBF766D0E8F557531D03F3D0B5BBF057BAE032E759B7D13703B90849B8414D7
                      A4D30E94A345E0A514D8AE4DBDAA08E1F0384CCC65B2F3044C013F8372003BAB
                      35A5B42D71E28DDB731DE95244C691C49256DA86BB9E8235C9A6DBF7F7372C9F
                      3C53857071C05B4A822D05B55E971D098B03A72BBA10E89F8EC37DDF853DD702
                      FB2F113CC03AE01B90B1E1ADF1A4DD92B625AAB29800276E616C41ADAE541D76
                      3E06A5B99DEC3C01FB80BF065D865FD5427DAEE26BE299D8A28E74A8899742DA
                      DAE308C16D59F8BC6D89BBFB9779EE7A5B9258007E2E7E2C25C196826A9FCB76
                      D762DFE98A2E36C06F7D18F6AC070E5C06F8DB803703ADF04A29786D6B7B0CA7
                      146242BD689589B73854EA9A7AA027CAB0FDE360E662CB3C0179E019E01C1CF0
                      0DBBF28500BBC5C16AAE06739EA066037A5C1B37E5B4D996B87D60C04BADB705
                      B1D39545032F5CEAE648B0A5A0D2EFF22BD766CF68C51402FDD8386CFD3EEC5E
                      0F1CBE0CF000CB1BD6EF71E01E37ED7476256CF4ACBF485FCB165869876231C0
                      875DE7E0C033407929010063C013305B836DC55258AF00F14C6CF134F0156ECE
                      67A03FC9E08A14EB6C8133BA18FCA2F9B7601E56FA933CE9DAEC1A2D9B42A07F
                      3A01F7FD33EC5E7B05E0EF04861B27D3FEA3658BDBFBBA5DDC591F1D2CB57E8C
                      1A502A47B52A6C7B0C72A717F4B388805DC0DBC1CCC0233565F69E9B0DB03B13
                      486BF1A3CD68DA67B936ACB304D6C873835F1884AACB923C99B4D8355236455F
                      3F36015B7FD4047FEC32C1BF19D8016225BCC916DCDBD5ED26FA8C219AF517FD
                      4E5A02BB3DCED4AC4F4D997DD3F0C8BBC1FCFAB9080038023C0AA7AAF0EDD9BC
                      EF170424DAE3F3F7056094410D95D1432574A8E7FFBE54048DFCBB3AE0F164D2
                      66E770C5141AE0EFFB31ECBAEA0AC16F03711BDC61C15F65DBE27D6BB331E458
                      1533B7C96A4AA23D4E51402E1FF855F8F636183EB4A4BF0B08D809BC0DD4343C
                      5C89CC33A313354C570227B1B802A0238D8E2EBE259A9F8352505BEEF12BD762
                      E7A9B229F8EAB109D8FA08EC5A492303BD1C793D701AAC3BE175367C22938DAD
                      BFAE2F89375645D5D422F076C2C27426383351A7A2CCD353F0F03B413DBDA4CF
                      8BD63542E059C80F42607CF56ACBB3DDAE6C0C9D0F9166F192F65C9F2D4B102E
                      F7D891B47976A86C8ABEFAD9246CFD19EC1CE4221B89E7913B0105A97EF82307
                      3ED6DA165F77E38047E77895703658B0156EE4FDB1418F115F3331599B2DC0DF
                      6C835F04C0D24AD6450998065E014CC29914F4D7AAD1C654B72B5BA54497C38B
                      AEED4BC147CB3D9E4EDA3C3B54D2455FFD7C12EE7BBC097EE43280FF2ED00132
                      031B5CD8EA48F167BDDD6EDFE65E97AEB12AC18C3F5F0B986B633D4926530E27
                      46CAAAA4CC3F9D82CFAD83FAC5CE2A3CE709911DC05F41EE07F06911E8F54746
                      2BBF935E95261328F48CBFE8DC9F59D85A826030C54ED7E2D91325CABEDA330D
                      FFF909D8D97B19E0DFECBA845ADB1E62454BE0BF491AF34ED7B5AE5DD3EF5937
                      242C92C365FC6278C1FFC5DAE314BA121C1B2A510AF4F673F0F7FF01F27FFE1C
                      E33C67694F03A7807D30DD07E7B4AF6F2E45A6B57B790AB7AEA0AE2E487224E0
                      A41C2AABD31C2E86CC160294325112F88EE3C8F5DD3DFE55F1583056ABA9D52C
                      2E28AC07F220DEBE7A75E28EABAFEEE9EEEDBDB9359D79AF05F74BC23FECE98C
                      F5DF3C9092D7FB8AF87089A8AA16595D015636467530CD9E3315A6F2C1C91C3C
                      F8383C758C46AA7F3179DEA33BD7021310BB01DE9E828FF677BBBD37F527C90C
                      97D1B3FEFC9676BE1502276D13F425194A581CCD058CE7026D7BAD85DEABD70F
                      25B3AD872DC73E6927BD51271E2B4A6D94ED252DA3750B911AD04AAD0A6BB5F5
                      41A5B82A2CCE649DEA94EC0DF30C94EBB8E355C2424060CE97F1C2662BDBE214
                      0753FCFA6C95F173B5B3457870077C7D008283BF01DF259D5DBA0E9805771DBC
                      D783877ABBDCAE5B063CDACF54D093352CB384041A7B7C27E3107426984E394C
                      A5B384ED7D28AF0D1219E378A9C08E2594B02C232D5B60946D829A63EA656155
                      67718B53B4CC4E9199C8E18C97890A0181368B4087801220BB5CA6FB933C73A6
                      C2C464FD5C09FEE6107CB91D6AFB9E07DB251FDEBA0128359EADBFC383073ADB
                      E20337AD483398F7E1740511EA452458F31E014ECC426662A89638416B927ADA
                      43B909542C8EB22DA431586148AC56275EAA10CB5590B3557421200A14916982
                      5D02DE381233E031D212E3D9E132D339FF74193E36045FCB4065EF25E0BAACC3
                      D21B803C24D6C05B5C78209DB4376C5C9516D75B82E46819930FB0CC6212ECA5
                      6DB3DA249B252AA4689C6E5106AD1AB9856A9EA16D56AAE7DB39F04A00D918D5
                      8114FB9561FFA9922955A34315F8E831F86E2BF8072F11D3651D979F023A203A
                      018733B04F85BA6B62D61F9CB2A5ED2D4FD1EA39D8753DFFD460E1A6644E0C8D
                      47FB46197468308146871A151974A360B9A8C4BD688913203D07BD22CD486F92
                      5F4ED5393452F24BBEDE96870776C24FB2105E4E7679D9EF0BE48136D0476124
                      03DB85A69A2F8683C385A0A5D01213EE328FB4E76047A679B66731F845442CB8
                      96AEE50B3F1B4B203231A2E529C6063C9EF2154F9F2C99F1197FB8AAF9DC0C7C
                      EC59D897057DF632F1BCA057663635BCC2ED869727E0BD8EE08E4CCAE958DD93
                      647D36C6F250D392F3B10B01A21221228D348B374A0B45CF1122C0D812EDD944
                      2D310AAD714EDB82C38590A1F1AA2955C2E9D0F0D32A7C691CB67740FD4A0F6A
                      BCE097A65A8002B016DAB3F08A18FCBE25785522667577B5C6AC15ED0996276D
                      FA806CA049D415762D42061AA13468D33C2C2FD1310B9574F09336C584CD5963
                      182AFA0CCFD498CA05AA1EA8096578C2876FE6E097C760666EFC2B9517EDBDC1
                      2C8DE9B1065A5BE0250EBCC682574BC1DAB823B3D94CC2E9E948D39DF5E8F0E2
                      A4130E49C7266EDB202D7C63A8041133D590E9428DC9D90A9333C5B050ACE623
                      A58E46F078D03871BEE704E43240F145D0FBB7F2E2E41F03FF07621DD0138775
                      0EDCE058F6F5C94462D0F3925D29CFCB263DCF49255DC77513969496AAFB7E58
                      2E958352B99C2F972B53955A75B8E6FBFB6A51B4B766CCD12918BF0DC26FBEC8
                      BAFED65F9D4D017590BD904C5B56C6739CB6B8E3B449C749798E938C5B764C41
                      508DC24A50AF57EA7E30530A835C5EEBE239A8C641D77FDB4AFE9BFC2B96FF0B
                      AA55DB8E0073410200000025744558746372656174652D646174650032303039
                      2D31322D30385431333A30323A31312D30373A30304BF9C3ED00000025744558
                      74646174653A63726561746500323031302D30322D32305432333A32363A3135
                      2D30373A3030063B5C810000002574455874646174653A6D6F64696679003230
                      31302D30312D31315430393A33323A31382D30373A30305B4114700000006774
                      4558744C6963656E736500687474703A2F2F6372656174697665636F6D6D6F6E
                      732E6F72672F6C6963656E7365732F62792D73612F332E302F206F7220687474
                      703A2F2F6372656174697665636F6D6D6F6E732E6F72672F6C6963656E736573
                      2F4C47504C2F322E312F5B8F3C6300000025744558746D6F646966792D646174
                      6500323030392D31322D30385431333A30323A31312D30373A30301448B5D900
                      00001974455874536F667477617265007777772E696E6B73636170652E6F7267
                      9BEE3C1A0000001374455874536F75726365004F787967656E2049636F6E73EC
                      18AEE80000002774455874536F757263655F55524C00687474703A2F2F777777
                      2E6F787967656E2D69636F6E732E6F72672FEF37AACB0000000049454E44AE42
                      6082
                    }
                  end
                end
                object Label24: TLabel
                  Left = 196
                  Height = 15
                  Top = 8
                  Width = 76
                  Caption = 'Rok produkcji:'
                end
                object Label26: TLabel
                  Left = 300
                  Height = 15
                  Top = 8
                  Width = 78
                  Caption = 'Długość (min):'
                end
                object Label28: TLabel
                  Left = 424
                  Height = 15
                  Top = 151
                  Width = 28
                  Caption = 'Seria:'
                end
                object DBEdit14: TDBEdit
                  Left = 196
                  Height = 23
                  Top = 23
                  Width = 76
                  DataField = 'RokFilmu'
                  DataSource = DMM.dsMainFilm
                  Alignment = taRightJustify
                  MaxLength = 0
                  TabOrder = 1
                end
                object DBEdit15: TDBEdit
                  Left = 300
                  Height = 23
                  Top = 23
                  Width = 80
                  DataField = 'DlugoscFilmu'
                  DataSource = DMM.dsMainFilm
                  ReadOnly = True
                  Alignment = taRightJustify
                  MaxLength = 0
                  TabOrder = 2
                end
                object Label13: TLabel
                  Left = 424
                  Height = 15
                  Top = 8
                  Width = 30
                  Caption = 'Język:'
                end
                object lcbJezyk: TDBLookupComboBox
                  Left = 424
                  Height = 23
                  Top = 23
                  Width = 247
                  DataField = 'IdJzk'
                  DataSource = DMM.dsMainFilm
                  DoubleBuffered = True
                  KeyField = 'IdJzk'
                  ListField = 'NazwaJzk'
                  ListFieldIndex = 0
                  ListSource = DMM.dsJezyki
                  LookupCache = False
                  DisplayEmpty = 'brak'
                  ParentDoubleBuffered = False
                  Style = csDropDownList
                  TabOrder = 3
                end
                object sbnJezykClear: TSpeedButton
                  Left = 648
                  Height = 22
                  Top = -1
                  Width = 23
                  Flat = True
                  Images = DMG.ilCommon
                  ImageIndex = 34
                  OnClick = sbnJezykClearClick
                end
                object Label14: TLabel
                  Left = 424
                  Height = 15
                  Top = 56
                  Width = 39
                  Caption = 'Napisy:'
                end
                object lcbNapisy: TDBLookupComboBox
                  Left = 424
                  Height = 23
                  Top = 72
                  Width = 247
                  DataField = 'NapisyFilmu'
                  DataSource = DMM.dsMainFilm
                  KeyField = 'IdJzk'
                  ListField = 'NazwaJzk'
                  ListFieldIndex = 0
                  ListSource = DMM.dsJezyki
                  LookupCache = False
                  Style = csDropDownList
                  TabOrder = 4
                end
                object sbnNapisyClear: TSpeedButton
                  Left = 648
                  Height = 22
                  Top = 49
                  Width = 23
                  Flat = True
                  Images = DMG.ilCommon
                  ImageIndex = 34
                  OnClick = sbnNapisyClearClick
                end
                object Label15: TLabel
                  Left = 424
                  Height = 15
                  Top = 104
                  Width = 49
                  Caption = 'Dubbing:'
                end
                object lcbDubbing: TDBLookupComboBox
                  Left = 424
                  Height = 23
                  Top = 119
                  Width = 247
                  DataField = 'DubingFilmu'
                  DataSource = DMM.dsMainFilm
                  KeyField = 'IdJzk'
                  ListField = 'NazwaJzk'
                  ListFieldIndex = 0
                  ListSource = DMM.dsJezyki
                  LookupCache = False
                  Style = csDropDownList
                  TabOrder = 5
                end
                object sbnDubbingClear: TSpeedButton
                  Left = 648
                  Height = 22
                  Top = 96
                  Width = 23
                  Flat = True
                  Images = DMG.ilCommon
                  ImageIndex = 34
                  OnClick = sbnDubbingClearClick
                end
                object Label25: TLabel
                  Left = 196
                  Height = 15
                  Top = 56
                  Width = 23
                  Caption = 'Kraj:'
                end
                object DBLookupComboBox2: TDBLookupComboBox
                  Left = 196
                  Height = 23
                  Top = 71
                  Width = 208
                  DataField = 'IdKraju'
                  DataSource = DMM.dsMainFilm
                  KeyField = 'IdKraju'
                  ListField = 'NazwaKraju'
                  ListFieldIndex = 0
                  ListSource = DMM.dsKraje
                  LookupCache = False
                  Style = csDropDownList
                  TabOrder = 6
                end
                object DBLookupComboBox3: TDBLookupComboBox
                  Left = 424
                  Height = 23
                  Top = 167
                  Width = 247
                  DataField = 'IdSerii'
                  DataSource = DMM.dsMainFilm
                  KeyField = 'IdSerii'
                  ListField = 'NazwaSerii'
                  ListFieldIndex = 0
                  ListSource = DMM.dsSerie
                  LookupCache = False
                  Style = csDropDownList
                  TabOrder = 7
                end
                object SpeedButton1: TSpeedButton
                  Left = 381
                  Height = 22
                  Top = 48
                  Width = 23
                  Flat = True
                  Images = DMG.ilCommon
                  ImageIndex = 34
                  OnClick = SpeedButton1Click
                end
                object SpeedButton2: TSpeedButton
                  Left = 648
                  Height = 22
                  Top = 144
                  Width = 23
                  Flat = True
                  Images = DMG.ilCommon
                  ImageIndex = 34
                  OnClick = SpeedButton2Click
                end
                object SpeedButton5: TSpeedButton
                  Left = 381
                  Height = 25
                  Top = 22
                  Width = 23
                  Caption = '...'
                  OnClick = SpeedButton5Click
                end
                object SpeedButton6: TSpeedButton
                  Left = 273
                  Height = 24
                  Top = 22
                  Width = 23
                  Action = acFilmRok
                  Caption = '...'
                end
                object Label27: TLabel
                  Left = 680
                  Height = 15
                  Top = 8
                  Width = 87
                  Caption = 'Podsumowanie:'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object ListView2: TListView
                  Left = 680
                  Height = 166
                  Top = 32
                  Width = 170
                  Columns = <                  
                    item
                      Caption = 'Rodzaj'
                      Width = 85
                    end                  
                    item
                      Caption = 'Wartość'
                      Width = 60
                    end>
                  RowSelect = True
                  SmallImages = DMG.ilCommon
                  TabOrder = 8
                  ViewStyle = vsReport
                end
                object GroupBox3: TGroupBox
                  Left = 196
                  Height = 89
                  Top = 104
                  Width = 208
                  Caption = 'Ocena:'
                  ClientHeight = 69
                  ClientWidth = 204
                  TabOrder = 9
                  object Panel10: TPanel
                    Left = 0
                    Height = 35
                    Top = 0
                    Width = 204
                    Align = alTop
                    BevelInner = bvRaised
                    BevelOuter = bvLowered
                    ClientHeight = 35
                    ClientWidth = 204
                    TabOrder = 0
                    object Label29: TLabel
                      Left = 8
                      Height = 15
                      Top = 8
                      Width = 29
                      Caption = 'Pliku:'
                    end
                    object ImgOcenaPlF: TImage
                      Left = 62
                      Height = 16
                      Top = 4
                      Width = 96
                      Picture.Data = {
                        1754506F727461626C654E6574776F726B477261706869638902000089504E47
                        0D0A1A0A0000000D4948445200000060000000100806000000E9BA7AF9000000
                        017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048
                        597300000EC300000EC301C76FA8640000021E494441545847ED96BF6B5A5114
                        C78F8FAAA05041140771B2411C6C0A85E21A091D03CDE8D0B5436D11C5B55070
                        F4078A94ACC9FF902583A34B28C40C42892E82A0561082BF507CF67EAFD7D0C7
                        33E4BD9721CBFDC2D173CF399F87F0E57A1E6D361B7A4CD56AF50B8B8A38EA04
                        56F2CFE31591EF552814FA150C06BF8BA36949FE69FE51034AA5D2CF4824A244
                        A3519E8BB26149DE18BFD7804AA5E272BBDD3F3C1E0F21908B962149DE38BFD7
                        80F57A7D168BC5A8D3E9F0405E2E97CF45FB4949DE386FC322A8D56A17AAAABE
                        65E021CE0E878312890487A170384CF57A9D96CB25298A8268B2B84DA5529FD1
                        97BC75FE1506187C1A8FC7DD6C69C03D72B95CD46C361F36FC6030A0643249B3
                        D98CF7DBEDF661ABD57AC35AFC0748DE3ACF6F80CD667B572C16AF0281801FB0
                        A8F18070DED5F090E170F83793C97C64B51BF4256F9DDFED809B6C367BCCAECC
                        25067C3E1F5CD5046A93C904D7EA92C1C760B62897E42DF2FF2FE1DB7C3EFF0D
                        2E399D4EDD03EC763B77103398DD221A49DE02AF790B2A140A71BFDFCFFFB300
                        EDAE0EF2D168C45DC48C18D749F2E6798D016C4B1FC1A9E9744AABD58A4308E4
                        B83EE82D168B2331AE93E4CDF31A03987B27E3F1980FF7FBFD3FE974FA030239
                        6AF3F99CBC5EEF8918D749F2E6798D01EC1529D0EBF5D446A3F13597CB7D628E
                        5E2390A3D6ED7655CC88719D246F9EDFBD868A23BD17DF772CEEB7E9835EB338
                        D8A6F41B1F6021C95BE7B901522F25A27F9C40236FDEA08CD20000000049454E
                        44AE426082
                      }
                    end
                    object DBText4: TDBText
                      Left = 44
                      Height = 15
                      Top = 8
                      Width = 49
                      DataField = 'OcenaRip'
                      DataSource = dsMain
                      Font.CharSet = EASTEUROPE_CHARSET
                      Font.Pitch = fpVariable
                      Font.Quality = fqDraft
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBText8: TDBText
                      Left = 48
                      Height = 15
                      Top = 19
                      Width = 129
                      Alignment = taCenter
                      AutoSize = False
                      DataField = 'NazwaOceny'
                      DataSource = dsMain
                    end
                  end
                  object pnlFilmOcena: TPanel
                    Left = 0
                    Height = 34
                    Top = 35
                    Width = 204
                    Align = alTop
                    BevelInner = bvRaised
                    BevelOuter = bvLowered
                    ClientHeight = 34
                    ClientWidth = 204
                    TabOrder = 1
                    Visible = False
                    object Label30: TLabel
                      Left = 8
                      Height = 15
                      Top = 8
                      Width = 33
                      Caption = 'Filmu:'
                    end
                    object DBText9: TDBText
                      Left = 44
                      Height = 15
                      Top = 8
                      Width = 49
                      DataField = 'OcenaFilmu'
                      DataSource = DMM.dsMainFilm
                      Font.CharSet = EASTEUROPE_CHARSET
                      Font.Pitch = fpVariable
                      Font.Quality = fqDraft
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object ImgOcenaF: TImage
                      Left = 62
                      Height = 16
                      Top = 4
                      Width = 96
                      Picture.Data = {
                        1754506F727461626C654E6574776F726B477261706869638902000089504E47
                        0D0A1A0A0000000D4948445200000060000000100806000000E9BA7AF9000000
                        017352474200AECE1CE90000000467414D410000B18F0BFC6105000000097048
                        597300000EC300000EC301C76FA8640000021E494441545847ED96BF6B5A5114
                        C78F8FAAA05041140771B2411C6C0A85E21A091D03CDE8D0B5436D11C5B55070
                        F4078A94ACC9FF902583A34B28C40C42892E82A0561082BF507CF67EAFD7D0C7
                        33E4BD9721CBFDC2D173CF399F87F0E57A1E6D361B7A4CD56AF50B8B8A38EA04
                        56F2CFE31591EF552814FA150C06BF8BA36949FE69FE51034AA5D2CF4824A244
                        A3519E8BB26149DE18BFD7804AA5E272BBDD3F3C1E0F21908B962149DE38BFD7
                        80F57A7D168BC5A8D3E9F0405E2E97CF45FB4949DE386FC322A8D56A17AAAABE
                        65E021CE0E878312890487A170384CF57A9D96CB25298A8268B2B84DA5529FD1
                        97BC75FE1506187C1A8FC7DD6C69C03D72B95CD46C361F36FC6030A0643249B3
                        D98CF7DBEDF661ABD57AC35AFC0748DE3ACF6F80CD667B572C16AF0281801FB0
                        A8F18070DED5F090E170F83793C97C64B51BF4256F9DDFED809B6C367BCCAECC
                        25067C3E1F5CD5046A93C904D7EA92C1C760B62897E42DF2FF2FE1DB7C3EFF0D
                        2E399D4EDD03EC763B77103398DD221A49DE02AF790B2A140A71BFDFCFFFB300
                        EDAE0EF2D168C45DC48C18D749F2E6798D016C4B1FC1A9E9744AABD58A4308E4
                        B83EE82D168B2331AE93E4CDF31A03987B27E3F1980FF7FBFD3FE974FA030239
                        6AF3F99CBC5EEF8918D749F2E6798D01EC1529D0EBF5D446A3F13597CB7D628E
                        5E2390A3D6ED7655CC88719D246F9EDFBD868A23BD17DF772CEEB7E9835EB338
                        D8A6F41B1F6021C95BE7B901522F25A27F9C40236FDEA08CD20000000049454E
                        44AE426082
                      }
                    end
                    object sbnOcenaFilm: TSpeedButton
                      Left = 177
                      Height = 22
                      Top = 4
                      Width = 23
                      Caption = '...'
                      OnClick = sbnOcenaFilmClick
                    end
                    object lbOcenaFOpis: TLabel
                      Left = 44
                      Height = 15
                      Top = 16
                      Width = 133
                      Alignment = taCenter
                      AutoSize = False
                      Caption = 'lbOcenaFOpis'
                    end
                  end
                  object btnDodOceneFilmu: TSpeedButton
                    Left = 46
                    Height = 22
                    Top = 40
                    Width = 96
                    Caption = 'Ocena film'
                    Flat = True
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000064000000640000000000000000000000FFFFFF000000
                      000000000000000000000000000A000000250000003300000033000000330000
                      0033000000250000000A000000000000000000000000FFFFFF00FFFFFF000000
                      00000000000000000022004F2B5C008347C9008C4BFF008B4AFF008B4AFF008C
                      4BFF008347C9004F2B5C0000001E0000000000000000FFFFFF00FFFFFF000000
                      00000000001E008046BB009050FF01A169FF00AA76FF00AB77FF00AB77FF00AA
                      76FF01A169FF009050FF007C44AA0000001E00000000FFFFFF00FFFFFF000000
                      000A007C43AA009152FF02AC77FF00C38CFF00D699FF18DEA8FF18DEA8FF00D6
                      99FF00C38CFF01AB76FF009253FF007C44AA0000000AFFFFFF00FFFFFF000059
                      3151009051FF0FB483FF02D299FF00D69BFF00D193FFFFFFFFFFFFFFFFFF00D1
                      93FF00D69BFF00D198FF01AB76FF009050FF005A3151FFFFFF00FFFFFF000083
                      45C916AB78FF11C997FF00D49AFF00D297FF00CD8EFFFFFFFFFFFFFFFFFF00CD
                      8EFF00D297FF00D59BFF00C18CFF01A169FF008447C9FFFFFF00FFFFFF00008A
                      48FF38C49CFF00D198FF00CD92FF00CB8EFF00C787FFFFFFFFFFFFFFFFFF00C7
                      87FF00CB8EFF00CE93FF00D09AFF00AB76FF008C4BFFFFFFFF00FFFFFF000089
                      46FF51D2AFFF12D4A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFF00CF97FF00AD78FF008B4AFFFFFFFF00FFFFFF000088
                      45FF66DDBEFF10D0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFF00CD97FF00AD78FF008B4AFFFFFFFF00FFFFFF000088
                      46FF76E0C5FF00CA98FF00C590FF00C48EFF00C187FFFFFFFFFFFFFFFFFF00C1
                      87FF00C48EFF00C793FF00CB99FF00AB76FF008C4BFFFFFFFF00FFFFFF000088
                      46BE59C9A4FF49DEBCFF00C794FF00C794FF00C38EFFFFFFFFFFFFFFFFFF00C3
                      8EFF00C896FF00CB9AFF06C190FF00A168FF008B4BBFFFFFFF00FFFFFF00008C
                      4B330A9458FFADF8E9FF18D0A7FF00C494FF00C290FFFFFFFFFFFFFFFFFF00C3
                      91FF00C799FF05C89BFF18B787FF009050FF008E4D33FFFFFF00FFFFFF000000
                      0000008A48AA199C63FFBCFFF7FF5DE4C9FF00C397FF00BF90FF00C091FF00C4
                      98FF22CAA2FF31C297FF039355FF008D4C9500000000FFFFFF00FFFFFF000000
                      000000000000008A48950E9659FF74D5B6FF9FF3E0FF92EFDAFF79E5CAFF5DD6
                      B5FF2EB586FF039152FF008C4CAA0000000000000000FFFFFF00FFFFFF000000
                      00000000000000000000008C4A33008946BB008744FF008743FF008744FF0089
                      46FF008B49BB008D4C33000000000000000000000000FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
                    }
                    OnClick = btnDodOceneFilmuClick
                  end
                end
              end
              object tsFilmAktorzy: TTabSheet
                Caption = 'Aktorzy'
                ClientHeight = 202
                ClientWidth = 855
                object pnlAktZdj: TPanel
                  Left = 0
                  Height = 202
                  Top = 0
                  Width = 146
                  Align = alLeft
                  BevelOuter = bvNone
                  ClientHeight = 202
                  ClientWidth = 146
                  TabOrder = 0
                  object GroupBox2: TGroupBox
                    Left = 0
                    Height = 202
                    Top = 0
                    Width = 146
                    Align = alClient
                    Caption = 'Zdjęcie'
                    ClientHeight = 182
                    ClientWidth = 142
                    TabOrder = 0
                    object ImgZdjAkt: TImage
                      Left = 0
                      Height = 182
                      Top = 0
                      Width = 142
                      Align = alClient
                      Center = True
                      KeepOriginXWhenClipped = True
                      KeepOriginYWhenClipped = True
                      Proportional = True
                      Stretch = True
                    end
                    object ImgBrakZdjAkt: TImage
                      Left = 40
                      Height = 64
                      Top = 56
                      Width = 64
                      Picture.Data = {
                        1754506F727461626C654E6574776F726B47726170686963861B000089504E47
                        0D0A1A0A0000000D4948445200000040000000400806000000AA6971DE000000
                        06624B4744000000000000F943BB7F000000097048597300001BAF00001BAF01
                        5E1A911C0000000976704167000000400000004000EAF3F86000001963494441
                        5478DAED9B79905C479DE73F99EFBDAA7AF5AAAAABEF4BADD66559922F61216C
                        E3E130361B43702C03F64C0C0CB02CCCD8C2300B3103968F9D883960D8830166
                        8105866322D82196D32C0C086C0C36065936D67D5FADEE965ADDEAABEEE31D99
                        B97F5475ABBB25634936B3B131F38B789155FDAA337FDFEFEF97BFFCE5EFE583
                        7F937FDD22FE2506F904300D62736F6F3CBD6A95E7F5F767BC952B13D2719296
                        6DC7643A1DC864B2EA9F3BE7D7A6A78B959191F28E471EF13B3B3ACC7BC7C6FE
                        FF23E01F8063C0E678DC4BB5B7F7BB9D9DEBDDEEEE8D899E9EABE2DDDDFDB1AE
                        AEEE446FAFEBB4B5C5AC54CAB65C37325A07612E570FF3F973C1D4D4983F3575
                        BC3E39B9A73A3E7EB8303A7AE6C7BB775736B7B4F04785C28BAAABFD6276F6BF
                        0105B62BE58A57BBEEEFC4B3D97F17EFECBC31D1DFDFE72E5FEEB9CB96C9786F
                        2F4E47074E368B4C26918904563C0E809548607BDE3A2B91C0721C630951B1B4
                        3E1B1362E79DAEFB93EAF4F42FBF21C4482C91887E6F62E245D1F945F180AF03
                        11C43CD860C35D12DE18CF66D7A4366C70331B3792BCEA2AE25D5DC8781C8CC1
                        44114629D01AA3354889B02CB02C642C86B02C8CD6A87299FAE9D3D44E9EA43A
                        3252F327268ED72627BF5F9D99F97649A9430E847FF8FF9280CF03FB41BC0AD6
                        C4E0DD16DC6527932B531BD65BAD37DF4C7AC3062C2F850943B4EFA3C3B001DA
                        180C8031341A73FE33208440D836329140C6E31815511F1D25F7AB5F51DCB953
                        8585E290866FF9F0D547E1E4263077FF4B13F05DA00C690FDE6AC1FB9C44E225
                        991BAEB7DB5FF54A92AB56238444D7EB0D6B2F003707940524CCB70BEFCD7D06
                        8465215D17A314D5A387C93DFE04D59343918EA25D117CB6020F27A074E715E0
                        B02EF71F3E03FC10D805AB93F017B6941F49AD5EB9AAF7AEB7CACE3B5E8BD392
                        45576BA87A1DAD54C3DA73565FD0EA25EDFCFD8BFD562954AD860E4362DD3DA4
                        376EC469CBCA6072B25F57AAAFB1A1DB8723DF865C17F0A3DF96077C113804E2
                        65706B0CFECA7113AF6C7FE5AD56D7ED77602592E8BADF98D34B2C3B6FFD3931
                        066DF4FC7468682210F35E42A39F8B7809C6806561255DA27C8ED9471FA5B477
                        9F52917A2280BF7812B6BF04CC7B5E6C023E030C83DC08BF1B878F273ADAAEEB
                        79E3EBC95EBF111346E8485DC4BD1B2318A351814F582C10E666090B0554A984
                        F2038C8A105222E3712CCFC36EC9E264B358A934D289353A584854B36F630C56
                        3C86746C0A3BB633FBF35F10556BFB7CB86F2F3CB212F4A5C4854B22E0B34DCB
                        DF0CFF3E06FF2DD9D7B3A6FFCE37E30DAE46D7FC0BE6AE008C10E8D0C79F99A2
                        726A88DAC808FEE434AA5CC18491314A870654932629C01296B4A5630BCBF370
                        BA3A482C1FC01D588E936D4758366883C12CF60829B13D97DAB1C34CFDF0C704
                        85D2711FFE7C3BFCE05A305B5E28019F043E047C155E9B80BFF796F5AE5B76D7
                        5B70BBFBD1F5104313F082A0A5A380EAF8198A070E50393144582869AD745EC1
                        700447159C8A604C43C94024202E216D439F035759B0C6829552CAB4D3921289
                        958378EBD611EFEA45487B51909C6BEDB4873F32C4D40F7E849F2F1EF6E103EF
                        80C73E03BCFF4A09F820F007C07ED894842F24BB3A360DDCF56692BDCBD141B4
                        7819030C063F37457ECF2E8A078E1016CB41643812C06315F859010E8DC2E4E3
                        503F0ED1D2F136837D0B78DDD095858D2EDC1687DB6CC11A3BEDD9C9ABD790DA
                        700D4EA60D10F3CBE71CF54E2A893F3AC4E40FB61194ABCF56E14FAE85DD5F03
                        FEC79510F0052080DE0C7CD6CDA47E6FD95BDE407AE55A74A02E08725A479487
                        8F31B3FD696A63E754A8CDA11A7C7D1ABEBF0B4E7E07FC4B0D3803C069E01DE0
                        5E03EBDAE15D1EBC474A914A5DB796EC4DB722ADF8055E800127E3513D7690A9
                        1FFF8C3008BF5384F73B30F1DEE718EB3953E14F00A7207E156CB11CEBF56DB7
                        6E2639B092A8165C005E457572077633BB632741B19AABC137A6E18BDB617F1F
                        44DF7D3EA697C8E966FB32A8F930644160C0767A3B70D75C85C14245D112F00D
                        9D54AE4062CDD564364D91DBB1EB8D49C3C1A3F0B14F81FFC18B8C75D13CE043
                        C0EB810ABC260E7F99BD766D6BE7ADB7821218B578ED8EC21A33BB9F66E6A99D
                        D42BF59305F8EB03F0E98FC3F03B413F7B19C017CAE78008B2AD705F4CF0FEC4
                        B2CE64F6969B88B5765FA0C3A2BC426B7410E1AE58863F396185F9D29A14ECBE
                        19865A80ED4BC691171B7C05F073E874E0DE586BA6BF6DF38D606C5418A19542
                        478D360A6ACCECFD35D34FEFA15A0B0E4CC39FFD337C19C80B1A21FE4AE43340
                        1DB269F88825F8D3F8B22EAFF5A69B88A53BD04B74D051845AF23DACD7090343
                        F6E5376125E3FD0EBCFF71E81CBC140FF830F010B0077E3F26C5FB3B6EDE184B
                        AF5C8B091A6CEB26EBDA44144E1C64EAA99DD46BC19159F8F02760DB2688BE74
                        85C001BED0D686C964B26963EEB38DF9D3E440A7D7BE79334EAA0D135D7A46A9
                        EA3EB18E0E4C54A336766E40C2892DB027049E5C30DE0531A01BF82874B7C3DB
                        E29DAD5E7ACD6A74A031FAFC86050CB5D931A69EDD4DADE29FCDC15F7E117EF2
                        06505F7901E0BF75FBED4452B6BAB5DA569DCFDD2B1DE5B5AC5E859D68C104CD
                        45634122A49BED051BAB665BCF95485F7F1DC5A327BD285F79DB7F816D5D70EE
                        393DE08F810F00C7E14D3129B674DCB821EEF5AFC0440BF274AD89C20A933B9F
                        A13432592BC1A79E81AFBE1482CFBF00F0DFBBF34E946DB7B5B7B73F90EAECB8
                        37D9DDE2A53A3BB070216AA6C57A713BE78DC6688CAE355B31AFA70A0262ADAD
                        0D2F3873AE4BC2C1B7C1812230179B16C58001E0EF2065C11B9D162FED2D1F40
                        07061545F3734DE988E2E9931487C6A8C3CFC7E02B2F87DAA75F00F81FBCF39D
                        4496D5D6D5DFFF40BAB7E7DE44672A198F39485F4218815210355AB3A4452974
                        50A278743FF5E933681D35F4550A1545D4668BA4D6AFC34AC5D316BCE1BF82B7
                        7CC1D8F304B4029D403B5C2DE016B7AF032BE1CD073EA5145A29C27A81DCB113
                        F8F568B2005FF83B187BF2B2219F971FDD7D37A1106DDD83830FA6FBFBDE174B
                        4957E46631B9FA05E08922C482EF422B8CA9503C7688E291D35486475141651E
                        BC560ABF50C44A65490CF420E0960E58DB05C496127017700F60C3ADD2B1FA93
                        FD3D1865A1A366848D145A4754CE9DA13291A30E8F8DC02F3E023C7C85E07FF2
                        C10F121AD3D6BB6AD5439965FD5B9C8476F5D819F464791EBC882E24C1280546
                        83F4C91F3B4CE1C4D92850146B53791314A7D05ACDAF0891EF1394EBA4D6AC04
                        C932076E7D0FF0EEA504B43708480AD86C797127966941850AA522948AD02A42
                        45358A67C6F0EB51BE0CDFF912E4775F21F8473EFC61EA61D8DEB37AF5439965
                        FDF7D896EF46C78FA2C7F2887089A517B42652486390B18899E347C81D1BD365
                        657E380B9F0CEAAA5C9F9CC268BF61B0A6D7D666F3B87D7D585EC211F0B27BC1
                        ED5E4A40A2310DBA045C136B4D219D043A5C607DA5082A792A93B3047070069E
                        7E08F8E99558FE231FA15AA9B4F7AE5CF550A6BFF71ECB94DD70FF5ED4C8CC22
                        B7174B3CC0441152804C1A268F1D66E6E8695D56E68767E1FE59F8C7C070A43E
                        53684C03BD601A94CA58C934B18E16806BDBA12BB194808EC6BC1844B02C964D
                        618C5C104C1AEE5F2FCC522FD70960FB2FE08AEAB23FFCD08728E572EDDD8383
                        0FA57A3AEF9641CEF59F7D063534396FF9F96B81E5451461591299B1183F7698
                        A923A77539323F3A0BF7FF011CDE076703783AA80444B512469F0F8461B54614
                        6AE2DDED00CB6230985D48C08DC0758DEFCB8C14293BE9A223D370FFA8E1FE5A
                        87D40A79C24057EAB0EB9B10EDB94CF0DFBBE71E0A53536D5DCB963D98EA68BF
                        5BD4665C7FC753A81313E7C137C18A851E1045588E8D6C8D3376EC1013874775
                        3932DBCEC2D64FC2C1ADC0A310D4E0993054B5B05CC2E8B011C0A3081973B0E2
                        49E21D6D18410A58B601D83C47C006E0958D2F83C291712B116BBAFF5C305198
                        C8C72F55880CB91A9CF81EB0F332C07FF35DEF6A80EFED7BC86BCDDE23EA536E
                        B4633BFAF83832508B2DBFC003441461C763C80E9791A307387B7044579AE03F
                        0D075F0BFC9CF9F4F978A4C987D53A98082B91203D384876ED5AA64F8D303B32
                        82B0455CC28A573771DB736E30089686766C298565A12285D1E72B3CE0E3D77C
                        2298AEC3F4F46580FF5F77DE497E72B2AD7FC58A87DC96F43D5630E39A03FBD1
                        43530805731543B130CB6B163D9C740AD593E2E481BD9C3D30A2AB91D936015B
                        3F0B07EE001E6B8E31D120603282A92854BD6E671B91F198191B63F6C927A9CE
                        4C93E970C096D284AA7D102C1B944D63EEB3AE4140CA0881413409D0F3DB586D
                        42A2302282D932942FB59CFCE5D7BD8EDCD4545BFFC0C04389B4778FA3F2AEB5
                        F7180C4D239BE0CD02F073854F01C45A32A8DE34270EECE57403FC8FCFC1FDFF
                        130EBCA669F939F181329422C88541C0E4E143CC9CCE51AFD59ACF1AC0080784
                        4083770D58CE1C010ED0D2F086B4B144B32ADB20C0343DC410A1B44643A01AC9
                        E9F3CAA7366D626268A86DF9EAD50FC6DCC43D714A6EE2C808E2D46C73AB78DE
                        F2342D3F97E3C7DA5A89FA331CD9BF9BD1FDF3E0B77E01F6BF1A7862C9580A08
                        1B7AF9511861666750351F092CD4D54830906E01DB81C086466D2A6A7422B431
                        548A0508236CDBC1B66D6CCB420A856E74261488E723606B22C1D0CE9D6DFD7D
                        FD0F987A6D4B4296DCF4D00C72248750CD696516587FAE2C2E044E7B1B617F86
                        43FB7631BC6F445723F39373B0F51F60FFAB805F5C643CD504DAB8048E25B096
                        806F5A1F0D620EB30D5003661AAB6D39529ADCF859CA133E9665138FC771E371
                        BCCE180683868404DBF0DCF221A054AFB7B5C0FDAA5CD8929025B76346123B5B
                        01E9206D8110A2E197522284C00801088C25A8B75AECDFB79353FB4675A509FE
                        2BB0FF15C02F7FC3B8126C0D312408D3F0DC851E20648380082A33A0BC3902AA
                        C029509BA0A29B057D1545A82044D76A8480D1719002032D2E78164C5D4C89FF
                        D4988F6D69B8DFB2C4FB5A5B44B2BF308B1CCD1345064123C0CD7B401461C2B0
                        F1FC5047D45A6D8E0C2B464E97E6C1FF23ECBB05D8F11BC03B401252065A852D
                        4137C69030EF594280D2A0A0720254C71C010130DAF0807CA88C119610520AD0
                        669E4511196CCF024157CCD0EDC1F052253E00D4A12D030FD896D8D2DD9D48AE
                        4561EF1EC68FF47C5F734A2DAA134AF03B131C5611C3E3755D0EF523E760EBD7
                        2E013C401C08A103418715938852383F86048C14084B10296D22C88D82BAB179
                        8FE3C038181F46A2C8F846D070D3851D041AC7912045AB84352F07AE5EA0C0BD
                        4DCBA79AE07B7ADCE43A5B921AAF23238D45A3F8602FB91CC09182B0DBE560C2
                        E2E4785D1743FDC87813FC4B2F01FC0D34921A0BD62045AB634B4CA817916DD9
                        8D691629E307303A02E6D81C014781AF35181C0BB5A946DA60C7E462170A3431
                        29B062D295F0D2FF0ECEA6A6025B9A96F7E6C0F7BAC9F5B62075B67601F80B88
                        9002BF3BC1DEB8C5F1F19A2E86FAD1B3B0F59F60EF262E2DD9BA06F85BB0256C
                        B26232E94820D0F30614801D97686D0815551FCE3C0C1C62C15EE00450819140
                        9B713FD0C492F6A20E4CA4B1434DDCB31170EB0AE8F3803F5900DEB2C496DEDE
                        6472832DF19AE0E502D017788014D47B12EC4A581C3D5BD5C5403F3A0E5BBF01
                        7B6F04765D0278807483846E09B7C43D1B3BD098C82CD23FE65AF8BE223066BC
                        0223C7CFCFBC86CC0093301EC0D15A25C24E5A48797E1A0803944332690729C5
                        3A176EBEA6E9F61E3C685B624B5F9F9B5CEF0892635544781EFC5212AC39F0BD
                        2EBF766D0E8F557531D03F3D0B5BBF057BAE032E759B7D13703B90849B8414D7
                        A4D30E94A345E0A514D8AE4DBDAA08E1F0384CCC65B2F3044C013F8372003BAB
                        35A5B42D71E28DDB731DE95244C691C49256DA86BB9E8235C9A6DBF7F7372C9F
                        3C53857071C05B4A822D05B55E971D098B03A72BBA10E89F8EC37DDF853DD702
                        FB2F113CC03AE01B90B1E1ADF1A4DD92B625AAB29800276E616C41ADAE541D76
                        3E06A5B99DEC3C01FB80BF065D865FD5427DAEE26BE299D8A28E74A8899742DA
                        DAE308C16D59F8BC6D89BBFB9779EE7A5B9258007E2E7E2C25C196826A9FCB76
                        D762DFE98A2E36C06F7D18F6AC070E5C06F8DB803703ADF04A29786D6B7B0CA7
                        146242BD689589B73854EA9A7AA027CAB0FDE360E662CB3C0179E019E01C1CF0
                        0DBBF28500BBC5C16AAE06739EA066037A5C1B37E5B4D996B87D60C04BADB705
                        B1D39545032F5CEAE648B0A5A0D2EFF22BD766CF68C51402FDD8386CFD3EEC5E
                        0F1CBE0CF000CB1BD6EF71E01E37ED7476256CF4ACBF485FCB165869876231C0
                        875DE7E0C033407929010063C013305B836DC55258AF00F14C6CF134F0156ECE
                        67A03FC9E08A14EB6C8133BA18FCA2F9B7601E56FA933CE9DAEC1A2D9B42A07F
                        3A01F7FD33EC5E7B05E0EF04861B27D3FEA3658BDBFBBA5DDC591F1D2CB57E8C
                        1A502A47B52A6C7B0C72A717F4B388805DC0DBC1CCC0233565F69E9B0DB03B13
                        486BF1A3CD68DA67B936ACB304D6C873835F1884AACB923C99B4D8355236455F
                        3F36015B7FD4047FEC32C1BF19D8016225BCC916DCDBD5ED26FA8C219AF517FD
                        4E5A02BB3DCED4AC4F4D997DD3F0C8BBC1FCFAB9080038023C0AA7AAF0EDD9BC
                        EF170424DAE3F3F7056094410D95D1432574A8E7FFBE54048DFCBB3AE0F164D2
                        66E770C5141AE0EFFB31ECBAEA0AC16F03711BDC61C15F65DBE27D6BB331E458
                        1533B7C96A4AA23D4E51402E1FF855F8F636183EB4A4BF0B08D809BC0DD4343C
                        5C89CC33A313354C570227B1B802A0238D8E2EBE259A9F8352505BEEF12BD762
                        E7A9B229F8EAB109D8FA08EC5A492303BD1C793D701AAC3BE175367C22938DAD
                        BFAE2F89375645D5D422F076C2C27426383351A7A2CCD353F0F03B413DBDA4CF
                        8BD63542E059C80F42607CF56ACBB3DDAE6C0C9D0F9166F192F65C9F2D4B102E
                        F7D891B47976A86C8ABEFAD9246CFD19EC1CE4221B89E7913B0105A97EF82307
                        3ED6DA165F77E38047E77895703658B0156EE4FDB1418F115F3331599B2DC0DF
                        6C835F04C0D24AD6450998065E014CC29914F4D7AAD1C654B72B5BA54497C38B
                        AEED4BC147CB3D9E4EDA3C3B54D2455FFD7C12EE7BBC097EE43280FF2ED00132
                        031B5CD8EA48F167BDDD6EDFE65E97AEB12AC18C3F5F0B986B633D4926530E27
                        46CAAAA4CC3F9D82CFAD83FAC5CE2A3CE709911DC05F41EE07F06911E8F54746
                        2BBF935E95261328F48CBFE8DC9F59D85A826030C54ED7E2D91325CABEDA330D
                        FFF909D8D97B19E0DFECBA845ADB1E62454BE0BF491AF34ED7B5AE5DD3EF5937
                        242C92C365FC6278C1FFC5DAE314BA121C1B2A510AF4F673F0F7FF01F27FFE1C
                        E33C67694F03A7807D30DD07E7B4AF6F2E45A6B57B790AB7AEA0AE2E487224E0
                        A41C2AABD31C2E86CC160294325112F88EE3C8F5DD3DFE55F1583056ABA9D52C
                        2E28AC07F220DEBE7A75E28EABAFEEE9EEEDBDB9359D79AF05F74BC23FECE98C
                        F5DF3C9092D7FB8AF87089A8AA16595D015636467530CD9E3315A6F2C1C91C3C
                        F8383C758C46AA7F3179DEA33BD7021310BB01DE9E828FF677BBBD37F527C90C
                        97D1B3FEFC9676BE1502276D13F425194A581CCD058CE7026D7BAD85DEABD70F
                        25B3AD872DC73E6927BD51271E2B4A6D94ED252DA3750B911AD04AAD0A6BB5F5
                        41A5B82A2CCE649DEA94EC0DF30C94EBB8E355C2424060CE97F1C2662BDBE214
                        0753FCFA6C95F173B5B3457870077C7D008283BF01DF259D5DBA0E9805771DBC
                        D783877ABBDCAE5B063CDACF54D093352CB384041A7B7C27E3107426984E394C
                        A5B384ED7D28AF0D1219E378A9C08E2594B02C232D5B60946D829A63EA656155
                        67718B53B4CC4E9199C8E18C97890A0181368B4087801220BB5CA6FB933C73A6
                        C2C464FD5C09FEE6107CB91D6AFB9E07DB251FDEBA0128359EADBFC383073ADB
                        E20337AD483398F7E1740511EA452458F31E014ECC426662A89638416B927ADA
                        43B909542C8EB22DA431586148AC56275EAA10CB5590B3557421200A14916982
                        5D02DE381233E031D212E3D9E132D339FF74193E36045FCB4065EF25E0BAACC3
                        D21B803C24D6C05B5C78209DB4376C5C9516D75B82E46819930FB0CC6212ECA5
                        6DB3DA249B252AA4689C6E5106AD1AB9856A9EA16D56AAE7DB39F04A00D918D5
                        8114FB9561FFA9922955A34315F8E831F86E2BF8072F11D3651D979F023A203A
                        018733B04F85BA6B62D61F9CB2A5ED2D4FD1EA39D8753DFFD460E1A6644E0C8D
                        47FB46197468308146871A151974A360B9A8C4BD688913203D07BD22CD486F92
                        5F4ED5393452F24BBEDE96870776C24FB2105E4E7679D9EF0BE48136D0476124
                        03DB85A69A2F8683C385A0A5D01213EE328FB4E76047A679B66731F845442CB8
                        96AEE50B3F1B4B203231A2E529C6063C9EF2154F9F2C99F1197FB8AAF9DC0C7C
                        EC59D897057DF632F1BCA057663635BCC2ED869727E0BD8EE08E4CCAE958DD93
                        647D36C6F250D392F3B10B01A21221228D348B374A0B45CF1122C0D812EDD944
                        2D310AAD714EDB82C38590A1F1AA2955C2E9D0F0D32A7C691CB67740FD4A0F6A
                        BCE097A65A8002B016DAB3F08A18FCBE25785522667577B5C6AC15ED0996276D
                        FA806CA049D415762D42061AA13468D33C2C2FD1310B9574F09336C584CD5963
                        182AFA0CCFD498CA05AA1EA8096578C2876FE6E097C760666EFC2B9517EDBDC1
                        2C8DE9B1065A5BE0250EBCC682574BC1DAB823B3D94CC2E9E948D39DF5E8F0E2
                        A4130E49C7266EDB202D7C63A8041133D590E9428DC9D90A9333C5B050ACE623
                        A58E46F078D03871BEE704E43240F145D0FBB7F2E2E41F03FF07621DD0138775
                        0EDCE058F6F5C94462D0F3925D29CFCB263DCF49255DC77513969496AAFB7E58
                        2E958352B99C2F972B53955A75B8E6FBFB6A51B4B766CCD12918BF0DC26FBEC8
                        BAFED65F9D4D017590BD904C5B56C6739CB6B8E3B449C749798E938C5B764C41
                        508DC24A50AF57EA7E30530A835C5EEBE239A8C641D77FDB4AFE9BFC2B96FF0B
                        AA55DB8E0073410200000025744558746372656174652D646174650032303039
                        2D31322D30385431333A30323A31312D30373A30304BF9C3ED00000025744558
                        74646174653A63726561746500323031302D30322D32305432333A32363A3135
                        2D30373A3030063B5C810000002574455874646174653A6D6F64696679003230
                        31302D30312D31315430393A33323A31382D30373A30305B4114700000006774
                        4558744C6963656E736500687474703A2F2F6372656174697665636F6D6D6F6E
                        732E6F72672F6C6963656E7365732F62792D73612F332E302F206F7220687474
                        703A2F2F6372656174697665636F6D6D6F6E732E6F72672F6C6963656E736573
                        2F4C47504C2F322E312F5B8F3C6300000025744558746D6F646966792D646174
                        6500323030392D31322D30385431333A30323A31312D30373A30301448B5D900
                        00001974455874536F667477617265007777772E696E6B73636170652E6F7267
                        9BEE3C1A0000001374455874536F75726365004F787967656E2049636F6E73EC
                        18AEE80000002774455874536F757263655F55524C00687474703A2F2F777777
                        2E6F787967656E2D69636F6E732E6F72672FEF37AACB0000000049454E44AE42
                        6082
                      }
                    end
                  end
                end
                object pnlAktTresc: TPanel
                  Left = 146
                  Height = 202
                  Top = 0
                  Width = 709
                  Align = alClient
                  BevelOuter = bvNone
                  ClientHeight = 202
                  ClientWidth = 709
                  TabOrder = 1
                  object ToolBar8: TToolBar
                    Left = 0
                    Height = 26
                    Top = 0
                    Width = 709
                    Caption = 'ToolBar8'
                    Images = DMG.ilCommon
                    TabOrder = 0
                    object ToolButton39: TToolButton
                      Left = 1
                      Top = 2
                      Action = acAktDodaj
                    end
                    object ToolButton40: TToolButton
                      Left = 24
                      Top = 2
                      Action = acAktDodajTxt
                    end
                    object ToolButton41: TToolButton
                      Left = 47
                      Height = 8
                      Top = 2
                      Caption = 'ToolButton41'
                      Style = tbsSeparator
                    end
                    object ToolButton42: TToolButton
                      Left = 55
                      Top = 2
                      Action = acAktEdycja
                    end
                    object ToolButton43: TToolButton
                      Left = 78
                      Height = 8
                      Top = 2
                      Caption = 'ToolButton43'
                      Style = tbsSeparator
                    end
                    object ToolButton44: TToolButton
                      Left = 86
                      Top = 2
                      Action = acAktUsun
                    end
                  end
                  object dbgAkt: TRxDBGrid
                    Left = 0
                    Height = 176
                    Top = 26
                    Width = 709
                    ColumnDefValues.BlobText = '(blob)'
                    TitleButtons = False
                    AutoSort = True
                    Columns = <                    
                      item
                        Title.Alignment = taCenter
                        Title.Orientation = toHorizontal
                        Title.Caption = 'Nazwa'
                        Width = 500
                        FieldName = 'NazwaAkt'
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
                    DataSource = dsMainAkt
                    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                    TabOrder = 1
                  end
                end
              end
              object tsFilmyLinki: TTabSheet
                Caption = 'Linki'
                ClientHeight = 202
                ClientWidth = 855
                object ToolBar6: TToolBar
                  Left = 0
                  Height = 26
                  Top = 0
                  Width = 855
                  Caption = 'ToolBar6'
                  Images = DMG.ilCommon
                  List = True
                  ParentShowHint = False
                  ShowCaptions = True
                  ShowHint = True
                  TabOrder = 0
                  object ToolButton10: TToolButton
                    Left = 1
                    Top = 2
                    Action = acLinkDodaj
                  end
                  object ToolButton23: TToolButton
                    Left = 61
                    Top = 2
                    Action = acLinkUsun
                    ShowCaption = False
                  end
                  object ToolButton24: TToolButton
                    Left = 92
                    Top = 2
                    Action = DataSetEdit1
                    ShowCaption = False
                  end
                  object ToolButton25: TToolButton
                    Left = 115
                    Top = 2
                    Action = DataSetPost1
                    ShowCaption = False
                  end
                  object ToolButton26: TToolButton
                    Left = 138
                    Top = 2
                    Action = DataSetCancel1
                    ShowCaption = False
                  end
                  object ToolButton27: TToolButton
                    Left = 84
                    Height = 8
                    Top = 2
                    Caption = 'ToolButton27'
                    Style = tbsSeparator
                  end
                  object ToolButton31: TToolButton
                    Left = 169
                    Top = 2
                    Action = acLinkOtworz
                  end
                  object ToolButton32: TToolButton
                    Left = 161
                    Height = 8
                    Top = 2
                    Caption = 'ToolButton32'
                    Style = tbsSeparator
                  end
                end
                object DBMemo6: TDBMemo
                  Left = 0
                  Height = 50
                  Top = 152
                  Width = 855
                  Align = alBottom
                  DataField = 'OpisLnk'
                  DataSource = DMM.dsMainLinki
                  ReadOnly = True
                  TabOrder = 1
                end
                object Splitter6: TSplitter
                  Cursor = crVSplit
                  Left = 0
                  Height = 5
                  Top = 147
                  Width = 855
                  Align = alBottom
                  ResizeAnchor = akBottom
                end
                object RxDBGrid3: TRxDBGrid
                  Left = 0
                  Height = 121
                  Top = 26
                  Width = 855
                  ColumnDefValues.BlobText = '(blob)'
                  TitleButtons = False
                  AutoSort = True
                  Columns = <                  
                    item
                      Title.Alignment = taCenter
                      Title.Orientation = toHorizontal
                      Title.Caption = 'Link'
                      Width = 800
                      FieldName = 'TrescLnk'
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
                  DataSource = DMM.dsMainLinki
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 3
                end
              end
              object tsFilmGatunki: TTabSheet
                Caption = 'Gatunki'
                ClientHeight = 202
                ClientWidth = 855
                object ToolBar9: TToolBar
                  Left = 0
                  Height = 26
                  Top = 0
                  Width = 855
                  Caption = 'ToolBar9'
                  Images = DMG.ilCommon
                  List = True
                  ParentShowHint = False
                  ShowCaptions = True
                  ShowHint = True
                  TabOrder = 0
                  object ToolButton37: TToolButton
                    Left = 1
                    Top = 2
                    Action = acGatDodaj
                  end
                  object ToolButton38: TToolButton
                    Left = 84
                    Top = 2
                    Action = acGatUsun
                    ShowCaption = False
                  end
                  object ToolButton45: TToolButton
                    Left = 61
                    Top = 2
                    Action = acGatEdycja
                    ShowCaption = False
                  end
                end
                object RxDBGrid4: TRxDBGrid
                  Left = 0
                  Height = 176
                  Top = 26
                  Width = 855
                  ColumnDefValues.BlobText = '(blob)'
                  TitleButtons = False
                  AutoSort = True
                  Columns = <                  
                    item
                      Title.Alignment = taCenter
                      Title.Orientation = toHorizontal
                      Title.Caption = 'Nazwa'
                      FieldName = 'NazwaGat'
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
                  DataSource = DMM.dsMainGat
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ReadOnly = True
                  TabOrder = 1
                end
              end
              object tsFilmKomentarz: TTabSheet
                Caption = 'Komentarz'
                ClientHeight = 202
                ClientWidth = 855
                object DBMemo3: TDBMemo
                  Left = 0
                  Height = 202
                  Top = 0
                  Width = 855
                  Align = alClient
                  DataField = 'KomentarzFilmu'
                  DataSource = DMM.dsMainFilm
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
              object tsFilmOpis: TTabSheet
                Caption = 'Opis'
                ClientHeight = 202
                ClientWidth = 855
                object DBMemo4: TDBMemo
                  Left = 0
                  Height = 202
                  Top = 0
                  Width = 855
                  Align = alClient
                  DataField = 'OpisFilmu'
                  DataSource = DMM.dsMainFilm
                  ScrollBars = ssVertical
                  TabOrder = 0
                end
              end
              object tsFilmAKA: TTabSheet
                Caption = 'Inne tytuły'
                ClientHeight = 202
                ClientWidth = 855
                object ToolBar7: TToolBar
                  Left = 0
                  Height = 26
                  Top = 0
                  Width = 855
                  Caption = 'ToolBar7'
                  Images = DMG.ilCommon
                  List = True
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  object ToolButton33: TToolButton
                    Left = 1
                    Top = 2
                    Action = acInnyTytDodaj
                  end
                  object ToolButton34: TToolButton
                    Left = 24
                    Top = 2
                    Action = acInnyTytDodWiele
                  end
                  object ToolButton35: TToolButton
                    Left = 47
                    Height = 8
                    Top = 2
                    Caption = 'ToolButton35'
                    Style = tbsSeparator
                  end
                  object ToolButton36: TToolButton
                    Left = 55
                    Top = 2
                    Action = acInnyTytUsun
                    ShowCaption = False
                  end
                end
                object RxDBGrid5: TRxDBGrid
                  Left = 0
                  Height = 176
                  Top = 26
                  Width = 855
                  ColumnDefValues.BlobText = '(blob)'
                  TitleButtons = False
                  AutoSort = True
                  Columns = <                  
                    item
                      Title.Alignment = taCenter
                      Title.Orientation = toHorizontal
                      Title.Caption = 'Tytuł'
                      Width = 800
                      FieldName = 'NazwaAKAF'
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
                  DataSource = DMM.dsMainAkaF
                  Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 1
                end
              end
            end
            object Panel3: TPanel
              Left = 0
              Height = 40
              Top = 0
              Width = 863
              Align = alTop
              BevelOuter = bvNone
              ClientHeight = 40
              ClientWidth = 863
              TabOrder = 1
              object Label22: TLabel
                Left = 2
                Height = 15
                Top = 12
                Width = 28
                Caption = 'Tytuł:'
              end
              object sbnFilm: TSpeedButton
                Left = 769
                Height = 22
                Top = 8
                Width = 23
                Anchors = [akTop, akRight]
                Images = DMG.ilCommon
                ImageIndex = 1
                OnClick = sbnFilmClick
              end
              object sbnFilmOdswiez: TSpeedButton
                Left = 793
                Height = 22
                Top = 8
                Width = 23
                Anchors = [akTop, akRight]
                Images = DMG.ilCommon
                ImageIndex = 27
              end
              object lbFilmIlosc: TLabel
                Left = 817
                Height = 15
                Top = 12
                Width = 36
                Anchors = [akTop, akRight]
                Caption = 'Ilość: 0'
              end
              object DBEdit16: TDBEdit
                Left = 40
                Height = 25
                Top = 8
                Width = 729
                DataField = 'TytulFilmu'
                DataSource = DMM.dsMainFilm
                Anchors = [akTop, akLeft, akRight]
                Font.CharSet = EASTEUROPE_CHARSET
                Font.Height = -13
                Font.Name = 'Segoe UI Semibold'
                Font.Pitch = fpVariable
                Font.Quality = fqDraft
                Font.Style = [fsBold]
                MaxLength = 0
                ParentFont = False
                TabOrder = 0
              end
            end
          end
        end
      end
      object tsPlikTagi: TTabSheet
        Caption = 'Tagi'
        ClientHeight = 272
        ClientWidth = 921
        object Panel6: TPanel
          Left = 0
          Height = 272
          Top = 0
          Width = 56
          Align = alLeft
          BevelOuter = bvNone
          ClientHeight = 272
          ClientWidth = 56
          TabOrder = 0
          object Image4: TImage
            Left = 8
            Height = 32
            Top = 16
            Width = 32
            Picture.Data = {
              1754506F727461626C654E6574776F726B477261706869632708000089504E47
              0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
              1974455874536F6674776172650041646F626520496D616765526561647971C9
              653C000007C94944415478DAA4577D5054D715FFBD8FDD7DBBE8C2824114F103
              25A5888E76E2B449A5630C68A1491D6D8076D2D8F48F36991AA713EB54A719A7
              4C1DD3292AD326139A649C4443E44B4950516B8C66A485364350101011D85014
              5C41A0B22C2CBB6FDFEBB9773F7469A0286FF6CCDE7DF7EEFDFDCEC73DE75C41
              D775088280193C724141C171FADEC4F69AF888A240FB8B7D6EB7FBF9DDBB77FF
              835E852D9231B347CACFCF2F8F8989D9B475EB8B703A47E0D725A8900E5936A2
              BCBC2CB6BFBFBF905E3C4132FEE006C20C2C20EFDFBFFF626CEC6369D9D93968
              BDDE06976B0C9224328DF9024DD310116146F2379288C431381C8E4F76EDDA95
              4D53BE9912609A1F8B8D8DDD9C9393831BED1D181B73F389A6E616DCBB778F8F
              ADD648AC484D2112163C9EB40CC5C5C5181A1AFA64E7CE9D2112E2239A3D04DE
              D169C7B87B1C46838188B4C3EBF140F7797BCE9E39B5D3E91CEE61EF3CE31E78
              BD3E0C0E0E62D9B2659B0F1E3C581974BFF8C8E0D9D9B07FD505376D2EC93217
              8F4785E6F3A2B6B666DFC50B173E2B3898FF738F57854CE444D11F7B51515130
              1A8DCFD2D0FCB0041ED03C1BDD376F41256D0D920459142191286685DCA93393
              DFA5F5B7B66F7BF5154551F81C0491BBBAB1B131E872E5614E4198E68EDE5EC8
              9A8AD98A011E0D5035B6BF88685B140CB2888D1B338B377E3FF39ED1A4C4CC9E
              6DE573ECF0B1786316181E1E0E1D15F961C0737373D0E770C044E0F11FD8F9E4
              ED5F266144D5411F2C5EB810BDB71DE49671997EC6984D46CC8F9BE78F76C17F
              2A962E5D8AFAFAFA69E781FBE064F681BE3E98742FE2DE6B47EDAF33B80AF3DE
              3C8F3BBF4AC68857077D9090101F3A554CE3E029F37ABD9C406A6A2AEAEAEAA6
              45200C7C6860008AE0C39CC2EBB8F4EA33F8CD994EBEE8D2B6F598FBF6450C6C
              4F85D3AB813E646D9D9B9C999E819B290E2A2A2A60B3D9101919C9898432E574
              C0878786FCE06F36E3DC2B4F23EF42376619452E6C7CEEE5758879AB19918A0C
              23C580C8028E052605A8D96CC1A7E7CF61808EE0E2C58921CB4C45202CE05C14
              30664947F49FAFE2C42FD6E1404D0F148348E7DE2F6C7CA0A6172769CE466B22
              8C06180C320C4623812BF8DBD9D3888F5F00936246C2C284FFAD155381BB5D23
              B0881AAC072EA3F4A5EFE1DD3A47005CA0E3E717138DCD648977BEBCE3DF8052
              B14192A11081D35555889D3B17098B9620E6CE65582833EA531078003C07DEB1
              515828422CF97538B2350D254DFD50640264C054E1E480180890E581330DADF0
              FCEE3BD044B280C9C4C1ADD628646666E15A5B3B1246DA214A464C2C98410232
              815706938C3AEE460481296FFC13875E588B93D70760A2DF461259BA2FECCC8B
              44E0E3FA1668AF3F05B7267290D3A7CE6250EDC0D3EBD3E1557DE8B2DBB1C0D9
              064192277581392E2EEED9DCDC5C9EB76532BBBCB706EFFC642D2ED8FFC3B536
              4AF7B50E6A2E92E665FF6A82FEFB34B874916B7FEAC459D4F795C196E481C564
              4663533352E30C9029450BB261521728A1F228FA7DC8CE516DCF08F958FC5ACD
              99AF8FD65E85FE87F570FB6468BA019515A7A15A5AD0802AFC20E5B714782622
              D08294689D4A9F4029599A3C08ED767B755969292F2A3E5AA8FF311D1F563770
              FF1A5960897EDFB331033F5CDD08FD8D747848731F24541CAF8218790DCE7965
              5813FF6D5823E6C039EAC2F8DD7F23C136460405B2D8E404DC797979DB3B89C4
              B1F27268C456D388C49F36E2D0E757C874146806890B1B1FBA7885CF69A4B9AA
              CA282FABC2A8E5532C78F2EFB8D2D98EB5492F52C513F145DD9758AEDCA66231
              CEF7146571624716223046D2BB77EFDED7B825A87BF1B06C45DAE907B2F0EEF9
              CB647A910B1BB37720821E9F80F2D293709A4FC0B6E628FA8787D04578CFADDC
              060A07B47576E189593789809B60056E394C720A54922192EE2089D2B2728C53
              13E127F11CDE3A53C7858D39B82AA0F4E80938679D84B2A6984EC97C3477D9B1
              EEF1CD6096EEBAD90B8BBB87B2E328ADF7774B5F831F96077C1349949494F226
              83FE0ABD601317F6172F25FC928F8EC365AB84F2D4476096D524372EB78DE087
              AB5EE3BB5E6DBE46DADF022505526F8C575F298436792A0E23D1DED1F1D9D1E2
              12F85435B094C03D5E1C3952842FEE14E1F39162505F0299307A871C90341356
              2F4D6346435BC757581ED947040CDC023A6FD103F03AA6AC0541123D54346EB1
              06F3C3A2A25097FBFEFB1F607EFC7CBCFDFA29BCFCADC3B87B6325DE3B0C7C7C
              0EF8E99379B48869DF8A24A51BC608DA8A6A03E0A2F73E5E7A27DE1D262BC78C
              C4706565E55F77ECD8F112EB608A88844A965892B8041B366CE08B3256FE8CCB
              E0701F91D331276A2E5472CF8DF6363C76AD1A9DB52D145C1410BA8A59692FF8
              5BA06912608FA7B5B5B57BDFBE7D1BB2B2B29E4F4C4CDC32871EABD50A9DC004
              F17E2B1F6D8D0DB45CC0E8988B526F077EF4974BDCBC5AD825847EEBDAB40970
              577475755D2D2C2CECA1F19155AB5625666464FCB8BABA3A9D52B769F5EAD558
              B16245607770622D2DCD58FECD14BFB9833E0E28CD38EB8210760FF97F2D19BB
              46B10ED7C9EA454343430F49138DF3B76CD99246164A8F8E8E5E979C9C8C9494
              142C5AB408F48E2A60669013C26E6A0C9032AD288A8F743513028495404F3F9B
              248632680175BADF0DB6596C2FB627FBFD60EB159C635D92CBE5AAD9B367CF66
              7AD5FFA85733F607234924491C89ED215A7C3560D56E66596186D77339600D25
              DCD0533E2C22DC81F4AFFE578001003ACB6B681EB37B070000000049454E44AE
              426082
            }
          end
        end
        object Panel7: TPanel
          Left = 56
          Height = 272
          Top = 0
          Width = 865
          Align = alClient
          BevelOuter = bvNone
          ClientHeight = 272
          ClientWidth = 865
          TabOrder = 1
          object ToolBar3: TToolBar
            Left = 0
            Height = 26
            Top = 0
            Width = 865
            Caption = 'ToolBar3'
            Images = DMG.ilCommon
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object ToolButton7: TToolButton
              Left = 1
              Top = 2
              Action = acTagDodaj
            end
            object ToolButton9: TToolButton
              Left = 24
              Top = 2
              Action = acTagUsun
            end
          end
          object DBMemo2: TDBMemo
            Left = 0
            Height = 59
            Top = 213
            Width = 865
            Align = alBottom
            DataField = 'OpisTag'
            DataSource = DMM.dsMainTag
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object Splitter5: TSplitter
            Cursor = crVSplit
            Left = 0
            Height = 5
            Top = 208
            Width = 865
            Align = alBottom
            ResizeAnchor = akBottom
          end
          object RxDBGrid1: TRxDBGrid
            Left = 0
            Height = 182
            Top = 26
            Width = 865
            ColumnDefValues.BlobText = '(blob)'
            TitleButtons = False
            AutoSort = True
            Columns = <            
              item
                Title.Alignment = taCenter
                Title.Orientation = toHorizontal
                Title.Caption = 'Nazwa'
                Width = 500
                FieldName = 'NazwaTag'
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
            DataSource = DMM.dsMainTag
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = pmTagi
            ReadOnly = True
            TabOrder = 3
          end
        end
      end
      object tsPlikOpis: TTabSheet
        Caption = 'Opis'
        ClientHeight = 272
        ClientWidth = 926
        object Panel4: TPanel
          Left = 0
          Height = 272
          Top = 0
          Width = 50
          Align = alLeft
          BevelOuter = bvNone
          ClientHeight = 272
          ClientWidth = 50
          TabOrder = 0
          object Image3: TImage
            Left = 8
            Height = 32
            Top = 16
            Width = 32
            Picture.Data = {
              1754506F727461626C654E6574776F726B477261706869636B06000089504E47
              0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
              1974455874536F6674776172650041646F626520496D616765526561647971C9
              653C0000032269545874584D4C3A636F6D2E61646F62652E786D700000000000
              3C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D70
              43656869487A7265537A4E54637A6B633964223F3E203C783A786D706D657461
              20786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D7074
              6B3D2241646F626520584D5020436F726520352E302D633036312036342E3134
              303934392C20323031302F31322F30372D31303A35373A303120202020202020
              20223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F77
              77772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D
              6E7323223E203C7264663A4465736372697074696F6E207264663A61626F7574
              3D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E63
              6F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D22687474703A2F
              2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E73
              3A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
              312E302F73547970652F5265736F75726365526566232220786D703A43726561
              746F72546F6F6C3D2241646F62652050686F746F73686F70204353352E312057
              696E646F77732220786D704D4D3A496E7374616E636549443D22786D702E6969
              643A424543354334343631303843313145333830384542373630373238463142
              45362220786D704D4D3A446F63756D656E7449443D22786D702E6469643A4245
              433543343437313038433131453338303845423736303732384631424536223E
              203C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E
              636549443D22786D702E6969643A424543354334343431303843313145333830
              3845423736303732384631424536222073745265663A646F63756D656E744944
              3D22786D702E6469643A42454335433434353130384331314533383038454237
              36303732384631424536222F3E203C2F7264663A4465736372697074696F6E3E
              203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F787061636B
              657420656E643D2272223F3E0A2AF5A9000002DF4944415478DAB497416FD330
              14C79FEDB49A2815126A3A0E1CE8B6223A89331F820B13E7B57C0D84382104FB
              3063251D67BAEEB20F800407A6808A549521C158DAA44D6AF3EC245B9BA47452
              DD273D256D12FBF9FF7EF6B389100208211099B17F70D0C4DF8FE5FFD2F1215C
              3ED560B22F6CF7C3D39D9D27F833083BB9B262D3B2C4AAED5DB3293B2DAA1127
              025C239480FDED3BB89E070FEE57E1D3E72F40A54264491DA4A27879B85D8B07
              BD867E41A3C7F957AFDF888FEDCE4FE762008DDD5D304D13269C03A3141863E1
              7519C73628A533D9985620F7F2C5F34DBC9AEF5BAD93CE7107028E410763A051
              E75AF2CFB95262DAE2967DF4DFE87FA43CC3A10BA7A75F414800353B4F04152B
              308E3C2703681FB56163730B08DE33648252A26B0ACC552066A0EFBA1EECBDDD
              03B35452D11242353A0331478119068E5081800BF0479E1ABD2E0588EC9DF3CC
              006206721C5F18BA2E9C9DFDC29950C2294895EB30391117324019857EBF0FDE
              681C82C3C8F44AA9DD520C84EB405D3120816198B75885655DB6058B1868B6AC
              681D1030F65C0C71B50AA41810D8B1371AC1F9F95F28160A1835D51B80B80603
              BD5E0F3CAC05C5E2CD90019DF5905C9701B3ACDEC5F1AB62A4CB4962219ACFC0
              6402634C85026775086433203B771C07F2F9BC4A814E13099ED20C60E5EB76BB
              8A814AA5A26D110AD31FCE283145629A01670075C580197E24A7A12607969E09
              69062CEBE4386220F003BD0A90F48C4AD70211AED67EE02BF808255A0348029D
              628051867B421B6459AE6E55111AA135009650740E030D2823033AF37FC90159
              540B2206FC2050C58812CD2958B40EF068C390330C90F78973839600C47F19C0
              5DB06DDB6A53B25DAB692D44596D6532D0A83F833BEBEBEA0303953030281D2E
              07977160518214D037D01F5987872B3F9AED8747B3721603062EC13F10C4BB32
              FF5C06A79101882B2221CED54675F6747C0BFD1EFAEDA9F4E836110DD69607A1
              640039F41B920958691156C00FA4F2FF04180085D6352CED74F1B20000000049
              454E44AE426082
            }
          end
        end
        object Panel5: TPanel
          Left = 50
          Height = 272
          Top = 0
          Width = 876
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel5'
          ClientHeight = 272
          ClientWidth = 876
          TabOrder = 1
          object PageControl1: TPageControl
            Left = 0
            Height = 272
            Top = 0
            Width = 876
            ActivePage = tsOpisOgolny
            Align = alClient
            TabIndex = 0
            TabOrder = 0
            object tsOpisOgolny: TTabSheet
              Caption = 'Ogólny'
              ClientHeight = 244
              ClientWidth = 868
              object DBMemo5: TDBMemo
                Left = 0
                Height = 196
                Top = 48
                Width = 868
                Align = alClient
                DataField = 'OpisIpf'
                DataSource = DMM.dsMainInfo
                ScrollBars = ssAutoBoth
                TabOrder = 0
              end
              object pnOpisInfo: TPanel
                Left = 0
                Height = 48
                Top = 0
                Width = 868
                Align = alTop
                BevelOuter = bvNone
                ClientHeight = 48
                ClientWidth = 868
                TabOrder = 1
                object btnDodajRekInfo: TBitBtn
                  Left = 392
                  Height = 30
                  Hint = 'Dodaj rekord info'
                  Top = 8
                  Width = 96
                  Caption = 'Dodaj opis'
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000064000000640000000000000000000000FFFFFF000000
                    000000000000000000000000000A000000250000003300000033000000330000
                    0033000000250000000A000000000000000000000000FFFFFF00FFFFFF000000
                    00000000000000000022004F2B5C008347C9008C4BFF008B4AFF008B4AFF008C
                    4BFF008347C9004F2B5C0000001E0000000000000000FFFFFF00FFFFFF000000
                    00000000001E008046BB009050FF01A169FF00AA76FF00AB77FF00AB77FF00AA
                    76FF01A169FF009050FF007C44AA0000001E00000000FFFFFF00FFFFFF000000
                    000A007C43AA009152FF02AC77FF00C38CFF00D699FF18DEA8FF18DEA8FF00D6
                    99FF00C38CFF01AB76FF009253FF007C44AA0000000AFFFFFF00FFFFFF000059
                    3151009051FF0FB483FF02D299FF00D69BFF00D193FFFFFFFFFFFFFFFFFF00D1
                    93FF00D69BFF00D198FF01AB76FF009050FF005A3151FFFFFF00FFFFFF000083
                    45C916AB78FF11C997FF00D49AFF00D297FF00CD8EFFFFFFFFFFFFFFFFFF00CD
                    8EFF00D297FF00D59BFF00C18CFF01A169FF008447C9FFFFFF00FFFFFF00008A
                    48FF38C49CFF00D198FF00CD92FF00CB8EFF00C787FFFFFFFFFFFFFFFFFF00C7
                    87FF00CB8EFF00CE93FF00D09AFF00AB76FF008C4BFFFFFFFF00FFFFFF000089
                    46FF51D2AFFF12D4A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF00CF97FF00AD78FF008B4AFFFFFFFF00FFFFFF000088
                    45FF66DDBEFF10D0A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFF00CD97FF00AD78FF008B4AFFFFFFFF00FFFFFF000088
                    46FF76E0C5FF00CA98FF00C590FF00C48EFF00C187FFFFFFFFFFFFFFFFFF00C1
                    87FF00C48EFF00C793FF00CB99FF00AB76FF008C4BFFFFFFFF00FFFFFF000088
                    46BE59C9A4FF49DEBCFF00C794FF00C794FF00C38EFFFFFFFFFFFFFFFFFF00C3
                    8EFF00C896FF00CB9AFF06C190FF00A168FF008B4BBFFFFFFF00FFFFFF00008C
                    4B330A9458FFADF8E9FF18D0A7FF00C494FF00C290FFFFFFFFFFFFFFFFFF00C3
                    91FF00C799FF05C89BFF18B787FF009050FF008E4D33FFFFFF00FFFFFF000000
                    0000008A48AA199C63FFBCFFF7FF5DE4C9FF00C397FF00BF90FF00C091FF00C4
                    98FF22CAA2FF31C297FF039355FF008D4C9500000000FFFFFF00FFFFFF000000
                    000000000000008A48950E9659FF74D5B6FF9FF3E0FF92EFDAFF79E5CAFF5DD6
                    B5FF2EB586FF039152FF008C4CAA0000000000000000FFFFFF00FFFFFF000000
                    00000000000000000000008C4A33008946BB008744FF008743FF008744FF0089
                    46FF008B49BB008D4C33000000000000000000000000FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00
                  }
                  TabOrder = 0
                  OnClick = btnDodajRekInfoClick
                end
              end
            end
            object tsOpisPlik: TTabSheet
              Caption = 'Pliku'
              ClientHeight = 244
              ClientWidth = 868
              object DBMemo1: TDBMemo
                Left = 0
                Height = 244
                Top = 0
                Width = 868
                Align = alClient
                DataField = 'OpisPl'
                DataSource = DMM.dsMainPlik
                ScrollBars = ssAutoBoth
                TabOrder = 0
              end
            end
          end
        end
      end
    end
    object Splitter2: TSplitter
      Cursor = crVSplit
      Left = 0
      Height = 5
      Top = 516
      Width = 929
      Align = alBottom
      ResizeAnchor = akBottom
    end
    object dbg: TRxDBGrid
      Left = 0
      Height = 483
      Top = 33
      Width = 929
      ColumnDefValues.BlobText = '(blob)'
      TitleButtons = False
      AutoSort = True
      Columns = <      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Status'
          Width = 50
          FieldName = 'ImgIdxRozszPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Nazwa'
          Width = 300
          FieldName = 'NazwaPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Rozszerz.'
          Width = 60
          FieldName = 'NazwaRozszPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Typ'
          Width = 100
          FieldName = 'NazwaTypPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Status'
          Width = 50
          FieldName = 'C_Status'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Alignment = taRightJustify
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Rozmiar'
          Width = 80
          FieldName = 'C_Rozmiar'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Ścieżka wzg. katalogu głównego'
          Width = 200
          FieldName = 'WzgScPl'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Ilość uruchomień'
          Width = 120
          FieldName = 'IloscUruchomienIpf'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'Md5Rip'
          Width = 60
          FieldName = 'Md5Rip'
          EditButtons = <>
          Filter.DropDownRows = 0
          Filter.EmptyValue = '(Pusty)'
          Filter.NotEmptyValue = '(Nie pusty)'
          Filter.AllValue = '(Wszystkie wartości)'
          Filter.EmptyFont.Style = [fsItalic]
          Filter.ItemIndex = -1
          Footers = <>
        end      
        item
          Title.Alignment = taCenter
          Title.Orientation = toHorizontal
          Title.Caption = 'ScPl'
          Width = 300
          FieldName = 'ScPl'
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
      DataSource = dsMain
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = pmPliki
      TabOrder = 2
      OnDrawColumnCell = dbgDrawColumnCell
    end
    object Panel2: TPanel
      Left = 0
      Height = 33
      Top = 0
      Width = 929
      Align = alTop
      BevelOuter = bvNone
      ClientHeight = 33
      ClientWidth = 929
      Color = clActiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 3
      object edWybKat: TEdit
        Left = 101
        Height = 25
        Top = 4
        Width = 823
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
        ParentFont = False
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Height = 56
    Top = 0
    Width = 1600
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
      Left = 368
      Top = 2
      Action = acPlikKoniec
    end
    object ToolButton8: TToolButton
      Left = 109
      Top = 2
      Action = acFoldery
    end
    object ToolButton15: TToolButton
      Left = 219
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
    object ToolButton20: TToolButton
      Left = 101
      Height = 52
      Top = 2
      Caption = 'ToolButton20'
      Style = tbsSeparator
    end
    object ToolButton21: TToolButton
      Left = 51
      Top = 2
      Action = acFolderCzysc
    end
    object ToolButton19: TToolButton
      Left = 227
      Top = 2
      Action = acFilmUruchom
      DropdownMenu = pmUruchom
      Style = tbsDropDown
    end
    object ToolButton22: TToolButton
      Left = 360
      Height = 52
      Top = 2
      Caption = 'ToolButton22'
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 308
      Top = 2
      Action = acWidokOdswiez
    end
    object ToolButton6: TToolButton
      Left = 300
      Height = 52
      Top = 2
      Caption = 'ToolButton6'
      Style = tbsSeparator
    end
    object ToolButton46: TToolButton
      Left = 168
      Top = 2
      Action = acPlikPrzenies
    end
    object ToolButton47: TToolButton
      Left = 160
      Height = 52
      Top = 2
      Caption = 'ToolButton47'
      Style = tbsSeparator
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 877
    Width = 1600
    Panels = <    
      item
        Text = 'Ilość: 0'
        Width = 50
      end>
    SimplePanel = False
  end
  object Splitter1: TSplitter
    Left = 261
    Height = 821
    Top = 56
    Width = 5
  end
  object pcLeft: TPageControl
    Left = 0
    Height = 821
    Top = 56
    Width = 261
    ActivePage = tsFiltry
    Align = alLeft
    TabIndex = 0
    TabOrder = 4
    object tsFiltry: TTabSheet
      Caption = 'Filtry'
      ClientHeight = 793
      ClientWidth = 253
      object pnlLeft: TPanel
        Left = 0
        Height = 793
        Top = 0
        Width = 253
        Align = alClient
        BevelOuter = bvNone
        ClientHeight = 793
        ClientWidth = 253
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Height = 85
          Top = 708
          Width = 253
          Align = alBottom
          BevelOuter = bvNone
          ClientHeight = 85
          ClientWidth = 253
          TabOrder = 0
          object sedFiltrPl: TSearchEdit
            Left = 8
            Height = 23
            Top = 31
            Width = 218
            EmptyText = 'Filtruj pliki'
            OnExecute = sedFiltrPlExecute
            Anchors = [akTop, akLeft, akRight]
            Font.Color = clGray
            ParentFont = False
            ParentShowHint = False
            TabOrder = 0
          end
          object sedFiltrF: TSearchEdit
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
          object cbxTypPl: TComboBoxEx
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
            Style = csExDropDownList
            TabOrder = 2
            OnChange = cbxTypPlChange
          end
          object sbnFiltrPlClear: TSpeedButton
            Left = 226
            Height = 23
            Top = 31
            Width = 23
            Anchors = [akTop, akRight]
            Images = DMG.ilCommon
            ImageIndex = 5
            OnClick = sbnFiltrPlClearClick
          end
          object sbnFiltrFiClear: TSpeedButton
            Left = 226
            Height = 23
            Top = 57
            Width = 23
            Anchors = [akTop, akRight]
            Images = DMG.ilCommon
            ImageIndex = 5
            OnClick = sbnFiltrFiClearClick
          end
        end
        object Splitter3: TSplitter
          Cursor = crVSplit
          Left = 0
          Height = 5
          Top = 703
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
          Height = 522
          Top = 181
          Width = 253
          Align = alClient
          BevelOuter = bvNone
          ClientHeight = 522
          ClientWidth = 253
          TabOrder = 3
          object pnlFiltryTytul: TPanel
            Left = 0
            Height = 18
            Top = 0
            Width = 253
            Align = alTop
            BevelInner = bvLowered
            Caption = 'pnlFiltryTytul'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object ToolBar2: TToolBar
            Left = 0
            Height = 26
            Top = 496
            Width = 253
            Align = alBottom
            Caption = 'ToolBar2'
            Images = ilMenuS
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object tbnOceny: TToolButton
              Left = 1
              Top = 2
              Action = acFiltrOceny
              AllowAllUp = True
              Grouped = True
              Style = tbsCheck
            end
            object tbnLata: TToolButton
              Left = 24
              Top = 2
              Action = acFiltrLata
              AllowAllUp = True
              Grouped = True
              Style = tbsCheck
            end
            object tbnAktorzy: TToolButton
              Left = 47
              Top = 2
              Action = acFiltrAktorzy
              AllowAllUp = True
              AutoSize = True
              Grouped = True
              Style = tbsCheck
            end
            object tbnTagi: TToolButton
              Left = 70
              Top = 2
              Action = acFiltrTagi
              AllowAllUp = True
              Grouped = True
              Style = tbsCheck
            end
            object tbnGatunki: TToolButton
              Left = 93
              Top = 2
              Action = acFiltrGatunki
              AllowAllUp = True
              Grouped = True
              Style = tbsCheck
            end
            object tbnSerie: TToolButton
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
            Height = 478
            Top = 18
            Width = 253
            PageIndex = 0
            Align = alClient
            TabOrder = 1
            object ListView: TPage
              object lvFiltry: TListView
                Left = 0
                Height = 450
                Top = 28
                Width = 253
                Align = alClient
                Checkboxes = True
                Columns = <                
                  item
                    Width = 10
                  end>
                HideSelection = False
                ReadOnly = True
                SmallImages = ilFiltry
                TabOrder = 0
                OnItemChecked = lvFiltryItemChecked
              end
              object pnlFiltrNagl: TPanel
                Left = 0
                Height = 28
                Top = 0
                Width = 253
                Align = alTop
                BevelInner = bvLowered
                ClientHeight = 28
                ClientWidth = 253
                TabOrder = 1
                object sbnFiltrOdsw: TSpeedButton
                  Left = 180
                  Height = 23
                  Top = 3
                  Width = 23
                  Action = acFiltrOdswiez
                  Anchors = [akTop, akRight]
                  Images = ilMenuS
                  ImageIndex = 17
                  ShowCaption = False
                  ShowHint = True
                  ParentShowHint = False
                end
                object edFiltrListView: TEdit
                  Left = 4
                  Height = 23
                  Top = 2
                  Width = 120
                  Anchors = [akTop, akLeft, akRight]
                  ParentShowHint = False
                  TabOrder = 0
                  TextHint = '(filtr)'
                  OnChange = edFiltrListViewChange
                end
                object SpeedButton3: TSpeedButton
                  Left = 124
                  Height = 23
                  Top = 2
                  Width = 23
                  Anchors = [akTop, akRight]
                  Images = DMG.ilCommon
                  ImageIndex = 5
                  OnClick = SpeedButton3Click
                end
                object SpeedButton9: TSpeedButton
                  Left = 156
                  Height = 23
                  Top = 3
                  Width = 23
                  Action = acFiltrWyczysc
                  Anchors = [akTop, akRight]
                  Images = DMG.ilCommon
                  ImageIndex = 29
                  ShowCaption = False
                  ShowHint = True
                  ParentShowHint = False
                end
                object lbFiltrIlosc: TLabel
                  Left = 206
                  Height = 15
                  Top = 8
                  Width = 41
                  Anchors = [akTop, akRight]
                  Caption = '345/543'
                end
              end
              object DbGrid: TPage
              end
            end
            object Lata: TPage
              object PairSplitter1: TPairSplitter
                Cursor = crDefault
                Left = 0
                Height = 458
                Top = 0
                Width = 253
                Align = alClient
                Position = 120
                object PairSplitterSide1: TPairSplitterSide
                  Cursor = crArrow
                  Left = 0
                  Height = 458
                  Top = 0
                  Width = 120
                  ClientWidth = 120
                  ClientHeight = 458
                  object lvFiltrDekady: TListView
                    Left = 0
                    Height = 458
                    Top = 0
                    Width = 120
                    Align = alClient
                    Checkboxes = True
                    Columns = <                    
                      item
                        Caption = 'Dekady'
                        Width = 90
                      end>
                    HideSelection = False
                    SmallImages = DMG.ilCommon
                    TabOrder = 0
                    ViewStyle = vsReport
                    OnItemChecked = lvFiltrDekadyItemChecked
                    OnSelectItem = lvFiltrDekadySelectItem
                  end
                end
                object PairSplitterSide2: TPairSplitterSide
                  Cursor = crArrow
                  Left = 125
                  Height = 458
                  Top = 0
                  Width = 128
                  ClientWidth = 128
                  ClientHeight = 458
                  object lvFiltrLata: TListView
                    Left = 0
                    Height = 458
                    Top = 0
                    Width = 128
                    Align = alClient
                    Checkboxes = True
                    Columns = <                    
                      item
                        Caption = 'Lata'
                        Width = 100
                      end>
                    SmallImages = DMG.ilCommon
                    TabOrder = 0
                    ViewStyle = vsReport
                    OnItemChecked = lvFiltrLataItemChecked
                  end
                end
              end
            end
            object Aktorzy: TPage
              object gbgFiltrAkt: TRxDBGrid
                Left = 0
                Height = 432
                Top = 26
                Width = 253
                ColumnDefValues.BlobText = '(blob)'
                TitleButtons = False
                AutoSort = True
                Columns = <                
                  item
                    Title.Alignment = taCenter
                    Title.Orientation = toHorizontal
                    Title.Caption = 'Nazwisko'
                    Width = 160
                    FieldName = 'NazwaAkt'
                    EditButtons = <>
                    Filter.DropDownRows = 0
                    Filter.EmptyValue = '(Pusty)'
                    Filter.NotEmptyValue = '(Nie pusty)'
                    Filter.AllValue = '(Wszystkie wartości)'
                    Filter.EmptyFont.Style = [fsItalic]
                    Filter.ItemIndex = -1
                    Footers = <>
                  end                
                  item
                    Title.Alignment = taCenter
                    Title.Orientation = toHorizontal
                    Title.Caption = 'Filmy'
                    Width = 50
                    FieldName = 'Ilosc'
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
                DataSource = DMM.dsMFAkt
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                ReadOnly = True
                TabOrder = 0
              end
              object pnlFiltrAkt: TPanel
                Left = 0
                Height = 26
                Top = 0
                Width = 253
                Align = alTop
                BevelInner = bvLowered
                ClientHeight = 26
                ClientWidth = 253
                TabOrder = 1
                object chbxFiltrAktorWszystko: TCheckBox
                  Left = 8
                  Height = 19
                  Top = 4
                  Width = 67
                  Caption = 'Wszystko'
                  Checked = True
                  State = cbChecked
                  TabOrder = 0
                end
                object sbnFiltrAktorOdsw: TSpeedButton
                  Left = 224
                  Height = 22
                  Hint = 'Odśwież widok'
                  Top = 1
                  Width = 23
                  Flat = True
                  Images = DMG.ilCommon
                  ImageIndex = 27
                  ShowHint = True
                  ParentShowHint = False
                  OnClick = sbnFiltrAktorOdswClick
                end
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
          OnKeyDown = lvKatKeyDown
        end
      end
    end
    object tsHistoria: TTabSheet
      Caption = 'Historia'
      ClientHeight = 793
      ClientWidth = 253
      object lvHist: TListView
        Left = 0
        Height = 715
        Top = 28
        Width = 253
        Align = alClient
        Columns = <        
          item
            Caption = 'Data'
            Width = 170
          end        
          item
            Caption = 'Nazwa'
            Width = 300
          end>
        HideSelection = False
        PopupMenu = pmHistoria
        ReadOnly = True
        RowSelect = True
        SmallImages = DMG.ilCommon
        TabOrder = 0
        ViewStyle = vsReport
        OnSelectItem = lvHistSelectItem
      end
      object pnlFiltrHistoria: TPanel
        Left = 0
        Height = 28
        Top = 0
        Width = 253
        Align = alTop
        ClientHeight = 28
        ClientWidth = 253
        TabOrder = 1
        object cbxHistOkres: TComboBox
          Left = 2
          Height = 23
          Top = 2
          Width = 86
          ItemHeight = 15
          ItemIndex = 0
          Items.Strings = (
            'Dziś'
            'Wczoraj'
            'Tydzień'
            'Miesiąc'
            'Wszystko'
          )
          Style = csDropDownList
          TabOrder = 0
          Text = 'Dziś'
          OnChange = cbxHistOkresChange
        end
        object edFiltrHistNazwa: TEdit
          Left = 96
          Height = 23
          Top = 2
          Width = 80
          TabOrder = 1
          TextHint = '(nazwa)'
          OnChange = edFiltrHistNazwaChange
        end
        object SpeedButton12: TSpeedButton
          Left = 176
          Height = 23
          Top = 2
          Width = 23
          Action = acHistCzyscNazw
          Images = DMG.ilCommon
          ImageIndex = 5
          ShowCaption = False
        end
        object SpeedButton13: TSpeedButton
          Left = 202
          Height = 23
          Top = 2
          Width = 23
          Action = acHistOdswiez
          Images = DMG.ilCommon
          ImageIndex = 27
          ShowCaption = False
        end
        object SpeedButton14: TSpeedButton
          Left = 226
          Height = 23
          Top = 2
          Width = 23
          Action = acHistIdz
          Images = DMG.ilCommon
          ImageIndex = 47
          ShowCaption = False
        end
      end
      object Panel11: TPanel
        Left = 0
        Height = 50
        Top = 743
        Width = 253
        Align = alBottom
        BevelOuter = bvNone
        ClientHeight = 50
        ClientWidth = 253
        TabOrder = 2
        object lbHistPlik: TLabel
          Left = 2
          Height = 15
          Top = 3
          Width = 50
          Caption = 'lbHistPlik'
        end
        object lbHistSciezka: TLabel
          Left = 2
          Height = 15
          Top = 16
          Width = 69
          Caption = 'lbHistSciezka'
        end
        object lbHistIlosc: TLabel
          Left = 2
          Height = 15
          Top = 32
          Width = 55
          Caption = 'lbHistIlosc'
        end
      end
    end
  end
  object Tagi: TPage
  end
  object pnlInfo: TPanel
    Left = 1200
    Height = 821
    Top = 56
    Width = 400
    Align = alRight
    ClientHeight = 821
    ClientWidth = 400
    TabOrder = 6
    object pnlInfoNagl: TPanel
      Left = 1
      Height = 15
      Top = 1
      Width = 398
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Informacje'
      ClientHeight = 15
      ClientWidth = 398
      TabOrder = 0
      object SpeedButton15: TSpeedButton
        Left = 368
        Height = 22
        Top = 0
        Width = 23
      end
    end
  end
  object Splitter7: TSplitter
    Left = 1195
    Height = 821
    Top = 56
    Width = 5
    Align = alRight
    ResizeAnchor = akRight
  end
  object ActionList1: TActionList
    Images = ilMenuS
    Left = 288
    Top = 128
    object acPlikKoniec: TAction
      Category = 'Plik'
      Caption = 'Koniec'
      ImageIndex = 0
      ShortCut = 16465
      OnExecute = acPlikKoniecExecute
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
      ShortCut = 16471
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
      OnExecute = acFiltrAktorzyExecute
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
      OnExecute = acFiltrTagiExecute
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
      ShortCut = 49217
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
      ImageIndex = 19
      OnExecute = aDaneJezykiExecute
    end
    object acPlikWlasciwosci: TAction
      Category = 'Plik'
      Caption = 'Właściwości'
      Hint = 'Właściwości zbioru'
      OnExecute = acPlikWlasciwosciExecute
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
    end
    object acFolderUzupelnij: TAction
      Category = 'Katalogi'
      Caption = 'Uzupełnij'
      Hint = 'Dodaje nowe pliki z wybranego katalogu do bazy danych'
      ImageIndex = 12
      ShortCut = 16469
    end
    object acFilmUruchom: TAction
      Category = 'Filmy'
      Caption = 'Odtwarzaj'
      ImageIndex = 15
      OnExecute = acFilmUruchomExecute
    end
    object acFilmyEdycja: TAction
      Category = 'Filmy'
      Caption = 'Edycja'
      Hint = 'Edytuj film'
      ImageIndex = 16
    end
    object acFilmDodaj: TAction
      Category = 'Zakladki'
      Caption = 'acFilmDodaj'
      OnExecute = acFilmDodajExecute
    end
    object acFilmLista: TAction
      Category = 'Zakladki'
      Caption = 'acFilmLista'
      OnExecute = acFilmListaExecute
    end
    object acDaneKraje: TAction
      Category = 'Dane'
      Caption = 'Kraje'
      ImageIndex = 18
      OnExecute = acDaneKrajeExecute
    end
    object acWidokOdswiez: TAction
      Category = 'Widok'
      Caption = 'Odswież'
      Hint = 'Odśwież widok'
      ImageIndex = 17
      OnExecute = acWidokOdswiezExecute
    end
    object acDaneRodzaje: TAction
      Category = 'Dane'
      Caption = 'Rodzaje zawartości'
      Hint = 'Rodzaje zawartości pliku'
      OnExecute = acDaneRodzajeExecute
    end
    object acFilmRok: TAction
      Category = 'Zakladki'
      OnExecute = acFilmRokExecute
    end
    object acFiltrOdswiez: TAction
      Category = 'Filtry'
      Hint = 'Odśwież'
      ImageIndex = 17
      OnExecute = acFiltrOdswiezExecute
    end
    object acPlikPrzenies: TAction
      Category = 'Plik'
      Caption = 'Przenieś'
      Hint = 'Przenieś plik do innego folderu'
      ImageIndex = 20
      OnExecute = acPlikPrzeniesExecute
    end
    object acPlikHistoria: TAction
      Category = 'Plik'
      Caption = 'Historia'
      Hint = 'Historia przeglądania'
      ImageIndex = 21
      OnExecute = acPlikHistoriaExecute
    end
    object acPlikZmienNazwe: TAction
      Category = 'Plik'
      Caption = 'Zmień'
      Hint = 'Zmień nazwę pliku'
      ImageIndex = 22
      OnExecute = acPlikZmienNazweExecute
    end
    object acFilmUruchBezHist: TAction
      Category = 'Filmy'
      Caption = 'Odtwarzaj bez zapisu w historii'
      Hint = 'Odtwarzaj bez zapisywania w historii'
      ImageIndex = 23
      OnExecute = acFilmUruchBezHistExecute
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
    object MenuItem20: TMenuItem
      Caption = 'Filmy'
      object MenuItem21: TMenuItem
        Action = acFilmUruchom
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
      object MenuItem22: TMenuItem
        Action = acDaneKraje
        Caption = 'Kraje...'
      end
      object MenuItem15: TMenuItem
        Action = aDaneJezyki
        Caption = 'Języki...'
      end
      object MenuItem29: TMenuItem
        Action = acDaneRodzaje
        Caption = 'Rodzaje zawartości...'
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
      4C7A180000001000000010000000E03000000000000078DAED7C075456C7D6F6
      A49B98989B66929B9B98C41B9368C48A62AFD8BB82A02036404554A42A88D8A5
      888A48932622482FA252448A34912ABD83D291AA74F0F9F79C17087693EFAEBF
      ACFF9EF53E6BCE999967CA9ED9337BCECC790130FC0FC1D815822BC199E0F8DB
      DBEF385BFE34D4AF7CE6ECD08EA9D3433ABE1FE256F9EE7B67ED193B3E92B123
      144797A0F302FE45E571136E365F747E80D2F24E2424552030B00C01373AA0AE
      5D84A1C3DC3A193BA845FC779FE673EE25E5156BEEA0AAA613FC2A2969C445C7
      18D8D8DC86834315BCBC81A3C7DB2136E63A1174B49EE65F1A2E3EF1666B65B5
      889B92520B5FDF5244473F20DC87864636D4D51F60AF5A03366EEEC0D7DF3A74
      31A636B697FFD65BCE1697DDCA04AEA7671EECEC12B17FFF1D444494222CAC14
      B2B2B7E1E4948CE5CB13B064712BC68ECBC1DBEF687AF4F2BFF9DEAFE2CCA52E
      04DEAA838F778E50F60D0A7770F36629A10CD3A645A2B0B01ED7020AF0C3900C
      0C1F5380419F1E6BE8E58F9918D23155B603A32432515D590773F302A8EF2D45
      54542562632B31764C1E9494B3D1D8F818A3478560D097D1F8FC4BB3AE5EFE68
      F1A08E714B1F417C66164AEFD7424E2117EB3694C3EE42096C09FFFE351762A3
      525051D98815CB23F0DE87B7F0E967A7FBF83F0E75AB9A26FD10BF8DCDC5E347
      0D58B43813ECDD380CFC361A03BF8C20015DC7B4A971687EDC8C4912E1F8E0A3
      507C34F060532F7FC00073878532D9F87C4821826F54E31EC9FFBBEF12A96142
      0937F0E51711888BADC6DD843A7CF0E1750CFAE22ADE7947F1EA9FED6724F6EB
      08F7CEA9CBCAF0F36F39C8CE6CC2FD07F5386F560AB3D30F5058D088D2072D10
      1B19830F3F09C3C04F4E7633263BF94FBE29E1B0FAE8F1FE1839B510437EC985
      A1611562A2EB29DF069C35ABC4CF431330E0A3087CF2A9351164A813CBBFF527
      FF34E128F5C9FD3A437EB67DF28B58243EFB26059F7E958E8F3FBB8777DE8FC6
      8081BEF8E8E3939C7B82B1B51F31B6813DCD3FD6A3177BC77FF081A6DBA04F4F
      347CFCA969D7871F1B770DF850B7E99D7715FD18939E4A7C8A23CBFAF3FF2798
      6375AF7E9A790A269B250BE0F7B32C534BC97FC45CAB7B6309E3FA60CD913651
      D2268DCDEB018F9F4F3D21BB5584BC0E40DC341193CE26F5A5D91F3CFE6CAB7B
      D5BDFC29E49741BC8DA9EDD894D286809A6EE4B400B96D3D68A734DB456E2EA5
      5DF404421A92D669E2BDFC788ABF3DA31D3B093BD2DBB19D83DF67764025BB13
      2A395D50C9EDC67602FD30F55C0A26E8BA8FE2FCA9C40F7F04ECC9E9847A6E27
      347A91D709ADC26E2C77CBC704E378881BDFC5380E93044C3C9324948164E43D
      8DF881C4D7A682E9163F815E090770E03EB0CAA300D24195423D325B44C8E0E0
      7222994DA734A69F4B863FF9ADF42C84B8517C1F2610D687566117958BD7637B
      46A7806D195D385AF8041E256D986C141137F37C0ACE14B461AE63360ABA4432
      E2F22A2457831A468BEAA19347652A000E1689E0F510381C5107714DD73DB32D
      52A116558D9D37CB11421AA94975D62EEC820E41AFA81B065417C352606CA03D
      D8F985844560968B31C4FE2CEFB89FCFB14C85B467014C739BE1544BE9963DC1
      D11E1C2F074E55517F0826AE9B22D83D6B683C4C25D706CC7B279883B419F529
      CC203978D0D07B81E468D6089CEBC17982FD63EAA4169467FC39B05853618C65
      71A7C1122CC1ECE4206995D248ED80995C96D416D3CD9230A30733CD5231DF2C
      17ECC2326896C5A3FFA55D9600662BC7EB30EA77D9FD0AC3A434E58649693C8D
      D51AEBFEBD60DB4A66BF0A2CDC082CE4B0287F7259B80998FD06F03E44D740C2
      472FC100766AB13B73D906167C9CFA4994E032971D6026529EF3FAE9D2B3986F
      93C1965A17F1F47F6026AB3D797ECC4E5EC8977305FF37BF78DC71FD2070FFAB
      FFFF8FE83F611B419970A4A80BEE252D6FA6FFF99DD02EE8C4BEFB5DD85FDE8D
      7D154FE04A3A7530A602E3B49D5FA9FFBA94CFC107DD3842E3C5CAE385182111
      8311933962317D77F2EBF59FF232AC03A40C8B3173550E761D03F61A02BB8E03
      92B2F9183F2FE195FA6F4ECF5654A7E194EF7ACD6EACD57C8235EA22577E1F30
      6EE1DD57EBBF7932665D4886D8F43B700B7C4AFDE1160C8C5910FF6AFD5FB377
      DD4F8BB7AC1C37FB2E666DEDC4D48D1D982CDF26B8B3143B317E71C21BE9FFA8
      6901EE122BB32021DF8E89F21D822BB12A0BA3E706BC52FFE75D48630B9C84F4
      7FE0712596264062E95D70778C64C07FF5FFB5FA2FD2FD9D34FF71EC20E4BDA1
      FEAB5344759A2B9778976282598600F1B3691877261513CFA6BC54FF7549F739
      F6D19CB9DD3309274F9CC239C36330333C0E1BCBF3B8957D1FE9242F5E8E17EA
      3F8D31E34FD15AC12408E78E1D40DDAD03408105507C010FA30D6172E8008CE2
      F2E156DA45FA1FF9BCFE931EE552FF3E656484DA503DA0390F68A5C2D4D1FC57
      E68C9AB83364DB1A4137A61E63B55DD49ED37FAAB326CDDBBA6A6A94AFA5885B
      1B0754F803E597819A4B30D0D2C0A24B452FD67FE21E26574B5595166176403D
      E55B41A67A152D77EA298D47DED053DF83496712A2E7D2FCF69CFE5319CCA8DD
      F7E91D4075040D14152E22D4531AED21A8CA74C221EDBD18A5E9AC3CCF36833D
      AFFFD4C7CEA763A97120F6ED514115D51775AE24073F54665C82B6DA4E389E3E
      86B1FA89903874973DAFFF9A72BF4869AEFF594A4776E96A596D95ED3BDA9595
      55A0ACBC03AA3BB6E390860AA6C4006B49AC930CEEBC4EFF3F238CEDAF776376
      B9E27712C35C12E9E423A2F1E35948DAA4B3D976F94C4D5B8F69EE51651A7BF7
      30CDBDBB99AEBA0ACF6BDCE45D8E98B2CB1E3FCD5827CFFEDED55B9E8FFE3BFF
      FF5F32FF7B1541DCE42E2141C004C2FA5B3534FF7709F5D84663993241897098
      EC7237B2FF27F5E97F3BE63AE5814C7CE4F4209FA04E65D0E2FA4C017C2CDB5B
      4CF5A4B239D4033AB76B314AEBCA6E41FF636BB123B41CE76DACA1AFB5073AA4
      379A3B14A171EC24741F007A844356F638AAB51B47B4D57074DF5EA81F31E5FA
      FFD91CAB3448FB9742CFE82C82AE7AE34957072ACB1EA0E24109FCDC2E63E7A1
      E33870CE1281BE5EC2BCFBB8BE0E5514EEEFE58683FB3452E6DAA4639A4D0E4E
      EC5713C20FE9EB42798B020EECD381BEAE0E0EEED7C641EEEAED23771FB62B6E
      818CD42AE4E7640B71A95FD64FBF9087831A3B515B5529C45D6A1800956D5B85
      F41E5657A1F47E09A222C2A0BF5F07CB8CAF61CD8A65F0F7F5C6A183FAC2FC3F
      6489CA9A7DBB9484721F3DA40FD5ED4A905AB512470E1960BF8E3674B434A1B6
      4B15F2B232D849E9AE59B5021E6E2E50DBAD8AB9B6595C9F06EC56DE98E7E3E1
      8EAC8C74448687C1D4C40833A64DC568B19175E2E3C7254AAF594DF91D80AFB7
      07DCAFB8C0ECCC29AC9795E99E6397C73495D6F334862BC8AF2B50D9BE0D9A34
      3E6E5756C2985162355F0F1E3C97C2864D9690C89798208E1DDB94B179A30256
      2C5BFAF0D761BF2C7D46AF873F33C78B11DE7B45D807A1AA2BED43B62F490E56
      5EF438586911829517E3E6B625B8B97D2942772C7D1CAAB22C397CD74AFB970D
      24C4454B5E0A3AF2699C6FA48ED69880FB916EA848BD8DFB81CEA8BE138A18D5
      4578193F586921758A4A20CE11A7D68E01D2CE21F1AC320ECEF901E90757A1DA
      DD08D9BB66BC941FC4F90DF7612C3D1E7BA67E0BA45B20DD5C095F4DDE83C12B
      69DDB9C8036C5E20D8C26B604BFCC1961196FB3F662B0392D99AEBF6418AC4AF
      A6193391E688647B20C50CD9E73683CD0F873DADB7CFD038E243638F3ECD4BCA
      B7BAE098453A14D008DBD847A03420E45F960EDC7106E26D887F16B9E73681CD
      0DC675D26BF1646048F213BC97DC02768238C75AC1F4DB20EB49EBC8155711A4
      BCA8AD2B3D5C947F8A0390741A3967697D372F045E942713DF0736410B9FA4B5
      811935837D47EBC61F34B0E20A85ADBC0A67F9B96E155EE7D110E100BB6DB370
      68E110C88AFF44F50D8523CDC39393805F93BB312885F237A4FC4F927BA81573
      2F7611DF1FE37FF8FAB7D8FD1B60283F1D169B26C365F774182E26FE82509853
      B34C8E7F825FEE76E09364CADBB089CA4F691C7C84053D7C6A82B72F2BCC772B
      7326E33E9F743CDB0AF9564A54373F68DFA3B13A95F227775016C53FDD0E664C
      38DC86F9B4B0277E5BAF6D7A5D7969558DF751819F69B10DCB94CC30E5520DDE
      996340ED658CB715CCC1A699818D3B81F786EBE2D7C3C554477BB77E5D412C40
      7969C1CD1DCB11BD73099CB7AC4E620AB15813D788F7D65B106F37C94D156CF2
      19FC74BC12EFCADF02FB7AEC6FAFD09F5FD95CA7CB432D8B3091C6CE4134A032
      B32E0C347F8281EA39BD79BFFD9A79F67BB6C4A7EA9F2EA5F89C264966D68E77
      F691DDB4D2A7EA2FD8EE626C996F2D5B7655686FB6CAAFB64777FFCA25F68CDE
      F75D6161617D080F0F679151D1D8BA6D0F3AC3F7A32144178D84CE88FD905EB7
      1111B7A3708BE285DEBAD587450BE6F761F1C2F96CC9A2C558B8740DE027850E
      CFB502F8BDACFC561AB73662A3BC1CDB28B7BE0F77E2E204C4F5E04E7C0276EC
      D6022E8F022E8E25D098E03C0AEB1514111B178FE8E868C611D303E9E50B99F4
      B2856CF5D2056CF9E2056CD992C558B1520A0B57C963FEAACD5828AD88D5EB95
      A0B0712BB66EDA04450579B67D933C53D922CF7612E6E8B8B2397A6E6CA69E07
      4B8E8F6677E3E3A1B24B03883D80AEDBFAE88A24FB3BE600E4366C0695138971
      B7D98CFDEE6CF6FE2B6CB6F665365FDB89CDDFEFCCE6E9B9B2695ACE6CE59285
      58BC4C0AF0974697970C61AD70BF6EC3566CDBBC0133F6B933495D571147FB22
      F12FB205FB2FB185FA57DC67EF73416AE25DECDCC3EB2F46751F2D82F348C86F
      544472423CE6EA7962C1015777CE99DFCBD7BBECBA58DF1D626B7520B36A19D6
      AC91C6E2D51BB060F5662C5EAB843572CAD8B24511BB69EE1293D6C1227D3770
      0EE74A6A3A7ACED172C2E0E1D3F1F10FA3704047030B172EA1B18CD60EB1FA22
      D0FD9C9973A0A7AD4E71C428EE34700EE7CE54B383DDCD34D88566C0FE56366C
      427360E6751B4E5B7E80DDE6A102F8FD39EF2821CC8EE2F0B89CC3B9D3765A22
      36A70A0B0EFB60F1513F823FE61F0980F5AD2258849608E0F7DC8F87F1383C2E
      E770EED41DE7E116578C95C6215873EA26569F0AC532935B5864780B0B7AC0EF
      9793DF1A0AE371785CCEE1DC69DBCD7126B800EB2C62216715877596F148BA1D
      848CD810A4F780DF4787060961F23C0EC5E51CCE9DBECD0CBAFE255072CE82B2
      7336B9395871F23A161EF42078F6C043F0E361A23859028773276F3C113E5DE9
      0CA6299DC6740167305DF9AC10F614B81F0FA338D37AE2712EA9F0D067E6F5BF
      82A1A2FD877EF3F935675CB9781E01574E8DECEF1F7ADD09FE2EA79F8ADCBB87
      B052FD1EDE5FF0046C3670F3C6659C3BA98E9FD694E2DDF9C0070B68DC9B0384
      DE7086A5F12E3049EEF7049CD3B77F26D108BBAB9DB0F001C2839D61A0B60CE7
      9C3271C1BF1BB6FE1DB0F40522429C71486D09ACFC00BB802E704EDFFEC98F15
      58B5BB1E6C7019D8477E601FD338F96D15D8370F08F709E56003C97F20CD5783
      7BE212A7977FC9D6909C6E34D516E27143095A9A1EA0B589DC862242215A1A8B
      D1DC785F086BAA2B14E28A3822BEF96963729EA0BCFC3EAAAACAD1D0F01009F1
      31A8AFAB41437D8DF05C57578D6A0AAB287F20C41571447C53E39378F2A41B95
      15E5A87B58035959590C1F3E029DED6DD8B0419EB0013232B2888D8946556585
      1097737AF9C6278F93DF13D4D454A39EECEBA2A2426CA2B1965F93A74C11DCEE
      EE4E343535A2B6F6A1F06C429C5EFEC9E3A2F7DAF57575686C6840674707E4E5
      37087E9B376FC65A29296CA4F43897EFE1B534B7E0C4B1C37DFC63870F0A7179
      FA8F1E35A1ABAB137272724FBD6F93919141526212D5BF4CB0BDAFB838F7F10F
      935DCCAFE696163453DA5D5D5D42FCDC9C1CECD8B1036A6A6A98272909075B1B
      38DA5D4044F82D04DDB8D6C7D7A7B501BF3AA8DCEDEDEDE8ECECECCB37373717
      F7EEDD43F8AD50924D3D6A1F3E4466669A50865EFE817D5A7DF1BBBBBB055972
      F4BF1CEC6C5041ED939C9428B481879B6B1F5F6F9F365E75C544DD4644D82DA4
      A7A5A2A8B050F073BD7CA98F4F6BFBF0FD34B66A91DDAFA5BEBB1F44CFE6674F
      C3C5D909CE4E8EB874D19EE0C0D1F4E7FEE1DF1A0346F7E3BFF09AEC58AD4C38
      FBB2F0D7F1B7C736772B463DC6DFE18FB3AB3AE4F7A0131CFCFEAFF0251CAB3F
      9AE75203325B05F0FBBFC21F6F5BE16491D28CE395DD02F8FD78BBAA8B2FE34F
      71AA719AE8509D42E5C4E80B5598EA5805EFCA4E6C2F1481DF73BF311446E940
      82E2724E2F7F9263D563EBDC362450B78D6B7B82BC8E273858D205E5DC0E01FC
      9EFBF1B08836C020A3159389D3AFFCA3C52F9456AF8E7E8CCD391DD898D58ECD
      99ED50CC1281DF0B7E94D61A8A33E14259F50BDA5F6C8C494AC01A6AAFE3C59D
      50C868C3A61EF0FBE3259D5819F1083C4EAF0DF9ACFCDE7EEF839F64C29A604E
      6D267FAF150A3DE0F767EF53DE818DE0715E26FF89F6D5B207A86E2A8475B45E
      91EFE1F27B95CC36EC4B6CE6B2937D29DFA6C8E658513BA469ADB592EA31C3E5
      A1007ECFFD0E928CC75B14DABC8CBF3AE061A5625A2B24AFD663A25551F6DBEF
      7F28CEC1EFB9DFEECC562CF2A8A97C197F896F1D265FAAE91EB6CD7A073DFEDE
      AFABFCCEFDA6BB3CEC9EE35E8B57F4BF5EDD1CF482EE3AA85FF853FCFFF9F99D
      A7AFEF16EBCEFF75F3398C503A8F5F654F747C2FA9BDE0657DFF59FED7F375C6
      4DD0F38024D9590B4D823153DD11A397E9E2BB395AE3DE84FFFD32FD8E9927AE
      61E5B908AC330BC3520D0748ACD2C7BF24353BDE84FFAF15873042D91C6368FD
      3852E608961B38E38F857BF0E35C0DBC8E3F64E17E836F2535B1EAF4751C8D7A
      80D3A9F5381C5D8A797BCFE19B59EA18BAE480C1ABF8DFCED3C10FB3F6629375
      18CEDC6BC2815B85D00C48C73CB5F3F88E872DD4C5ABF89FCD54A77A6A63C4EA
      233816530675FF34B217A33172B5017E24EE17B3345FC9FF609C62FCFBE39472
      FE316517F6F9C442C1DC1FD3540E6390C4767C38617B0E85DF7D155F62ADA2A4
      A295BFD35EEF649C4D6FC2BE6B699039E5899D9722A0681DC00F770D7B195FC5
      3932F44864316C69AD6C5B025C28ECC6D198721C8D2E834329F915033C7CA7CB
      6DF367F9CA8EB7BC4EC496E3E49D2A1CE79CA8529C20F708B98723EFE318A5C1
      FD79388FA7E21CE5D59FAFEE9D507E30AC08EA7E6930CB780CEB822E721F41DD
      37B5DFF36368903C0DC28BB1D9E646797FBE866F129C2A81B546977138E2010C
      C24A7028E23E36DA860AAE417889E0BFE698135CEB80AD7621E8CF973FEB15AE
      684F6B8F23B6D8EE122BB4D93682A25DB0E0F267EEBF86C2951C42B1C1CC2BFC
      19F90DFD3B76FB7F02972F5F7E0ECECECEECE2C58B2C343414C1C1C14FE1E6CD
      9B207FD68B17F19D9C9C989D9D1D9A1A1B057B92A3816C2F8E204A23242484A7
      F342BEC0B5B717B889B416F7F2F482ADAD2D3C3D3CC83E7D88C0C040E4914DD7
      539617701DF0B8B90DA96959484BCF849D9D03AE5FBF21A451575B8B1BC4CFCF
      CB136C4B5E8E1771B3F2CB11A0C9905B548580EBC1B0A5BAF8FBFB936D5E2BE4
      1F11112ED891BC0CFDB9B5754D287C5087ABDA0CD5B70D11A0C3505CCAEDF112
      1416E4A3BE5654FEF0F07054575709FC4B972E91ACECC9366D4469D523F813B7
      2C4813794E0B5015790457D5194ACBAA515E5A064B4B4B4AAB806CC9503490AD
      1E1C14044747475A5BD4A2AAA61E7E7B3977370ABD6551E4BD16FE5A0C35F51D
      68AC6D84BDB52D9A9B9A909A180F3B9F44B43CAAA7FC45FCC764B3D7D535A0AE
      A91BBE1A0C0F6E28C28FEADFD80CB43F6EC7155B27BC7B7E0DDAA98C51B7AEE3
      CBCD8578D2D68890E040DE79C7D9D8D8A0B5B50D8F1E13C83EF1D9CDD04A7617
      DA014F9B8BF8C85B177201C6A8292E825F582A3EDD4036707793C0E7EF9D781A
      565656E8ECEA466B7B17DA3B852512BCAD1CF17D11ADD98C259159518094E808
      98DEACC6E70A7C77A355E0F7EB8BB0A4347A2F574B3BB0E413602967F0EEE965
      B4386941F8CD10480502FF90CFE3AB05925F1FFF6D6A8BFAA4A4245CA0BAD8DB
      D8C2E89E1FDE3EB30C6F9D5A82B8D24C14656642CF220A03D7E743D5B652C823
      28F0465FFE7C1FC1D8D858CFCFD737368CCA92959286AE86E6BEF204DFB881AE
      F6E6A7D60541414F959FA7F139E1172E0FA39386FBBDBDBCE282A9BFDC89BB23
      B41507CF33901044FED7AE5D2B79C53BBFBEB45E813FFE03E707A3FBEF1FF6DB
      430C7D9317937DFB87D46F725A45E8DD43E469F1FDBD29E79E450AA69F17F6DF
      7C85FDC336D1FEE196D4366C265CABE916F6DCF2A91F1574BF00D4B7F82A7CA6
      45AA907E522BDF3FEC806A0F5438B2BB30FF4A01C618DDC5A86730DAF82EC44F
      2762E6F954610F2F8EF2DA4B896A52E27CCF50ABF00996BBE793BD5B29D427A3
      E54FA45317482737A753B48FC9D39848751DCFD324F0BDC689FCEC4F48357666
      76625B7A0794EE911DDF0F5BEE7520A801E07B973CFF1288F6467348DFC8FC47
      3E61576E37F6E474614F7627763F839D846BF5943FF167903CB52801D5029201
      611B6107A9A72A61F74BB087E2F8F4E31F2075B8905182BC3057E484BB239790
      17E1817C8EC83F9117E18EFCB02BB04E2FC195A65E7E8A705E203BF812526FBA
      23CACB02A1174FE2A6C33104DB1EC10DEB43B86675107E16FA08B9740AA9A1EE
      C808BA04A766CEE7FBA72938492BA1946B8E08763E05A7AC4218D489CE2008A8
      13E11095F75256316E381A2389E23A509B4D3B2792FF596A8B447F5BF85B1C80
      09F99B517AE71E119A7ADC4722BF33E47A9BED17E23A521F9A619E8A5916A98D
      13CE67E1AEAF15FCCFEFC704F36CA15C33FA9D43E2E07E3CCCEBACB610778279
      96C0E5EB30AE8BB19EE7E063A685D7CDFD9EA6EA88F534EF8D37FA056B8737DD
      FB17AEAB5E17999F87C3385F77FB9BDE6EB6F0BEF202903F0FBFEAE938EE9A97
      13BB2EE09200E25A5FF77546667214CA0B33504FE3745D797E1FF87345510672
      53621079D51D91DEAE56D1BE6E2CC6D75D808F9B1D4AB29350929544636C028A
      32EE0A28A6FB92CC44DC27FFB2EC6434E46760BEAB0ED8F1696046B319339EC7
      98C93CC6CBD7D95C8FBA8A4214533A05190928CE484479762AEAF332F1B82007
      1DC57C5FB201ECD024D8DECF043B311BCC642163A64B998FBB1DE2226EA0F241
      1E9A1BAA68CEA246EE6C435E450E46396E07339844BCC98429603E7A60310E38
      9E1F4D69CC053BB584F97AD82336FC3A12A242901E1F89FB6909B89D7093A70F
      76EB0858963358F665919BEE08966A0B96668F4D793728CE2290FC70273208C9
      B161C84E8CC1C3EC7B58ECAC0D16AA0F1648F5B59101BB4038321D2C84F2CF75
      C4D4AA50CA5F52E803F6D6A601976C4E23D8DF154991C168A43AB3D38BC15CB7
      6282DD0E0444F9C33BD00565C154A6C353F179B91FC970AEA8FF982E63CEF6E7
      BCDA1FD5223BF50EA283FC291D37B083E370C0DB14CD7177C18E4EC634CB6D68
      CFC9C586EBC622D971EEA9258AC4E7FD02F1B783505D5680B6470F695E6FEF9B
      DF98FE7858569753BE93809A2AF805BBC1C2D994DA6F5E30BBA8067676357AE5
      97D84F7EDD64E330BDB1D0ABA0BA44D33CEEAD27949D59921CACD681F9916CAE
      1B52DB488670F9C5455C17E49745F2ABCC4A053B3006CBEF79929C49D6F70819
      24F7EC4B243B17B0FC2B6091548F332BC0960C9F616F65EA15E0ED84E85B5791
      7137129539F780B252A1AF88275CA0F81749EE07446D707C1698E13CB063F373
      D9D49FF8DEFB077CD9B8594146CEC5F1FC1D2E0B3F42A0C7452478931C8FCFC4
      17B1A7055EACF3C5688D8D0AB23DBA375CE09E5E2EE85FCF59A1612FD47963EA
      47FA33427BE6F28F98C97CC64E53D6C415F066FA3EF4A5FBF727E6F721F898A4
      4FD091D9E0E0F77D61C72559E89169CCD3E72AF3F1F2643E9EEECCDBC38D79B9
      5FE9099FC782294E20F14AE39D507AE722020FCFE269086122FED417F2298E3F
      E7DDA0F8D70D6622DE6C0E4AA3AD714D7F2A6E1C9A091E167274967FE82109E6
      E5ED47DC67F23F3A0BB5776D50196B89E2207DA4D9AF40D10D5D94479BA332C6
      1C0FE32D1142FAEBEE739D7911D7BB87DBCBE7F2093F288E86E89328725F8F02
      777914B8C9A1C86D1D1AEF9822ECE078A1BF7B7A7A334F37D7308F2B2E2097E3
      1EF1874AD8DE17D2B87D400C2DF1A750796D0761BB70CFFD84335FD60F98C725
      FBB3A94909B4AE694031D9C177E36271E5F225CCB6CAF8798A455680987931C2
      7446A023521DDD492608D31E0131F3224C3A9FE5276199F391ABED79941617C3
      CFC7138EF61770D1C14E780F3CF37C4AB75E6A138ED35C7784E6C450F561845F
      84FB63E4A79BFA18E3CF65DE77B631436E663A6E87DD82B545DFFC316E1ACDDF
      49A4B2672B00539AC78DAB45E0F7A769388CA3B971F8991C44045D437E6E0E92
      939370FA9431CE9D3D0DCBF3E78439DCAF06A8A479B394EC9AFB3D28A1E722B2
      B5E25CE56165AB8BBC9CFCFA94E454A4A7A5D1DAA906551595386362249CD155
      CEE8846A7607D94D5D3842E53846E96950FED6769B9067270ED4DDA636D58697
      5F70E5E1C34771ECE8111C3D6C90377DFAB4E5B389BF33AB0BEA6450E91577E1
      24F14ED25CEFECA8807CFB89C2B9C7B22B9228779E00378D0FBDFAE996A08373
      C88EDC9543365B5E170E9674C388EA7E92E6FDBBC73E051A1251E6B6000F9CA7
      20DDE277F8E90F0E8A3C3E88191A9F65A626268CE4C0E65AA676CBD19A849FB3
      3E4A799F69044E51DDE38F7E82875E8B51E6320D6916C3E1AAF36D10D7C3F013
      5FB093C6E6EC540F7F88A4C28A99A651F1B3B92D486D31FD1CD983E70B6162B8
      015146FFC26DE39FE1BAEF9F5CFF7F0E39F13D0B3FF1E553FC9E3168D86BEC86
      9F5FA6FFFFDDFFFFEFFEFF7FF7FFFFFFDDFFE763C0A5C5BFF85C5E320CAECB86
      39B8ADF8F51F7FF530B1CBD2612834DE8CD83DF3E0233DA2DE67CD6F1BFF0ADF
      7DC5AFC8359042A6C63C64E92E47D89609B82A333CEC9AECF0D16FC2F75AFD1B
      F2F45721759B38D2542490AB258974B5990855104390DC88D3C1F27FBCB24EBE
      52BF23EFC072A4ED9880F49D1391B14B02D96A5350B45F12C97BA6226CD3A8FA
      5085912FAD139515F97A4B046EE66E0964A94D42B6FA64E4684E41E10149141D
      5D8ABBAA13299D916184E7EA747D1DF1F72F1071F7124F631272D4C613C62277
      CF68E46B8C47C9D1F9C83FB604D1DBC6F1744EDFDA38B2AF4E81722350A02389
      AC3D94BF8A18B2778E449EDA1814688D47E1BE09548F89028AC99E2A339741B2
      D60C9EC69E3E1B50FE0FE4AB4D4686F2EFC85625AEFA588157A23F190F0E4FC3
      035A7B7094192F40B9852C52F7CD44E416B13EFE4D853F90B7732CB2768C40DE
      DE3102F7BEC1149491FD5B613C17556717A1CE69234ACDA591A4361131CAA30C
      FAD79FEA42F94F44CE2E311468535D0F4E46D98959A83AB300F517D7A3FE8A32
      F20C662365D7D8B0C49D637E7C6E0E237EA1D614E4AA8D16EAC9CB5A6DBE1C0D
      AE8AA83CBF1A395AE24599EAE357BC740EDC34927833847A971C9C866A6B5954
      D05A235F6F2AF2B5C50D0A7426BCB2FFF0F217E9CF26F9CE41D9D935C8DC3F1D
      697BC68565A98FFFF14DFA2FF52D1453DB66E8CEC69DEDA38BA88E2BFE8AFE90
      FCC3C2A90EB7B78A19C4288DFA4BFACB9769EB64D6FAC9AE9586ACCC5AB797C5
      E3613C0E8FFBEC1E10F78F8E898594F45A2C5FB30E4B56ADC3E2953258BC421A
      4B56486139CDC7526BA484383CEEB37CB975B2582B2D8D1552EB01C79F01AF79
      40E0462092E6E1846340B61956AC9216CEA1AC5F27F3427E64540C96AE26BEEB
      149A6F37A12B8CE6EF385332408D80C4A358BA72AD60BFC8CA4A3DC7579097C3
      3A5959CA5F9E6C9515E80AD1404BB0261E5DA575AFA734A53913CBA96CD26BD7
      60CDDA65CFF137119FDB4D6B64887F6D3541019DB7B4D0114173E88DAD80CF7C
      AC925E8FC0D060C49D2A42A44916FAF3372B2860839C1C64D76FC4B2B58A98BF
      7A2BE6ADDC84F92B14B060A50296AD96A7395D06270D8FA0F4EA03DCA5F9C7FB
      4052DF1ED4D64D0A42DD64E4B600F63F01EE92C0750520622F19B20640FA0918
      1E3F82DA9A0A189A1C41F0FEEBB0DA1EDFC757DCBC091B3728405A8ECAEA3259
      905F77982E70C790E67E5D7CAF9D06EFFCC73033344044581074F47609EB87BE
      FDBBAD5B101E791B32F2BCAECBD115BC9764B887E420839FB553302316F8D183
      D6277ED930D055EF5D7BF4D57F9B22D9669B370B360E02561064819BCA18AA93
      8AD971C0084FE04B3B404CC519DB37CB3D27FF1DCA4A88A0FC951495B0758B12
      14A93D7ED99F26E43B82F2FDC61E18AFE288B8B01BD8A9BCE539FED64D1B2376
      F273F51BE40379D91606037AD9C0A10CCAF70220A16A8FEDEB56FAEE22FB69EB
      46858817ECDFF7CEC1C2D9868D279DA1ED7015673201F16DD6BDF51DF2EC5AFC
      65FBEFB2AA07B058F928569CCEC4C825EA727FE3FC4CFF39FEA3BF7B7EA7EF32
      595C2BBC8778491AAFBB865ED8848BF733C04ECCC16BF9460BAE08EF584ECE15
      BD63339C0F76CD14DFC579C3AAF06EEFFBA717F2DFA2322E88B4855C7E0CD617
      929D56188BF5053190CBBB0D76DB1A5F25B8E318BF375A80E7F8460B219EE28E
      1FB3FCF0499A2B3E49E7B822DC0F4A75068BB7C117696E50CF0A798EFFCEA9A5
      E7FF197C1C1FE45D01BB750CCC711398ADBCA8FC942EBB73069FE7BB634B9A8F
      C8EF99331CCC783158B603D55307EC986429DB2171B87F1B7E4673CAEA747792
      C93C3CFB8E57E09F5A0A210DCD19D67C4F87F0253359E4C44E2D1195D3705119
      7FD7D8C735597C45884FBC9EFAF7E6F54F219CF2594675FDFC6CDF583952F42E
      6A91213B39BF4128272F2FA5F15CFB51FD14523DF159019537FE0C847EC3DF55
      DA6E00BBBC0D2CCA08EF165CC1E0E023785B6FAEFB537C92EBEEAC407C9EE106
      9678012CC90E2CD511ECDE45914BF83EDB1BA3122EE12D23A13FFEF02CFF505E
      24BE4C227E9435D6E645403AFF36A40BA2205D184DF751981B6143655AF4D418
      F494DE501F3D977F07FF8CF702BB6E0A6641F38DE57A11C790EAA13F3BE8B9F6
      7B56F7280DDEDF87DA6CC4EBD6E22FD55F2E37A3458D6F327FBFE2BDDFA8D7F1
      77ECD8C1B66FDFCE366FDECC8A8A8A587A7A3A4B4E4EF64D4C4C444242021213
      1390949480E46491CB9FB97F4242223D27F9723E8792921293979767F9F9F92C
      2525056D6DADE8E868A1E27134F7438BE0DFD6D622A4D19BFFB66DDBD8D6AD5B
      99ACAC2C2F035A5B9B51535D0827A752AA6023A149709DE999FBB7B43C16CA41
      3CDFAD8A8AB4BEDD824DB4BEE7676739BFADAD99D27820E2BED588F7DF17B9FC
      99FBB7B63E12F84A4A5B10131389C4843B0262636E232DED1E9591CAFAA442C8
      9773070EEC49839EB97F7BBB287FD55D6B1117E38F6D4ACBA1B26D05362B2C45
      56560A3A3B79BD1FF694BD972B02F76F6F6F16F88C75415F9F376237786B72E4
      17DC4557571BBABB1BE1EDDDD0C7E3888868A0B046E2B7F5F01BB14FBB135F7D
      D1826FBE6AC1C001ED78501C27DA7CEFEA95FFD3E8EE6E15CE038BF8F550DBDC
      867F0F6EC6AF5FB7E087416DB860928B92D418E42710126350901C8BA28C5814
      E6C6222F2F163939774846771116161A36EE66133655002369BE1C9503FC4173
      DEB0649AEFC9BCF8818AF12F9A835790FF8FFECD94570B7475783D6B7BF562E8
      18EF2628D503F32B7B406949960373CB8039A5C06CC2660A170B6EC267EF3F86
      B666277179BB54B3FAFA0436C6A3A169B4E7238CF46CC56F5EDD18EA05FC44F6
      C210B72E7C7FB919DF3B37E267CF46FC6ED7847F7DD10CD51DEDC4E5FDA28CB2
      AF60BDFB6F1C4755D7A2C14B030F2EAC47F1F9553DBB184F84F3DE4306B762E8
      90566CD8C0F32FE169308ED1FE1DECD7203067999F98F5BA3F5071FD38F22EA9
      20EB82C2537BFD3F7CDF8151621D9092E2F5E7DF4EF3ADFB1236E21A98D3EA7F
      314BB9D1CC4C5E1CA6EBC7C344660C4E2CFF0551F149B81D15818C0CFE3F4885
      84821EF07BFEBF2045AF9AF75F071161DCB83E8C1E3DDA77F8F0E1F8EDB7DF5E
      0B1E8FC71771C7B0B16347B311237E436C6C34A2A8CCD1D191887901B83F0FE7
      F178FCD1E3C73171F1E16CC2F8A14CEC8FEF702BC40393C47FC6B449FFC6F4C9
      BF3C07EECFC3793C1EFFF854AAC4A7798424C6DE8F8129D9891FFE060C1A09FC
      43EC7970FF01BF02A6B6A46B14FFC8342E854EC6BE20B3EEC3301CB406BE9B43
      FD673EF5D9057FE2A785C0CF841FC9FFBB59C0410BE27F108C4302BF95C03FE9
      52C70C393F0C1AEF812F245CF1D90477FC6382373E9770C737535DF0CFE957F0
      4FBA1F322D016A465CD703A027C1EAB95E30568E828230A80F61C8CCB8C5FBA7
      E06AD0737E2E6F7F3E0E3EC42A6D9A17ACBD31E611F0B633A036824F018FE078
      9D964EFEBCA7950B67632E089FDBB609CF0EE4EF1820EA87FA3F3230D7000CA6
      FB776D80A32BBE45B4E5463490BDC3BEA4327D4E019DC53D6E9AE072FFFA7417
      C45AC8E3ECE2816430FBE11D92F3FBA6D5E166167C1DD2097490C23E29A6FB22
      02F5CF21105CE199FBF37074C0D6221E4FBF7F2A87E42ECAE37B081C46CB1736
      8CF0478FFB538F3F850BF1482E82EE9249C6ECC944C8B843E9F231959FE94927
      A411EE818D80E08A9ED37BC21B919C7E07D9D909AC383D8EB1CBB476F837439E
      36C9B0CA138CFA071BCE79F7C14672976CD6DF21F8F3701E8FC72799332DB2B2
      0E9055A4368ACB3F166C3AC5E3FF2856E725AABF784FFDE999FBF3701E8FC7D7
      1027FE04C6B409BA12AC89B136A1FD73C97651F99E21392D4A78E62E7FE6FEFC
      99C7DB3B9E856B4B10BF07FDC7AFBFF2CEEF75D7D5AB7EBEBEBE5E34FF78C2CB
      CB835C0FF8F878C1D7D7DBF34DF8BE3E5E2FFC16A2AAAA8AA7E9FA3ABE8FB787
      109FEF95F1EF59F87559F4CD042A2B2BA92CAF4EC3DFC75D885B56FA80705F74
      26CCD559F846A6B71CAFAACB0D5F37515E159504E15B21DCBD1B2FA4D15B0E2E
      0F7E06899FE399D273EE69A6E5BD52E1BBE61E7E7D6DAD809696E6E764C1652A
      9C7FEA06B2F9FF1C901A499C4EC5A4733988F4F716456AE920B4A3EDD1633436
      D40BDFF770F08BB74BEFFF2728A4B6E37ACD13DCEFA2B9D3EF24D9A9E2A23DF8
      7DE30863F91446E6401B9A1F3DC263427F7E0C154D25BB03BB73BBA04DEACA0C
      26E25C2D8D01BA1370B22C1FC7CB0BFAD2E8686D436B4B4B1F9FEFFF8550727B
      733BB133E111345220EC9D6B56A76031814593BD1D670BB67FBC6836EDEA16BE
      EFE9AD3F3FBFE347C92D75CD87844912669DC9013B3C856C819B6099B476CE22
      AEDEB417F625DE3FF9FF1F1CCF7A8C45AE79E0AD5CC5EB7C701206D778803DA0
      F54329AD532A1D84731C917EBEB8EA43FD98F2E5FDD3D9D9299CFF7FC9E6C007
      D04FA8C5211A3A4F900D32CCF538A521419842982A9CFDF8C5F1302698A4DE7B
      5697E65ADDC35C9B34B83F16FD779139C186EEEDA94D1C7AE04772530DADC518
      CDCBEACFF6B3B956A94DBC0CFCFF4B66F0F3508499249359E75245301761F6F9
      E4FA9E337DCF5E6FAAFFA35EF50EE06F7F3BD07B0EA117A64B3F66A716BB09E7
      5F8C68BD6AC8D7F13331C96617AE0705B48687041D09BC1EC07AF114F7D41279
      72C15CF681F99EC2D8D08B7028CCC2B5D428E45596A0B6B20AF1B131B871ED6A
      19E706DDB8D68F4BF9726E881519636A30BB790971018170B1B6C6E913C7616F
      6981001F1F141715919D1F8FAB7E3E65FC2C8088BF8CD6E00BDDD8355ABBFB1D
      C222474DF83B382135FE2E5A1E3F82BD9D1D9AC9BD1B17077B1B2B6467662034
      2408C43F22AAF33261EDC9D269DD6925031DCB23C84D4A15748DEBBD9696165A
      5A5B846FE312690CF1F67017CAE0E67AB9ADA7DEB426A7B57A164D48D63230B1
      3615999D6D9D82BB7EBDE85BBACEF60E7493EEF0EFE0EEDE8913BE09E3677068
      9D0876CB002C9F9E430F801D9B49FD5D1C378B93B15E661D5C5C5CB06EDD3A1C
      3A748874D61B674D4D107EF3269C1C48B70E2F0813F89534FF3FA07576054DAC
      C766E11B5ABB767488CEF24849493DA5774E0E76880CBF055B6B4B08F389BE64
      103B311FAC86D2383A0B9F9AACC4FDFCBC17EA6C765616BCDCDD70EB66082CCC
      CDDA7BCEB0FCC40C246F32A3F9F8DC540A0951D1F0B8E884FC9C9CA7B87939D9
      B8E4688FD8E828E1ECC301BDFD17FA9D83F959380F75D2B4F2BAB72F52686DE3
      4F3AEE646F8B8BF61704D7DFC713C90977E1E3E509E393C7AB85F71D7DFD6F11
      73363213DE759C387CA8DAD1CE160924E3FCDC3CE1BC3977F933F73F76D88073
      C54E199DFCB3FF9C5EC8EC8D4FB3B3C646C2B7547B54556C8F181C683FA4AF87
      5EF067EECFC34D8D0D19C72B2EFE2E66CC333A3CA6EF1DCD7FF81BA0FFD4B743
      BD97D24E2D6C57D5C00ED5BD82CB9FFFCE7F146D51D1C6ABCE36FAEAFE1B5E5A
      FF82A7C6377DF0D2F81A3E9A8311A0F315E415F70A2E7FE6FEBD71DCD5FF89F8
      F31388FB1D5AEACBF0A83A1F8FABF3FAD0FC300FDD8D85C23B75EE36D7E4E251
      558E80268E9A12147A2C8487FA60A16F163DA8457159034ACA1B5142EEFDF23A
      5455D7416AAD2CAA2AABC98EB98FC2C262010505C5A2FEEC3A0BEE7BBF12EEEF
      598E43FA85A9C8B09B8E745B72ADC70BEABF464A1A2DCD8F85333335D555C277
      035555221B26F7F28C3FF9369391EE20898C8B0B90416EFA85C982FFAAD56B04
      97BF2FE0639180D6D63FF96A5F8AFEF3F8FC68A45A49E09EF564C14D3D3F4AF0
      5FB172D54BBF6BCD75FE93FFB2EB95FCCB33E1A6F6F52BF9ABA5645F1A96E72A
      89788B0928F25C803C97598499841928BA3203659ED351E73F03EB376E135CFE
      CCFD79388F9B7F651ED22F4EC107EFBD25FEAA795379FB2EBCC93AFAD96B9BCA
      1EEC54DD05550277F9F3DFFC8FAE57E6F57F5AFF9F1B0F96B34503560D90FBDB
      FC65CC45D74BF7C9276B3FB9C00CD85B7F877F2CE218F678EEE9FE56E1DB4436
      5758C9BE397F2D7351BDAA0AD50055A8F8A8740F55195AC316B2316FCCDFCC5C
      A4AE4841CA4D0AB26EB29073957B325267643B5BC136BE09FF9D9D6FBB4D779E
      8EA94E5331D3692624ED25B1D06621C61E1CDBF99EEC7BD6AF93C97B1AEF7A0E
      BF3C1CBF5CFA05C31D8743CC5A0C63CE8CC18493133076FFD8AE4FB67CCCBF01
      7C691A1FE8BDEFF3AECBBB6017199825C35B27DFC23B3AEF806D61F848EEA3CE
      014A03125EC5FFF8F0877EEF87BC0F16407C178239E120C3E7FB3FEB1CB0FB7D
      A7D7957FD0C981D706A40C008B229E2FC37B17DE7BF2B63E6B7F7B2F537913F9
      7D7AEAE3C00F333EA47507C3C7BE1F770D36FBB2E13D4D26F1A6EDF785D9A721
      036F0EC4D77E833BBF3AFB7936D3665FFD95FEF395C567B7C4DCFEC067A73FF6
      FC3BFDF77DC377567E60F48ED2FF2E7DFD5FB8496895
    }
  end
  object ilMenuL: TImageList
    Height = 32
    Width = 32
    Left = 560
    Top = 123
    Bitmap = {
      4C7A180000002000000020000000958800000000000078DAEC7D0754554717EE
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
      EC7EF14ED2FBFBBB13FA49EFF71FD1C2F72BE384ED839DFF4F7B57199655D6B5
      8F638DCEF84E1933A313AF338EDD3D76B7A012D2A5485BA09894808A8A628B8A
      0582848862626262A18241090A062625CDFDAD75CE791011046BDEEFC7705D37
      CF393BD6BDF7DA1D676FE1ACB3A23CF796B958C68FB2BCEF65DECA7CBFAE58E3
      FF4AFE56A26E05F32B7CAE432761CE80B3C2D211CCDF58F65B5DF867CE2253EC
      D56923E3BBFFC11486628EE51BE103CE3FFB7FFECD7FF5834E039E9F5A391E27
      3DD408AAA5A006B66337C2E7B95FF1DB030E7D9074D60B8967361136234946A2
      884DA21DBBF9946BE29C8E4716F4C7E9951447F731483AB506E7DC7BE3FCF27E
      6F80CDD88EDDB05BF6237C9A33F0BE0B77EC8A27A79722F9C452C4EC99812BEB
      47E2AAA712223D9545F0339BB11DBB61B7ECE713950196D1F5F4FC36483DBE00
      B13B75716BAB1A6E6DD7781364C676EC86DDCA75D607F37799EDFB4DDFE517A6
      F5F1B812F9F7AA68B4597917276C5BE2D9710724ED3646BCBF3EC14086BE68C6
      762766B5441B8FB8EC6ECB2E5DEDE176DABAED0CDFF79DB3ADDA774584671F8F
      ABD0D89D00EB2B2FE1989887E5D4ED71A5AECE519BE678797C1E1EEEB7404A88
      89087E6633B673CD06E62701D3AFA6432D2419FD575DC13C97A5110B9DECB165
      F3466CF2DC808D1BD763CD2A0F38D8CDCB9B336B66C9B332AAF65E76D6CBEAE0
      7D38DE2BC092A7C0625E3B7944DCD4D55C40CFF35F5218AC9B21FBD44CBC3832
      55043FB319DB2DA06EDA42F6F38CFCC6A76199AB238E1F3980E7D44E2626C613
      12904478F9FC191E3D48C1DA952B316BA6CD44B92DFABAF7CAAB0848279EE422
      D8DD2B847D52C16BDC2BC2BC64C0963876794CC0F3104311FCCC666CC76EEC93
      59074558E468874B674F233EE60E0277ED849FCF0EF8EFF4C656D2839FF7765C
      BE18217E2FE1307F1EE476A96E0F8F2B7854082CA5F84F8DCD87755C3E661066
      C62B508019D4F59E9202042ED713C1CF3664C676A23DE9DF697B008E1DD88BB8
      98DBF0DDB10DBB883770972F56AF5C811936D36EDACEB08E9B613D2D61E60CEB
      BBF3E7CE7E20B78DF57B51BA073DA1AE7D0EB0FF4921DC13F361129D0BB3E83C
      98472BD6C3F3617E1B308D95C0CFA219D9F19E04D338C0D9613E1ED0982038D0
      5FE40EF0DB89DD0101705F22EE37E476BC3BEF2394FB04ADE536435C7B37BA91
      07B7B83C5C490352B2255C7A59843394A6012905D87E5F81221905A239DB5F22
      3F9455E034CB1AE92F5F60A722EEFE7ED8BF778F78F6AFBC5FEF3B39CEDFCB7D
      5FB1FFD99FF84DA329CE377208B99875270F1E9416FE8F0B11905A848B148E8B
      6912CF65CA279708FC1E41BF414F8A10487976D553E69F4E5DB354919FE3BE77
      77200E1F0855F097370726F29B13BF85BCF785F70B4C8FC913F3C0ECBB0598C7
      E7592517C2E55191B8A6C86B8B0B1E509EBB5F88794985989558049BFBA47FDB
      69B8971087204A734E830314F7E3478F60F9D22595E69F42FCD6B7F33033360F
      B329EFCD4F2C8023F1B8A414C28DF897513C973CE635CE222CA0303950DE9F4B
      5DD21994FFE7ACDF8A63870EE002E5FF7D7B82C533D0F90C688FE5CB606966EA
      34D37AFA025BEBE9CEB636D68BE6D8CEF490FB2FE5F2CF217E3BE277227E5799
      DF5DE6E775D6053404B5A372308B7E67443EC74A8F1578FC300531B76FE140E8
      5E1C0B3B8CD3A7F89BB8D3F0DECE79C2074101FE5426BD41FC90BFC7FD207E4E
      037BC2AAA3DED8E03B87F29A3F9E3C7E46653B0AA17BF6E004E9FDDA958BB87A
      F922AE475EC1CDA8EBB873E7266E465F87D7464F181B1979C9F9F1BDF859FF6E
      940716709E3BEE8B78AF7E48DC390A179637C1F9D0A508D9134A6970100BEDE6
      60D59285F0DDBE55FC2ECE87E2BF61ED1ACC9B3D0B7A3ADA3EF29E5E31FE0356
      133F9561CB0AF9A98EA2F2E6FA02587D62276236F70112F6E0C97E3D3CDAAD84
      23F65F232C6015E6CE9A0B938B4F31DA3D0C3AEAE3BCF4B535BD89D377ACB292
      1BF1F595B9BF53A4FF80D591308BCA8315D525536E96C75F84C5A9D29AF6BA93
      BEB8B389B8E377E3D13E6D3C081A8B87414A88DFDC19BB66FC02732AA413A380
      5EEB63388DBBC863021EDFFC298F0B4A9E6755F76FA7BDC123B6DC8625D575D3
      EF505D1A53005BE29E9B902FB6014ED42EB8507E73790EAC3FC5DCBD8138E2DE
      CBDC639012301A0FFD8722655B179C72F90E1A67F231C0F326BA3986F2DA4B23
      99AFB6BC67F78BB2CEB8E83E7FF7BE41EBAF437D6F32ACAE655199E2F24D750A
      E56D672EEFA4F73527774ADCF78FE0E961133C081C8364E27E40DC095E9D70D4
      B901C6AE0E43DFF577D0DD3E789F1CEFAF2B3186E0F15FABDA0D7E1BDE6DAEFF
      FE3EEEE79EF07EA091DB6330CA8FC6BBD438B8ECD922A5F7BDD2DCC310BDA123
      F63BFD02E5E5C1A91DED0EECAFDD409C5B6825CBAD5AC9714C1D59573C8EE9C9
      63C7BAED066AFCD04559DFD2627048ECD6FED42884E1E9211324072A93CE4789
      DCD7D677C4A1053FA1F39FD534647FAD65397584F73FF7B19AACAFEFE57DEF8D
      56EB0B9363BD87018F4FE3599895C41D388AD27B38CEAF6889FD8E8D72FAB5AD
      AD26E72DC57DE7D53E411F94FB475F1DB6AF03241F47DAE9B9C43D1A29FEA390
      EC3B14173C5A628F5DC3278274C6DBAFF2D9069F7ACCF9FD7EFB1F88FF8018E7
      14FF9148F11B82E38B1B638FBDC8CD6DF9BBCEC4FBD8BF7A7EB6F5AEA6462CC1
      F33013DCF31988E36E7F20C4BED15399FB27E1F3DE6BCF7D84F681737EBC77C0
      F1271C5CD01041F31A26C9FD98CFCDADC88F9C0F3BCAFDA77EF2F33FC15D3C06
      96FB698A3D14DFFC83DCD52C4C4D42AD2CCC616E6A1258C972558DDD5A999B83
      FD7E6459AC4332981B2626663034B680DE044BE81A9943D7D08C600A5D834932
      8CA1473034348689F124989B9830FFC7DE0D50CFD478A27897347361F37F819D
      3D006A6B71408F06451640F84CE9FEEF8BAEC0B565E2FDDFBA7A86888B4F00FB
      AD60EDBBA2BFFA7C87BDA9A92934F54D80ADED50E43BFCF5FDDF61D2FDDF0567
      DC50A8B8FF3B6A0D34B4F4614AF167BFC247DEFF6D4C32F82EF9F17A9300EF1E
      28A8E8FEEFDB9B315EDB80FC24C0F813F0731C265B4E8686AEB178FF77FEEE8A
      EFFFD6D09928FAF924F13732C4523737A86B4FA0C1DF48E4ED7BC7FDDFBECA80
      4F5FA8133FFB61BF1FCB3FC1405FD4BF9AA62110A2828210A377DCFFAD02F8F5
      879A9691E887FD7E2CFF444303CCB4B1818636F1EF1D4D032EBE7F5A17858727
      23FFE45CE49EB24761D83420D488CA05F107F617DDB21FF6FBD1F12719B36C6D
      A1A56B08652D130C1F6F8A616AC618A66A24DE073E6C9CBE0C030CA777E5F186
      D0D2D1273F3331E113F01BE8E922FE6E2254B50CA8FC37A6F4ED29DD814E7D6E
      845902A76CA5F21F41E53FD25D2CFFAAEA5A88E7FBE7C9EFC7F21BE96A63FEDC
      B918A741FADFDA1EF01DF1BAFC1F95CA7F2195FF2245F98F5E8B71AA9A983F67
      0ED8EF47F36B6BC06EFE7C8C51D717E35E5851F9BFE385312A9AA21F23EDF11F
      C25F6DD89C1DC143E7EC400FABB530D05015EB5F25151DB1FC1704575CFE9554
      B4443F061A2AE861B916C3EDFD316CF68EE04AB4455587D87A058D20F7ED54A7
      61BEF729E813BF93A3039454893F6814F243DF51FEFDA8FCEFEC4B6E75C98FA3
      E89765B02C96C9B2DFD127AE3A64A657D048BB5DE8A2350BCDFA6B62D07C7F92
      A10217E705184D71C25E552AFF13DE51FE55A9FC0F10C3CA7ED82FCB60592C93
      6533471961A83AC87A53D0B0B9BEE8AA3D17AD861BA1E530238C74DE07BDF1E3
      907097F5AF41FC4A52DE0FD543D1112AFFA7E6212FDC01457C17FD7E2AFFC154
      FE83064099D2FF2E9519F63BD2395494C5325936733057893054EB3F75C3DEFE
      365BD04EDD160D5AF5C24F6DFBE2C7D67DD05E6B1E06F4E822DE33A5AAA62996
      F701630CD04F490FFD476BA3FF484D8206FAC918304A13C3C76A434D4D03D326
      5BA277E7F6E8A03D5F94C5325936733017732AD64EFA4DDB844D87AF61D3911B
      D872EC26B61CBF4DB885CDC76EC173CF294CD4D7C1D09163286F35A5F2D78BEA
      397A3E40F5C1712BE0CC6CE03CB7FF8B81EB1E40EC3AF4E9DB1F137435C96F38
      BC4806CB1265926CE6602EE654EC8DED3579032EC53E42FFD93B3174FE2E0CB3
      93309430D82E103B8E5C41BB0E9D91B2A8197173FD4B7501EB3CDC9EB8171137
      D53B575753D9F744E2EE3968D7B62DF9B94C7E834419C5F24836733017732ABE
      1BED65B10EC7A3EE63887D20462D088692F31E11A309A3084317ECC3DA90089C
      9ED60861B33AE180FD40EC771E83FD8B3571C0DD10075718E39087098EAE32C5
      D9B513B036F88CE867942C43218F6533077331A7621DAF97C55AECBD9C88910B
      423076E13E8C5B14FA0694178662B8CB01789E48C29A63F7B0E628FD1EBD8B35
      6109128EC44B088B87E7B1780C77DE2FFA292D8765330773316731BFF91AF89D
      4B80D2C28350713B0CD5256F42853076F161282D3A8C510B0F61A46B691C1431
      8AA0B4E890E8566549197248367330177316F39BADC6E6937118B7340CEA7C97
      7B39505D760C63961EC328B76318C9582CC34D32633B76539E7F96CD1CCCC59C
      AFF95761D59158A8AD38090D8F53D05CF9363408AA2BC2E173201CB1D72FE0CE
      B50BB81D29819FD98CEDD88DC6CA7264906CE6602EE62CE6375D89C5FB63A1B9
      E62C74D6960D6DC2F835E7712C78070EEEDE89FD416F82CDD88EDD68AF2D5F0E
      7330177316F34FF28043480C74D65F84DE86F2A1EB79057DA7AE434FCB5584D5
      A5B04AB46337EF92C11CCCC59CC5FCC62B60BB3B0E865ED70891302A0F5BAE43
      DFF312C6BB1F8506A56549B019DBB19BF2FC1B8AB8267231A782BF373D4FDB9D
      04939D7184D877200EA6BE04BF78190932E477DFB84AC960AEDEAFF9EB75D759
      70BA97F172F49CE05E794C2C85F7F0CB5CCC59E29B84CF7DEFE0BBCE00F8A7EE
      1D2CF70C80927F3B959A06FB2BFD053FE5A62F3D87FD6126CF6BFD6377DBED52
      6E8A04372344DBABE3907E17F828FD75DEA5DF6FBDFFA93D1DFE63887F318DDF
      9DB590B0501797A60F43C8F856D836FA2F4FD38E3F36143EF35D8781E39A2161
      913E6E4CEE8BE8E90311EFA4815807359C31EB8560B5E6E99B4635E1735C6B7D
      AE3409526926C63B6A721F5C9BD419D74DBBE2F6CCA1887750C18D194310A6DF
      1E416ACDCE2F1DFCDFCF9226C1AACD91E0AA23F19B103FC3B433A2AC7A206ED6
      3024CC1D89CB163D7158A7357CC6355D66D5E5A74F9A267BD488DF450BD1937B
      CBDC5D70C34C867917DC9EDA1BF1B6831167D31FE7483FFBB55A267B2937D1FD
      54E524449DF89DC74BFCA6AF79A3CCBB22CAA22BA22DBBE1E6E4EE88B5EE83C4
      D98371CBA61FC2277440A8568B734EFD7F6BF3B169B26F7C0B2438A9217A4A6F
      99FB356FB4157377C3AD29DD45DCB1EE89BB7307E39EE3485CA7F09C346A8BC0
      F1CD97CEE8D9E8E70F4D93500DE27754C14DE6E77833B7CC7B9379A712A6FD8D
      DBD3FF26FE1EB863D303F173FAE39E8B12925C9471796A4F1CD16F95BC7DDC5F
      1F9426FB355BE2AEC358E2EA8528CBAEB86925E9BB346F8C4D4FC4CC64F442AC
      2D61660F24DA0F46F2A23188B51B82F3669D7048AFD5399741BFBF579A1CD422
      7E3B25E2EB25C5BB449C8B796750BCA777C59DA91D7167727BDCB16A43BF6D11
      33A52DE26674C53DE761485E320637E70CC069E37608D66CB17466AFCAA5C921
      6DE29F370AB7A7F52AE62ED6F554CAFF56ED71DBA2F56BCEA9ED103BAD3D62A7
      77409C75C76224DAF747CA7255DC5FAE862BD37BE29861EB646F95A615A6C961
      9D5694A7861367CF62EE5B933BE1A6592BDC326B89DB96AD455EE68C634E9B8E
      889FD189CA646724D87641C2AC2ED22FBFCFEA8AFB6EA3F070AD36E2172BE3BC
      792784EAB4F497D715CAD4C5115DE29F3D84F44BFC5328EF99B4223427EE56C4
      DD8674DC4E8A2BF3CEEC2CF2DD9DD30D897309F3BA13FE967FBB8BE677677745
      A2435FA478A8217995A61806830E0DFAC9EB546FE58930BD5648B41D885B969D
      1035B119A22795E0265DC7597710E32BF21267D2FCBF9164D703F71C7A8AB8EF
      D84B84F86EDF43B4BFBF68281E6DD041CA1A2D9C37ED80D1CD7E1823F701DE4A
      87A37AAD9140E97E736273441B3723BD4B3AE7788BDC1467314E143F96CF5CC9
      0B7A23D9B90F525C289EAEFD087DA5E78503F07883269E6C3122FD2B21C2BC23
      3C95FFF496F76995C97F4CBF35E22C3AE296494BDC346921E6B5184EEFE9AFB9
      394E1C3FE665AE078BFAE3E1E20178E436108F9610960EC693F56A78EE33090F
      3768236A566F1CD46F755DAB6D7D3379DDEA0F794DF82DFD1F37688DF8295D48
      E7ADC5FCC6F99CF39AA87345BC45EE3E78B0B01F1EBA11EFD24178EC3E04A9CB
      87E2E9FAB178E93B09CF774E42BCEB704498B5CB5C3CECBFCBE43E5FDB12EBD1
      65968113C49F308DF2BD451B29EEA2DE3B8A793A712EEBFC3537C7F5B13BC5D5
      63289EAD1D8D34DF8948DF6D85076BD571637A17F869340F6E5EBFB6B2BC06AF
      D87FF3CEBAE884616BDCA53AE68E553B31CF29E22EEADD8EF292536F318D59D7
      A914E7A7AB47E0E5761D64EE9942FA9E883887FE386BDA2E5EAF630333799F51
      73B9CF59A93ECB49C336B86BDB9BD2BCBD54CEE57417E3CE7AA77CC669CDF17E
      B6611CD203CC901E6481FBEEA3716D4A87CC8D2A4DD6CBEB74EDE4FDC15FBF4F
      5B74D2A80D12E7F423BD777CAD7B2A6B6239A2BCCE717FEC3E142FB61B10AF25
      5237EB50FFA81BF61BB63AD2B281A8EBAEF25AF4F7F25ECCF76A8B4F31FFBC01
      A4F74E5279B779ADFB64E7BE485D3D162F286F3DF39E20EAFA8245FB78EBDE8D
      66C86BEF2DE4F5CA0FEE1F327F92DD60D27BA7D7694FF558F242CA679EDA78BA
      D510494B46E3EAE43774DD5E5E03FFCFC7AEBD8BFC0E4389BFB3C89F30BB3B52
      962921D55397DA927188B2E986BD7A2D8FB4F804BA2EEB2F7C02F13B0DA7FE55
      17B10D7BB04255ACBBA36C7BE29471DBF8A93D1B7E325D971B7FE791B8B77034
      EE2F198BDBF307E29C49DBCC354A7F7E725D97CBEF3A0A31D487B968D109FE1A
      CD8F34ABF779745DD61FD5BFD7390D8E1AB67E64D1EDA719F2FE8ACFA2EBF2D6
      9C05E98EDAAE721DF2DBE7D27505FBF9157B243FD7DE8E623E7555957D04A8A9
      8C03FFAA8C1D13F081F1ADC67E4BCA62D915C8AA335E4D155E9B3662F3464F6C
      F1DA4C7E55B0C069011C1D1CE1E0E020C15E01FB32E1E8604F7E9C44BF5B366F
      1665B14C965DC11E807AEC66E386751C6FA8D3B3AA9A0694C66961F8182D0C53
      D6C470E5F118AEA48EE1A3D508AA04150C1FC518876122C6620441495905AAAA
      6A1467555116CB94F9DFF9FDBB06B959B76615549495A03A4E455CBFC2A686C0
      E6A6C08ECEE29AAEB8E720743C70D808386E069C9C0A9CE6BD07F3808B0B80C8
      C5C0ADE55218C68D1565B14C0D89FF9DDF7F6BA8AB6195C7725C888840C4A52B
      183696F83DFF00BCBA10FF40E25706823451B46F028A0E5AA0286C3A706C1685
      C18EC2E04C61E0358865C0B5E5A22E222E5E1265B14C965D11BFA6C678AC5EB1
      5CCC336A6AEA18A9A24BDCAD816D7D90BF7334F203B490B76702F2F65B22EFB0
      0DF28ECD45DE0947E4872F44C1D925D2DE87CBAB801B2B315259156AA47F96C5
      32597645FCDAE466E50A77685258B53434A1A4AA47F1EE82229FA1C8F357436E
      B02172F75B20F7F00CE41EB3436EB833F2CE2C45DE790FE45F5A8B822B9B48FF
      1B49FF1BA034561D5AE33544592C53BB32FC9A1A705FBA442C2FE3D5D5318AD7
      1A7D7BA3D06F0C72837491B3CF0239476620E7B803724E2F46CE8595C8097745
      0E8527679F297203B550C86BFF4123318AF22DCB60592C534BB3627E1D2D4D2C
      59BC484CB30B172F63948A36E03F108501E391B36712720E5923FBB83D5E9D72
      41E6C1E9C8D86D888C405D64FA6B20CB5705D9DEA390B78DF2897777D12FCB60
      592CB332FCBA3ADA58BA682134C7AB537A6940598DD27FF748140453DCF75B21
      3B6C0E32432753DF7622D242CC90B6CF12E921A6140E23640668E3959F2AF27D
      46003B7B43595D9F64688AB2586609FE1AC7DD6EE0906B64E96F64EAEB13BFDB
      2257E8921E74B57530569DD27FCF5814844C44F65E336406EA203D98B8F759E1
      E5011BC20CA4854EA530905D903EB2768D47EE4E2A9FBEFD3176BC0174757444
      598B17BA50FE17CB5FA3F045317810721F313B6FC27FCEA59261A8AFAFAB8385
      2ECE94F7C65378B524FEBD6AE23A7FCE2E15BCA23C90B9D714E907A6E145D83C
      BC383A1FE9076720739F39B2286F66076820DF4F49AC27C68ED787969616C952
      87B39383580F05ECF2C1864D2B11BB2D1691EBAFE0BCFB29784D89508441DCE3
      E04CF5A794FE97A0329EF2DF1ED2E7AE2194A7C6525874507460120AC2A652B9
      9B8DDC13F35070743AD505A6C03E0A6BB02A1040EE03FA404543572CFF11E7CF
      C261B60D82893BF6CE2D3C7C9C0297C50E8858720127171CC63AF3F38A6F85EA
      1B32BFA30374A81CE8696B41475B178E2E4B31CF6909E63A2EC13C4737CC7358
      4458580A8B44CC755C4C6EDDC8CF12F2AB037D4D35E8AB8C44E3B9D138B2DB0F
      8F1FDC43F8A913F0DCB80E73ECA76183D9E592DF0AD53734D0C7026A63580F86
      FAFAD0D53784AAF604286B4E80928691B8A74499D25599D245594D4FCC9FCA6A
      3A50566568537DA12DFEAA8ED786BE8E16266A8E41F379D7312789AA845C2A4A
      9B5762CBFAB5983E75326C6C2D20F7691A29F4CFFB54F87B143DCA877ABABA18
      AF3B11D8F813B5017F01DB3B51BAF693F7DDA803870CA8EE25BD9F980284CFA0
      BA772E10E1045CA53A387A3174549545EEF989C0DD6C40EF38507B03E0367F2A
      E6CC9C5A9A5BDAE363608079736CC5F43FCFE9AF45FC1B1A8BF57FD18E01AFEB
      FFBD54FF1F90EBFFA38AFA9FDA9E730B814BD4FE5C71C46F33233157E6363C06
      D45D07FC405563072B9FB2B88BF758CD9B330B861477033D3DA8EB4CA2B6AF15
      8A8AEB7FCD72EA7F57149D73A3B66729D5BF0BD160DA15CC8A27EE5712773DE2
      6E40DC3DAD3695C72DF14F30C2DCD9B33091C261643401E3F54C48EF9D51F846
      FD6F59AAFE5F8282F32BA8DDF1A076CF1D0DA65EC6CC382081B98F4ADCF589FB
      6FAB2DEFE216F92711FFAC193630D2D713F3DF78DD49625D56F08EFA3F2FDC05
      383255EC13349876F50D6ED6793DE2EE66B50D530DD515DFC5D678D71EBB19D3
      A749E91F7151DCBFC67B6DCAABFF33A9FECF0BD2000287E247EBEB9819FF66BC
      99BB2B713B5A9BC16262857BB0EA9B4C3286CDB4A9E27E2D23434368F05EC3A0
      11C8DFFD76FDCF756E4E28A5CF3E0D91DBB60CEE6E93B761CA044DCCB69E02D3
      49159F7F6326F3B31E264D9C082DDE6B193CE6ADFA3F9DDA9D578748E7874DDF
      E2669DD795E33D95B82D261A924EA7826557C46F6E3209D3A74C06E783894646
      D066FE10D552F5BF09B20E4E45E1316BD4B38EC20CE28E2FC1FDBD27D0DE623B
      261B69C1D4489F64198A32597685FCA626B0B23417D3FFDC858BD03130A6F80F
      A3723F58AAFF43B4A9DC93D9110BF86C7484F5917B78920FE88451D95E4B20EE
      76E6DBA8CD6E830914FE0B172244592CD35CDA83FB4E7E4B7233D9C25CD6FF04
      4C9C688CC54B57C2C5CD03CE8B5750BBB102AE0B9761B1B30B0CD61E471A2868
      090550DB5F80EF88BBB3E5566C70778187BB3BF93716E588FB4649A66525F8AD
      CCCD24B766A6222C08A6932689FB884D8C8D614A79C27C8201C658D861CAD90C
      F826030E970B3062CD3574A1F4B631D682E524234AEB49A25F851C96C9B22BE0
      AF47E5FE34BB5580DAC07081BFAD2F7596E10043DB3483190E987CEC395A5879
      E57CDB5D83CF371B54C2CD10F65B5216CBAE60FC517AFDBB8F3CEEFDB5C47AF1
      8F7DF5AD67E98E1D81DE6AA6793F0F355F2CCF81F038F9E712EE7E95FDF62963
      9DBBA2F1AE62FDBB6E196BD3B5CCA6D83CEB3A6EE242B92E6D56CE9CA24256DD
      8AD6B9DFF3EF6BB90E6DF20FCE4394FE06E0EBCFC1FBEFF9FBFF6FCF627C9FBF
      1AE299328B87EFAD6C5EFFC4FCDF094B8643F077E5F376822A33DFFE89F9EBF3
      D94AB3EFDDAEE8ACB70FE1AF4A7172155C07241350265CFA8B77E03826DFACE8
      ACB7F7E1FF4270EC6FDD62F3244C08F7C2FA47B7E0F92C11A39F44610C616C09
      8C498DC2A8C7D72A73D65B65F9ABD5701BB55BE3A03BD6A5DEC1F8845368723D
      00BF5CF57DF38CB7F73FEBAD32FC5505FBFE6E6A079761516A347EBEE12B9DF1
      76658374DECFB55267FC2810E95599B3DE2AE2AF224CEADAE2D70DD4774BBD8A
      3A51F2196FD124EFD46208DED497583A12C2C221D2D93E0A2C1C4CE9DDAF3267
      BD55C45F5D7018B8A7DBF9F5E89814229FF146DCDED487731EFC4A506FB350E8
      FFA7E26C9F37FA06623892765674D65B45FCFFE1B8757D18FAFA8CB70837895B
      6ACB5BC86DFC8FA5F6933515DC4650DABB10779F92DCEF9BFFEB0A8B86A1C1B3
      60544BD901E101C16702049D0EF6326F6D393E55DE2AFF7CBED3DC01E72AC3FD
      0EFEFA82DBC80C0E83E0CA693B8CCF6983A0D5415BE62EBFFE93D2BAADDCE7F8
      D0FA4F710E76FF1269CB6BB7157D6FC863BB6F4AF475AA080E83FB096EC3CA3B
      73AEFCFC2785A164DA7E2FBCFEB6B59AD8C6705BF3EE7366AA0B36BD8C9B6CB3
      2AEFCCB90FA9FFAB8A6D8B3FE5316E6BDE7DCE4B6DAA93330CCFF89677E6DCFB
      F25715DB14BF7908CBCC10CFDA2AA34F5F45701EDA457018A0C5DC5DFCE7616F
      F967CEBD5FFBC3DC81F3B0FA713C963F8A93CE16E536C7756009703BD40F3F6F
      B3C4D0D35BE1F130F65D67CE5596BF9AD886505B32EBFEB5E2B3E6F85CB9E9F7
      23615D0AD3EF5FC5F47B572A73E65C65F9EB709ED14C8E90CE912BE3ACB96F3E
      ECCCB9CAF27F2FB621DC965C53B42F1BCB6F83AE6FADEC9973958F3FD72B5C9F
      739BC26D8B78D65C3FA9CD5934A46C547CE65CE5D35FBE8B500C03B72DDCC62C
      1AF2AE73F92B75E6DC7BE5FFE23050DBC26D8C9B78D65BD377EC6FAEF0CCB9F7
      2EFF8A30701BC3E9FA71DFD57D58FD27B52D6D854F70D6DC07F6BF3FEAACB9CF
      D8FFFF77DCFB79C79CD5B66EDDBA6FEBD66DE03B30F96ED60F05FB67392CEF3D
      E665EAF07D97FC57909F8FFCBC3C147C00447FF9F9A21C962754FE6C807A1C6E
      BEDFF2EEDD84379198209D6F762F01F708F7EF4BBFFCCEE66C5FDA0FCB617942
      E5CF06A8CFF79FE6E5E52229F1AE887B49892292EFDFC5E3477791F62201AFB2
      1290932DFDF23B9BB3BDC2ADC22FCBE1B4788F3AACFE8E1D3B909F9B47F2EE15
      E341CA3DBC7896843BB7EF61E040EADF0919C5E07736677B7657D25F5EEE1BFC
      D54D4C4C5E4E9830014646466FC1D0D0103A3A3A607E0E774A4AB288070F92F1
      EC593262629351A54A3AC94A47CD9A69A8552B4DFCE57736677B76C7EE157E4B
      C5FF5BE6BE74F1222E4644E0F2A54B6FE1C2F9F350E8FFE18314118FA94F9B9D
      958C01039E8B5CCCFBD55769F8FA6BE997DFD99CEDD91DBB57F82DC55F9FD79C
      2E9C3F8731A347897B37C47D1032F85D79D448ECF0F616FD3D7AF450C493270F
      5158F840E4A85143E22D0D36677B76C7EE157EDFE2A7F89F3D735A5C7F35D4D7
      8391817E31F89DF727F8F8F888FE529F3C426AEA233CA3BE2D9FFAC6F2BFFCB2
      6C7E36677B76C7EED91FFBCFCDCD79837FE244439C093F01E309FA30379D084B
      73E36258D0FB44233DE2F716CB2F9FEFF694F0E2792ADFFC5BA9F8B33B76CFFE
      D87FA9FC57DFD2521D11E7F6C266BA36E6D8EA63EE6C8362CCA6F7695374E0EB
      BB0D05057978FEFC19E5A7A778F1E229E9F529060D7A4172A4F42EC92DA57F9A
      68CFEED83DFB63FFA5F52F08857070E0CAB888F22C50B5EA6BF03BB75601019E
      282ACAC3CB972F48D673FAA57C95FD9CEA9BE7220FA37A7529CEFCAB30637B76
      C7EE257F2FA8FEC92BC59F0127A73CD4A993851F7EC842DDBAAFF1FDF7AF50AD
      5A3E8282D689FC69692F45198CF47496F582CAD40B0C1EFC9A93C1EF6CCEF6EC
      4EE187FD73FDF726FF4BCC9F9F8B060D32D1B051267EF9E5351A36CCA270E523
      3070AD787F7346463AC94B2B4666661AE9935784DE069BB37D49F7ECBFA0E06D
      FE39B6B9F8FD972CFCD9380B4DFE788D3FFEFB0A0DEA16203060AD789772F6AB
      2CBC2A0339395994AF5F83DFCB72979D9D457A2C7A8B7FA6490E9AFD9485568D
      B2D0FA97D768D9F0157EFFA1007BFCD6489727171610F2DF8DA2FC37EF9D96C1
      77BF17C9F740CBED9FC8DF312C1D660F80A63780165140CB12E0F73FAE017621
      2710BC690D023CD7C0BF0CEC626C5803BF8DF4BE752D0277AD15D32C80F4E6E7
      C7584F75F846E2F512B957AD5AA55897AADF2E301D93EE02EDAE021D099D4AA1
      3DA115A129E1AF72D084F007413B919E0FE452DC725085C0BF2B577219CA2A39
      6629B92E55BFEDAE744C4C02BA47033DCB410FC2DF15A02BC12899E2713803DF
      56CDC477DF66525B908935ABF389FB59C9314BC9752991DFF831D09F743030E1
      C3C1FE8D9F001D0EA7A37EAD0C34A89781EFBECBC0F2E579C4FDB8BCF6BE7E3B
      7FD27F06A0F4F4354613469507E218C9482D017E27BB49399486C7D2F1639D4C
      FC44E5B96EDD4CB8BA32FF83F2F8EBB5F68C39CD6168B78B9181560139F82BB0
      088D0380DF4BE137BF42FCE2FD0A8DB6A513D28AF1CBF63434F64B43EB03E968
      619F8146F532D1A861267EFC3113F6F6CC9F521E7F59DFFF0E0DD2FE05994797
      2376E948C4BA8F469CBB1262978DC26DD701F22DE679849C52C8459D2AC44B71
      FE8DEAAE5F7FCDC4CF3F67C27626F32797C75FD6F7BF4DBDF4DBE041D83A5C5D
      A985ABAB7411B95A8F9EB571D14D49EE07537F96DA51058A0AA430D4F92A0BBF
      FF4AF516D55D8DA92EFB959EA74E65FEFBEFD5DF5BABDF09F70EAFC195D5FAB8
      B2D6906084CBAB0D7061E938F156F93CAAC373A91D55A0A020578CFF37DF48BC
      4D9A505DFA6716FEFBDF2C989A7079BCF75EFCABF43A21E9E00A5C5D370157D7
      1B8BB8B2760222DCD5DEC9CFED559326AFD0ACD92B346D2A3D1B1A72F94B7A2F
      7E0F9D4E480C5D82C80DC688F43411C161B8B84243D47F7E4101B52F79C5282C
      CC13F344DDBA126F8B16AFD0BCB9F4ACA9C9FC77DF8B7FB9564724EE5B841B9B
      CD705D8439AE6D32C19555DA52FA17148AEDA80245729DFFE38F12779B36AFD0
      BAF52BB46AF50A2A2A9CFE09EFC5EFAED519C9FB17E28ECF5419D370DB7B32A2
      361AE15D7FBFFD9687F6EDF3D0A993848E1DF33056B990B8E3DF87BF9EC3B8F6
      A7976A74C212F54E7093B158AD3D5C463541F885CB387EE2248E1D3B568C9327
      8FE1C68D3099278E105B02FC7EF6F47B8CB73EF59900EF7B97E3A73E13A0DC7D
      10FF8FE71FAAB56DDB765F8B162DA82C37FBA460992CBBA2EF12D8DD99336710
      1E1E8ED3A74F7F12B02C96C9B22BFA2EA159F366387AE428DAB46E838E1D3AA2
      53C74E1F0596C1B25826CBAEE8BB84E6CD9B23343414DD3A7745EF9EBDD0A757
      EF8F02CB60592C936557B42FAB458BA6D81DB80B3D7B7443FF7EBD30B07F9F8F
      02CB60592C936557C4DFB67523F8FBAEC5C03EAD307C505B8C18DCFEA3C03258
      16CB64D915F10B35CFC26E3950EB2FE09B96C0B7AD3F0E2C8365B14C965D217F
      ADC398B302A8D705F8F96FA061CF8F03CB60592C936557CC7F043614D646D4E5
      FA7D08F0DF8FC4EF83291C248B650AB50F5682FF3C26D3D8A1B10A8D29D468FC
      A10E341B2F819FFF2A034DD5243453409540FE9B8D25F3313446190D4C59C6FA
      3F50CC1F1979B8AC758AFA5FD49C80FECAAEF8ADA31D1A77B041F36E53D0BA87
      155AF7B4428BEE53F067671B34EE3C1F8DBB3A89F8A38B3DBEEFB90F757BF8E3
      A73EDE68D867071AF7D9823FFA9F47070A5B7B0A479B7180A50B57BC7B8BE7DF
      22220EBF90FA4749888C0E87796301535A08B0692DC0BAA580E94D04DCBE7356
      EEC3DF939102CF8D91B069266006B999D14A109FCDDB0AB873FBB8ECE63E667A
      DE84B0621B041A97558925DE181A4FD178A1CA7614CFBF9D89382FF61D222281
      735720F6E3A28F6EC38DA33E883AE18FEB87BD44FB807DC08163C0414260A8D4
      DFB871C40BD1E4E6C6516FDC3CCAB75BBFC20592713152B2BF7D291CBF2CF142
      151ADF5523EE2FEE901E5280AA6B8BF9EB1BFF2620E3090DA0900D6503406512
      F034E10C968CFA06D3294ED39A70539501E11B2A3F0D25F0339BB11DBB61B7EC
      87FDB20C9695951A8FE93F0BA863330F5F3C02AAD3F8AC1AA109C5BFDAEAD7FC
      16A4EB0B7E0B7171CF4AF15E33754B40639A247FB5EA0F98DD9CF9B3F0C58FC0
      F77F49E06736633B76C36ED90FFB65192CEBE24E67CCFCAF80FFCC7342551ADF
      D5A0316635C24F2FE977D56B7E4B4ABB8B7ECEB06F23E0FA8175A2FFF13300CD
      59920E77CFEA45FF5FA25A23A07E4B09FCCC66929DE496FDB05F96C1B22EFB3A
      C1F64F01DFB8103FD9D4A0214AF56CA00E75E0ABAF79CD6F4E3A8CD86485C51D
      05B8529E8B0E592CA6A3D66CD2C51C293F002F50FD57A0411B09FCCC666CC76E
      D82DFB61BF2C83655DDA6481199497FFA33C1F5537123FE9BC06C5BB0671575F
      9C523CFF70EDE639B9F75A24CF95A4CB7348E93232C4DFDA4D88BB83047E2E69
      F7A69F7C59161077E74C596BA56FCC3F085438CC9D284FFE49616B2A83D2B866
      097CCD7AEF44F5573709FCCC6625DDB01F857F9665E1C43A4E2C6BADF48DF907
      EE23739DF05D27A97EAEDFF56DFCD89D787B00BFF492C0CF6C56965B96C1B2A4
      7A26B6E27A96EA1D35CA3BD5295DBF6CF71AB54AE03F24EF476A437EE927819F
      D9ACA49B927E5916CBACC4B8AFFEB55B174A8D620AC4B2F566FAA7E13F94EE0D
      7B49E06729BD4BA67F96ECF7F51FCBAE88DFF42F2A77F68D714445C0A1910292
      C31689F587E6DC42A8CE51CC35BCC297CCDF57C29722FF2BD18EDDB05BF6C37E
      5906CB62992CBB227E0B2AAB379D1A235C4BC083D3EBA5F26F43E5592EFF773C
      7A88BFB53A4B6D31839F4BDAB15BF6C37E5906CB62992CBBC2EF0FA8FE899953
      1BA9E73688B2542753DA4D97E2777B613344680AA2796DCAF7BF0C96C0CF629B
      4176EC86DDB21FF6CB7F2C8B65B2EC8AF827511D9975639B38BFAB6242F5BF05
      C522FB1E129C7F46949980A88912FF5794EEBF0E97F0B554ED219AECD80DBB65
      3FEC9765B0AC5724D3A471C5FC672E5E10F38D16F9D330E32C7515A9F3282D66
      0948994D982EF17F477D98C6D49FF883F0FD5089FF8135B99B2DB9653FEC9765
      689948F93822F27C85FCE72F1CCC50B4EBD13167C0F5B139D5A1E6ED0498517B
      6ED294F2D2ED08B92E518CA913B1665314CC5B48EE44B01FF2CB3214FD096797
      D31915F097B5E7ED53A1BF2CFBDB0AF6D67F2B7CBEB3F6BE15FEB9F3FA3FFBD9
      04BB7707EE0B0E0E44505000C1BF5C04CABFE41E8181BB2A73F672A5E66558DE
      FBFE3D7EFC18BEBEDE95DA975ED1BC14C79BFF12EF2614AFA79705B6E73F6FEF
      EDC879958D878F1E61E7C787A13EEB94FF783DFFFEBDA472C1F6FCE7E3B343FC
      CDCCC8C0C3870F3F360CC5FCD2FA7F72B9607BFEDBB9D31B3939D9C56178447A
      F0F5F5F9D03014F3A724F35AFA837291929C5CCCCF7F8A30705A707ED8B56BE7
      DE0FC893F5030325FE470F790FC0C372C1F6FC77E8D07E310C3B77EE10D382F3
      83D8A7A67C2CBCFFDD14C5FC8F498FA9148FF2C0F6999919E59609D6A3F0FE77
      5314F33F497D2CAEA7BF0BECE60D3CE6303F12FDB39C0FD84357CCFFF4C9133C
      7BFAF4BDC07E181FC31F24F33F7B2EADE5BF2FD8DFC7F0EF96F3FFCB172F3E18
      A5F8AB0F587BED65AF5591E8E171157F9700BFB3799F95971565A57EC8EE5DA2
      7F5EC74F2764A6A78B484F4B13CD2A8352FCDF32472C759B6FD1F8F0767609D0
      3B9BF75819A9282BF5F7EFF615FD67A567203F8B1CE5168AE0E7AC8C4C645058
      2A4229FEFA1CCF9BC4A51B990BC3C89C62E811C2485D9D965E46778F6B68BF22
      0AFB8324FEA29C5C718827CC6A29829FD9EC5556A658EEDE85B2F8AF51577EC2
      B51C985ECF81D90D02FD4EA277BF478588A7B0255134E389E3A09CFFF88F7957
      3F4A122186411C2AE7531DF78AC291552ECAE28F206353F9FEC3C9322C0916D1
      F9987A9BB8EC5A43B06F8F88900332772BB83C8E8710B64E84F86C2B8721AF90
      EADB1C6467679789D2FC3D89FF6C06DF67998B29B7F8FEC5D798763B1FB3E389
      CFA123A6BEA4FEE7FC4E10E67680F553EA831E5F0FE1848CE3EB60F524A6380C
      05B979C8A53094465E4E4E99FCC7897FF21DBE7F2E0FD6253023A610767739FE
      ED61F0EC160C9FDC84314138459CE11B209CF69440CF3A4FC97C660B799BC69B
      EB830AE4CBFB0F4BF31FA66C398DEF9C8C91EEDE5360565C211C9324FE31CFAE
      4338B346FECE6A8374FF3A236213817EDD06154F6314E417BCB13EA8404141C1
      5BFC7CFF6828F1CF4C28C4DCC422CCE33B57A9F966D8DDE7BB2689DFBE03FA3E
      BF06E1C25AE222FE8B1B245CDE287D9735BBED5B6D4C51D1DB28D5FE14F3EF21
      FDDBC61760F0C6687475BB882E32BA2DB98C7EEE77C4F46F937615C215E2BE4A
      BABF4ADC9114E71B9B294F747DEF3E21F76115FCBDF9FE55E2378D7881A1DE31
      384765E134BD9F219CCB04A83892FE3BA251FA2508D789FB86A784288AFBAD2D
      A49BBF7125E4108E04EEC2BE5DDE08F1DB81107F6FEC0DF4C59EA05DE0362350
      86A24FBC75AB57F1FC13DF7FBB8B78C6ED4EC0E4138F7094AAC8293105981E93
      0F9BD822D853574E98DF015FE65C8410479C719B25C413EE12FFFD6DA49F4E98
      45693585BA9D0ED4F508E07D204B2E3E28679FFE1BF34F7DA87EF5A562D977CD
      35ACBB978BAD8F0BC5FB176727F01D8C855840F940D83E96C2D091F440E5CFAE
      730974216EFA9DDF1A0BA8CB359BF28F27DF077CF939DACFDBC3FDBC3F2A588F
      ACDF97EA7F8FE47CF421FE208AFBF29402CC2FBE03B8104E14AF450F40E5A010
      4BF90ECC32C0F791B2BBF9F70AE14F75B6CEAE1834EAAB3144A8F8FEC5FAFD88
      77C6C5E79878E0BEE8D739B950BC5BD559864B72115C49A7AE0FDE8114F65704
      F78745F025197D3CAE640BD2D971158DFDEA53FB0BB580782CB8918E8DCFA5B8
      2CFE00F09DCD9EE4DF31F225BA2F381426EBB9A2B3E3EA0F5C7F1D7D280DFCA8
      6AF2A47CB88AEA82D51F086F2A2B067B93D06AE2124BC5B74615F10F5A179931
      60DD75703EE8ED71E5A3D087CAD2DFCE874ECBDFEBD7AC04FFA79E7FE0B2D55A
      965B996FF53FF5FCC37B9D79F0EF371095FE06A28AE03468A4E03228405838E8
      95B06820844583A56F1A09F596A962E01A4B386F7147D0F61DC7B66EDEA85F99
      F4AF047F15C161E008E2CC69E86506D5D33EB08BBB8A55A90F601B77059D2F07
      531F603584101BEA932CA0BE903D8DFF1371E2C811786FDB82CD9EEBA7BF2B1C
      15EDC1105C0607D55CA906A3C883707D7417AA772EA2D5FEA510968FA4BE4E0F
      D49BAB06C1DF02630FADC2CFAB27639CAD25766CD88494FBF7C57DD6470E1DC0
      F62D9B1E94570F56F0DD7DD0EFDED36073FF06C6C69E8370D083FA3843F1C3C2
      31D8BED70F4FE39290F53015B72E5C41F4F9CB287C99813BD7AE23C0CF57DCB7
      EEEABC004F9F3EC1ADE8286CF3DA84C5AECE4D4AD787E57EF7E63C28F8179F69
      307F7C137F5C0D8110EA0661414FB887F9D0E02B0B99CF9EE3058D2593939270
      36FC0CCE849FC6731E938A7BD39FD138230D3B766C879EAE0EE2E2E370FB6634
      B66CF244E93AA90CFE2A826D9FB13556AA4233F912BE8EF0A1345D277EC7BBE1
      7C300A9EA7E345EA93E2B1B4B8179EF79513788C9D5AC23CEDE50BDCBE751353
      2C2D70E7F62D5C3877169B36AC8B2E991665F07F29B80ECE19101582DFA2F650
      DEA2BEDDD68918EB6F0FA4BFC28BA7CC938A541ECF13078F698F1C398CF3E7CF
      89FBDBD95C01D63DEFF9BE1E7915932DCD703F29117BA8EFB3D46D91B1224F96
      E2AF2258F752FB76AB09BADC0FA77E26F771D78B7D8C6CD277D6F317A4DF27C5
      F30BCF483EEB79EDDA353871E2B878F73C9B959C8360BD6466A4636F7030D6AF
      5D8DA86B91A483B5DC36D72A83BFA6E030606F8B0B9B51FDFA36E95BCF105BA8
      06380019AFF0F2D93351BE029CCE3CDE5BBE7C39962D5B862C1ADB315F49378C
      972F9E939E9EC36EDE6CD205B5B33EDBE168379FEF2CAE528AFF3F82EBA0ECDF
      E2F6487DDBEBA47B2F5D6C8AD887FC8C2C59CEEBB904D66D5E7EAEF87DCC4217
      57F1BB0A362B3DE7C0FBFEB3289CFBF60663FB562FF12CBC15CB96F098BE6629
      FEBAC48F1F9243A5FEED4DEA5FAE1E8B533197919FF98AF2D34B519602BC9F9E
      D73954D5D4C4EF748AE899F7D72BC6F98A3DFF0C368F8B8DC52A8F15B8723102
      AB57B8739DF09F37F8FBFDD1B4EA7A6D7C99B88BFAD5C41FE3257EB39DFD325D
      5C02CE211DA4BF4C13C1E3F85C792CD7BE7D7B282929BD1E7714168ADF2AE5D0
      5893C7BB3CEF984D636236A7BC876B572E63DD2AF1FEA51F64FE1AC2D251549F
      0F45B52D1350357107843B94EFE249FF763DA97FFB378D6FDA00D9F9E2BC0373
      3FA63276E0C07E2C59B204DDBA7543AF5EBDD0A953270C1B360CFAFAFA58B9D2
      037E7E7E3875F2245229CF9E3A758ACAC879AC5EB902E1278F63ADC45FBFF8BB
      7FB7112FAA86CE45AD822B101228EEF1EB5125D90755F32220045A6164809D38
      B6CFCACC4466560695AF541C3C7850E4EFDCB933BA77EF8E8E1D3B62F8F0E130
      20FE55AB5662D7AE5D080F3F49E5F4353F9F491B76703F567B2C7F935F103A0B
      0B063F110227D37882C6147729EFDF23FDFB184125C0515CD6CCCBCE217ED267
      267FCBF0AA782C3B65F264D8DBDBBF31BE2A2C2C12ED796F2E8FF9F957FCEE80
      EAE1FD7B43E0E1BEB4243FD7477C8ED4DF6218FC4D213CDC0EC15B0F6A410BE4
      B9154ACFAC37E735387D394D0302FC71F8F021F199F3049B3338CD15E0713F7F
      FBB4CBD707C1410158BED4ED79097E4518F87BE5EEC282018F04D73EE8B6CA04
      CFE369F04371C9CDE1B98B576F81CB1C7F4FC2E0E7B2DCF0DC33DB475EBD22D6
      7F3B776CC3FC39B38F73792B55FE380C0DAD740CEC76ADDB88F0030771FCF061
      694A252F4F9C53290B8A3DD0E5D94B730FB9D81FBA1707F7EFC3CAE5EED0D5D6
      9AFC56F993FEB85E6CEAEAE08803944E870E848AEB199C9E2CA7E49EEBCA80FD
      F0F72E71B13122F76E4A2B6747BB7C413A4BBC6699E7DE0842037393495B5751
      BD7A94FA0F274F1C13EB2FFE7685F5C8DF2F95047F97C578DB5CDA87F192EAA2
      A361871176F820D77B7CBEDA02B9AFFC4539ED3FDFCFD06A8EED8C273E945627
      8E85E1EC9970312D15799BF75F17527E2B2A31A9C1CF3CBFC2760AF36C4AFB33
      674EE118F173FB6F6B333D5190CE2FABF58EFE4755F1BB9C0EEDC75018C4FC72
      9AEAEC4B172F14CF9F2BFED2D2D270FCF871710F74E9BF070F5270FEDC1931FC
      BEDEDBC0B2E4F3447E28A7FD2D7DA6C8AF2D9A3757B5B5B1C6D6CD9B70F2F851
      5C8A388FE8A8EB78FAECA9A85B2EDBBCA795EB17715F3CE99DFB0137A36FE0E2
      8573384569B7D973035846EB562D5504E9BEFAEA95E8FF5591CF1DF9BD4DEB56
      6A53AD2C9F2E7271C2BE90609CA3B4B872E522A26E5CC3AD9B51D4B789C66D02
      3FB3D965D2D359D25728B5770B1CEC306DB2D53392D35B3E7FA2E67BF47F1561
      607FDDB535D57D4916E55F476CD9B811A1217B70E268184E841DC171023FB3D9
      964D1BB97D17CF5F54571DE7497EBBC9F1AE59C9FE67E930D490F32B9FA9D067
      E4F0A16EC646069153AD2CA86FC767174AE0672B4BF33CB2BB366AC4303739CE
      2DE53161F50F1C7F94CC935C2EF8FCBBBFC4F64210FA96B1DEDE47B6FB4B765B
      FB23C61F65FD7D21A7C9B7E5EC8FAF27DB7DF989C65FFF9E43F02F3EE7DC43F5
      7DFBF6BD0C090941308D51FE093017732AE69EF8FD9FFE634EC5BC1787A9327B
      2A3E0514FB329853516728F82BDA53A138BF2025F9FE5B50D8BDCB7FC97D1965
      F157B4A782C17B0B14634F1E0FF22FBFB379457E4BEECB288B9FED798F08EFD1
      280BBC6FE2D9D36718376EDC5B6073B62FCF2F8365334779FC8F785EE345269E
      A5E5948DF41CBCC8CC4356AEB4C39679F997DFD99CEDCBF3FB342D1BA9CF33F0
      E8716AB9FCCF5E64C1DB58808F4955F1B73CEC34A98220CBAA223FFFF2FBBBDC
      3376185741B8733D3C799E512EFF8BF43C784FFAA2D26588F9DFE72F666B473C
      7D915D2EFFCBAC7C0AA7B4D730EEEE43C427A522E1DE9337416677931E513A3E
      12F9799E2F3E2E0E713131E522E64EACB417DFAB1DA5434EB9FC19AF0A8BF9AF
      AFE98028CF1E88DAD8EB4D78F644D4FA8EC8A0B0323FCF7171DE579CAD51161E
      A43C90F837B711755C1E7F26054DC17F8378A2B70EC5CD6D23DE009B456FEC29
      EEEE16F35F7EDE1B731E65E1655A9A28F3D6A6367899995F2EFFABDC12FC1B28
      9E5B8610DFF0374166AC9792E9AF1817958BC2C262FEF4AC8272F9B3C96ABBBC
      D73572753B5C5BD70DD7D7FFFD06D8ECDAEAB61F94FF983F3307E5F2E714BEE6
      FF1CF99FF9B372DFE6DF2DF3E711FFB6099F8FFFB6577B64E7C9DF5494E4DFBD
      5BE2A74C75D2F107C45239BDBDB9AD985FDF465BB26F8FFB3B3B89FCFCCBEFE5
      BB97FCDCD9D201575636448EBC3D9D394BF3E7920258071C0E795BCD5B282827
      FE6C5E9E9F6290A39CBC8272F9798E2297E718F2F2CB449E3CDF5456FB03C537
      E179EF82340F521E3FCF5795B567E3CDEFBC0BCB4C5B36AFC86FC9FD1F65F1F3
      9E113E9FEA5D28E46FBD79DEA1140A2BF057ECBFE06DFD2BCA9F620EE373E2F5
      FE8BD7F9FF7FD8FF14C78BDBB76F3FADE87FB35E3E2714FD6FE614FEBD7FBE9A
      F03FFEFB770CFA2F2A1CA31B0B55856142B5FF09B72A718F126E0CB51B9A2A8C
      1086FCE3FCCAC277C48FAD115B515BA576B6305298F9BFE0F78CF284D3412734
      34685844EFBE425BA1C63FC9BFF4FC522C3ABF08CE279CD1666A1B90D9554145
      F8ED1FE11F2DC0F18423E61D9F07BB9376703AE584810B0672181E11867C767E
      5501330FCDC494035330FDD074D81CB681ED115BA8AE5145F531D53F6B9E10F9
      B50598ED35C384E009300E3186E95E5398EF338765A82574B6EAE05B8D6F3F5B
      9E10F98D04E8EFD6C7F880F1D00CD48476A03674837461106800A34023E879EB
      A1916923084A9F3E4F88FC6602D403D43162E7088CF21B05253F258CF51B0B15
      5F15A8FBAA43C347039A3B34D162660B505A3D223F433E25FF1753AA60A4FF48
      F4F1E9837E3EFD30C06700067B0FC6D01D43317CFB708CDC3A124A5E4A18B371
      0C3A3B744675ED6AD9829A60FBA9F8AB5A7F81FE01FDD161470774DAD1095D77
      7445F7EDDDD1636B0FF4F2EA85BE1BFBA2FFFAFE18B4661086780C412FE75EF8
      DAE8ABA22AEAC2AE8FCD1322FF9C2FD0C5BF0B9A78374133EF6668B1A3055A6F
      6B8DB65E6DD17E637B745AD7095D56754137F76EF87BC9DFE8E5DA0BBD1C7BA1
      9E593D54D112AE0B1AC2EF1FC35F7D7E5574DBDB0D4D039AA2D9AE6668EEDB1C
      2DBC5BA0D5B65668B5B1155AAC6E8116EE1426370A93735B74B0EF808E733AA2
      F38CCE6861DD1C3F5A3648E476E443F96B385643359F6A10B60B10B6123611D6
      12960BA8BAA82A6A3AD544ADB9B5F0E5B42F517D52757CA1F505AA285541D521
      55D1737E0F58EC307BF231FC359DABA3FA9EEA108288D39FE043F092C3B08CE0
      4C9843984A9844A0FAA2A6564DD4B1FC0A552755896E34B3D19F1FA3FF5A0B6B
      A0C6911A100E92EC7D82140E1F590FAB088B0976041B0295D53A965FE32B9B2F
      8BAA98087B3E45FEABE546FC6789FF14C93F4A08250410B611D61196121C0933
      05549947719F592DF70B53C1FE5395BFDA4B6AA266644D089788E334E1082198
      E04DD840701750DD85D27D36E5075BE159555361F4A7AC7FBE76FF125FC67C09
      E106719D9775B0474E03E2FF6AE557A8BBF03B549B25DC22FD37FED4F56F1DF7
      5AA8155D0B4224F19D211C26EC26EC10F0C3C6EFF1EDC2AF8B28DEA1D406D5FC
      1CEDCF7F96D746ED0BB525DD1F95F260955D55D068EBCFF8CAB966DE173305E7
      CFD9FE7EBBE22B7C15F6158403C41D42F92BB0267EF36A84EACE555E54B516C6
      7CEEFEC7772BBEC6D7BBBF86E027E01BBF6FD0705D03E2166205EB4F9BD6E5F1
      7FBFA20EEA6CAD839FB6FD887A1EDF165573110E7D8EB42E8FFF07F73AE8ECD7
      0375967D9957CD4958F40F8F3FBEA8B1AC4ACCCF5ECD9E547510C6FD8FD648AB
      FC3B0EFD3CF83F77F2A6FA
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
  object ilFiltry: TImageList
    Left = 330
    Top = 324
    Bitmap = {
      4C7A070000001000000010000000A20E00000000000078DAAD98095494D7D9C7
      6F6D96D398DA36FDBEA4F9524D723CADADA9C6544DFCDCA222C200A2082AA82C
      A2805B44C50D44455C91580511106658075C108411D907066513655110451144
      591C906DD8D77F9FFBB214AC104D7BCFF99FFBCC739FDFDDDEFBBEF7DE01C0F0
      1FE8AD93D32208FA39E9D87CB8B4D50AE2F6DBB2879BCAC0645E820E3597BF79
      3FFAD9186FB068E2A3BD61DD54349477D280A07F63176047E363B004E212CE83
      C9BD61AABA07EEA7D2A9FD3126AA7CF2E7F7FB7BD3D105306BA0D8646A5741FC
      0D6F98BDCA529BBAF55960691493EA8D2575996087E709126CC14F6C9A184BEA
      6F0F65055E13B3EB52C06E515C06F5EF9617662BE582B8CD324899DE985B7B83
      58B5A16C6F9ACA8E2DC4A4EA58B01C315816C5DF39DF2B6E934F287B3D3BA48E
      B1CA70B03C09D85DAF5E912DF8A86C0476481DA32B2F813D940812EC376307D5
      A18ED1CA1041DC7E0BF65F75388920E8EDD97FD5F1862CFEC3F777A47778A65F
      9515C9E5A7DA1E2E6D4C6FEEB64869C2CFE1A74A9487229E77828BDB6FC3CFF0
      ABFA605170356E774010B7DF869F26AE0C70CF6DC6B117DD82B83D4DA2F41F8E
      9F15501DF09D6F552EF51353BC9598EDA744D88B4E6C2CEE15B7B9EF1B2AA37A
      30836239D3CFFFBF9FB2E9FCA336DCE90432DA7AF0B8A307074BBB60F5A84310
      B7B98F9725B7010EF75B31939841FD9F32DDBBAC4A3FB509E6851D307BD00EF3
      8276583CE815B7051FD5654031DF7A975771E695F14FFEE6C7DC48037A5EC79E
      76C2F47E1BD6F689DBC74A3BA197DC081EC3635F377FA3DE7DFF4BC32415DCE8
      9919DF6B85699FB8EDF28CDA8E69008F196EFEBFF3A932DA4F63DB4C5A95DB22
      705CDCDE5CD006DBAC663E7746C3F25E255E474BDAB122A7057A348EEF835F0A
      E236F71DA4399EE65EEC351CAF1FF9F285455E2BD4AFD5E13BCF9287A3DEFBD5
      742E6E739F75412BB442AA5F0CC7EB84D762666075F79F379CDF443FFF3A68A9
      FC95FBE606BFEC56BB5C8311D65FFF7B3FE635CB75CCABDF85FFC6BBFFEAFA8F
      BF2EC545FF7388BC786AD260BF3C2A00B2E0D378DDFAD7B3B987F7347BC01600
      09D141387BC2065F1A94E11D0DE07DCD2E3035401E2D8587F3563075EEEB0167
      FAF95FCC6880E45A27DCAF028A38291CB6EBE26C4001BC65DD10CB3AE0110E24
      C74B7168BB0E3C23004964173833D0FF2F2AB1CCBA0EEC63DAD33F8800FBF01A
      D8A74AB03F3C273D2355808D26FF6819C5F4C512D3CF078A9D28EB86AAA6184D
      F5A568513D47AB8AF2FA1252315A1A9EA2B9E19950A6AA2D16627B995EDEEDB4
      33653DA8A87806A5B202F5F52F7127330D75B5D5A8AFAB167ED7D656A18ACA2A
      2B9E0BB1BD4C2FFF0FE713E8E9E9C68BCA0AD4BEAC86919111264EFC0A9DED6D
      3031312699C0D0D008E969A950BEA8146239D3CF3B9F3846BE1E545757A1AEAE
      162525C5586B66C6CB3173D62C21EFEEEE844AD5809A9A97C2EF1F89E9E74F1C
      73147C75B5B568A8AF476747078C8D4D049FB9B939562E5F0E33AA8FB3CD4DCD
      68696EC1F1A38E03FC51C783422CAFBFB15185AEAE4EAC59B3068393A1A121B2
      B3B269FCE5908587E162B07480773CB85F88696E694133D5DDD5D525C43F2A2C
      C4A64D9BB07DFB762C525787AFD80B7E126F242B12111B7D7D803F606F2BF01D
      D4EFF6F6767476760EB4FBE8D123DCBB770F8A4439CD4D1D6A5EBE4441419ED0
      877E7EBFEDEE81F8EEEE6E612EB906275F89172AE9F9E4646709CF20E4D28501
      DEDE760F464A692937919C9488FCBCBB28292E167C17820207F85D3BAC15767B
      6CB0DB661BC97A907A7FBBB99C46B03400D2003F04FAFB907CB95483DEDFF183
      BE0D6FAA29C3ED7F9F69EFD398607E165F599EC304A3E31D63D5F7688E74EE18
      9C3ED1D83BF55BFB10A89F4A80E8C738CCB3F1C314DD7DF84C6DF7D437E1C7EA
      1EE89877FC3AF4CE2663956B1216EFF4C58C6507F047F55D1D6FC2FF71E9217C
      65E5866F2C5D31C9F030963848F137D1367CB170277E8AFF5C64E7F0A9FA2E2C
      3B1D852329CF71FA6E1D1C53CBB068C759FC61BE0DC6EBEC771889FF74D15E8C
      9BBF036BCF27E1CC3D15F627166357643E166D3F87CF7899681F46E27F37CF86
      C6B9075FE91FC6D1B472D8C8F260254DC5247D077C41ECEFE7EF1A917F7FAA45
      E67B532D0B7F3B6B2B6CAFA6C3D44D86399B1D3166C646FCEADB8D85547E7B24
      7EC64A0B750B4F59C08EB01CB8E4AB607B3D0F86A7AE604B60322CCE474A29E4
      CFC3F19BA537E4876F3C85B804109702DEC5DD3892568123A9E5F02D23DF5380
      976F09BEE9F62A6FE597187A3CBD02276E29718C332965384EF961CA1D6F3CC3
      51AA83FB79398FDB2C4D091DCCDB84DDA9389854029B883CB8DE6FC2F9275D94
      37C226FCEEA0DF4DD849F3E9A0780A73AFE88AC1FCCEF06C04BC00569E0C8263
      F273382495E250F2339889E542EEA02815FC06470370A116582F89C760DED825
      5461E19300FDC3626C0C4E179ED9069285244EC8F96FEE37A0724B5F394C5C43
      15AFCCDFDBBEBFE3FF5B7B7F5050D0BF492A95327F7F7F2697CB111717374409
      0909203FEBD7EBF8808000269148A06A6810F613AE7AFAF672C5521DF1F1F1BC
      9ED7F202EBE323B059999908BD120AB1588C2B2121B43FBD444C4C0C1ED337BD
      AF2FAF617DD1D4DC86BB790F90975F0089C4175151D1421DB535358826BEE8F1
      63616FE1FD781DFBA0A80291BB181E952811191507318D452693D1DE5C23B49F
      9CAC10F611DE87C16C4DAD0AC5CF6B716D0F43D54D2744EE65785AC6F7E35214
      3F29425D4D6FFF150A05AAAA94021F18184873E5437B5303CA948D90115B1EBB
      0B8F0334A1BC7118D76C18CACAAB5051560E0F0F0FAAEB09ED2572D4D35E1D17
      1B0B3F3F3F3A5BD440595D87881D9CB5467198114AC25642B69BA1BAAE030D35
      0DF0392F46B34A85BB5999905CCD424B631DB5DFCB37D19E5D5B5B8F5A5537C2
      77323C8FB640048DBFA119686F6AC7457100DE39678076EA634A6214FEC7BC18
      3D6D0D888F8B11EEB85E5E5E686D6D43631389EE2757AD195AE9DE8576E08A97
      3F3E08DB873591CEA87E5A8288A4BBF88D09ED81DD2A814F4A4A12CEBD9E9E9E
      E8ECEA466B7B17DA3B852312C23CFD30B684CE6CCEEA28A87C82DCD464FC23A1
      0A1F99165140ABC00F5A8BF0A03AFAD3050F0958CE71B0DC3378E7B42E1D4E5A
      A04888C7F218E0B7C68FF96981E66F801F45CFA22E3B3B1BDE34161F2F314EDE
      8BC0A833BAF8C5291D649415A0A4A000F6EE2918BDBA083F885F086DC4C6440F
      B44FE96B676767FB88F0F0F424EACB83DC3C74D5370FF4272E3A1A5DEDCD43CE
      05B1B143FACFEBF888F4273E1F274F38D985858666C4D17AB995714B78565CBC
      CD18522CF9AF5FBF5E3AC25F0303758DA0BFC97FD0F389DFA8931367A5D51467
      A985382B6D246CD041C2C6C5906F5ADC24DFAC9BA3D8AAE7335C23C4A2E5712E
      3A8A32818627A43B7876E3122AEFDEC4B31829AA6EC991F683D6B0FF01C4598A
      80269ACF0C3F9C5AF90D907716592E5638A8360EF90797A1EAF2493CDCFAFDB0
      7C2CE7EB9FC179C5346C9BFD2990EF8E7C374BFCEFCC6DF858CF074C2B046C11
      AD53D175301D5A4BBAA425B226A61799C30CA27C622D88AF7A0464D1792EC707
      C875C5C3B3E6601A0AF8DCEFC499FBEDB84AEBF8009DB6AC12BBE0F700D816D9
      00717A235D7C2221B45F9E0FDCA2F36CA617F12E7874762DD8C23844B500D373
      80CF737AF02EDD3FD971628EB6D281B50D4657E8E3BBF41A62ADB4DABAF215BD
      EDE7FA02D9A751E862427D8E4728B5C9A6DB827DBB1BBFCE6B033BD90CF6D926
      B0713BB1F422BF785D83D478E1A5CAD073A84FF68564C37C1C127D0EA3E95FD2
      78E5F0ABA1F37F363021A71B63E80ECD9CA8FD13941F6AC5427FBA97E9C9306D
      DC277F49B7338193F15CB8AF9D8960EBB970D2265E530E377A2C33337BF0A7DB
      1DF8750EB5EDA4A2FE531D071BA1D9C7F36B7F90A9C6A572E951A088B6E5879E
      28F2B4A4B145600F5DF1E6DCA5F6291FF380E24FB7D3BB4C726C83864F13E7DB
      FA1EE3B828ABC5CAEAB023025FE0BE01BA747E9B15588D5FAA39D0F372C62853
      37B039AE60538FE3DD89FB30C1F1298DD1E7D2A0A53039D26AF193844D4B90BA
      4507D275FAD9CC94F6DC8C06BCBBDA9D386B9AB71FC0669EC197C75EE01DE344
      B04FFEFE975796D3C441EFC604B6302068BC4709BEA333CD18FAE430D72E8C76
      EBC1689BC2FEB647FDC4DF736399CE55E5FF0597E1A3221ABF6B3B7E695B42E3
      BEAAE4637EC3FF022733DDF01AA67B4D78DE6C59444DFFFF2F6F91260F1AD710
      967F7FFB45FB12BB91928AF51BB6A1536187FAF87D68207526DB61C52A3324DF
      4C4122C5C9131307A4A5A931206D9106D3D1D28668B10110B11C1D57560AE2B6
      91F17A98D31DD2CC780D335BB37A40B732320465F4E956E61D6CB2A6FB58D0D7
      80FFDF49F44D907E8DD5A61648CFC8446A6A2AE34AEBD38A2522B64257C4F417
      6BB225DA9A4C57471B4BF59643B4CC181ACBCC215A6101FDD59630355B8FF56B
      D7C2C2D4986D5C6BCC36AF33665B486A7B2F3035FB4B6C9E7D08CBC94C65B7E9
      CCB179EB4E207D3FBA6E1E40D70DBA9BA6EDC71A1373FA0E67202BE326FBDEEE
      325B6077912DD813C434F604300D3B295B647F81CDD92D657A3A2268EB2E0764
      2BD0156A485A29D8AB4CD66383B909BEB7BDCCD4F75DE865F6F813EFCF34ED02
      99E8C0C5CB0B6C83697FBE8D2DDBF8F827D3D8A7F44A3A09C66616C8B9938985
      F657A0B9FFC265CE68F4F3F64117B40F5CC6E4957B61B84C1706062BA0AD6F02
      4D7D7368AFB484C11A2BAC5B6701EB0DEB3179C55E681DB804CE70567D97DF15
      B5DD01F878E25C7C38EE6BECDFBB1322910E7DCBEC690E0EF48A6CB5796AB0A7
      3BEA87E32653EC1C7086B3F3B64B2049C883447E1F3E890FE1252F846BE84D04
      AC1B0789F97841DC3E1B962294492886C77286B373B67820BD50094DC7ABD03E
      12419241E37024CE2796C05D5E2A88DBDCC7CB780C8FE50C67676F3A874B194F
      A1E71C0F03BA73EA9F9243F7C74468392542B34FDC5E423E032AE3313C96339C
      9DB3D10D67E29E60957B3AD6786660954726B26FC6E27E7A3CF2FBC4ED5479AC
      5066CC632896339C9DBBC115FB64A5B0943EA073FE43CA0BB1F4441444074348
      57FA1422F878596FCC0381E1EC4CB3E38AB9966730C7F234E60A3A83B9562E42
      D910711F2FA398397D719CFD9977FF817BC43F0133E7D7A8
    }
  end
  object dsMain: TDataSource
    DataSet = DMM.qMain
    OnDataChange = dsMainDataChange
    Left = 640
    Top = 123
  end
  object tmrMain: TTimer
    Interval = 500
    OnTimer = tmrMainTimer
    Left = 792
    Top = 128
  end
  object ActionList3: TActionList
    Images = DMG.ilCommon
    Left = 288
    Top = 248
    object acDodajRekInfo: TAction
      Hint = 'Dodaj rekord info'
      ImageIndex = 1
      OnExecute = acDodajRekInfoExecute
    end
    object acTagDodaj: TAction
      Category = 'Tagi'
      Caption = 'Dodaj'
      Hint = 'Dodaj tag'
      ImageIndex = 32
      OnExecute = acTagDodajExecute
    end
    object acTagUsun: TAction
      Category = 'Tagi'
      Caption = 'Usuń'
      Hint = 'Usuń tag'
      ImageIndex = 33
      OnExecute = acTagUsunExecute
    end
    object acLinkDodaj: TAction
      Category = 'Linki'
      Caption = 'Dodaj'
      ImageIndex = 35
      OnExecute = acLinkDodajExecute
    end
    object acLinkUsun: TAction
      Category = 'Linki'
      Caption = 'Usuń'
      Hint = 'Usuń link'
      ImageIndex = 36
      OnExecute = acLinkUsunExecute
    end
    object acLinkOtworz: TAction
      Category = 'Linki'
      Caption = 'Otworz'
      Hint = 'Otworz link w przegladarce'
      ImageIndex = 37
      OnExecute = acLinkOtworzExecute
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Linki'
      Caption = '&Edytuj'
      Hint = 'Edycja'
      ImageIndex = 3
      DataSource = DMM.dsMainLinki
    end
    object DataSetPost1: TDataSetPost
      Category = 'Linki'
      Caption = 'Zatwie&rdź'
      Hint = 'Opublikuj'
      ImageIndex = 7
      DataSource = DMM.dsMainLinki
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Linki'
      Caption = '&Anuluj'
      Hint = 'Anuluj'
      ImageIndex = 0
      DataSource = DMM.dsMainLinki
    end
    object acOklSchowek: TAction
      Category = 'Okladka'
      Caption = 'Schowek'
      Hint = 'Wklej okładkę ze schowka'
      ImageIndex = 38
      OnExecute = acOklSchowekExecute
    end
    object acOklWybierz: TAction
      Category = 'Okladka'
      Caption = 'Wybierz'
      Hint = 'Wybierz plik z okładką'
      ImageIndex = 39
      OnExecute = acOklWybierzExecute
    end
    object acOklUsun: TAction
      Category = 'Okladka'
      Caption = 'Usuń'
      Hint = 'Usuń przypianą okładkę'
      ImageIndex = 40
      OnExecute = acOklUsunExecute
    end
    object acOklPowieksz: TAction
      Category = 'Okladka'
      Caption = 'Pokaż'
      Hint = 'Powiększ okładkę'
      ImageIndex = 41
      OnExecute = acOklPowiekszExecute
    end
    object acAktDodaj: TAction
      Category = 'Aktorzy'
      Caption = 'Dodaj'
      Hint = 'Dodaj aktora'
      ImageIndex = 42
      OnExecute = acAktDodajExecute
    end
    object acAktUsun: TAction
      Category = 'Aktorzy'
      Caption = 'Usuń'
      Hint = 'Usuń aktora z filmu'
      ImageIndex = 44
      OnExecute = acAktUsunExecute
    end
    object acAktDodajTxt: TAction
      Category = 'Aktorzy'
      Caption = 'Dodaj txt'
      Hint = 'Dodaj aktorów jako tekst'
      ImageIndex = 45
      OnExecute = acAktDodajTxtExecute
    end
    object acAktEdycja: TAction
      Category = 'Aktorzy'
      Caption = 'Podgląd'
      ImageIndex = 43
      OnExecute = acAktEdycjaExecute
    end
    object acInnyTytDodaj: TAction
      Category = 'InneTytuly'
      Caption = 'Dodaj'
      Hint = 'Dodaj inny tytuł'
      ImageIndex = 1
      OnExecute = acInnyTytDodajExecute
    end
    object acInnyTytUsun: TAction
      Category = 'InneTytuly'
      Caption = 'Usuń'
      Hint = 'Usuń inny tytuł'
      ImageIndex = 2
      OnExecute = acInnyTytUsunExecute
    end
    object acInnyTytDodWiele: TAction
      Category = 'InneTytuly'
      Caption = 'Dodaj wiele'
      Hint = 'Dodaj wiele innych tytułów'
      ImageIndex = 46
      OnExecute = acInnyTytDodWieleExecute
    end
    object acGatDodaj: TAction
      Category = 'Gatunki'
      Caption = 'Dodaj'
      Hint = 'Dodaj gatunki do filmu'
      ImageIndex = 1
      OnExecute = acGatDodajExecute
    end
    object acGatEdycja: TAction
      Category = 'Gatunki'
      Caption = 'Edycja'
      Hint = 'Edycja opisu przypisanego gatunku'
      ImageIndex = 3
      OnExecute = acGatEdycjaExecute
    end
    object acGatUsun: TAction
      Category = 'Gatunki'
      Caption = 'Usuń'
      Hint = 'Usuń gatunek z filmu'
      ImageIndex = 2
    end
    object acFiltrWyczysc: TAction
      Category = 'Filtry'
      Caption = 'Wyczyść'
      ImageIndex = 29
      OnExecute = acFiltrWyczyscExecute
    end
    object acHistOdswiez: TAction
      Category = 'Historia'
      Caption = 'Odswież'
      Hint = 'Odswież historie'
      ImageIndex = 27
      OnExecute = acHistOdswiezExecute
    end
    object acHistIdz: TAction
      Category = 'Historia'
      Caption = 'Idź'
      Hint = 'Przejdź do pliku'
      ImageIndex = 47
      OnExecute = acHistIdzExecute
    end
    object acHistCzyscNazw: TAction
      Category = 'Historia'
      Caption = 'Wyczyść'
      Hint = 'Wyczyść'
      ImageIndex = 5
      OnExecute = acHistCzyscNazwExecute
    end
    object acHistUsun: TAction
      Category = 'Historia'
      Caption = 'Usuń'
      Hint = 'Usuń wpis z historii'
      ImageIndex = 57
      OnExecute = acHistUsunExecute
    end
  end
  object ilOceny: TImageList
    Height = 24
    Width = 120
    Left = 328
    Top = 384
    Bitmap = {
      4C7A060000007800000018000000500D00000000000078DAED9C095055D71980
      0F41400DFB26CA26421248AA412B161DA24689CBC43DD60C1A338808828A4251
      DC9314DC40C5C82A6E0F11B0828A5111AC4B8A8915515B1914458D2041344814
      0992E75BFEFEE745D24E336DEDB437E772F3DF99330FEEBBE7FB7F3DE7FEE75C
      DE378FB1173B264E9C68B27AF5EAF1AB56AD9A3079F26413F67F3E882F8E3F6C
      D830B668D122E73D7BF6E4A954AABCA8A828E7808000E22B848F87D1C68D1BC7
      5DB870A1F6DCB973B5EBD6AD1BC7CF115F19FCA953A75A15161626DFBB77EF59
      6D6DED339C47C993264DB2227EE7E703008B8F8FF73B7FFE7C456B6B2B343737
      43696969C5D2A54BFDF87BC4EFDC7C7F7F7FD39C9C9C983B77EEB43C7DFA141E
      3F7E0C172F5E6CD9B2654BCCA041834C892F7F7ECF9E3DD9DB6FBFCDA64C99C2
      424242D882050B586C6C2C5BBC78315FD7DDCF9C3953C2B9DF7DF71D3C7CF810
      AE5FBF0E7BF7EE2D9933678E7B6464A4E1FA79F3E6B1F0F070161C1CCCA64D9B
      66D813787B7B135F067CBE56E3CFC6A3478F369B316346F78888088BE8E8685B
      8CE1949A9A3A0B79F739FBD1A347806B00D4D4D4C0D1A347EFE35E7D165EEB34
      7FFE7C5BDE273434B43BF6371B376E9C719F3E7DFE71FD27BE203ED6F6F1B8E7
      0E3B78F060CC679F7DB6BAA4A42411E74B5A595999EAECD9B385B867AB6A6A6A
      D2F1F9F3E0C103C03A0157AF5E85D3A74FEB323232AA9292920A131313551B36
      6C48C396886DF5FAF5EB63121212C2E2E2E2C6135F2C1F6B403A72EB705FD68E
      6BB71AE788A6A5A545FBE4C9131D36C09FA1835D575707D5D5D550515101A74E
      9D82FDFBF703E6063B76ECD06DDFBE5DBB73E74ECDEEDDBBD5F8DA8E31EBE6CE
      9D9B4E7CB17C5F5FDFC15807924F9C385187B55DAF56AB81B7F6F676E8A8091D
      6C5EF7716D8793274F42414101200B90CBF9B06BD72EC07D3B646767EBF159AD
      0ED781E4BE7DFB0E26BE583E9668133B3B3BAFE9D3A7C7E6E7E7577EF5D5579A
      8E79C3D7F2C6C646C0B905D7AE5D03DCA3437171315FDB213D3D1D706D00AC11
      8618C8E57349B366CD9A4A7C368B757474F4E26CE20BE7F3E3256C0E81818141
      B8EF2EC5FBBFADA1A101EAEBEBE1D6AD5B505959099F7FFE39E01A6198336969
      69B075EB56438CACAC2CC3BCC1F9D3B662C58AD2E1C3870775E9D2C5E1399311
      5F167CF6FCEF5D9603070E1CB97CF972153E4337555555E92F5DBA04B8E6C3BE
      7DFB00EBBA819D92926278E5ECDCDC5C3D9E6FC27DBC8AF7E50CCEC283115F56
      FC8EC3CCC3C3A3FFDAB56B0F609DD71C3972C4B0866FDBB6CD500F389BCF1BFE
      3B3F7FE8D0215E130E787A7AF6E77D5FE0719BF802F9786FB351A346D9639DC8
      CDCBCBD3710E6776B48E9AC0D7745EF3B166E832333373F1D9CDDECCEC3FA74F
      7CB17C373737161919E983F5BD1CFB19987CDE702E5FC7798DE08DAF039CCFF7
      E8F85A1E1515E5E3E2E2427C99F379E15EB264C9046436F2BD196F7C0E3D9F2B
      50545404B8CF33ACE9BC61FD879C9C9C46FEB9F38B7C66457CB1FC808080AE9F
      7CF2C94A64B677CC17ECCFF94F704DB8B06EDDBA0BC87CC2D77B7E9EC7C0D776
      3CBF72C890215D892F6FFE071F7CE09498989887FB6D3D5FBFB1699393936F87
      8787A7F6EBD76F2C6F111111A9583F6E2357FB3C867EF3E6CD793367CE7422BE
      7CF9F6F6F60CEBF800EC7B91B3B1E6B72C5DBAF414AEDDE1363636FC79997F1E
      656A6B6BEB3566CC98F065CB969DC2FAD1C26B07D6938B0B172E1C80EF115FA6
      7C6418C5C5C505E17C69484848A8C1B9B4E9B5D75E0BE878A6FAE76735FE1EBF
      865F8BFBBD06CC25C8DADADA88F8F2E4BBBBBB9BCC9E3D3B186B41FE88112382
      EDECEC7AF3BF71E17EFD27D7E29C62CFFFB6D69B5FCBFB84868606E3FECF84F8
      F2E43B383874F1C6C3D5D57520FE6AF5820E17BFC68AF7E17D3983F8F2E4FFDB
      2330C9C421B66C3CB609EC9D4DE40F2B89DF3F9E398615388FDE79232F70C78D
      3C9BD00267E61B4FFEB062FCE7C146FE0965E392CE3DAC8D3FFBB0F68D8FCBC6
      F173E40F2B836F363AD56A766E75F2E9BBDF3F2BBAFDFDB377775627B37752C9
      1F5688FFECBBACD46F735963C5B5C73AF8E21B1D44163756382E2AF5EB45FE70
      A7E7B3D797984ECFBA1C73F4666B4B4D2BC09F1F022454B4B6BCB9F1720C7F8F
      FC64B9F3A73166B104F750998C8DCC656C4A1133FEF018B3082B653DE61E67BD
      E7E4BBFFBEA4B6E4529316AE3C0638F50020F5BA1602736A4B4C67E6BBB390E3
      8C859432867DD8F422C6DE43C6BBC8F243A6EB34F29365E13F4F32628E89C6EC
      372A33F6EE81EE2CE88845D7D925B6F661C54E8189E766E5553EBA5F8963FB45
      13C0A1AF01526E024C297E74DF7AF9B9592CB8D889CD2AB165338F58B0F7B1EF
      44648C4056CF49E427CB80EFB1ECECF8B199D7C266EFBD1913F5875BABE38AEE
      247E545C97B6E644BD6ACD1F1B0A379F7D5055764FA33BDF0C50DC08B0FB0EC0
      DA6A80A02F343AF7DD0FAA2C3E6D28344FAC5799C7D7A559ADBC9368BDECD66A
      EBB89B31968BAF85758D3C4B7EB260FE2B51FBD2171CACA93B7EBBADBDAA49AD
      BEDEFC4C73E35B8DB6FA915657F9AD162E35EB0D6BEE711CDB9C5A80A41B00D1
      7F0598FC2540BFE37A7029D082A34AAB73C8D0687B6D79A671DDA856BB26B5B5
      3BAEACA9EB36731FF9C982F9DD7F3566F09085E9C96B8F57D7FDA549AD6F6C07
      A87F0A7013F7527CBDFDF2E10FF76D4E1DC0661CDBDFE1D84EC1B1F53D01D0F3
      10805D1EB65D003D3200DC5200FA7CAAD6BB7C545D67F97E7AB2B1F718F29365
      E03F336B4F2FCFA92B622373CA2B8B6EB56A2E3F0228C77A7C1AF752871B0054
      78DF265E0798771920F04F009EC700CC0B01CC72F15585E39B05E08AE3FBCAD6
      568DDBF2F24A8BB12B628DEC3CC94F9695FF6CEA6037342468FCC663A59BCABF
      693BF0B51EF2EF0264DE06F8F82AAEB7E701069E04E87504A01B8EAD09DEB7DD
      B2016C7602F4DEA1873752BF69F38839566A3E242488199B929F2C2BBEF18F9F
      299AFB4E1CE9BF245BB5B0F46ED3FA6B5AFDE22B0063CB00BC8F03381C7E3EB6
      F9F8BA07C776379EDFA3D50F4CBBDBD4676EB6EAE537278EFCFB6795C6E427CB
      D47F7EC9D5BFBF5F42F18119656D9AA167009CF19EB53C88F578FFF3FB16C7D6
      12D75C67BC7747EE6BD3F8AD2C3E60E2E64F7E72A7E0DBB0EE43A3EDDF48B992
      DBF7985A678D7B28D3021CD77DF8BA17A03BD6642B1C5BFB6D002EB8E606E4A8
      75019BAFE45A0D8BB667C636E427CB9CCF1C07319B39B93E2E59F5E556FB7586
      FBD58C8F2BDEB376D87A604D76C8C4753815F7549F02BC99A5832119F5E5CED8
      87390C223F59E67CDC6719D9C49E98E0B8A3B9D11CC7F365D50FB5D815C7F8AD
      036A185EA006EF1DF82C8463EBB605C00BC779406673A31BF6E17DC94F96379F
      F98675B55B55B1D231EB69BBED7600476C5ED95A18B4FBFE935F7F5C7AC10FDB
      5BDBEF3FE997A5058FADB877C631F6497FDAEEFE51C54ADE97FC6479F34DDFCB
      70728CAFC9EB95A6D1BB64E8C16B5B9BD627A9F2B65B487A6A579F516379F3C0
      9FFB6DA8BCFD7A7A9BB6CF563D78A668F4AE6B6BF24CA766909F2C67BEB90F33
      0F3D3CA0E7DA7B17DD5334D07BE3BD1697E8A3A72C47CC0F67966E3FFAB7FC67
      6B3CE78AEF79E0351E78ADF3867B17CDC30E0F602FFB909F2C533EEBF6AA91E5
      8233413DE2EF36F4587EB9C6EAB7C99BBA780EFD97FE2D7FCF6A5AF2A61E2B2E
      D738ADB9DB601975268899BD4A7EB24CF9CCC9DFA4DBF4EC60F30F73F2CDDE8A
      0866D6EE06FFD67468F44F2EEDFAC339137E8D594044B005F6E936233B9833C8
      4F96279FD97A7531F21AE1CD7AF9FED7FE2DEF63E86BE7457E32F9CF3F3B9FFC
      6771FE33F9D54AF79FC9AF56B2FF4C7EB5B2FD67F2AB95EB3F935FDDD9FD67F2
      AB95EF3F935FAD54FF99FC6A65FBCFE4572BDB7F26BF5AF9FE33F9D5BF04FF99
      FC6AE5FACFE457FF92FC67F2AB95EB3F935FAD6CFF99FC6A65FBCFE4572BDB7F
      26BF5AD9FE33F9D5CAF59FC9AF56B6FF4C7EB5B2FD67F2AB95ED3F935F4DFEB3
      247CA97327FF591C5FEADCC97F16CC97DCAD26FF59205FEADCC97F16C7973A77
      F29F05F3A5CE9DFC6769F912E74EFEB31CFC67C9DD6AF29F05F9CF52E74EFEB3
      58FF59EADCC97F16EB3F4B9D3BF9CF32F09FA5CE9DFC67D1FEB3D4B993FF2CD4
      7FFE59DC6AF29FE5E13F4B9D3BF9CF42F952E74EFEB350BED4B993FF2CD87F96
      3A77F29F85F2A5CE9DFC67A1FEB3D4B993FF2CD07F963A77F29FC5FACF52E74E
      FEB358FF59EADCC97F16EB3F4B9D3BF9CFBF5CFFB9B3FBD5E43F8BE393FFACE0
      DCC97F5672EEE43F2B3777F29F159E3BF9CFACB37F7735F9CF72F09F3BB75F4D
      FEB3B8EFAE26FF59ACFFAC04BF9AFC6771DF5D4DFEB30CFCE7CEEF5793FF2CF6
      BBABC97F16EA3F2BC6AF26FF596CEEE43F0BF79F3BBF5F4DFEB3B2FD6AF29F95
      ED5793FFAC6CBF9AFC6705FBD5E43F8BFBBF21FF59ACFFAC00BF9AFC6771DF5D
      4DFEB360FF59017E35F9CFF2F59F258D41FEB350FF59FA18E43F8BF59FA58D41
      FEB358FF59CA18E43F8BF79F258D41FEB350FFF97F8F41FEB358FF59EA7F03F9
      CFE2FD67E96290FF2CD67F963A06F9CF62FD67A96390FF2CD67F963A06F9CFE2
      FD67896390FF2C0BFF59CA18E43F8BF59F7F36C79AFC6719F8CFD2C620FF59A4
      FF2C790CF29F85FACFD2C720FF59A4FF2C790CF29F85FACF52C720FF59ACFF2C
      690CF29F85FACF92C720FF59A8FF2C790CF29F85FACF92C720FF59A8FF2C458C
      BF01FC57F1FE
    }
  end
  object pmOceny: TPopupMenu
    Left = 328
    Top = 448
    object MenuItem28: TMenuItem
      Caption = '0 - Bez oceny'
      OnClick = MenuItem23Click
    end
    object MenuItem27: TMenuItem
      Tag = 1
      Caption = '1- Beznadziejny'
      OnClick = MenuItem23Click
    end
    object MenuItem26: TMenuItem
      Tag = 2
      Caption = '2 - Słaby'
      OnClick = MenuItem23Click
    end
    object MenuItem25: TMenuItem
      Tag = 3
      Caption = '3 -Taki sobie'
      OnClick = MenuItem23Click
    end
    object MenuItem24: TMenuItem
      Tag = 4
      Caption = '4 - Dobry'
      OnClick = MenuItem23Click
    end
    object MenuItem23: TMenuItem
      Tag = 5
      Caption = '5 - Świetny'
      OnClick = MenuItem23Click
    end
    object MenuItem32: TMenuItem
      Tag = 6
      Caption = '6 - Legendarny'
      OnClick = MenuItem23Click
    end
  end
  object pmTagi: TPopupMenu
    Images = DMG.ilCommon
    Left = 411
    Top = 450
    object MenuItem30: TMenuItem
      Action = acTagDodaj
      Caption = 'Dodaj...'
    end
    object MenuItem31: TMenuItem
      Action = acTagUsun
    end
  end
  object OpenDlg: TOpenDialog
    DefaultExt = '.jpg'
    Filter = 'Pliki jpg (*.jpg; *.jpeg)|*.jpg;*.jpeg|Wszystkie pliki (*.*)|*.*'
    Left = 407
    Top = 351
  end
  object pmOcenyF: TPopupMenu
    Left = 480
    Top = 448
    object MenuItem33: TMenuItem
      Caption = '0 - Bez oceny'
      OnClick = MenuItem33Click
    end
    object MenuItem34: TMenuItem
      Tag = 1
      Caption = '1- Beznadziejny'
      OnClick = MenuItem33Click
    end
    object MenuItem35: TMenuItem
      Tag = 2
      Caption = '2 - Słaby'
      OnClick = MenuItem33Click
    end
    object MenuItem36: TMenuItem
      Tag = 3
      Caption = '3 -Taki sobie'
      OnClick = MenuItem33Click
    end
    object MenuItem37: TMenuItem
      Tag = 4
      Caption = '4 - Dobry'
      OnClick = MenuItem33Click
    end
    object MenuItem38: TMenuItem
      Tag = 5
      Caption = '5 - Świetny'
      OnClick = MenuItem33Click
    end
    object MenuItem39: TMenuItem
      Tag = 6
      Caption = '6 - Legendarny'
      OnClick = MenuItem33Click
    end
  end
  object dsMainAkt: TDataSource
    DataSet = DMM.qMainAkt
    OnDataChange = dsMainAktDataChange
    Left = 696
    Top = 123
  end
  object tmrFiltr: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrFiltrTimer
    Left = 864
    Top = 128
  end
  object pmPliki: TPopupMenu
    Images = ilMenuS
    Left = 677
    Top = 320
    object MenuItem40: TMenuItem
      Action = acFilmUruchom
    end
    object Separator1: TMenuItem
      Caption = '-'
    end
    object MenuItem43: TMenuItem
      Action = acPlikZmienNazwe
      Caption = 'Zmień nazwę...'
    end
    object MenuItem41: TMenuItem
      Action = acPlikPrzenies
      Caption = 'Przenieś...'
    end
    object MenuItem42: TMenuItem
      Action = acPlikHistoria
      Caption = 'Historia...'
    end
  end
  object pmHistoria: TPopupMenu
    Images = DMG.ilCommon
    Left = 331
    Top = 502
    object MenuItem44: TMenuItem
      Action = acHistIdz
    end
    object Separator2: TMenuItem
      Caption = '-'
    end
    object MenuItem46: TMenuItem
      Action = acHistUsun
    end
    object Separator3: TMenuItem
      Caption = '-'
    end
    object MenuItem47: TMenuItem
      Action = acHistOdswiez
    end
  end
  object pmUruchom: TPopupMenu
    Images = ilMenuS
    Left = 407
    Top = 504
    object MenuItem45: TMenuItem
      Action = acFilmUruchom
    end
    object MenuItem48: TMenuItem
      Action = acFilmUruchBezHist
    end
  end
end
