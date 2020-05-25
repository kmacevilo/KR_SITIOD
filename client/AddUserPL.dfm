object FAddUserPL: TFAddUserPL
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 462
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 617
    Height = 462
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 232
      Top = 32
      Width = 189
      Height = 21
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 160
      Top = 80
      Width = 118
      Height = 19
      Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 172
      Top = 120
      Width = 106
      Height = 19
      Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 126
      Top = 169
      Width = 152
      Height = 19
      Caption = #1044#1072#1090#1072' '#1087#1077#1088#1089#1086#1085#1080#1092#1080#1082#1072#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 232
      Top = 224
      Width = 230
      Height = 21
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 126
      Top = 280
      Width = 118
      Height = 19
      Caption = #1060#1048#1054' '#1080#1085#1089#1087#1077#1082#1090#1086#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 126
      Top = 336
      Width = 103
      Height = 19
      Caption = #1051#1080#1095#1085#1099#1081' '#1085#1086#1084#1077#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object ENumDoc: TEdit
      Left = 300
      Top = 77
      Width = 186
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CBFIOInsp: TDBLookupComboBox
      Left = 276
      Top = 280
      Width = 325
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      KeyField = 'FIO'
      ListField = 'FIO'
      ListSource = DataModule1.DSDoljLica
      ParentFont = False
      TabOrder = 2
      OnClick = CBFIOInspClick
    end
    object ELichNum: TEdit
      Left = 276
      Top = 333
      Width = 325
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object BtnSave: TBitBtn
      Left = 232
      Top = 385
      Width = 118
      Height = 57
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnClick = BtnSaveClick
    end
    object BtnClear: TBitBtn
      Left = 379
      Top = 386
      Width = 134
      Height = 57
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086#1073' '#1080#1085#1089#1087#1077#1082#1090#1086#1088#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkAbort
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
      WordWrap = True
    end
    object BtnExit: TBitBtn
      Left = 512
      Top = 27
      Width = 89
      Height = 38
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkAbort
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object DateDoc: TDateTimePicker
      Left = 300
      Top = 120
      Width = 186
      Height = 21
      Date = 43972.631225081020000000
      Time = 43972.631225081020000000
      TabOrder = 6
    end
    object DatePersonif: TDateTimePicker
      Left = 300
      Top = 169
      Width = 186
      Height = 21
      Date = 43972.631666875000000000
      Time = 43972.631666875000000000
      TabOrder = 7
    end
  end
end
