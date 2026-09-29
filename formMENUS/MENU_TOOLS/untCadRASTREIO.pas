unit untCadRASTREIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, uniPanel, uniHTMLFrame,
  uniGUIBaseClasses, uniGUIClasses, uniBasicGrid, uniDBGrid, uniDateTimePicker,
  uniEdit, UniButtonEdit, uniScrollBox, uniPageControl, uniButton, uniBitBtn,
  uniLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt;

type
  TfrmCADRASTREIO = class(TfrmBase)
    labTitleForm: TUniLabel;
    labExit: TUniLabel;
    paBaseButtons: TUniContainerPanel;
    paOF: TUniContainerPanel;
    btnCloseForm: TUniBitBtn;
    btnOptions: TUniBitBtn;
    paP: TUniContainerPanel;
    btnSearch: TUniBitBtn;
    paNAE: TUniContainerPanel;
    paGC: TUniContainerPanel;
    pgBaseCadControl: TUniPageControl;
    tabSearch: TUniTabSheet;
    paBaseRegSearch: TUniContainerPanel;
    paSearchFilters: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    labTitleSearch: TUniLabel;
    paSearchBtn: TUniContainerPanel;
    btnSearchCRUD: TUniBitBtn;
    btnSearchMoreFilters: TUniBitBtn;
    paSearchFilter1: TUniContainerPanel;
    paSearchField1: TUniContainerPanel;
    UniLabelc1: TUniLabel;
    UniButtonEditpusuarios: TUniButtonEdit;
    paSearchFilterPeriodSelect: TUniContainerPanel;
    paSearchFilterDtIni: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchCRUDDtIni: TUniDateTimePicker;
    paSearchFilterDtEnd: TUniContainerPanel;
    UniLabelDtEnd: TUniLabel;
    edSearchCRUDDtEnd: TUniDateTimePicker;
    dbgSearchCRUD: TUniDBGrid;
    FDQryFiltro: TFDQuery;
    dsfiltro: TDataSource;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroUSUARIO: TStringField;
    FDQryFiltroCODIGOTABELA: TIntegerField;
    FDQryFiltroTABELA: TStringField;
    FDQryFiltroACAO: TStringField;
    FDQryFiltroDATA: TDateField;
    FDQryFiltroHORA: TTimeField;
    FDQryFiltroDADOS: TBlobField;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnSearchCRUDClick(Sender: TObject);
    procedure FDQryFiltroACAOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnSearchClick(Sender: TObject);
    procedure FDQryFiltroDADOSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure UniButtonEditpusuariosButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure ativabusca();
  end;

var
  frmCADRASTREIO: TfrmCADRASTREIO;

implementation

uses
  System.DateUtils, mkm_procedures, mkm_funcoes, mkm_func_web, MainModule,
  untFrmTELAGENERICA, untDM_RC, untFrmPesquisa;

{$R *.dfm}

procedure TfrmCADRASTREIO.ativabusca;
begin
  if not ( dsfiltro.State in [dsEdit, dsInsert ] ) then
  begin
     pgBaseCadControl.ActivePage := tabSearch;

     if mm.varB_Mobile_Screen_Portrait then
        paSearchFilters.Width := varIIF( paSearchFilters.width = 0, dbgSearchCRUD.Width, 0 )
     else
        paSearchFilters.Width := varIIF( paSearchFilters.width = 0, 266, 0 );
  end;
end;

procedure TfrmCADRASTREIO.btnSearchClick(Sender: TObject);
begin
  inherited;
  ativabusca;
end;

procedure TfrmCADRASTREIO.btnSearchCRUDClick(Sender: TObject);
var
  sql:string;
begin
  sql := 'select CODIGO, USUARIO,CODIGOTABELA, TABELA, ACAO, DATA, HORA, DADOS from rastreio where empresa = ' + IntToStr(mm.varI_Code_Company) +
         variif(UniButtonEditpusuarios.Text <> '0',
         'and codfuncionario = ' + QuotedStr(UniButtonEditpusuarios.Text),'')    +
         'and data between     ' + QuotedStr(DataPonto(edSearchCRUDDtIni.Text))  +
         'and                  ' + QuotedStr(DataPonto(edSearchCRUDDtEnd.Text))  +
         'order by data,hora   ';

  FDQryFiltro.Close;
  FDQryFiltro.SQL.Clear;
  FDQryFiltro.SQL.Text := sql;
  FDQryFiltro.Open;
end;

procedure TfrmCADRASTREIO.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
begin
  inherited;
  if Column.FieldName = 'DADOS' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'EM DESENVOLVIMENTO' , 'error' , false );
    {
      mm.VarC_Atelagenerica := 'EXIBEDADOS';
      frmTELAGENERICA.ShowModal();
}
    end;
end;

procedure TfrmCADRASTREIO.FDQryFiltroACAOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroACAO.AsString = 'dsInsert' then
        Text := '<span class="badge badge-success">Adicionado</span>';
      if FDQryFiltroACAO.AsString = 'dsDelete' then
        Text := '<span class="badge badge-danger">Deletado</span>';
      if FDQryFiltroACAO.AsString = 'dsEdit' then
        Text := '<span class="badge badge-warning">Editado</span>';
    end;
end;

procedure TfrmCADRASTREIO.FDQryFiltroDADOSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text :=
    '<i title="dados" class="fa fa-lg fas fa-file-alt fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADRASTREIO.UniButtonEditpusuariosButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       UniButtonEditpusuarios.Text :=  MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmCADRASTREIO.UniFrameCreate(Sender: TObject);
begin
  inherited;
  edSearchCRUDDtIni.Text := DateToStr(date);
  edSearchCRUDDtEnd.Text := DateToStr(Date);
  ativabusca();
  btnSearchCRUD.OnClick(Self);
end;
initialization
  RegisterClass(TfrmCADRASTREIO);
end.
