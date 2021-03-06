unit ClientDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DB, Datasnap.DBClient, Datasnap.DSConnect, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSProviderConnection1: TDSProviderConnection;
    CDSetPlashka: TClientDataSet;
    DSPlashka: TDataSource;
    CDSetPlashkaCODE_TAM: TWideStringField;
    CDSetPlashkaCODE_VID: TFMTBCDField;
    CDSetPlashkaCODE_TIP: TFMTBCDField;
    CDSetPlashkaLITERA: TWideStringField;
    CDSetPlashkaNUMBER_SITK: TWideStringField;
    CDSetPlashkaCODE_MATERIAL: TFMTBCDField;
    CDSetPlashkaD_V: TSQLTimeStampField;
    CDSetPlashkaD_ON: TSQLTimeStampField;
    CDSetPlashkaD_OFF: TSQLTimeStampField;
    CDSetPlashkaID_DOC_ON: TFMTBCDField;
    CDSetPlashkaID_DOC_OFF: TFMTBCDField;
    CDSetPlashkaCODE_PRICH: TFMTBCDField;
    CDSetPlashkaID_AKT_UNICHTOJ: TFMTBCDField;
    CDSetPlashkaNUM_DOC: TWideStringField;
    CDSetCustom: TClientDataSet;
    DSCustom: TDataSource;
    CDSetVidPL: TClientDataSet;
    CDSetTipPL: TClientDataSet;
    DSVidPL: TDataSource;
    DSTipPL: TDataSource;
    CDSetVidPLCODE_VID: TFMTBCDField;
    CDSetVidPLNAME: TWideStringField;
    CDSetTipPLID: TFMTBCDField;
    CDSetTipPLCODE_VID: TFMTBCDField;
    CDSetTipPLCODE_TIP: TFMTBCDField;
    CDSetTipPLNAME: TWideStringField;
    CDSetMaterials: TClientDataSet;
    DSMaterials: TDataSource;
    CDSetPlashkaID_STR: TFMTBCDField;
    CDSetAllUsersPL: TClientDataSet;
    DSAllUsersPL: TDataSource;
    CDSetLicoPL: TClientDataSet;
    DSLicoPL: TDataSource;
    CDSetDoljLica: TClientDataSet;
    DSDoljLica: TDataSource;
    CDSetDoc: TClientDataSet;
    DSDoc: TDataSource;
    CDSetQuery: TClientDataSet;
    DSQuery: TDataSource;
    CDSetPrichina: TClientDataSet;
    DSPrichina: TDataSource;
    CDSetUsers: TClientDataSet;
    DSUsers: TDataSource;
    CDSetPrichinaCODE_PRICH: TFMTBCDField;
    CDSetPrichinaNAME: TWideStringField;
    CDSetAllUsersPLID_LICO: TFMTBCDField;
    CDSetAllUsersPLID_STR: TFMTBCDField;
    CDSetAllUsersPLCODE_TAM: TWideStringField;
    CDSetAllUsersPLCODE: TWideStringField;
    CDSetAllUsersPLNAME: TWideStringField;
    CDSetAllUsersPLD_ON: TSQLTimeStampField;
    CDSetAllUsersPLD_OFF: TSQLTimeStampField;
    CDSetAllUsersPLID_DOC_ON: TFMTBCDField;
    CDSetAllUsersPLID_DOC_OFF: TFMTBCDField;
    CDSetAllUsersPLCODE_PRICH: TFMTBCDField;
    CDSetAllUsersPLPRIZNAK: TFMTBCDField;
    CDSetAllUsersPLNOTE: TWideStringField;
    CDSetAllUsersPLID_STR_1: TFMTBCDField;
    CDSetAllUsersPLCODE_TAM_1: TWideStringField;
    CDSetAllUsersPLCODE_VID: TFMTBCDField;
    CDSetAllUsersPLCODE_TIP: TFMTBCDField;
    CDSetAllUsersPLLITERA: TWideStringField;
    CDSetAllUsersPLNUMBER_SITK: TWideStringField;
    CDSetAllUsersPLCODE_MATERIAL: TFMTBCDField;
    CDSetAllUsersPLD_V: TSQLTimeStampField;
    CDSetAllUsersPLD_ON_1: TSQLTimeStampField;
    CDSetAllUsersPLD_OFF_1: TSQLTimeStampField;
    CDSetAllUsersPLID_DOC_ON_1: TFMTBCDField;
    CDSetAllUsersPLID_DOC_OFF_1: TFMTBCDField;
    CDSetAllUsersPLCODE_PRICH_1: TFMTBCDField;
    CDSetAllUsersPLID_AKT_UNICHTOJ: TFMTBCDField;
    CDSetAllUsersPLCOLOR: TWideStringField;
    CDSetCustomID_TAM: TFMTBCDField;
    CDSetCustomCODE: TWideStringField;
    CDSetCustomNAME: TWideStringField;
    CDSetCustomD_ON: TSQLTimeStampField;
    CDSetCustomD_OFF: TSQLTimeStampField;
    procedure CDSetPlashkaCODE_TAMGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSetPlashkaCODE_PRICHGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSetAllUsersPLCODE_PRICHGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function ConnectToBase(): Boolean;
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TDataModule1.CDSetAllUsersPLCODE_PRICHGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin

      if Sender.AsInteger = 0 then
      Text := '' else
      if Sender.AsInteger = 1 then
      Text := '������������' else
      if Sender.AsInteger = 2 then
      Text := '�������'else
      if Sender.AsInteger = 3 then
      Text:= '����� �� �����' else
      if Sender.AsInteger = 4 then
      Text:= '��������� ����� �����' else
      if Sender.AsInteger = 5 then
      Text:= '���������� ������' else
      if Sender.AsInteger = 6 then
      Text := '����������' else
      if Sender.AsInteger = 7 then
      Text:= '��������' else
      if Sender.AsInteger = 8 then
      Text := '������� ���' else
      if Sender.AsInteger = 9 then
      Text:= '������� ���';
      if Sender.AsInteger = 10 then
      Text:= '����������';
      if Sender.AsInteger = 11  then
      Text:= '����� �������';
      if Sender.AsInteger = 12 then
      Text:= '������� �� ������ ������';
      if Sender.AsInteger = 13 then
      Text:= '���� � ���������� ������';
      if Sender.AsInteger = 14 then
      Text:= '������� �� ����������';
