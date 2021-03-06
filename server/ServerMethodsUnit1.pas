unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, DataSnap.DSProviderDataModuleAdapter,
  Data.DBXOracle, Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    SQLDSPlashka: TSQLDataSet;
    DSPPlashka: TDataSetProvider;
    SQLDSCustom: TSQLDataSet;
    DSPCustom: TDataSetProvider;
    SQLDSTipPL: TSQLDataSet;
    SQLDSVidPL: TSQLDataSet;
    DSPVidPL: TDataSetProvider;
    DSPTipPL: TDataSetProvider;
    SQLDSVidPLCODE_VID: TFMTBCDField;
    SQLDSVidPLNAME: TWideStringField;
    SQLDSMaterials: TSQLDataSet;
    DSPMaterials: TDataSetProvider;
    SQLDSAllUsersPL: TSQLDataSet;
    DSPAllUsersPL: TDataSetProvider;
    SQLDSLICO_PL: TSQLDataSet;
    DSPLICO_PL: TDataSetProvider;
    SQLConnection2: TSQLConnection;
    SQLDSDoljLica: TSQLDataSet;
    DSPDoljLica: TDataSetProvider;
    SQLDSDoc: TSQLDataSet;
    DSPDoc: TDataSetProvider;
    SQLDSQuery: TSQLDataSet;
    DSPQuery: TDataSetProvider;
    SQLDSPrichina: TSQLDataSet;
    DSPPrichina: TDataSetProvider;
    SQLDSUsers: TSQLDataSet;
    DSPUsers: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

