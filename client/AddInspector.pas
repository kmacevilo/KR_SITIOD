unit AddInspector;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, //RxLookup,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFAddInspector = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ELogin: TEdit;
    EPass: TEdit;
    BtnSave1: TBitBtn;
    BitBtn1: TBitBtn;
    CheckUser: TCheckBox;
    CheckAdmin: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BtnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddInspector: TFAddInspector;

implementation

uses ClientDataModule, MainFormClient, UserPL, EnterForm;

{$R *.dfm}

procedure TFAddInspector.BitBtn1Click(Sender: TObject);
begin
 FAddInspector.Close;
end;

procedure TFAddInspector.BtnSaveClick(Sender: TObject);
var hashPass, login, pass: string;
begin
    login:= ELogin.text;

    if (login = '') then
    begin
      Application.MessageBox('�� ������ ����� ��� ������������!','�� �����',MB_OK + MB_ICONINFORMATION);
      Exit;
    end;
    pass:= EPass.text;
    hashPass:= FEnterForm.getHashString(pass, login);

    DataModule1.CDSetQuery.Close;
    DataModule1.CDSetQuery.CommandText := 'INSERT INTO SITK_USERS (LOGIN, PASSWORD, '+
                                       ' FIO, PRIZNAK) VALUES (:LOGIN, :PASSWORD,'+
                                       ' :FIO, :PRIZNAK)';
    DataModule1.CDSetQuery.ParamByName('LOGIN').AsString := login;
    DataModule1.CDSetQuery.ParamByName('PASSWORD').AsString := hashPass;
    DataModule1.CDSetQuery.ParamByName('FIO').AsString := DataModule1.CDSetDoljLica.FieldByName('FIO').AsString;

    if CheckUser.Checked then
      DataModule1.CDSetQuery.ParamByName('PRIZNAK').AsString := '1'
    else
      DataModule1.CDSetQuery.ParamByName('PRIZNAK').AsString := '2';

    DataModule1.CDSetQuery.Execute;

    DataModule1.CDSetUsers.Close;
    DataModule1.CDSetUsers.Open;

    ShowMessage('���������� ���������!');

end;


procedure TFAddInspector.FormShow(Sender: TObject);
var superCustom : string;
begin
  superCustom := '02';

  if (InputQuery('����� �������',['������� ������� ��� ���������:'],superCustom))
                  and (Trim(superCustom) <> '') then
  begin
    if Length(superCustom) = 1 then
    superCustom := '0' + superCustom;

    DataModule1.CDSetDoljLica.Close;
    DataModule1.CDSetDoljLica.ParamByName('CODE_TAM').AsString := superCustom;
    DataModule1.CDSetDoljLica.Open;

  end;
end;

end.
