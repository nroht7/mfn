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
    Connection = DMG.ZConn
    SortedFields = 'NazwaAkt'
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
    Connection = DMG.ZConn
    SortedFields = 'NazwaAKAF'
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
    Left = 288
    Top = 360
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
    Connection = DMG.ZConn
    AfterScroll = qMainAfterScroll
    SQL.Strings = (
      'SELECT P.IdPl, P.IdFld, P.IdRip, P.IdTypPl, P.NazwaPl, P.ScPl, P.WzgScPl, P.IdRozszPl, P.RozmiarPl, P.StatusPl, I.IloscUruchomienIpf, P.DataDodPl, P.DataModPl,'
      'R.Crc32Rip, R.Md5Rip, T.NazwaTypPl, O.NazwaRozszPl, O.ImgIdxRozszPl, I.WysokoscIpf, I.SzerokoscIpf'
      'FROM Pliki P'
      'JOIN RejestrPlikow R ON R.IdRip = P.IdRip'
      'LEFT JOIN TypyPl T ON T.IdTypPl = P.IdTypPl'
      'LEFT JOIN RozszerzeniaPl O ON O.IdRozszPl = P.IdRozszPl'
      'LEFT JOIN InfoPlikiFilmy I ON I.IdRip = R.IdRip'
      'ORDER BY P.NazwaPl'
    )
    Params = <>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 24
    Top = 16
  end
  object qCmd: TZQuery
    Connection = DMG.ZConn
    Params = <>
    Left = 24
    Top = 300
  end
  object qMainInfo: TZQuery
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
    Connection = DMG.ZConn
    SortedFields = 'NazwaJzk'
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
  end
  object dsMainPlik: TDataSource
    DataSet = qMainPlik
    Left = 112
    Top = 72
  end
  object qSerie: TZReadOnlyQuery
    Connection = DMG.ZConn
    SortedFields = 'NazwaSerii'
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
    Connection = DMG.ZConn
    SortedFields = 'NazwaKraju'
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
    Connection = DMG.ZConn
    SortedFields = 'NazwaRodzaju'
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
    Connection = DMG.ZConn
    SortedFields = 'NazwaAkt'
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
end
