object FChangePL: TFChangePL
  Left = 0
  Top = 0
  Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
  ClientHeight = 635
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    670
    635)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 161
    Top = 80
    Width = 61
    Height = 19
    Anchors = [akTop]
    Caption = #1058#1072#1084#1086#1078#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 195
    Top = 138
    Width = 27
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #1042#1080#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 195
    Top = 184
    Width = 27
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #1058#1080#1087
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 168
    Top = 229
    Width = 54
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #1057#1080#1084#1074#1086#1083
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 401
    Top = 229
    Width = 44
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #1053#1086#1084#1077#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 136
    Top = 281
    Width = 86
    Height = 38
    Anchors = [akTop, akRight]
    Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '#1080#1085#1089#1087#1077#1082#1090#1086#1088#1091
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label8: TLabel
    Left = 401
    Top = 295
    Width = 68
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #8470' '#1087#1080#1089#1100#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 158
    Top = 347
    Width = 64
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #1042#1083#1072#1076#1077#1083#1077#1094
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 136
    Top = 396
    Width = 193
    Height = 19
    Anchors = [akTop, akRight]
    Caption = #1048#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 195
    Top = 24
    Width = 277
    Height = 21
    Alignment = taCenter
    Anchors = [akTop]
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1077#1095#1072#1090#1080' '#1080#1083#1080' '#1096#1090#1072#1084#1087#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object CBCustom: TRxDBLookupCombo
    Left = 257
    Top = 73
    Width = 281
    Height = 26
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Anchors = [akTop]
    LookupField = 'CODE'
    LookupDisplay = 'CODE;NAME'
    LookupSource = DataModule1.DSCustom
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object CBVid: TRxDBLookupCombo
    Left = 257
    Top = 131
    Width = 281
    Height = 26
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Anchors = [akTop, akRight]
    LookupField = 'CODE_VID'
    LookupDisplay = 'CODE_VID;NAME'
    LookupSource = DataModule1.DSVidPL
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    OnChange = CBVidChange
  end
  object CBTip: TRxDBLookupCombo
    Left = 257
    Top = 184
    Width = 281
    Height = 26
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Anchors = [akTop, akRight]
    LookupField = 'CODE_TIP'
    LookupDisplay = 'CODE_TIP;NAME'
    LookupSource = DataModule1.DSTipPL
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object ESimbol: TEdit
    Left = 257
    Top = 226
    Width = 121
    Height = 27
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object ENumber: TEdit
    Left = 451
    Top = 226
    Width = 127
    Height = 27
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object EDateVidachi: TEdit
    Left = 257
    Top = 292
    Width = 121
    Height = 27
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object ENumPisma: TEdit
    Left = 475
    Top = 292
    Width = 103
    Height = 27
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object EName: TEdit
    Left = 257
    Top = 344
    Width = 321
    Height = 27
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object EIdentNumber: TEdit
    Left = 348
    Top = 393
    Width = 230
    Height = 27
    Anchors = [akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object BitBtn1: TBitBtn
    Left = 579
    Top = 24
    Width = 75
    Height = 41
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
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 442
    Width = 622
    Height = 120
    Anchors = [akTop, akRight]
    DataSource = DataModule1.DSAllUsersPL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Title.Caption = #1060#1048#1054' '#1080#1085#1089#1087#1077#1082#1090#1086#1088#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 274
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'D_ON'
        Title.Caption = #1044#1072#1090#1072' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1094#1080#1080
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 156
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'D_OFF'
        Title.Caption = #1044#1072#1090#1072' '#1080#1079#1098#1103#1090#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 96
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODE_PRICH'
        Title.Caption = #1055#1088#1080#1095#1080#1085#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Times New Roman'
        Title.Font.Style = []
        Width = 118
        Visible = True
      end>
  end
  object BtnAddUser: TBitBtn
    Left = 124
    Top = 576
    Width = 129
    Height = 51
    Anchors = [akTop, akRight]
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Visible = False
    WordWrap = True
    OnClick = BtnAddUserClick
  end
  object BtnAnnulirUser: TBitBtn
    Left = 300
    Top = 576
    Width = 129
    Height = 51
    Anchors = [akTop, akRight]
    Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Visible = False
    OnClick = BtnAnnulirUserClick
  end
  object BtnDestroy: TBitBtn
    Left = 475
    Top = 576
    Width = 129
    Height = 51
    Anchors = [akTop, akRight]
    Caption = #1059#1085#1080#1095#1090#1086#1078#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    Visible = False
    OnClick = BtnDestroyClick
  end
end
