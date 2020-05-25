program ClientLNP;

uses
  Vcl.Forms,
  MainFormClient in 'MainFormClient.pas' {MainForm},
  ClientDataModule in 'ClientDataModule.pas' {DataModule1: TDataModule},
  Pechati in 'Pechati.pas' {FPechati},
  AddPech in 'AddPech.pas' {FAddPech},
  ChangePL in 'ChangePL.pas' {FChangePL},
  AddUserPL in 'AddUserPL.pas' {FAddUserPL},
  AnnulirPL in 'AnnulirPL.pas' {FAnnulirPL},
  UnichtojPL in 'UnichtojPL.pas' {FUnichtojPL},
  EnterForm in 'EnterForm.pas' {FEnterForm},
  UserPL in 'UserPL.pas' {FUserPL},
  AddInspector in 'AddInspector.pas' {FAddInspector};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFUserPL, FUserPL);
  Application.CreateForm(TFAddInspector, FAddInspector);
  Application.Run;
end.
