unit MainFormClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.StdCtrls, Vcl.ImgList, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    ButPechat: TButton;
    ButOtchet: TButton;
    ButUsers: TButton;
    ButSettings: TButton;
    StatusBar1: TStatusBar;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure ButPechatClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ButUsersClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function autorization():Boolean;
  end;

var
  MainForm: TMainForm;
  attempt : integer;

implementation

uses ClientDataModule, Pechati, AddPech, EnterForm, UserPL;

{$R *.dfm}

function TMainForm.autorization: Boolean;
var i : Integer;
begin

attempt := 0;
  for i := 1 to 3 do
    begin
      if FEnterForm = nil then
      FEnterForm := TFEnterForm.Create(Application);

      if FEnterForm.ShowModal = mrOk then
      begin
        if (auto = True) then
        begin
         FreeAndNil(FEnterForm);
         Exit(true) ;
        end
        else
        begin
          attempt := attempt + 1;
          if attempt < 3 then
            MessageBox(Self.Handle,PWideChar('Осталось ' + IntToStr(3 - attempt) + ' попытки ввода корректных данных'), 'Вход', MB_OK + MB_ICONERROR);

        //Exit(False);
        end;


      end else
       Application.Terminate;


    end;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  MainForm.Close;
end;

procedure TMainForm.ButPechatClick(Sender: TObject);
begin
  Application.CreateForm(TFPechati, FPechati);
  FPechati.Show;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TFAddPech, FAddPech);
  FAddPech.Show;
end;

procedure TMainForm.ButUsersClick(Sender: TObject);
begin
  Application.CreateForm(TFUserPL, FUserPL);
  FUserPL.Show;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin

  if (autorization() = True) then
  begin
      if (prizn = '2')  then
        ButUsers.Enabled := True;

      //FreeAndNil(FEnterForm);
  end;

  if (attempt = 3) then
  begin
    Application.MessageBox(PWideChar('Вы ввели неверные данные 3 раза. '),'Блокировка',MB_OK+MB_ICONINFORMATION);
    Application.Terminate;
  end;



  //FEnterForm.Close;
 { if DataModule1.ConnectToBase then

  else
  begin
    Application.MessageBox('Не удалось подключиться к серверу ', 'Ошибка авторизации',MB_OK + MB_ICONERROR);
    Application.Terminate;
  end;  }


end;

end.
