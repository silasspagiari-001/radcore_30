unit untFrmCTEENTRADA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmNOTAENTRADA, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, uniMainMenu, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  uniHTMLFrame, uniDBMemo, uniDBEdit, UniButtonDbEdit, uniDBDateTimePicker,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniDateTimePicker,
  uniEdit, UniButtonEdit, uniScrollBox, uniPanel, uniPageControl, uniButton,
  uniBitBtn, uniGUIClasses, uniMemo, uniLabel, uniGUIBaseClasses;

type
  TfrmCTEENTRADA = class(TfrmNOTAENTRADA)
    procedure UniFrameCreate(Sender: TObject);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCTEENTRADA: TfrmCTEENTRADA;

implementation

uses
  System.DateUtils, mkm_funcoes, mkm_func_web;

{$R *.dfm}

procedure TfrmCTEENTRADA.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
begin
//  inherited;

end;

procedure TfrmCTEENTRADA.UniFrameCreate(Sender: TObject);
begin
  inherited;
  labTitleForm.Caption               := 'CTE DE ENTRADA';
  varC_Documento_MvmestreNFE         := 720;
  edSearchCRUDDtIni.Text             := DateToStr(StartOfTheMonth(date));
  edSearchCRUDDtEnd.Text             := DateToStr(EndOfMonth(StrToDate(edSearchCRUDDtIni.Text)));
  cbxSearchCRUDFieldordem.ItemIndex  := 1;
  cbxSearchCRUDFieldstatus.ItemIndex := 2;
  ativabusca();
  MenuOpcoes(False);
  btnSearchCRUD.OnClick(Self);
end;
initialization
  RegisterClass(TfrmCTEENTRADA);
end.
