object FPechati: TFPechati
  Left = 0
  Top = 0
  Caption = #1055#1077#1095#1072#1090#1080' '#1080' '#1096#1090#1072#1084#1087#1099
  ClientHeight = 627
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 249
    Align = alTop
    Color = 12108797
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -5
    ExplicitWidth = 784
    DesignSize = (
      892
      249)
    object Label1: TLabel
      Left = 756
      Top = 217
      Width = 86
      Height = 19
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 648
    end
    object Label2: TLabel
      Left = 848
      Top = 217
      Width = 12
      Height = 19
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 740
    end
    object Label3: TLabel
      Left = 16
      Top = 13
      Width = 61
      Height = 19
      Caption = #1058#1072#1084#1086#1078#1085#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 74
      Width = 78
      Height = 19
      Caption = #1042#1080#1076' '#1087#1077#1095#1072#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 143
      Width = 78
      Height = 19
      Caption = #1058#1080#1087' '#1087#1077#1095#1072#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 392
      Top = 43
      Width = 54
      Height = 19
      Caption = #1057#1080#1084#1074#1086#1083
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 392
      Top = 112
      Width = 44
      Height = 19
      Caption = #1053#1086#1084#1077#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object ESimbols: TEdit
      Left = 392
      Top = 68
      Width = 121
      Height = 27
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BtnExit: TBitBtn
      Left = 756
      Top = 11
      Width = 119
      Height = 51
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
      TabOrder = 0
      OnClick = BtnExitClick
      ExplicitLeft = 648
    end
    object BtnAllRows: TBitBtn
      Left = 756
      Top = 141
      Width = 119
      Height = 45
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = #1042#1089#1077' '#1079#1072#1087#1080#1089#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      WordWrap = True
      OnClick = BtnAllRowsClick
      ExplicitLeft = 648
    end
    object ENumber: TEdit
      Left = 392
      Top = 137
      Width = 121
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object CBVidPL: TRxDBLookupCombo
      Left = 16
      Top = 99
      Width = 321
      Height = 27
      DropDownCount = 8
      DisplayAllFields = True
      DisplayEmpty = #1053#1080#1095#1077#1075#1086' '#1085#1077' '#1074#1099#1073#1088#1072#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODE_VID'
      LookupDisplay = 'CODE_VID;name'
      LookupSource = DataModule1.DSVidPL
      ParentFont = False
      TabOrder = 4
      OnClick = CBVidPLClick
    end
    object CBTipPL: TRxDBLookupCombo
      Left = 16
      Top = 168
      Width = 321
      Height = 27
      DropDownCount = 8
      DisplayAllFields = True
      DisplayEmpty = #1053#1080#1095#1077#1075#1086' '#1085#1077' '#1074#1099#1073#1088#1072#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODE_TIP'
      LookupDisplay = 'CODE_TIP;NAME'
      LookupSource = DataModule1.DSTipPL
      ParentFont = False
      TabOrder = 7
    end
    object BtnFiltr: TBitBtn
      Left = 756
      Top = 68
      Width = 119
      Height = 45
      Align = alCustom
      Anchors = [akTop, akRight]
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      Kind = bkRetry
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      WordWrap = True
      OnClick = BtnFiltrClick
      ExplicitLeft = 648
    end
    object CBCustom: TRxDBLookupCombo
      Left = 16
      Top = 38
      Width = 320
      Height = 27
      DropDownCount = 8
      DisplayAllFields = True
      DisplayEmpty = #1053#1080#1095#1077#1075#1086' '#1085#1077' '#1074#1099#1073#1088#1072#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      LookupField = 'CODE'
      LookupDisplay = 'CODE; NAME'
      LookupSource = DataModule1.DSCustom
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 248
    Width = 892
    Height = 377
    Align = alCustom
    TabOrder = 1
    object MainGrid: TRxDBGrid
      Left = 1
      Top = 1
      Width = 890
      Height = 375
      Align = alClient
      DataSource = DataModule1.DSPlashka
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = MainGridDblClick
      RowColor2 = 16776176
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODE_TAM'
          Title.Alignment = taCenter
          Title.Caption = #1058#1072#1084#1086#1078#1085#1103
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODE_VID'
          Title.Alignment = taCenter
          Title.Caption = #1042#1080#1076
          Width = 99
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODE_TIP'
          Title.Alignment = taCenter
          Title.Caption = #1058#1080#1087
          Width = 92
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LITERA'
          Title.Alignment = taCenter
          Title.Caption = #1057#1080#1084#1074#1086#1083
          Width = 49
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NUMBER_SITK'
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088
          Width = 91
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'D_V'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
          Width = 117
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'D_ON'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1087#1077#1088#1089#1086#1085#1080#1092#1080#1082#1072#1094#1080#1080
          Width = 151
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'D_OFF'
          Title.Alignment = taCenter
          Title.Caption = #1044#1072#1090#1072' '#1072#1085#1085#1091#1083#1080#1088#1086#1074#1072#1085#1080#1103
          Width = 122
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODE_PRICH'
          Title.Alignment = taCenter
          Title.Caption = #1055#1088#1080#1095#1080#1085#1072
          Width = 98
          Visible = True
        end>
    end
  end
end
