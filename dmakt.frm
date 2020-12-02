object DMA: TDMA
  OnCreate = DataModuleCreate
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
    Sequence = sqAkt
    SequenceField = 'IDAKT'
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
    Sequence = sqAkt
    SequenceField = 'IDAKAA'
    Left = 80
    Top = 16
  end
  object sqAkt: TZSequence
    Connection = DMG.ZConn
    SequenceName = 'SEQ_AKTORZY'
    Left = 24
    Top = 144
  end
  object sqAKAA: TZSequence
    Connection = DMG.ZConn
    SequenceName = 'SEQ_AKAA'
    Left = 80
    Top = 144
  end
  object tbAkt: TZTable
    Connection = DMG.ZConn
    TableName = 'AKTORZY'
    Left = 240
    Top = 16
  end
end
