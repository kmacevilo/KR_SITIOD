object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1057#1080#1089#1090#1077#1084#1072' '#1091#1095#1077#1090#1072' '#1087#1077#1095#1072#1090#1077#1081' '#1080' '#1096#1090#1072#1084#1087#1086#1074
  ClientHeight = 333
  ClientWidth = 625
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
    Width = 625
    Height = 333
    Align = alClient
    Color = 15519724
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      625
      333)
    object BitBtn1: TBitBtn
      Left = 526
      Top = 10
      Width = 98
      Height = 48
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object ButPechat: TButton
      Left = 88
      Top = 112
      Width = 169
      Height = 81
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1072#1085#1085#1099#1093
      Align = alCustom
      Anchors = [akTop]
      Caption = #1055#1077#1095#1072#1090#1080' '#1080' '#1096#1090#1072#1084#1087#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      WordWrap = True
      OnClick = ButPechatClick
    end
    object ButOtchet: TButton
      Left = 328
      Top = 112
      Width = 177
      Height = 81
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1095#1077#1090
      Align = alCustom
      Anchors = [akTop]
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1095#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      WordWrap = True
    end
    object ButUsers: TButton
      Left = 328
      Top = 159
      Width = 177
      Height = 81
      Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1093
      Anchors = [akTop]
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#1093
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      WordWrap = True
      OnClick = ButUsersClick
    end
    object ButSettings: TButton
      Left = 392
      Top = 10
      Width = 113
      Height = 48
      Hint = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1087#1088#1086#1075#1088#1072#1084#1084#1091
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Visible = False
      WordWrap = True
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 313
      Width = 623
      Height = 19
      Panels = <>
    end
    object Button1: TButton
      Left = 88
      Top = 215
      Width = 169
      Height = 81
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1072#1085#1085#1099#1093
      Align = alCustom
      Anchors = [akTop]
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1077#1095#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      WordWrap = True
      OnClick = Button1Click
    end
  end
end
