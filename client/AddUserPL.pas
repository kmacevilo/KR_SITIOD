unit AddUserPL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask, RxToolEdit;

type
  TFAddUserPL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ENumDoc: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CBFIOInsp: TDBLookupComboBox;
    ELichNum: TEdit;
    BtnSave: TBitBtn;
    BtnClear: TBitBtn;
    BtnExit: TBitBtn;
    DateDoc: TDateTimePicker;
    DatePersonif: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure CBFIOInspClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAddUserPL: TFAddUserPL;
  ID : Integer;
  CUST : string;

implementation

USES ClientDataModule, ChangePL, Pechati;

{$R *.dfm}

procedure TFAddUserPL.BtnSaveClick(Sender: TObject);
var id_doc : Integer;//id ���������
begin
//�������� �� ������������� ���������
  if not(ENumDoc.Text = '') then
  begin
    DataModule1.CDSetDoc.Close;
    DataModule1.CDSetDoc.CommandText := '';
    DataModule1.CDSetDoc.CommandText := 'Select id_doc, NUM_DOC, DATE_DOC FROM SITK_DOC '+
                    ' where NUM_DOC = :NUM_DOC AND DATE_DOC = :DATE_DOC AND PRIZNAK = 1';
    DataModule1.CDSetDoc.ParamByName('NUM_DOC').AsString := ENumDoc.Text;
    DataModule1.CDSetDoc.ParamByName('DATE_DOC').AsDateTime := DateDoc.Date;
    DataModule1.CDSetDoc.Open;

    id_doc:= DataModule1.CDSetDoc.FieldByName('id_doc').AsInteger;
  end;

//���� �������� ��� �� ������, �� �������
  if (id_Doc = 0) then
  begin
    DataModule1.CDSetDoc.Close;
    DataModule1.CDSetDoc.CommandText := '';
    DataModule1.CDSetDoc.CommandText :='SELECT MAX (ID_DOC) AS DOCID FROM SITK_DOC';
    DataModule1.CDSetDoc.Open;

    id_doc := DataModule1.CDSetDoc.FieldByName('DOCID').AsInteger;
    id_doc := id_doc + 1;


  //������ ������ � ���������
    DataModule1.CDSetQuery.Close;
    DataModule1.CDSetQuery.CommandText := '';
    DataModule1.CDSetQuery.CommandText := 'INSERT INTO SITK_DOC (ID_DOC, NUM_DOC, '+
                                       ' DATE_DOC, PRIZNAK) VALUES (:ID_DOC, :NUM_DOC,'+
                                       ' :DATE_DOC, :PRIZNAK)';
    DataModule1.CDSetQuery.ParamByName('ID_DOC').AsInteger := id_doc;
    DataModule1.CDSetQuery.ParamByName('NUM_DOC').AsString := ENumDoc.Text;
    DataModule1.CDSetQuery.ParamByName('DATE_DOC').AsDateTime := DateDoc.Date;;
    DataModule1.CDSetQuery.ParamByName('PRIZNAK').AsInteger := 1;
    DataModule1.CDSetQuery.Execute;

  end;

      // ������ ������ � ������������
  DataModule1.CDSetQuery.Close;
  DataModule1.CDSetQuery.CommandText := '';
  DataModule1.CDSetQuery.CommandText := 'INSERT INTO LICO_SITK (ID_STR, CODE_TAM, '+
                                         ' CODE, NAME, D_ON, ID_DOC_ON, PRIZNAK) VALUES '+
                                         '(:ID_STR, :CODE_TAM, :CODE, :NAME, :D_ON, '+
                                         ' :ID_DOC_ON, :PRIZNAK)' ;
  //ShowMessage(DataModule1.CDSetLicoPL.CommandText);
  DataModule1.CDSetQuery.ParamByName('ID_STR').AsInteger := ID;
  DataModule1.CDSetQuery.ParamByName('CODE_TAM').AsString := CUST;
  DataModule1.CDSetQuery.ParamByName('CODE').AsString := ELichNum.Text;
  DataModule1.CDSetQuery.ParamByName('NAME').AsString := DataModule1.CDSetDoljLica.FieldByName('FIO').AsString;
  DataModule1.CDSetQuery.ParamByName('D_ON').AsDateTime := DatePersonif.Date;
  DataModule1.CDSetQuery.ParamByName('ID_DOC_ON').AsInteger := id_doc;
  DataModule1.CDSetQuery.ParamByName('PRIZNAK').AsInteger := 1;// ��� ��� ���
  DataModule1.CDSetQuery.Execute;


//���������� ���� �������������� � ������� �������

  DataModule1.CDSetQuery.Close;
  DataModule1.CDSetQuery.CommandText := '';
  DataModule1.CDSetQuery.CommandText := 'UPDATE SITK_PL set D_ON=:D_ON, '+
                                          ' ID_DOC_ON=:ID_DOC_ON, D_OFF=:D_OFF,'+
                                          ' ID_DOC_OFF=:ID_DOC_OFF, CODE_PRICH=:CODE_PRICH'+
                                          ' WHERE ID_STR = :ID_STR';
  DataModule1.CDSetQuery.ParamByName('D_ON').AsDateTime := DatePersonif.Date;
  DataModule1.CDSetQuery.ParamByName('ID_DOC_ON').AsInteger := id_doc;
  DataModule1.CDSetQuery.ParamByName('ID_STR').AsInteger := ID;
  DataModule1.CDSetQuery.ParamByName('D_OFF').Value := '';
  DataModule1.CDSetQuery.ParamByName('ID_DOC_OFF').Value := '';
  DataModule1.CDSetQuery.ParamByName('CODE_PRICH').Value := '';
  DataModule1.CDSetQuery.Execute;
  DataModule1.CDSetQuery.CommandText := '';


  Application.MessageBox('���������� ���������','�������',MB_OK + MB_ICONINFORMATION);

  DataModule1.CDSetPlashka.Refresh;
  DataModule1.CDSetLicoPL.Refresh;

  DataModule1.CDSetPlashka.Close;
  DataModule1.CDSetLicoPL.Close;


  FPechati.BtnFiltrClick(Sender);


end;

procedure TFAddUserPL.CBFIOInspClick(Sender: TObject);
begin
  ELichNum.Text := DataModule1.CDSetDoljLica.FieldByName('CODE').AsString;
end;

procedure TFAddUserPL.FormShow(Sender: TObject);
begin
  ID := DataModule1.CDSetPlashka.FieldByName('ID_STR').AsInteger;
  ShowMessage('id = '+ IntToStr(ID));
  CUST := DataModule1.CDSetPlashka.FieldByName('CODE_TAM').AsString;

  DataModule1.CDSetDoljLica.Close;
  DataModule1.CDSetDoljLica.ParamByName('CODE_TAM').AsString := CUST;
  DataModule1.CDSetDoljLica.Open;
end;

end.
