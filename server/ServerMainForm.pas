unit ServerMainForm;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FMX.StdCtrls,
  Vcl.StdCtrls, DataSnap.DSSession, Vcl.Buttons;

type
  TForm1 = class(TForm)
    ButStart: TButton;
    ButStop: TButton;
    ServerStatus: TLabel;
    SessionCount: TLabel;
    BitBtn1: TBitBtn;
    procedure ButStartClick(Sender: TObject);
    procedure ButStopClick(Sender: TObject);
    procedure ButStartMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses ServerContainerUnit1;

{$R *.dfm}

procedure TForm1.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  {SessionCount.Caption := 'Количество сессий: ' + IntToStr(TDSSessionManager.Instance.GetSessionCount);
  done := True;  }
end;

procedure TForm1.ButStartClick(Sender: TObject);
begin
  ServerContainer1.DSServer1.Start;
end;

procedure TForm1.ButStartMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if  ServerContainer1.DSServer1.Started then
      ServerStatus.Caption := 'Состояние: Сервер работает'
  else
      ServerStatus.Caption := 'Состояние: Сервер остановлен';
end;

procedure TForm1.ButStopClick(Sender: TObject);
begin
  ServerContainer1.DSServer1.Stop;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SessionCount.Caption := 'Количество сессий: ' + IntToStr(TDSSessionManager.Instance.GetSessionCount);
end;

end.

