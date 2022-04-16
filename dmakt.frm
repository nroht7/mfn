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
    Connection = DMG.ZConn
    Params = <>
    Options = [doCalcDefaults, doPreferPrepared]
    Left = 152
    Top = 16
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
