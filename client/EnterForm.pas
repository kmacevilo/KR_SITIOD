unit EnterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  IdGlobal, IdHash, IdHashMessageDigest, IdHashSHA, IdSSLOpenSSL;

type
  TFEnterForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    ELogin: TEdit;
    EPass: TEdit;
    BtnOK: TBitBtn;
    BitBtn1: TBitBtn;
    Chk1: TCheckBox;
    procedure BtnOKClick(Sender: TObject);
    procedure Chk1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CheckUser(Login, Password : string): Boolean;
    function getHashString( const value, salt : string ): string;
  end;

var
  FEnterForm: TFEnterForm;
  prizn : string;
  auto : Boolean;

implementation

uses ClientDataModule, MainFormClient;

{$R *.dfm}

procedure TFEnterForm.BtnOKClick(Sender: TObject);
begin
  ELogin.Text := Trim(eLogin.Text);
  EPass.Text := Trim(EPass.Text);

  if (Trim(eLogin.Text) = '') then
  begin
    Application.MessageBox('Имя пользователя не может быть пустым.', 'Ошибка', MB_OK + MB_ICONINFORMATION);
    Self.ModalResult := mrNone;
  end;
  if not CheckUser(eLogin.Text, EPass.Text) then
  begin
    Application.MessageBox('Пароль или логин неверный', 'Ошибка', MB_OK + MB_ICONINFORMATION);
    auto := false;
  end
  else
   auto := True;

end;

procedure TFEnterForm.Chk1Click(Sender: TObject);
begin
  if chk1.Checked then
    EPass.PasswordChar := #0
  else
    EPass.PasswordChar := #42;
end;

procedure TFEnterForm.FormShow(Sender: TObject);
begin
    {$IFDEF DEBUG}
        Self.ELogin.Text := 'ADMIN';
        Self.EPass.Text := '1111';
    {$ENDIF}
end;

function TFEnterForm.CheckUser(Login, Password: string): boolean;
var hash, pass: string;
begin

  if DataModule1.ConnectToBase then
  begin
    DataModule1.CDSetQuery.Close;
    DataModule1.CDSetQuery.CommandText := '';
    DataModule1.CDSetQuery.CommandText := 'SELECT * FROM SITK_USERS WHERE LOGIN=:LOGIN ';
    DataModule1.CDSetQuery.ParamByName('LOGIN').AsString := Login;
    DataModule1.CDSetQuery.Open;

    if NOT (DataModule1.CDSetQuery.IsEmpty) then
    begin
      hash:= getHashString(Password, Login);
      pass:=  DataModule1.CDSetQuery.fieldbyname('PASSWORD').AsString;
      prizn :=  DataModule1.CDSetQuery.fieldbyname('PRIZNAK').AsString;
     if pass = hash then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    end else
    begin
      Result := False;
    end;
  end
  else
  begin
    Application.MessageBox('Не удалось подключиться к серверу ', 'Ошибка авторизации',MB_OK + MB_ICONERROR);
   // Application.Terminate;
  end;

end;

function TFEnterForm.getHashString(const value, salt: string): string;
var
    hashMD5 : TIdHashMessageDigest5;
    hashSHA1 : TIdHashSHA1;
begin
    hashSHA1 := nil;
    hashMD5 := nil;
    try
        LoadOpenSSLLibrary;
        hashMD5 := TIdHashMessageDigest5.Create;
        hashSHA1 := TIdHashSHA1.Create;
        Result := IdGlobal.IndyLowerCase(hashMD5.HashStringAsHex(hashSHA1.HashStringAsHex(value+salt)));
    finally
        hashSHA1.Free;
        hashMD5.Free;
    end;

end;

end.
