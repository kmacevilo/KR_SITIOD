object FUserPL: TFUserPL
  Left = 0
  Top = 0
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
  ClientHeight = 199
  ClientWidth = 453
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
    Width = 453
    Height = 199
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 128
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 454
      Height = 122
      DataSource = DataModule1.DSUsers
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FIO'
          Title.Caption = #1060#1048#1054
          Width = 278
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRIZNAK'
          Title.Caption = #1056#1086#1083#1100
          Width = 137
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 24
      Top = 128
      Width = 105
      Height = 49
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 160
      Top = 128
      Width = 97
      Height = 49
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkOK
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      Visible = False
      WordWrap = True
    end
    object BitBtn3: TBitBtn
      Left = 344
      Top = 128
      Width = 97
      Height = 49
      Caption = #1054#1090#1084#1077#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkAbort
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = BitBtn3Click
    end
  end
end
