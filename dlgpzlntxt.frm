object FrmPozLinTxt: TFrmPozLinTxt
  Left = 472
  Height = 450
  Top = 185
  Width = 500
  Caption = 'FrmPozLinTxt'
  ClientHeight = 450
  ClientWidth = 500
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  Position = poOwnerFormCenter
  LCLVersion = '7.3'
  object ButtonPanel1: TButtonPanel
    Left = 6
    Height = 34
    Top = 410
    Width = 488
    OKButton.Name = 'OKButton'
    OKButton.DefaultCaption = True
    HelpButton.Name = 'HelpButton'
    HelpButton.DefaultCaption = True
    CloseButton.Name = 'CloseButton'
    CloseButton.DefaultCaption = True
    CancelButton.Name = 'CancelButton'
    CancelButton.DefaultCaption = True
    TabOrder = 0
    ShowButtons = [pbOK, pbCancel]
  end
  inline SynEdit1: TSynEdit
    Left = 0
    Height = 334
    Top = 26
    Width = 500
    Align = alClient
    Font.CharSet = EASTEUROPE_CHARSET
    Font.Height = -13
    Font.Name = 'Source Code Pro'
    Font.Pitch = fpFixed
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    Gutter.Width = 57
    Gutter.MouseActions = <>
    RightGutter.Width = 0
    RightGutter.MouseActions = <>
    Keystrokes = <    
      item
        Command = ecUp
        ShortCut = 38
      end    
      item
        Command = ecSelUp
        ShortCut = 8230
      end    
      item
        Command = ecScrollUp
        ShortCut = 16422
      end    
      item
        Command = ecDown
        ShortCut = 40
      end    
      item
        Command = ecSelDown
        ShortCut = 8232
      end    
      item
        Command = ecScrollDown
        ShortCut = 16424
      end    
      item
        Command = ecLeft
        ShortCut = 37
      end    
      item
        Command = ecSelLeft
        ShortCut = 8229
      end    
      item
        Command = ecWordLeft
        ShortCut = 16421
      end    
      item
        Command = ecSelWordLeft
        ShortCut = 24613
      end    
      item
        Command = ecRight
        ShortCut = 39
      end    
      item
        Command = ecSelRight
        ShortCut = 8231
      end    
      item
        Command = ecWordRight
        ShortCut = 16423
      end    
      item
        Command = ecSelWordRight
        ShortCut = 24615
      end    
      item
        Command = ecPageDown
        ShortCut = 34
      end    
      item
        Command = ecSelPageDown
        ShortCut = 8226
      end    
      item
        Command = ecPageBottom
        ShortCut = 16418
      end    
      item
        Command = ecSelPageBottom
        ShortCut = 24610
      end    
      item
        Command = ecPageUp
        ShortCut = 33
      end    
      item
        Command = ecSelPageUp
        ShortCut = 8225
      end    
      item
        Command = ecPageTop
        ShortCut = 16417
      end    
      item
        Command = ecSelPageTop
        ShortCut = 24609
      end    
      item
        Command = ecLineStart
        ShortCut = 36
      end    
      item
        Command = ecSelLineStart
        ShortCut = 8228
      end    
      item
        Command = ecEditorTop
        ShortCut = 16420
      end    
      item
        Command = ecSelEditorTop
        ShortCut = 24612
      end    
      item
        Command = ecLineEnd
        ShortCut = 35
      end    
      item
        Command = ecSelLineEnd
        ShortCut = 8227
      end    
      item
        Command = ecEditorBottom
        ShortCut = 16419
      end    
      item
        Command = ecSelEditorBottom
        ShortCut = 24611
      end    
      item
        Command = ecToggleMode
        ShortCut = 45
      end    
      item
        Command = ecCopy
        ShortCut = 16429
      end    
      item
        Command = ecPaste
        ShortCut = 8237
      end    
      item
        Command = ecDeleteChar
        ShortCut = 46
      end    
      item
        Command = ecCut
        ShortCut = 8238
      end    
      item
        Command = ecDeleteLastChar
        ShortCut = 8
      end    
      item
        Command = ecDeleteLastChar
        ShortCut = 8200
      end    
      item
        Command = ecDeleteLastWord
        ShortCut = 16392
      end    
      item
        Command = ecUndo
        ShortCut = 32776
      end    
      item
        Command = ecRedo
        ShortCut = 40968
      end    
      item
        Command = ecLineBreak
        ShortCut = 13
      end    
      item
        Command = ecSelectAll
        ShortCut = 16449
      end    
      item
        Command = ecCopy
        ShortCut = 16451
      end    
      item
        Command = ecBlockIndent
        ShortCut = 24649
      end    
      item
        Command = ecLineBreak
        ShortCut = 16461
      end    
      item
        Command = ecInsertLine
        ShortCut = 16462
      end    
      item
        Command = ecDeleteWord
        ShortCut = 16468
      end    
      item
        Command = ecBlockUnindent
        ShortCut = 24661
      end    
      item
        Command = ecPaste
        ShortCut = 16470
      end    
      item
        Command = ecCut
        ShortCut = 16472
      end    
      item
        Command = ecDeleteLine
        ShortCut = 16473
      end    
      item
        Command = ecDeleteEOL
        ShortCut = 24665
      end    
      item
        Command = ecUndo
        ShortCut = 16474
      end    
      item
        Command = ecRedo
        ShortCut = 24666
      end    
      item
        Command = ecGotoMarker0
        ShortCut = 16432
      end    
      item
        Command = ecGotoMarker1
        ShortCut = 16433
      end    
      item
        Command = ecGotoMarker2
        ShortCut = 16434
      end    
      item
        Command = ecGotoMarker3
        ShortCut = 16435
      end    
      item
        Command = ecGotoMarker4
        ShortCut = 16436
      end    
      item
        Command = ecGotoMarker5
        ShortCut = 16437
      end    
      item
        Command = ecGotoMarker6
        ShortCut = 16438
      end    
      item
        Command = ecGotoMarker7
        ShortCut = 16439
      end    
      item
        Command = ecGotoMarker8
        ShortCut = 16440
      end    
      item
        Command = ecGotoMarker9
        ShortCut = 16441
      end    
      item
        Command = ecSetMarker0
        ShortCut = 24624
      end    
      item
        Command = ecSetMarker1
        ShortCut = 24625
      end    
      item
        Command = ecSetMarker2
        ShortCut = 24626
      end    
      item
        Command = ecSetMarker3
        ShortCut = 24627
      end    
      item
        Command = ecSetMarker4
        ShortCut = 24628
      end    
      item
        Command = ecSetMarker5
        ShortCut = 24629
      end    
      item
        Command = ecSetMarker6
        ShortCut = 24630
      end    
      item
        Command = ecSetMarker7
        ShortCut = 24631
      end    
      item
        Command = ecSetMarker8
        ShortCut = 24632
      end    
      item
        Command = ecSetMarker9
        ShortCut = 24633
      end    
      item
        Command = EcFoldLevel1
        ShortCut = 41009
      end    
      item
        Command = EcFoldLevel2
        ShortCut = 41010
      end    
      item
        Command = EcFoldLevel3
        ShortCut = 41011
      end    
      item
        Command = EcFoldLevel4
        ShortCut = 41012
      end    
      item
        Command = EcFoldLevel5
        ShortCut = 41013
      end    
      item
        Command = EcFoldLevel6
        ShortCut = 41014
      end    
      item
        Command = EcFoldLevel7
        ShortCut = 41015
      end    
      item
        Command = EcFoldLevel8
        ShortCut = 41016
      end    
      item
        Command = EcFoldLevel9
        ShortCut = 41017
      end    
      item
        Command = EcFoldLevel0
        ShortCut = 41008
      end    
      item
        Command = EcFoldCurrent
        ShortCut = 41005
      end    
      item
        Command = EcUnFoldCurrent
        ShortCut = 41003
      end    
      item
        Command = EcToggleMarkupWord
        ShortCut = 32845
      end    
      item
        Command = ecNormalSelect
        ShortCut = 24654
      end    
      item
        Command = ecColumnSelect
        ShortCut = 24643
      end    
      item
        Command = ecLineSelect
        ShortCut = 24652
      end    
      item
        Command = ecTab
        ShortCut = 9
      end    
      item
        Command = ecShiftTab
        ShortCut = 8201
      end    
      item
        Command = ecMatchBracket
        ShortCut = 24642
      end    
      item
        Command = ecColSelUp
        ShortCut = 40998
      end    
      item
        Command = ecColSelDown
        ShortCut = 41000
      end    
      item
        Command = ecColSelLeft
        ShortCut = 40997
      end    
      item
        Command = ecColSelRight
        ShortCut = 40999
      end    
      item
        Command = ecColSelPageDown
        ShortCut = 40994
      end    
      item
        Command = ecColSelPageBottom
        ShortCut = 57378
      end    
      item
        Command = ecColSelPageUp
        ShortCut = 40993
      end    
      item
        Command = ecColSelPageTop
        ShortCut = 57377
      end    
      item
        Command = ecColSelLineStart
        ShortCut = 40996
      end    
      item
        Command = ecColSelLineEnd
        ShortCut = 40995
      end    
      item
        Command = ecColSelEditorTop
        ShortCut = 57380
      end    
      item
        Command = ecColSelEditorBottom
        ShortCut = 57379
      end>
    MouseActions = <>
    MouseTextActions = <>
    MouseSelActions = <>
    Lines.Strings = (
      'SynEdit1'
    )
    VisibleSpecialChars = [vscSpace, vscTabAtLast]
    SelectedColor.BackPriority = 50
    SelectedColor.ForePriority = 50
    SelectedColor.FramePriority = 50
    SelectedColor.BoldPriority = 50
    SelectedColor.ItalicPriority = 50
    SelectedColor.UnderlinePriority = 50
    SelectedColor.StrikeOutPriority = 50
    ScrollOnEditLeftOptions.ScrollExtraPercent = 20
    ScrollOnEditLeftOptions.ScrollExtraMax = 10
    ScrollOnEditRightOptions.ScrollExtraPercent = 30
    ScrollOnEditRightOptions.ScrollExtraMax = 25
    BracketHighlightStyle = sbhsBoth
    BracketMatchColor.Background = clNone
    BracketMatchColor.Foreground = clNone
    BracketMatchColor.Style = [fsBold]
    FoldedCodeColor.Background = clNone
    FoldedCodeColor.Foreground = clGray
    FoldedCodeColor.FrameColor = clGray
    MouseLinkColor.Background = clNone
    MouseLinkColor.Foreground = clBlue
    LineHighlightColor.Background = clNone
    LineHighlightColor.Foreground = clNone
    inline SynLeftGutterPartList1: TSynGutterPartList
      object SynGutterMarks1: TSynGutterMarks
        Width = 24
        MouseActions = <>
      end
      object SynGutterLineNumber1: TSynGutterLineNumber
        Width = 17
        MouseActions = <>
        MarkupInfo.Background = clBtnFace
        MarkupInfo.Foreground = clNone
        DigitCount = 2
        ShowOnlyLineNumbersMultiplesOf = 1
        ZeroStart = False
        LeadingZeros = False
      end
      object SynGutterChanges1: TSynGutterChanges
        Width = 4
        MouseActions = <>
        ModifiedColor = 59900
        SavedColor = clGreen
      end
      object SynGutterSeparator1: TSynGutterSeparator
        Width = 2
        MouseActions = <>
        MarkupInfo.Background = clWhite
        MarkupInfo.Foreground = clGray
      end
      object SynGutterCodeFolding1: TSynGutterCodeFolding
        MouseActions = <>
        MarkupInfo.Background = clNone
        MarkupInfo.Foreground = clGray
        MouseActionsExpanded = <>
        MouseActionsCollapsed = <>
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Height = 26
    Top = 0
    Width = 500
    Caption = 'ToolBar1'
    TabOrder = 2
    object ToolButton1: TToolButton
      Left = 1
      Top = 2
      Caption = 'ToolButton1'
    end
  end
  object pnlInfo: TPanel
    Left = 0
    Height = 44
    Top = 360
    Width = 500
    Align = alBottom
    BevelOuter = bvNone
    ClientHeight = 44
    ClientWidth = 500
    Color = clInfoBk
    ParentColor = False
    TabOrder = 3
    object Image1: TImage
      Left = 8
      Height = 32
      Top = 4
      Width = 32
      Picture.Data = {
        1754506F727461626C654E6574776F726B477261706869634008000089504E47
        0D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000
        1974455874536F6674776172650041646F626520496D616765526561647971C9
        653C000007E24944415478DA9C576D7054E5157EDEFBB11FD9EC269B6C42B231
        1F7C1913BE0A5661B0B66347B19A527054507E2852DB19FBA3EDAFB633F567DB
        1F763A53FBA3DA0E655A07B0A0190B0CC5A9954E8BE2808840029244F241E226
        219BCDEE26D9BBD9BD1F3DE7DEDDB82C9B9472674EB2F3BEF73DE739E73DE739
        E70ADCE653F5F82B01E1BFEB455328CF9B96B4D6B2ACF93D2104092009F39264
        197FB192C37B27FFFE93E4EDE815FF6B3FF4C46BCB4C77F5DF14555DBD79C352
        AC680A614573082E55866158304D0386696156CBE2DA5014032393F8F46A04A6
        9EED165A74FBC43B2FF5931EEB4E00C8D5CF1CFABDACBABEFFCCE3EBB1794333
        BC2EA0DC0B783DE42D6BB51C21FBD00D20316B229AC8204672FECA173879BA87
        81FC71E2CD1D3FA0D78DFF07801ADCF9D6D0AA95E1FA179EBC1F0D350AAA2A80
        339FC571E6F2382EF74F62229EB6C38E9C7BA14A0FDA9BAA706F6B2DD62CAFC2
        F00D0D3D4371FCE3540F4622B1D1E8C1279BE9B5ECED00502B761C1E7CFAB1F5
        E12D0FAC404308B81649E1B76F5F407C3A03559620C982EE5BCC1FB6EC6858F6
        55E886890A9F1B7B3ADA515FE5C3C5BE183EEE1AC1D94FFB23936F3EDD520C42
        BED5F3C3D79F7A6C7D3D1B6FA907F6BFD78F7DC7AFD856BC2E05AA2243910884
        944F3E015912F61A837329920DE274F728B2BA898736DC455724C19424FF74ED
        A3DF4B751DFE1DD9314B0190AB77EC7FBDBDB5F1EB3B3BD6615958E00F47FA70
        EAE228CADC2A195620B3F7648C4F67740B5AD64486129163A1D01E8B2C39C240
        87C6A731954CE3E1FB9AA0CD59189F9C2DB75ABE154E75771ECF27661E80A8FC
        E6CBAD6AB0F94F3FDEFD0D2C6F5070E8E4103EB814A18463E38E6116BEF80C79
        F6D38EA5D8B767357EF44833FC5E051FF4C5EDF7E4DC7BB2EC808A4CA6C87816
        1BDBEB30AB0BAA92A90DEED0CABF6A03FF9964C3523EF452CDEACEA7B6ACA33B
        7763684CC3BFCE8F90E78A1D52569A17C6C077FDDCE6F07CE8F837AFF15EE1BB
        0CC8E392F1F1D571C4A6D3686B09A27D651872EDDA4EB6390FA0EC9E8E90AC7A
        DA367EA5093594ED7CE73EF2DC45779E0F6D5E5459B6FF173F857B85E226BEF0
        9223474FF76379B8020DE14A48AAABCD4736F300644FDBB63D1BD73692C7C0C5
        8124918A6E7BAE1478332F145A2F7975F0CCE8BC71FECD6BBC279738C39148CF
        E918184BA036E8455D6D0065ABB6EF61DB0AFD71596AF9AE96C62AF87D324E5D
        9A22D40E7A51A248254A1D0FEDBFFACF61FCFADDEBF69A9B0C3000451625EB5A
        86B37E2D12476B63083E1F3199CBBF8B967EC3003C96E46A6B6A0852320103A3
        71A259C5F6A6F8E1B4D529EB758B2B2197949CC19C1BEC3D835E907305C66229
        3CB8D68B32E20921BBDBD8360350984E550A067B9C4C65ED7ACF2B2F7C4CCB21
        9C0F7F76EF2D7B0FBE721E6E26286921FB82AA41B7F9C2A6F05CEA487936CC64
        0D6A2CB4A290278A73D7C5C27BAA2A70DFAFCE95880E55011575A9734E493AE7
        D9015D37F391124A9E8F0D622F46A690162612492C104C52E2516F6D6E929427
        A1D2E79CA665D951CC9AE697EAF21D81174D1B002115A2E415E4C1BA4AE4876A
        D3B15814002C27028661DC0C80BDD5B40CE816100CB891CE180B2A6204A51274
        3EDC0B9C63EFFD6ED6AD2343FAF301B6DB3A0CAD6F303285683C8BA6257E1B90
        2C490B8A22CB2588485EF48C2C24D4547A314CFD2195CA5039697D6C9B01E834
        421DFB62740A91680ACBEA034E594962C1845A340225C46EDF847949B01CBDC3
        31CCA5B3D0E3C3C7D8360348CF7CF2E703BD0313368070C80F7F996A87A814AB
        39CDA60441498BBC4FBA7CD451FD652EF45E8FD175A7317D6EDF01B62DD91538
        D1336EA467FBAF7C3E462F24F0B5350D367789A2AB909C218012492A9164CE9E
        54147A4938E16FA559F2DC67A3482434884CAA3F4336D9B69C2338D99A4B5C89
        A9F7ECF2077CB8BBA9D2461E9F992BF0DA9982B8520E7DB7F51600CF7EB50647
        2EC5A842BE6CC97C951CC9FAEA720802F8CEBF7BA12566913CFBFA73D9D8C035
        3AA629B9F329EDF3F7BBBCEDDB8E9CBDE0DBE626267C74532374B216999876C6
        2FE120759337BBF7F7D943A895E333672081DD43D8B82818D382E4505DD08FBD
        472FD25DA76024468EA4FADEEF629B8503093383A1F59CB8602DFBF60EE2B4B2
        846660D3AA3ADBE3A43647DE48B9C4E4B14BB6FBBC4775841B11AF2939EF452E
        4F6A2ACAC97839DE38D1851B134932303B79E3AD1776932D6EA5E9E2918CD9C1
        4C75BF7D2255F7F0F6AC29958D27E6B0A62584FA503912331A51B5E524678EA8
        949B1253CC478A6780A6DA4AD02703DE38DE4DC6A7A1CF24A36307766E251BC3
        24C9FC5C281735BB0C4FADA9CB9DEFCE85B73C319598F38E4C69A450C1BAE5B5
        76167362999669138BF335C4DD10762402D4666BC9EB50C04B093786CE933D98
        49CCC0D466626307777E87740F92C4B8FC161DCB79CC27690E6D7DF56525D8DC
        514FAD3A5415B049AA8578A2A1C647E156EC3BB6721D52CBEA188C24E95B208A
        AB4331CCD208A6A73330E243C7278EFEF017A46F88245A3C962FF861421224A9
        F3B43CB0DABFE9A55F4AAABF2550E1859B27641AD7383798D33951F96A4C6A66
        19A25993F85CA721D4CA4E0F263F7AEDE7DAE087DDA4678C64EA763F4C0A47F6
        32926A921A25105E12B8FFC5AD4AF5DD8F08976FE9CD4A84ADC9CACC0C64A3BD
        EF25CFEE3DA627235CE7132493B98C37EEE8E334170D06E2230990D0D80A6FC1
        448D824AD24812B9249BCD19CEDEE9C769A988B8788CCA7551516A62CB955766
        218F8B9FFF0A30009FD5073C374C9A0F0000000049454E44AE426082
      }
    end
    object Label1: TLabel
      Left = 48
      Height = 15
      Top = 8
      Width = 153
      Caption = 'Każda pozycja w osobnej linii'
      ParentColor = False
    end
  end
end
