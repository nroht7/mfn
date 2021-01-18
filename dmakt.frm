object DMA: TDMA
  OldCreateOrder = False
  Height = 381
  HorizontalOffset = 0
  VerticalOffset = 0
  Width = 293
  object qAkt: TZQuery
    Connection = DMG.ZConn
    SortedFields = 'NAZWAAKT'
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
  object dsAkt: TDataSource
    DataSet = qAkt
    Left = 24
    Top = 80
  end
  object dsAkaA: TDataSource
    DataSet = tbAKAA
    Left = 80
    Top = 80
  end
  object dsAktFilmy: TDataSource
    DataSet = qrAktFilmy
    Left = 152
    Top = 80
  end
  object tbAKAA: TZTable
    Connection = DMG.ZConn
    SortedFields = 'NAZWAAKAA'
    TableName = 'AKA_A'
    MasterFields = 'IDAKT'
    MasterSource = dsAkt
    IndexFieldNames = 'NAZWAAKAA Asc'
    Left = 80
    Top = 16
  end
  object tbAkt: TZTable
    TableName = 'AKTORZY'
    Left = 240
    Top = 16
  end
end
