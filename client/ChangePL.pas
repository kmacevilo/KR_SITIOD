unit ChangePL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, RxLookup, Vcl.ExtCtrls;

type
  TFChangePL = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CBCustom: TRxDBLookupCombo;
    CBVid: TRxDBLookupCombo;
    CBTip: TRxDBLookupCombo;
    ESimbol: TEdit;
    ENumber: TEdit;
    EDateVidachi: TEdit;
    ENumPisma: TEdit;
    EName: TEdit;
    EIdentNumber: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    BtnAddUser: TBitBtn;
    BtnAnnulirUser: TBitBtn;
    BtnDestroy: TBitBtn;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure CBVidChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnAddUserClick(Sender: TObject);
    procedure BtnAnnulirUserClick(Sender: TObject);
    procedure BtnDestroyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChangePL: TFChangePL;
  ID : Integer;
  VID : Integer;

implementation

uses MainFormClient, ClientDataModule, AddUserPL, AnnulirPL, UnichtojPL;


{$R *.dfm}

procedure TFChangePL.BtnAddUserClick(Sender: TObject);
begin
  Application.CreateForm(TFAddUserPL, FAddUserPL);
  FAddUserPL.ShowModal;
end;

procedure TFChangePL.BtnAnnulirUserClick(Sender: TObject);
begin
  Application.CreateForm(TFAnnulirPL, FAnnulirPL);
  FAnnulirPL.ShowModal
end;

procedure TFChangePL.BtnDestroyClick(Sender: TObject);
begin
  Application.CreateForm(TFUnichtojPL, FUnichtojPL);
  FUnichtojPL.ShowModal;
end;

procedure TFChangePL.CBVidChange(Sender: TObject);
begin
if (CBVid.KeyValue = 3) or (CBVid.KeyValue = 4) or
    (VID = 3)  or (VID = 4) then
  begin
    DataModule1.CDSetTipPL.Close;
    DataModule1.CDSetTipPL.ParamByName('CODE_VID').Value := VID;
    DataModule1.CDSetTipPL.Open;

  end
  else
  if (CBVid.KeyValue = 5) then
  begin
    DataModule1.CDSetTipPL.Close;
  end
  else
  begin
    DataModule1.CDSetTipPL.Close;
  end;
end;

procedure TFChangePL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule1.CDSetVidPL.Close;
  DataModule1.CDSetVidPL.CommandText := 'SELECT * FROM SITK_VID ';
  DataModule1.CDSetVidPL.Open;
end;

procedure TFChangePL.FormShow(Sender: TObject);
begin
  //DataModule1.CDSetCustom.Open;
  //DataModule1.CDSetVidPL.Open;
  //DataModule1.CDSetTipPL.Open;



  ID := DataModule1.CDSetPlashka.FieldByName('ID_STR').AsInteger;

  ShowMessage('id = '+inttostr(ID));
  DataModule1.CDSetPlashka.Locate('ID_STR', ID, [] );

  CBCustom.KeyValue := DataModule1.CDSetPlashka.FieldByName('CODE_TAM').AsString;

   VID := DataModule1.CDSetPlashka.FieldByName('CODE_VID').AsInteger;

  DataModule1.CDSetVidPL.Close;
  DataModule1.CDSetVidPL.CommandText := 'SELECT * FROM SITK_VID WHERE CODE_VID = :CODE';
  DataModule1.CDSetVidPL.ParamByName('CODE').AsInteger := VID;
  DataModule1.CDSetVidPL.Open;

  CBVid.KeyValue := DataModule1.CDSetVidPL.FieldByName('CODE_VID').AsInteger;
  CBTip.KeyValue := DataModule1.CDSetPlashka.FieldByName('CODE_TIP').AsString;

  ESimbol.Text := DataModule1.CDSetPlashka.FieldByName('LITERA').AsString;
  ENumber.Text := DataModule1.CDSetPlashka.FieldByName('NUMBER_SITK').AsString;
  //EDateVidachi.Text := DataModule1.CDSetPlashka.FieldByName('D_ON').AsString;

  DataModule1.CDSetLicoPL.Close;  //��� ������ ���������� � ������� ������������
  DataModule1.CDSetLicoPL.ParamByName('ID_STR').AsInteger := ID;
  DataModule1.CDSetLicoPL.Open;   //===============================

  EDateVidachi.Text := DataModule1.CDSetLicoPL.FieldByName('D_ON').AsString;
  ENumPisma.Text := DataModule1.CDSetLicoPL.FieldByName('NUM_DOC').AsString;
  EName.Text := DataModule1.CDSetLicoPL.FieldByName('NAME').AsString;
  EIdentNumber.Text := DataModule1.CDSetLicoPL.FieldByName('CODE').AsString;

  // ��� ������ ���������� �������������
  DataModule1.CDSetAllUsersPL.Close;
  DataModule1.CDSetAllUsersPL.ParamByName('id_str').AsInteger := ID;
  DataModule1.CDSetAllUsersPL.Open;
  //+++++++++++++++++++++++++++++++++=

  if (EName.Text <> '')  then
  begin
    BtnAnnulirUser.Visible := True;
    BtnDestroy.Visible := True;
  end
  else
  if (EName.Text = '') and (DataModule1.CDSetPlashka.FieldByName('ID_AKT_UNICHTOJ').AsString = '')  then
  begin
    BtnAddUser.Visible := True;
    BtnDestroy.Visible := True;
  end
  else
  begin
    BtnAddUser.Visible := False;
    BtnDestroy.Visible := False;
    BtnAnnulirUser.Visible := False;
  end;

end;

end.
