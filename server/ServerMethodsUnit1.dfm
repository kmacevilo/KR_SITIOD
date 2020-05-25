object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 489
  Width = 681
  object SQLConnection1: TSQLConnection
    DriverName = 'Oracle'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXOracle'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXOracleMetaDataCommandFactory,DbxOracle' +
        'Driver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXOracleMetaDataCommandFac' +
        'tory,Borland.Data.DbxOracleDriver,Version=21.0.0.0,Culture=neutr' +
        'al,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverORACLE'
      'LibraryName=dbxora.dll'
      'LibraryNameOsx=libsqlora.dylib'
      'VendorLib=oci.dll'
      'VendorLibWin64=oci.dll'
      'VendorLibOsx=libociei.dylib'
      'Database=db11g'
      'User_Name=LNPNEW'
      'Password=1111'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'RowsetSize=20'
      'OSAuthentication=False'
      'MultipleTransactions=False'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Multiple Transaction=True'
      'Trim Char=False'
      'Decimal Separator=.'
      'HostName=localhost')
    Connected = True
    Left = 56
    Top = 32
  end
  object SQLDSPlashka: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 
      'Select sp.ID_STR, sp.CODE_TAM, sp.CODE_VID, sp.CODE_TIP, sp.LITE' +
      'RA, sp.NUMBER_SITK,'#13#10'sp.CODE_MATERIAL, sp.D_V, sp.D_ON, sp.D_OFF' +
      ', sp.ID_DOC_ON, sp.ID_DOC_OFF, sp.CODE_PRICH,'#13#10'sp.ID_AKT_UNICHTO' +
      'J, sd.NUM_DOC'#13#10' from LNPNEW.SITK_PL sp LEFT JOIN SITK_DOC sd on ' +
      'sp.ID_AKT_UNICHTOJ=sd.ID_DOC'#13#10'where sp.code_vid <> 7 and sp.d_v ' +
      '> TO_DATE('#39'01.01.2010'#39','#39'dd.mm.yyyy'#39')'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 136
    Top = 32
  end
  object DSPPlashka: TDataSetProvider
    DataSet = SQLDSPlashka
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 200
    Top = 32
  end
  object SQLDSCustom: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 
      'Select * From ALL_CUSTOM'#13#10'where D_OFF = to_date('#39'31.12.4712'#39', '#39'd' +
      'd.mm.yyyy'#39')'#13#10'ORDER BY CODE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 136
    Top = 96
  end
  object DSPCustom: TDataSetProvider
    DataSet = SQLDSCustom
    Left = 208
    Top = 96
  end
  object SQLDSTipPL: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 
      'Select ID, CODE_VID, CODE_TIP, NAME  From LNPNEW.SITK_TIP'#13#10'WHERE' +
      ' CODE_VID= :CODE_VID ORDER BY CODE_TIP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'CODE_VID'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 136
    Top = 232
  end
  object SQLDSVidPL: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'Select * From LNPNEW.SITK_VID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 136
    Top = 168
    object SQLDSVidPLCODE_VID: TFMTBCDField
      FieldName = 'CODE_VID'
      Required = True
      Precision = 1
      Size = 0
    end
    object SQLDSVidPLNAME: TWideStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
  end
  object DSPVidPL: TDataSetProvider
    DataSet = SQLDSVidPL
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 208
    Top = 176
  end
  object DSPTipPL: TDataSetProvider
    DataSet = SQLDSTipPL
    Left = 208
    Top = 232
  end
  object SQLDSMaterials: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'select * from LNPNEW.SITK_MATERIAl'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 328
    Top = 32
  end
  object DSPMaterials: TDataSetProvider
    DataSet = SQLDSMaterials
    Left = 416
    Top = 32
  end
  object SQLDSAllUsersPL: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 
      'SELECT * from LICO_SITK ls INNER JOIN SITK_PL SP ON ls.ID_STR = ' +
      'SP.ID_STR AND SP.ID_STR = :ID_STR ORDER BY ls.D_ON'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'ID_STR'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 328
    Top = 104
  end
  object DSPAllUsersPL: TDataSetProvider
    DataSet = SQLDSAllUsersPL
    Left = 416
    Top = 104
  end
  object SQLDSLICO_PL: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 
      'SELECT * FROM LICO_SITK lst LEFT JOIN SITK_PL spt ON lst.ID_STR ' +
      '= spt.ID_STR'#13#10'  LEFT JOIN SITK_DOC sd ON lst.ID_DOC_ON = sd.ID_D' +
      'OC'#13#10#13#10'  WHERE (spt.ID_STR = :ID_STR) AND (lst.D_OFF IS NULL)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'ID_STR'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 328
    Top = 176
  end
  object DSPLICO_PL: TDataSetProvider
    DataSet = SQLDSLICO_PL
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 416
    Top = 176
  end
  object SQLConnection2: TSQLConnection
    DriverName = 'Oracle'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXOracle'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXOracleMetaDataCommandFactory,DbxOracle' +
        'Driver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXOracleMetaDataCommandFac' +
        'tory,Borland.Data.DbxOracleDriver,Version=21.0.0.0,Culture=neutr' +
        'al,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverORACLE'
      'LibraryName=dbxora.dll'
      'LibraryNameOsx=libsqlora.dylib'
      'VendorLib=oci.dll'
      'VendorLibWin64=oci.dll'
      'VendorLibOsx=libociei.dylib'
      'Database=MCTGAL.MCT.CUSTOMS.GOV.BY'
      'User_Name=LNPNEW'
      'Password=LNPNEW'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'RowsetSize=20'
      'OSAuthentication=False'
      'MultipleTransactions=False'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'OS Authentication=False'
      'Multiple Transaction=False'
      'Trim Char=False'
      'Decimal Separator=.')
    Left = 48
    Top = 336
  end
  object SQLDSDoljLica: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'SELECT * FROM DOLJ_LICA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 160
    Top = 344
  end
  object DSPDoljLica: TDataSetProvider
    DataSet = SQLDSDoljLica
    Left = 248
    Top = 344
  end
  object SQLDSDoc: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'SELECT * FROM LNPNEW.SITK_DOC'#13#10'order by ID_DOC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 328
    Top = 232
  end
  object DSPDoc: TDataSetProvider
    DataSet = SQLDSDoc
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 416
    Top = 240
  end
  object SQLDSQuery: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'SELECT * FROM LNPNEW.SITK_DOC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 368
    Top = 336
  end
  object DSPQuery: TDataSetProvider
    DataSet = SQLDSQuery
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 448
    Top = 336
  end
  object SQLDSPrichina: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'Select * From LNPNEW.SITK_PRICH sp '#13#10'ORDER BY sp.CODE_PRICH'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 544
    Top = 40
  end
  object DSPPrichina: TDataSetProvider
    DataSet = SQLDSPrichina
    Left = 600
    Top = 40
  end
  object SQLDSUsers: TSQLDataSet
    SchemaName = 'LNPNEW'
    CommandText = 'SELECT * FROM SITK_USERS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 544
    Top = 144
  end
  object DSPUsers: TDataSetProvider
    DataSet = SQLDSUsers
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 608
    Top = 144
  end
end
