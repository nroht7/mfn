object DMM: TDMM
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  OldCreateOrder = False
  Height = 619
  HorizontalOffset = 86
  VerticalOffset = 86
  Width = 497
  object qMainTag: TZReadOnlyQuery
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT R.IdRip, R.IdTag, T.NazwaTag, T.OpisTag'
      'FROM RejPlTag R'
      'JOIN Tagi T ON T.IdTag = R.IdTag'
      'WHERE IdRip = :IDRIP'
      'ORDER BY T.NazwaTag'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDRIP'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 384
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDRIP'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object qMainGat: TZReadOnlyQuery
    Connection = DMG.ZConn
    Params = <>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 96
    Top = 176
  end
  object qMainAkt: TZReadOnlyQuery
    SortedFields = 'NazwaAkt'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT A.IdAkt, A.NazwaAkt, A.OcenaAkt, A.ZdjecieScAkt, A.OpisAkt'
      'FROM Aktorzy A'
      'JOIN FilmyAkt F ON F.IdAkt = A.IdAkt'
      'WHERE F.IdFilmu = :IDFILMU'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDFILMU'
        ParamType = ptInput
        SQLType = stInteger
      end>
    IndexFieldNames = 'NazwaAkt Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 168
    Top = 176
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDFILMU'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object qMainSerie: TZReadOnlyQuery
    Connection = DMG.ZConn
    Params = <>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 240
    Top = 176
  end
  object qMainLinki: TZReadOnlyQuery
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdLnk, TrescLnk, OpisLnk FROM LinkiWWW'
      'WHERE IdFilmu = :IDFILMU'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDFILMU'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 312
    Top = 176
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDFILMU'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object qMainAkaF2: TZReadOnlyQuery
    SortedFields = 'NazwaAKAF'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdAKAF, IdFilmu, NazwaAKAF FROM AKA_F'
      'WHERE IdFilmu = :IdFilmu'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IdFilmu'
        ParamType = ptInput
        SQLType = stInteger
      end>
    IndexFieldNames = 'NazwaAKAF Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 384
    Top = 312
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IdFilmu'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object dsMainInfo: TDataSource
    DataSet = qMainInfo
    Left = 176
    Top = 72
  end
  object dsMainTag: TDataSource
    DataSet = qMainTag
    Left = 384
    Top = 72
  end
  object dsMainGat: TDataSource
    DataSet = qMainGat
    Left = 96
    Top = 232
  end
  object dsMainAkt: TDataSource
    DataSet = qMainAkt
    Left = 168
    Top = 232
  end
  object dsMainSerie: TDataSource
    DataSet = qMainSerie
    Left = 240
    Top = 232
  end
  object dsMainLinki: TDataSource
    DataSet = qMainLinki
    Left = 312
    Top = 232
  end
  object dsMainAkaF: TDataSource
    DataSet = qMainAkaF
    Left = 384
    Top = 232
  end
  object qMain: TZReadOnlyQuery
    AfterScroll = qMainAfterScroll
    OnCalcFields = qMainCalcFields
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT P.IdPl, P.IdFld, P.IdRip, P.IdTypPl, P.NazwaPl, P.ScPl, P.WzgScPl, P.IdRozszPl, P.RozmiarPl, P.StatusPl, I.IloscUruchomienIpf, P.DataDodPl, P.DataModPl,'
      'R.Crc32Rip, R.Md5Rip, T.NazwaTypPl, O.NazwaRozszPl, O.ImgIdxRozszPl, I.WysokoscIpf, I.SzerokoscIpf, R.OcenaRip, O.NazwaOceny'
      'FROM Pliki P'
      'JOIN RejestrPlikow R ON R.IdRip = P.IdRip'
      'LEFT JOIN TypyPl T ON T.IdTypPl = P.IdTypPl'
      'LEFT JOIN RozszerzeniaPl O ON O.IdRozszPl = P.IdRozszPl'
      'LEFT JOIN InfoPlikiFilmy I ON I.IdRip = R.IdRip'
      'LEFT JOIN Oceny O ON O.IdOceny = R.OcenaRip'
      'ORDER BY P.NazwaPl'
    )
    Params = <>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 24
    Top = 16
    object qMainIdPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdPl'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainIdFld: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdFld'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainIdRip: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdRip'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainIdTypPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdTypPl'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainNazwaPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'NazwaPl'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 300
    end
    object qMainScPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'ScPl'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 300
    end
    object qMainWzgScPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'WzgScPl'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 300
    end
    object qMainIdRozszPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdRozszPl'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainRozmiarPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'RozmiarPl'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainStatusPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'StatusPl'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 1
    end
    object qMainIloscUruchomienIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'IloscUruchomienIpf'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainDataDodPl: TZDateTimeField
      FieldKind = fkData
      FieldName = 'DataDodPl'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      DisplayFormat.Format = 'dd.mm.yyyy hh:nn:ss'
      DisplayFormat.SecondFractionSeperator = ','
      DisplayFormat.SecondFractionOption = foSetByFormat
    end
    object qMainDataModPl: TZDateTimeField
      FieldKind = fkData
      FieldName = 'DataModPl'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      DisplayFormat.Format = 'dd/mm/yyyy hh:nn:ss'
      DisplayFormat.SecondFractionSeperator = ','
      DisplayFormat.SecondFractionOption = foSetByFormat
    end
    object qMainCrc32Rip: TZRawStringField
      FieldKind = fkData
      FieldName = 'Crc32Rip'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 8
    end
    object qMainMd5Rip: TZRawStringField
      FieldKind = fkData
      FieldName = 'Md5Rip'
      Index = 14
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 32
    end
    object qMainNazwaTypPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'NazwaTypPl'
      Index = 15
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 100
    end
    object qMainNazwaRozszPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'NazwaRozszPl'
      Index = 16
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 30
    end
    object qMainImgIdxRozszPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'ImgIdxRozszPl'
      Index = 17
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainWysokoscIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'WysokoscIpf'
      Index = 18
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainSzerokoscIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'SzerokoscIpf'
      Index = 19
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainOcenaRip: TZInt64Field
      FieldKind = fkData
      FieldName = 'OcenaRip'
      Index = 20
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
    end
    object qMainNazwaOceny: TZRawStringField
      FieldKind = fkData
      FieldName = 'NazwaOceny'
      Index = 21
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = True
      Required = False
      Size = 30
    end
    object qMainC_Rozmiar: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Rozmiar'
      Index = 22
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 30
    end
    object qMainC_Status: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Status'
      Index = 23
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
  end
  object qCmd: TZQuery
    Connection = DMG.ZConn
    Params = <>
    Left = 24
    Top = 300
  end
  object qMainInfo: TZQuery
    OnCalcFields = qMainInfoCalcFields
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdRip, KodekVideoIpf,KodekAudioIpf,KontenerIpf,FormatIpf,WysokoscIpf,SzerokoscIpf,DlugoscIpf, '
      'IloscStrumIpf,IloscUruchomienIpf, DaneIpf, OpisIpf, IdRodzaju'
      'FROM InfoPlikiFilmy'
      'WHERE IdRip = :IDRIP'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDRIP'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Left = 176
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDRIP'
        ParamType = ptInput
        SQLType = stInteger
      end>
    object qMainInfoIdRip: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdRip'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainInfoKodekVideoIpf: TZRawStringField
      FieldKind = fkData
      FieldName = 'KodekVideoIpf'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 50
    end
    object qMainInfoKodekAudioIpf: TZRawStringField
      FieldKind = fkData
      FieldName = 'KodekAudioIpf'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 50
    end
    object qMainInfoKontenerIpf: TZRawStringField
      FieldKind = fkData
      FieldName = 'KontenerIpf'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 50
    end
    object qMainInfoFormatIpf: TZRawStringField
      FieldKind = fkData
      FieldName = 'FormatIpf'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainInfoWysokoscIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'WysokoscIpf'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainInfoSzerokoscIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'SzerokoscIpf'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainInfoDlugoscIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'DlugoscIpf'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainInfoIloscStrumIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'IloscStrumIpf'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainInfoIloscUruchomienIpf: TZInt64Field
      FieldKind = fkData
      FieldName = 'IloscUruchomienIpf'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainInfoDaneIpf: TZRawCLobField
      FieldKind = fkData
      FieldName = 'DaneIpf'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      BlobType = ftMemo
      Transliterate = False
    end
    object qMainInfoOpisIpf: TZRawCLobField
      FieldKind = fkData
      FieldName = 'OpisIpf'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      BlobType = ftMemo
      Transliterate = False
    end
    object qMainInfoIdRodzaju: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdRodzaju'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainInfoCDlugosc: TStringField
      FieldKind = fkCalculated
      FieldName = 'CDlugosc'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 30
    end
  end
  object dsJezyki: TDataSource
    DataSet = qJezyki
    Left = 24
    Top = 416
  end
  object qMainFilm: TZQuery
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdFilmu, TytulFilmu, RokFilmu, OcenaFilmu, DlugoscFilmu, OkladkaFilmu, OkladkaScFilmu, OpisFilmu, KomentarzFilmu, IdSerii,'
      'IdJzk,DubingFilmu,NapisyFilmu, IdKraju'
      'FROM Filmy'
      'WHERE IdFilmu = :IDFILMU'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDFILMU'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Left = 248
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDFILMU'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object qMainFilmPl: TZQuery
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT P.IdRip, P.IdFilmu, F.TytulFilmu'
      'FROM PlikiFilmy P'
      'JOIN Filmy F ON F.IdFilmu = P.IdFilmu'
      'WHERE P.IdRip = :IDRIP'
      'ORDER BY F.TytulFilmu'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDRIP'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Left = 320
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDRIP'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object dsMainFilm: TDataSource
    DataSet = qMainFilm
    Left = 248
    Top = 72
  end
  object dsMainFilmPl: TDataSource
    DataSet = qMainFilmPl
    Left = 320
    Top = 72
  end
  object qJezyki: TZReadOnlyQuery
    SortedFields = 'NazwaJzk'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdJzk, NazwaJzk, OpisJzk FROM Jezyki'
    )
    Params = <>
    IndexFieldNames = 'NazwaJzk Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 24
    Top = 368
  end
  object qMainPlik: TZQuery
    OnCalcFields = qMainPlikCalcFields
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdPl, IdFld, IdRip, IdTypPl, NazwaPl, ScPl, WzgScPl, IdRozszPl, RozmiarPl, StatusPl, DataDodPl, DataModPl, OpisPl '
      'FROM Pliki'
      'WHERE IdPl = :IDPLIK'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IDPLIK'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Left = 112
    Top = 16
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IDPLIK'
        ParamType = ptInput
        SQLType = stInteger
      end>
    object qMainPlikIdPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdPl'
      Index = 0
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainPlikIdFld: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdFld'
      Index = 1
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainPlikIdRip: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdRip'
      Index = 2
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainPlikIdTypPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdTypPl'
      Index = 3
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainPlikNazwaPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'NazwaPl'
      Index = 4
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 300
    end
    object qMainPlikScPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'ScPl'
      Index = 5
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 300
    end
    object qMainPlikWzgScPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'WzgScPl'
      Index = 6
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 300
    end
    object qMainPlikIdRozszPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'IdRozszPl'
      Index = 7
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
    end
    object qMainPlikRozmiarPl: TZInt64Field
      FieldKind = fkData
      FieldName = 'RozmiarPl'
      Index = 8
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainPlikStatusPl: TZRawStringField
      FieldKind = fkData
      FieldName = 'StatusPl'
      Index = 9
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
      Size = 1
    end
    object qMainPlikDataDodPl: TZDateTimeField
      FieldKind = fkData
      FieldName = 'DataDodPl'
      Index = 10
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainPlikDataModPl: TZDateTimeField
      FieldKind = fkData
      FieldName = 'DataModPl'
      Index = 11
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = True
    end
    object qMainPlikOpisPl: TZRawCLobField
      FieldKind = fkData
      FieldName = 'OpisPl'
      Index = 12
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      BlobType = ftMemo
      Transliterate = False
    end
    object qMainPlikC_Rozmiar: TStringField
      FieldKind = fkCalculated
      FieldName = 'C_Rozmiar'
      Index = 13
      LookupCache = False
      ProviderFlags = [pfInUpdate, pfInWhere]
      ReadOnly = False
      Required = False
      Size = 30
    end
  end
  object dsMainPlik: TDataSource
    DataSet = qMainPlik
    Left = 112
    Top = 72
  end
  object qSerie: TZReadOnlyQuery
    SortedFields = 'NazwaSerii'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdSerii, NazwaSerii, OpisSerii'
      'FROM Serie'
    )
    Params = <>
    IndexFieldNames = 'NazwaSerii Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 80
    Top = 368
  end
  object qKraje: TZReadOnlyQuery
    SortedFields = 'NazwaKraju'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdKraju, nazwaKraju, OpisKraju'
      'FROM Kraje'
    )
    Params = <>
    IndexFieldNames = 'NazwaKraju Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 138
    Top = 368
  end
  object dsSerie: TDataSource
    DataSet = qSerie
    Left = 80
    Top = 416
  end
  object dsKraje: TDataSource
    DataSet = qKraje
    Left = 136
    Top = 416
  end
  object qRodzaje: TZReadOnlyQuery
    SortedFields = 'NazwaRodzaju'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdRodzaju, NazwaRodzaju, OpisRodzaju '
      'FROM Rodzaje'
    )
    Params = <>
    IndexFieldNames = 'NazwaRodzaju Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 192
    Top = 368
  end
  object dsRodzaje: TDataSource
    DataSet = qRodzaje
    Left = 192
    Top = 416
  end
  object qMainAkaF: TZQuery
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdAKAF, IdFilmu, NazwaAKAF FROM AKA_F'
      'WHERE IdFilmu = :IdFilmu'
    )
    Params = <    
      item
        DataType = ftInteger
        Name = 'IdFilmu'
        ParamType = ptInput
        SQLType = stInteger
      end>
    Left = 384
    Top = 176
    ParamData = <    
      item
        DataType = ftInteger
        Name = 'IdFilmu'
        ParamType = ptInput
        SQLType = stInteger
      end>
  end
  object qMainFiltrAkt: TZReadOnlyQuery
    SortedFields = 'NazwaAkt'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT A.IdAkt, A.NazwaAkt, IFNULL(L.ILOSCF,0) Ilosc'
      'FROM Aktorzy A'
      'LEFT JOIN ('
      'SELECT IdAkt, COUNT(*) AS ILOSCF'
      'FROM FilmyAkt '
      'GROUP BY IdAkt ) L ON L.IdAkt = A.IdAkt'
    )
    Params = <>
    IndexFieldNames = 'NazwaAkt Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 24
    Top = 488
  end
  object dsMFAkt: TDataSource
    DataSet = qMainFiltrAkt
    Left = 24
    Top = 544
  end
  object qMainFiltrTag: TZReadOnlyQuery
    SortedFields = 'NazwaTag'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdTag, NazwaTag '
      'FROM Tagi'
    )
    Params = <>
    IndexFieldNames = 'NazwaTag Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 104
    Top = 488
  end
  object qMainFiltrGat: TZReadOnlyQuery
    SortedFields = 'NazwaGat'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdGat, NazwaGat'
      'FROM Gatunki'
    )
    Params = <>
    IndexFieldNames = 'NazwaGat Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 184
    Top = 488
  end
  object qMainFiltrSer: TZReadOnlyQuery
    SortedFields = 'NazwaSerii'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdSerii, NazwaSerii'
      'FROM Serie'
    )
    Params = <>
    IndexFieldNames = 'NazwaSerii Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 264
    Top = 488
  end
  object dsMFTag: TDataSource
    DataSet = qMainFiltrTag
    Left = 104
    Top = 544
  end
  object dsMFGat: TDataSource
    DataSet = qMainFiltrGat
    Left = 184
    Top = 544
  end
  object dsMFSer: TDataSource
    DataSet = qMainFiltrSer
    Left = 264
    Top = 544
  end
  object qOceny: TZReadOnlyQuery
    SortedFields = 'IdOceny'
    Connection = DMG.ZConn
    SQL.Strings = (
      'SELECT IdOceny, NazwaOceny FROM OCENY'
    )
    Params = <>
    IndexFieldNames = 'IdOceny Asc'
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 248
    Top = 368
  end
  object dsOceny: TDataSource
    DataSet = qOceny
    Left = 248
    Top = 416
  end
end
