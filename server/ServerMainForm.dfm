object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1091#1089#1082' '#1057#1077#1088#1074#1077#1088#1072
  ClientHeight = 189
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ServerStatus: TLabel
    Left = 16
    Top = 8
    Width = 131
    Height = 16
    Caption = #1057#1077#1088#1074#1077#1088' '#1086#1089#1090#1072#1085#1086#1074#1083#1077#1085
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8807657
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SessionCount: TLabel
    Left = 16
    Top = 45
    Width = 127
    Height = 16
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1077#1089#1089#1080#1081': 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 1530344
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ButStart: TButton
    Left = 40
    Top = 80
    Width = 121
    Height = 89
    Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1089#1077#1088#1074#1077#1088
    TabOrder = 1
    WordWrap = True
    OnClick = ButStartClick
    OnMouseUp = ButStartMouseUp
  end
  object ButStop: TButton
    Left = 197
    Top = 80
    Width = 121
    Height = 89
    Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1088#1072#1073#1086#1090#1091' '#1089#1077#1088#1074#1077#1088#1072
    TabOrder = 2
    WordWrap = True
    OnClick = ButStopClick
    OnMouseUp = ButStartMouseUp
  end
  object BitBtn1: TBitBtn
    Left = 245
    Top = 19
    Width = 81
    Height = 42
    Kind = bkRetry
    NumGlyphs = 2
    TabOrder = 0
    OnClick = Button1Click
  end
end
