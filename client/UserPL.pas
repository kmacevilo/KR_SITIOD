unit UserPL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFUserPL = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUserPL: TFUserPL;

implementation

uses ClientDataModule, MainFormClient, AddInspector;

{$R *.dfm}

procedure TFUserPL.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TFAddInspector, FAddInspector);
  FAddInspector.Show;
end;

procedure TFUserPL.BitBtn3Click(Sender: TObject);
begin
  FUserPL.Close;
end;

procedure TFUserPL.FormShow(Sender: TObject);
begin
  DataModule1.CDSetUsers.Open;
end;

end.
