object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 380
  Width = 642
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}')
    Left = 48
    Top = 24
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 72
    Top = 96
  end
  object CDSetPlashka: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_STR'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 32
        Size = 8
      end
      item
        Name = 'CODE_TAM'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'CODE_VID'
        DataType = ftFMTBcd
        Precision = 1
        Size = 4
      end
      item
        Name = 'CODE_TIP'
        DataType = ftFMTBcd
        Precision = 3
        Size = 4
      end
      item
        Name = 'LITERA'
        DataType = ftWideString
        Size = 2
      end
      item
        Name = 'NUMBER_SITK'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'CODE_MATERIAL'
        DataType = ftFMTBcd
        Precision = 2
        Size = 4
      end
      item
        Name = 'D_V'
        DataType = ftTimeStamp
      end
      item
        Name = 'D_ON'
        DataType = ftTimeStamp
      end
      item
        Name = 'D_OFF'
        DataType = ftTimeStamp
      end
      item
        Name = 'ID_DOC_ON'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end
      item
        Name = 'ID_DOC_OFF'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end
      item
        Name = 'CODE_PRICH'
        DataType = ftFMTBcd
        Precision = 2
        Size = 4
      end
      item
        Name = 'ID_AKT_UNICHTOJ'
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end
      item
        Name = 'NUM_DOC'
        DataType = ftWideString
        Size = 15
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSPPlashka'
    RemoteServer = DSProviderConnection1
    StoreDefs = True
    Left = 176
    Top = 32
    object CDSetPlashkaID_STR: TFMTBCDField
      FieldName = 'ID_STR'
      Required = True
      Precision = 32
    end
    object CDSetPlashkaCODE_TAM: TWideStringField
      FieldName = 'CODE_TAM'
      OnGetText = CDSetPlashkaCODE_TAMGetText
      FixedChar = True
      Size = 2
    end
    object CDSetPlashkaD_OFF: TSQLTimeStampField
      FieldName = 'D_OFF'
    end
    object CDSetPlashkaCODE_VID: TFMTBCDField
      FieldName = 'CODE_VID'
      Precision = 1
      Size = 0
    end
    object CDSetPlashkaCODE_TIP: TFMTBCDField
      FieldName = 'CODE_TIP'
      Precision = 3
      Size = 0
    end
    object CDSetPlashkaLITERA: TWideStringField
      FieldName = 'LITERA'
      Size = 2
    end
    object CDSetPlashkaNUMBER_SITK: TWideStringField
      FieldName = 'NUMBER_SITK'
      Size = 10
    end
    object CDSetPlashkaCODE_MATERIAL: TFMTBCDField
      FieldName = 'CODE_MATERIAL'
      Precision = 2
      Size = 0
    end
    object CDSetPlashkaD_V: TSQLTimeStampField
      FieldName = 'D_V'
    end
    object CDSetPlashkaD_ON: TSQLTimeStampField
      FieldName = 'D_ON'
    end
    object CDSetPlashkaID_DOC_ON: TFMTBCDField
      FieldName = 'ID_DOC_ON'
      Precision = 15
      Size = 0
    end
    object CDSetPlashkaID_DOC_OFF: TFMTBCDField
      FieldName = 'ID_DOC_OFF'
      Precision = 15
      Size = 0
    end
    object CDSetPlashkaCODE_PRICH: TFMTBCDField
      FieldName = 'CODE_PRICH'
      OnGetText = CDSetPlashkaCODE_PRICHGetText
      Precision = 2
      Size = 0
    end
    object CDSetPlashkaID_AKT_UNICHTOJ: TFMTBCDField
      FieldName = 'ID_AKT_UNICHTOJ'
      Precision = 15
      Size = 0
    end
    object CDSetPlashkaNUM_DOC: TWideStringField
      FieldName = 'NUM_DOC'
      Size = 15
    end
  end
  object DSPlashka: TDataSource
    DataSet = CDSetPlashka
    Left = 240
    Top = 32
  end
  object CDSetCustom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPCustom'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 96
    object CDSetCustomID_TAM: TFMTBCDField
      FieldName = 'ID_TAM'
      Precision = 10
      Size = 0
    end
    object CDSetCustomCODE: TWideStringField
      FieldName = 'CODE'
      Size = 50
    end
    object CDSetCustomNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object CDSetCustomD_ON: TSQLTimeStampField
      FieldName = 'D_ON'
    end
    object CDSetCustomD_OFF: TSQLTimeStampField
      FieldName = 'D_OFF'
    end
  end
  object DSCustom: TDataSource
    DataSet = CDSetCustom
    Left = 240
    Top = 96
  end
  object CDSetVidPL: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPVidPL'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 160
    object CDSetVidPLCODE_VID: TFMTBCDField
      FieldName = 'CODE_VID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 1
      Size = 0
    end
    object CDSetVidPLNAME: TWideStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
  end
  object CDSetTipPL: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODE_VID'
        ParamType = ptInput
      end>
    ProviderName = 'DSPTipPL'
    RemoteServer = DSProviderConnection1
    Left = 176
    Top = 216
    object CDSetTipPLID: TFMTBCDField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 10
      Size = 0
    end
    object CDSetTipPLCODE_VID: TFMTBCDField
      FieldName = 'CODE_VID'
      Precision = 32
    end
    object CDSetTipPLCODE_TIP: TFMTBCDField
      FieldName = 'CODE_TIP'
      Precision = 3
      Size = 0
    end
    object CDSetTipPLNAME: TWideStringField
      FieldName = 'NAME'
      Size = 255
    end
  end
  object DSVidPL: TDataSource
    DataSet = CDSetVidPL
    Left = 240
    Top = 168
  end
  object DSTipPL: TDataSource
    DataSet = CDSetTipPL
    Left = 240
    Top = 224
  end
  object CDSetMaterials: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPMaterials'
    RemoteServer = DSProviderConnection1
    Left = 344
    Top = 32
  end
  object DSMaterials: TDataSource
    DataSet = CDSetMaterials
    Left = 416
    Top = 32
  end
  object CDSetAllUsersPL: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_STR'
        ParamType = ptInput
      end>
    ProviderName = 'DSPAllUsersPL'
    RemoteServer = DSProviderConnection1
    Left = 344
    Top = 96
    object CDSetAllUsersPLID_LICO: TFMTBCDField
      FieldName = 'ID_LICO'
      Required = True
      Precision = 32
    end
    object CDSetAllUsersPLID_STR: TFMTBCDField
      FieldName = 'ID_STR'
      Precision = 32
    end
    object CDSetAllUsersPLCODE_TAM: TWideStringField
      FieldName = 'CODE_TAM'
      FixedChar = True
      Size = 2
    end
    object CDSetAllUsersPLCODE: TWideStringField
      FieldName = 'CODE'
      Size = 22
    end
    object CDSetAllUsersPLNAME: TWideStringField
      FieldName = 'NAME'
      Size = 255
    end
    object CDSetAllUsersPLD_ON: TSQLTimeStampField
      FieldName = 'D_ON'
    end
    object CDSetAllUsersPLD_OFF: TSQLTimeStampField
      FieldName = 'D_OFF'
    end
    object CDSetAllUsersPLID_DOC_ON: TFMTBCDField
      FieldName = 'ID_DOC_ON'
      Precision = 32
    end
    object CDSetAllUsersPLID_DOC_OFF: TFMTBCDField
      FieldName = 'ID_DOC_OFF'
      Precision = 32
    end
    object CDSetAllUsersPLCODE_PRICH: TFMTBCDField
      FieldName = 'CODE_PRICH'
      OnGetText = CDSetAllUsersPLCODE_PRICHGetText
      Precision = 2
      Size = 0
    end
    object CDSetAllUsersPLPRIZNAK: TFMTBCDField
      FieldName = 'PRIZNAK'
      Precision = 2
      Size = 0
    end
    object CDSetAllUsersPLNOTE: TWideStringField
      FieldName = 'NOTE'
      Size = 225
    end
    object CDSetAllUsersPLID_STR_1: TFMTBCDField
      FieldName = 'ID_STR_1'
      Required = True
      Precision = 32
    end
    object CDSetAllUsersPLCODE_TAM_1: TWideStringField
      FieldName = 'CODE_TAM_1'
      FixedChar = True
      Size = 2
    end
    object CDSetAllUsersPLCODE_VID: TFMTBCDField
      FieldName = 'CODE_VID'
      Precision = 1
      Size = 0
    end
    object CDSetAllUsersPLCODE_TIP: TFMTBCDField
      FieldName = 'CODE_TIP'
      Precision = 3
      Size = 0
    end
    object CDSetAllUsersPLLITERA: TWideStringField
      FieldName = 'LITERA'
      Size = 2
    end
    object CDSetAllUsersPLNUMBER_SITK: TWideStringField
      FieldName = 'NUMBER_SITK'
      Size = 10
    end
    object CDSetAllUsersPLCODE_MATERIAL: TFMTBCDField
      FieldName = 'CODE_MATERIAL'
      Precision = 2
      Size = 0
    end
    object CDSetAllUsersPLD_V: TSQLTimeStampField
      FieldName = 'D_V'
    end
    object CDSetAllUsersPLD_ON_1: TSQLTimeStampField
      FieldName = 'D_ON_1'
    end
    object CDSetAllUsersPLD_OFF_1: TSQLTimeStampField
      FieldName = 'D_OFF_1'
    end
    object CDSetAllUsersPLID_DOC_ON_1: TFMTBCDField
      FieldName = 'ID_DOC_ON_1'
      Precision = 15
      Size = 0
    end
    object CDSetAllUsersPLID_DOC_OFF_1: TFMTBCDField
      FieldName = 'ID_DOC_OFF_1'
      Precision = 15
      Size = 0
    end
    object CDSetAllUsersPLCODE_PRICH_1: TFMTBCDField
      FieldName = 'CODE_PRICH_1'
      Precision = 2
      Size = 0
    end
    object CDSetAllUsersPLID_AKT_UNICHTOJ: TFMTBCDField
      FieldName = 'ID_AKT_UNICHTOJ'
      Precision = 15
      Size = 0
    end
    object CDSetAllUsersPLCOLOR: TWideStringField
      FieldName = 'COLOR'
      Size = 50
    end
  end
  object DSAllUsersPL: TDataSource
    DataSet = CDSetAllUsersPL
    Left = 416
    Top = 96
  end
  object CDSetLicoPL: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_STR'
        ParamType = ptInput
      end>
    ProviderName = 'DSPLICO_PL'
    RemoteServer = DSProviderConnection1
    Left = 344
    Top = 160
  end
  object DSLicoPL: TDataSource
    DataSet = CDSetLicoPL
    Left = 416
    Top = 160
  end
  object CDSetDoljLica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Name = 'CODE_TAM'
        ParamType = ptInput
      end>
    ProviderName = 'DSPDoljLica'
    RemoteServer = DSProviderConnection1
    Left = 112
    Top = 312
  end
  object DSDoljLica: TDataSource
    DataSet = CDSetDoljLica
    Left = 184
    Top = 312
  end
  object CDSetDoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPDoc'
    RemoteServer = DSProviderConnection1
    Left = 344
    Top = 224
  end
  object DSDoc: TDataSource
    DataSet = CDSetDoc
    Left = 416
    Top = 224
  end
  object CDSetQuery: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPQuery'
    RemoteServer = DSProviderConnection1
    Left = 344
    Top = 320
  end
  object DSQuery: TDataSource
    DataSet = CDSetQuery
    Left = 424
    Top = 320
  end
  object CDSetPrichina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPPrichina'
    RemoteServer = DSProviderConnection1
    Left = 504
    Top = 32
    object CDSetPrichinaCODE_PRICH: TFMTBCDField
      FieldName = 'CODE_PRICH'
      Required = True
      Precision = 2
      Size = 0
    end
    object CDSetPrichinaNAME: TWideStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
  end
  object DSPrichina: TDataSource
    DataSet = CDSetPrichina
    Left = 576
    Top = 32
  end
  object CDSetUsers: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPUsers'
    RemoteServer = DSProviderConnection1
    Left = 512
    Top = 128
  end
  object DSUsers: TDataSource
    DataSet = CDSetUsers
    Left = 576
    Top = 128
  end
end
