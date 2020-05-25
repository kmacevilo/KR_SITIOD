unit AnnulirPL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RxLookup, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.Mask, RxToolEdit;

type
  TFAnnulirPL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CBPrichina: TRxDBLookupCombo;
    EDocAnnulir: TEdit;
    BtnSave: TBitBtn;
    BtnExit: TBitBtn;
    DateAnnulir: TDateEdit;
    DateDoc: TDateEdit;
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAnnulirPL: TFAnnulirPL;

implementation

uses ClientDataModule, Pechati;

{$R *.dfm}

procedure TFAnnulirPL.BtnSaveClick(Sender: TObject);
var id_doc, id_lica, id_str : Integer;
begin

//проверка на существование документа
  if not(EDocAnnulir.Text = '') then
  begin
    DataModule1.CDSetDoc.Close;
    DataModule1.CDSetDoc.CommandText := '';
    DataModule1.CDSetDoc.CommandText := 'Select id_doc, NUM_DOC, DATE_DOC FROM SITK_DOC '+
                    ' where NUM_DOC = :NUM_DOC AND DATE_DOC = :DATE_DOC AND PRIZNAK = 2';
    DataModule1.CDSetDoc.ParamByName('NUM_DOC').AsString := EDocAnnulir.Text;
    DataModule1.CDSetDoc.ParamByName('DATE_DOC').AsDateTime := DateDoc.Date;
    DataModule1.CDSetDoc.Open;

    id_doc:= DataModule1.CDSetDoc.FieldByName('id_doc').AsInteger;
  end;

//если документ еще не создан, то создаем
  if (id_Doc = 0) then
  begin
    DataModule1.CDSetDoc.Close;
    DataModule1.CDSetDoc.CommandText := '';
    DataModule1.CDSetDoc.CommandText :='SELECT MAX (ID_DOC) AS DOCID FROM SITK_DOC';
    DataModule1.CDSetDoc.Open;

    id_doc := DataModule1.CDSetDoc.FieldByName('DOCID').AsInteger;
    id_doc := id_doc + 1;

    ShowMessage('ID_DOC = '+ IntToStr(id_doc));

  //Вносим данные о документе
    DataModule1.CDSetQuery.Close;
    DataModule1.CDSetQuery.CommandText := '';
    DataModule1.CDSetQuery.CommandText := 'INSERT INTO SITK_DOC (ID_DOC, NUM_DOC, '+
                                       ' DATE_DOC, PRIZNAK) VALUES (:ID_DOC, :NUM_DOC,'+
                                       ' :DATE_DOC, :PRIZNAK)';
    DataModule1.CDSetQuery.ParamByName('ID_DOC').AsInteger := id_doc;
    DataModule1.CDSetQuery.ParamByName('NUM_DOC').AsString := EDocAnnulir.Text;
    DataModule1.CDSetQuery.ParamByName('DATE_DOC').AsDateTime := DateDoc.Date;;
    DataModule1.CDSetQuery.ParamByName('PRIZNAK').AsInteger := 2;
    DataModule1.CDSetQuery.Execute;

  end;

  id_lica := DataModule1.CDSetLicoPL.FieldByName('ID_LICO').AsInteger;
  ShowMessage('id_lica = '+ IntToStr(id_lica));

    // обновление даты аннулирования в LICO_SITK
  DataModule1.CDSetQuery.Close;
  DataModule1.CDSetQuery.CommandText := '';
  DataModule1.CDSetQuery.CommandText := 'UPDATE LICO_SITK SET D_OFF=:D_OFF,'+
                                        ' ID_DOC_OFF=:ID_DOC_OFF, CODE_PRICH=:CODE_PRICH '+
                                        ' WHERE ID_LICO = :ID_LICO';
  DataModule1.CDSetQuery.ParamByName('ID_LICO').AsInteger := id_lica;
  DataModule1.CDSetQuery.ParamByName('D_OFF').AsDateTime := DateAnnulir.Date;
  DataModule1.CDSetQuery.ParamByName('ID_DOC_OFF').AsInteger := id_doc;
  DataModule1.CDSetQuery.ParamByName('CODE_PRICH').AsInteger := CBPrichina.KeyValue;
  DataModule1.CDSetQuery.Execute;

    //Обновление даты персоницикации в главной таблице
  id_str := DataModule1.CDSetLicoPL.FieldByName('ID_STR').AsInteger;
  ShowMessage('id_str = '+ IntToStr(id_str));

  DataModule1.CDSetQuery.Close;
  DataModule1.CDSetQuery.CommandText := '';
  DataModule1.CDSetQuery.CommandText := 'UPDATE SITK_PL set D_OFF=:D_OFF, '+
                                          ' ID_DOC_OFF=:ID_DOC_OFF, CODE_PRICH =:CODE_PRICH'+
                                          ' WHERE ID_STR = :ID_STR';
  DataModule1.CDSetQuery.ParamByName('D_OFF').AsDateTime := DateAnnulir.Date;
  DataModule1.CDSetQuery.ParamByName('ID_DOC_OFF').AsInteger := id_doc;
  DataModule1.CDSetQuery.ParamByName('CODE_PRICH').AsInteger := CBPrichina.KeyValue;
  DataModule1.CDSetQuery.ParamByName('ID_STR').AsInteger := id_str;
  DataModule1.CDSetQuery.Execute;
  DataModule1.CDSetQuery.CommandText := '';


  Application.MessageBox('Информация сохранена','Успешно',MB_OK + MB_ICONINFORMATION);

  DataModule1.CDSetPlashka.Refresh;
  DataModule1.CDSetLicoPL.Refresh;

  DataModule1.CDSetPlashka.Close;
  DataModule1.CDSetLicoPL.Close;


  FPechati.BtnFiltrClick(Sender);

end;

procedure TFAnnulirPL.FormShow(Sender: TObject);
begin
  DataModule1.CDSetPrichina.Open;
end;

end.
