object DMA: TDMA
  OldCreateOrder = False
  Height = 381
  HorizontalOffset = 86
  VerticalOffset = 86
  Width = 293
  object qAkt: TZQuery
    SortedFields = 'NAZWAAKT'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT * FROM AKTORZY'
    )
    Params = <>
    IndexFieldNames = 'NAZWAAKT Asc'
    Left = 24
    Top = 16
  end
  object qrAktFilmy: TZReadOnlyQuery
    SortedFields = 'TytulFilmu'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT F.*, IFNULL(K.NazwaKraju,''Brak'') AS Kraj, IFNULL(JZ.NazwaJzk,''Brak'') AS Jezyk, IFNULL(JN.NazwaJzk,''Brak'') AS Napisy, '
      'IFNULL(JD.NazwaJzk,''Brak'') AS Dubbing, CASE WHEN F.OcenaFilmu > 0 THEN O.NazwaOceny ELSE OP.NazwaOceny END AS NazwaOceny'
      'FROM FilmyAkt FA'
      'JOIN Filmy F ON F.IdFilmu = FA.IdFilmu'
      'LEFT JOIN Oceny O ON O.IdOceny = F.OcenaFilmu'
      'LEFT JOIN Kraje K ON K.IdKraju = F.IdKraju'
      'LEFT JOIN Jezyki JZ ON JZ.IdJzk = F.IdJzk'
      'LEFT JOIN Jezyki JN ON JN.IdJzk = F.NapisyFilmu'
      'LEFT JOIN Jezyki JD ON JD.IdJzk = F.DubingFilmu'
      'LEFT JOIN PlikiFilmy PF ON PF.IdFilmu = F.IdFilmu'
      'LEFT JOIN RejestrPlikow R ON R.IdRip = PF.IdRip'
      'LEFT JOIN Oceny OP ON OP.IdOceny = R.OcenaRip'
      'WHERE FA.IdAkt = :IDAKT'
      ''
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDAKT'
        ParamType = ptInput
        SQLType = stInteger
      end>
    IndexFieldNames = 'TytulFilmu Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 152
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDAKT'
        ParamType = ptInput
        SQLType = stInteger
      end>
    object qrAktFilmyIdFilmu: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdFilmu'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyTytulFilmu: TZRawStringField
      FieldKind = fkData
      FieldName = 'TytulFilmu'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 150
    end
    object qrAktFilmyRokFilmu: TZInt64Field
      FieldKind = fkData
      FieldName = 'RokFilmu'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyOcenaFilmu: TZSmallIntField
      FieldKind = fkData
      FieldName = 'OcenaFilmu'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyDlugoscFilmu: TZSmallIntField
      FieldKind = fkData
      FieldName = 'DlugoscFilmu'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyIdSerii: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdSerii'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyIdKraju: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdKraju'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyIdJzk: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdJzk'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyDubingFilmu: TZInt64Field
      FieldKind = fkData
      FieldName = 'DubingFilmu'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyNapisyFilmu: TZInt64Field
      FieldKind = fkData
      FieldName = 'NapisyFilmu'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyOkladkaFilmu: TZBlobField
      FieldKind = fkData
      FieldName = 'OkladkaFilmu'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qrAktFilmyOkladkaScFilmu: TZRawStringField
      FieldKind = fkData
      FieldName = 'OkladkaScFilmu'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 300
    end
    object qrAktFilmyOpisFilmu: TZRawCLobField
      FieldKind = fkData
      FieldName = 'OpisFilmu'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      BlobType = ftMemo
      Transliterate = False
    end
    object qrAktFilmyKomentarzFilmu: TZRawCLobField
      FieldKind = fkData
      FieldName = 'KomentarzFilmu'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      BlobType = ftMemo
      Transliterate = False
    end
    object qrAktFilmyNazwaOceny: TZRawStringField
      FieldKind = fkData
      FieldName = 'NazwaOceny'
      Index = 14
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 30
    end
    object qrAktFilmyKraj: TStringField
      FieldKind = fkData
      FieldName = 'Kraj'
      Index = 15
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object qrAktFilmyJezyk: TStringField
      FieldKind = fkData
      FieldName = 'Jezyk'
      Index = 16
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object qrAktFilmyNapisy: TStringField
      FieldKind = fkData
      FieldName = 'Napisy'
      Index = 17
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
    object qrAktFilmyDubbing: TStringField
      FieldKind = fkData
      FieldName = 'Dubbing'
      Index = 18
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 100
    end
  end
  object dsAkaA: TDataSource
    DataSet = qAkaA
    Left = 80
    Top = 80
  end
  object dsAktFilmy: TDataSource
    DataSet = qrAktFilmy
    Left = 152
    Top = 80
  end
  object tbAkt: TZTable
    TableName = 'AKTORZY'
    Left = 72
    Top = 192
  end
  object qAkaA: TZQuery
    SortedFields = 'NazwaAKAA'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdAKAA, NazwaAKAA FROM AKA_A'
      'WHERE IdAkt = :IDAKT'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDAKT'
        ParamType = ptInput
        SQLType = stInteger
      end>
    IndexFieldNames = 'NazwaAKAA Asc'
    Left = 80
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDAKT'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object qCmd: TZQuery
    Connection = DMG.ZConn
    Params = <>
    Left = 24
    Top = 192
  end
  object qAktUrl: TZQuery
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdAlu, IdAkt, UrlAlu, OpisAlu'
      'FROM AktLinkiUrl'
      'WHERE IdAkt = :IDAKT'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDAKT'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Left = 216
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDAKT'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object dsAktUrl: TDataSource
    DataSet = qAktUrl
    Left = 216
    Top = 80
  end
end