end;

procedure TDataModule1.CDSetPlashkaCODE_PRICHGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin

      if Sender.AsInteger = 0 then
      Text := '' else
      if Sender.AsInteger = 1 then
      Text := '������������' else
      if Sender.AsInteger = 2 then
      Text := '�������'else
      if Sender.AsInteger = 3 then
      Text:= '����� �� �����' else
      if Sender.AsInteger = 4 then
      Text:= '��������� ����� �����' else
      if Sender.AsInteger = 5 then
      Text:= '���������� ������' else
      if Sender.AsInteger = 6 then
      Text := '����������' else
      if Sender.AsInteger = 7 then
      Text:= '��������' else
      if Sender.AsInteger = 8 then
      Text := '������� ���' else
      if Sender.AsInteger = 9 then
      Text:= '������� ���';
      if Sender.AsInteger = 10 then
      Text:= '����������';
      if Sender.AsInteger = 11  then
      Text:= '����� �������';
      if Sender.AsInteger = 12 then
      Text:= '������� �� ������ ������';
      if Sender.AsInteger = 13 then
      Text:= '���� � ���������� ������';
      if Sender.AsInteger = 14 then
      Text:= '������� �� ����������';
end;

procedure TDataModule1.CDSetPlashkaCODE_TAMGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
      if Sender.AsString = '' then
      Text := '' else
      if Sender.AsInteger = 01 then
      Text := '01 ���' else
      if Sender.AsInteger = 02 then
      Text := '02 ���'else
      if Sender.AsInteger = 05 then
      Text:= '05 �����-2' else
      if Sender.AsInteger = 06 then
      Text:= '06 ���' else
      if Sender.AsInteger = 07 then
      Text:= '07 ��������� �������' else
      if Sender.AsInteger = 09 then
      Text := '09 ��������� �������' else
      if Sender.AsInteger = 14 then
      Text:= '14 ���������� �������' else
      if Sender.AsInteger = 16 then
      Text := '16 ����������� �������' else
      if Sender.AsInteger = 20 then
      Text:= '20 ����������� �������';

end;

function TDataModule1.ConnectToBase: Boolean;
begin
  Result := false;
  try
   //��������� ����������� � �������
   Datamodule1.SQLConnection1.Close;

   Datamodule1.SQLConnection1.DriverName := 'DataSnap'; //��� �������� ��� ����������

   Datamodule1.SQLConnection1.KeepConnection := true; //������������ ���������� � �������� ��, ���� � ���������� ��� ���������������� ���������
   {Datamodule1.SQLConnection1.Params.Clear; //������� ����������
   Datamodule1.SQLConnection1.Params.Add('CommunicationIPVersion=IP_IPv4');
   Datamodule1.SQLConnection1.Params.Add('DSAuthenticationUser='+MainForm.USERNAME);
   Datamodule1.SQLConnection1.Params.Add('DSAuthenticationPassword='+MainForm.PASSWORD);
   Datamodule1.SQLConnection1.Params.Add('DriverUnit=Data.DBXDataSnap');
   Datamodule1.SQLConnection1.Params.Add('HostName='+MainForm.SERVER_IP);
   Datamodule1.SQLConnection1.Params.Add('Port='+MainForm.SERVER_PORT);
   Datamodule1.SQLConnection1.Params.Add('CommunicationProtocol=tcp/ip');
   Datamodule1.SQLConnection1.Params.Add('DatasnapContext=datasnap/');
   Datamodule1.SQLConnection1.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');  }
   //Datamodule1.SQLConnection1.Params.Add('Filters={"ZLibCompression":{"CompressMoreThan":"1024"}}');
   Datamodule1.SQLConnection1.Connected:=True;

   Result := True;
  except
    on E:Exception do
      begin
        Result := false;
      end;

  end;
end;

end.
