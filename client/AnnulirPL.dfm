object FAnnulirPL: TFAnnulirPL
  Left = 0
  Top = 0
  Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1077#1095#1072#1090#1080
  ClientHeight = 387
  ClientWidth = 605
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
    Width = 605
    Height = 387
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    object Label1: TLabel
      Left = 208
      Top = 24
      Width = 199
      Height = 23
      Alignment = taCenter
      Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1077#1095#1072#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 88
      Width = 169
      Height = 19
      Alignment = taCenter
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 80
      Top = 135
      Width = 140
      Height = 19
      Alignment = taCenter
      Caption = #1044#1072#1090#1072' '#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label4: TLabel
      Left = 24
      Top = 183
      Width = 196
      Height = 19
      Alignment = taCenter
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1073' '#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label5: TLabel
      Left = 119
      Top = 239
      Width = 106
      Height = 19
      Alignment = taCenter
      Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object CBPrichina: TRxDBLookupCombo
      Left = 264
      Top = 88
      Width = 265
      Height = 26
      DropDownCount = 8
      DisplayAllFields = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODE_PRICH'
      LookupDisplay = 'CODE_PRICH;NAME'
      LookupSource = DataModule1.DSPrichina
      ParentFont = False
      TabOrder = 0
    end
    object EDocAnnulir: TEdit
      Left = 264
      Top = 184
      Width = 265
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BtnSave: TBitBtn
      Left = 150
      Top = 304
      Width = 107
      Height = 49
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
    object BtnExit: TBitBtn
      Left = 358
      Top = 304
      Width = 107
      Height = 49
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkAbort
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 5
    end
    object DateAnnulir: TDateEdit
      Left = 264
      Top = 132
      Width = 265
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object DateDoc: TDateEdit
      Left = 264
      Top = 236
      Width = 265
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
    end
  end
end
