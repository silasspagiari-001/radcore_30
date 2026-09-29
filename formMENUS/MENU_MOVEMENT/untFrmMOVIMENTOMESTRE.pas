unit untFrmMOVIMENTOMESTRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, uniPanel, uniHTMLFrame,
  uniGUIBaseClasses, uniGUIClasses, uniBasicGrid, uniDateTimePicker,
  uniEdit, UniButtonEdit, uniLabel, uniScrollBox, uniPageControl, uniButton,
  uniBitBtn, uniMultiItem, uniComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Menus, uniMainMenu, uniDBGrid,
  uniDBEdit, UniButtonDbEdit, uniDBDateTimePicker, uniMemo, uniDBMemo,
  uniScreenMask, uniDBComboBox;

type
  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros, tpCalcular);

  TfrmMOVIMENTOMESTRE = class(TfrmBase)
    paBaseButtons: TUniContainerPanel;
    paOF: TUniContainerPanel;
    btnCloseForm: TUniBitBtn;
    btnOptions: TUniBitBtn;
    paP: TUniContainerPanel;
    btnSearch: TUniBitBtn;
    paNAE: TUniContainerPanel;
    btnNewReg: TUniBitBtn;
    btnEditReg: TUniBitBtn;
    btnDeleteReg: TUniBitBtn;
    paGC: TUniContainerPanel;
    btnSaveReg: TUniBitBtn;
    btnCancelReg: TUniBitBtn;
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
    UniButtonEditpessoas: TUniButtonEdit;
    paSearchOp1: TUniContainerPanel;
    paSearchFilterPeriodSelect: TUniContainerPanel;
    paSearchFilterDtIni: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchCRUDDtIni: TUniDateTimePicker;
    paSearchFilterDtEnd: TUniContainerPanel;
    UniLabelDtEnd: TUniLabel;
    edSearchCRUDDtEnd: TUniDateTimePicker;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel3: TUniLabel;
    dbgSearchCRUD: TUniDBGrid;
    paBaseRegData1: TUniTabSheet;
    cbxSearchCRUDFieldordem: TUniComboBox;
    UniButtonEditnumero: TUniButtonEdit;
    UniLabel1: TUniLabel;
    cbxSearchCRUDFieldstatus: TUniComboBox;
    dsfiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    labExit: TUniLabel;
    labTitleForm: TUniLabel;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroNUMERO: TIntegerField;
    FDQryFiltroEMISSAO: TDateField;
    FDQryFiltroSERIE: TStringField;
    FDQryFiltroCANCELADA: TStringField;
    FDQryFiltroPESSOA: TIntegerField;
    FDQryFiltroCIDADE: TStringField;
    FDQryFiltroESTADO: TStringField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroVLRTOTAL: TFMTBCDField;
    FDQryFiltrostatus: TStringField;
    FDQryFiltroopcoes: TStringField;
    ed_Table_ItemSel: TUniEdit;
    ed_FormOrigin: TUniEdit;
    ed_FormOrigin_Tab: TUniEdit;
    ed_Table_Status: TUniEdit;
    ed_Order_Search: TUniEdit;
    ed_Where_Search: TUniEdit;
    ed_CodMaster: TUniEdit;
    ed_PK: TUniEdit;
    ed_FieldMasks: TUniEdit;
    ed_OldPKValue: TUniEdit;
    ed_Table_Status_OLD: TUniEdit;
    ed_GenNextID_OnNew: TUniEdit;
    ed_AskNewRec_AfterPost: TUniEdit;
    dbgExport: TUniDBGrid;
    ed_PKS: TUniEdit;
    ed_OLDPKS: TUniEdit;
    UniPopupMenudetalhes: TUniPopupMenu;
    FDQryCad: TFDQuery;
    dscrud: TDataSource;
    UniScrollBox2: TUniScrollBox;
    rcBlock500: TUniContainerPanel;
    UniEditnomepessoa: TUniEdit;
    UniLabel6: TUniLabel;
    rcBlock490: TUniContainerPanel;
    UniButtonDbEditcodigopessoas: TUniButtonDbEdit;
    UniLabel5: TUniLabel;
    rcBlock480: TUniContainerPanel;
    UniLabel4: TUniLabel;
    rcBlock470: TUniContainerPanel;
    UniLabel8: TUniLabel;
    edCodigo: TUniDBEdit;
    rcBlock510: TUniContainerPanel;
    rcBlock520: TUniContainerPanel;
    rcBlock530: TUniContainerPanel;
    rcBlock540: TUniContainerPanel;
    UniEditcidade: TUniEdit;
    UniLabel7: TUniLabel;
    UniEditestado: TUniEdit;
    UniLabel9: TUniLabel;
    UniButtonDbEditcodigocondicao: TUniButtonDbEdit;
    UniLabel10: TUniLabel;
    UniEditdescricaocondicao: TUniEdit;
    UniLabel11: TUniLabel;
    dstitulos: TDataSource;
    tbtitulos: TFDMemTable;
    tbtitulosPARCELA: TIntegerField;
    tbtitulosVALOR: TFloatField;
    tbtitulosVENCIMENTO: TDateTimeField;
    memprodutos: TFDMemTable;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    memprodutosPRECO: TFloatField;
    memprodutosTOTAL: TFloatField;
    memprodutosQUANTIDADE: TFloatField;
    memprodutosBASEICMS: TFloatField;
    memprodutosVALORICMS: TFloatField;
    memprodutosPERCICMS: TFloatField;
    memprodutosCST: TStringField;
    memprodutosUNIDADE: TStringField;
    memprodutosPIS: TStringField;
    memprodutosCOFINS: TStringField;
    memprodutosICM0: TFloatField;
    memprodutosICM1: TFloatField;
    memprodutosICM2: TFloatField;
    memprodutosBAS0: TFloatField;
    memprodutosBAS1: TFloatField;
    memprodutosBAS2: TFloatField;
    memprodutosSITUACAOLOCAL: TStringField;
    memprodutosSITUACAOOUTRAS: TStringField;
    memprodutosDESCONTO: TFloatField;
    memprodutosDESPESAS: TFloatField;
    memprodutosNUMERONCM: TStringField;
    memprodutosSERIE: TStringField;
    memprodutosSAFRA: TIntegerField;
    memprodutosNUMERO: TIntegerField;
    memprodutosEMPRESA: TIntegerField;
    memprodutosSEQUENCIA: TIntegerField;
    memprodutosUF: TStringField;
    memprodutosPESSOA: TIntegerField;
    memprodutosMARGEM: TFloatField;
    memprodutosCOMPRA: TFloatField;
    memprodutosNCM: TStringField;
    memprodutosGRUPO: TIntegerField;
    memprodutosPERCIPI: TFloatField;
    memprodutosLIQUIDO: TFloatField;
    memprodutosVALORIPI: TFloatField;
    memprodutosOPERACAO: TIntegerField;
    memprodutosPUREZA: TFloatField;
    memprodutosSALDOPONTO: TFloatField;
    memprodutosTERMOSEMENTE: TStringField;
    memprodutosBOLETIMSEMENTE: TStringField;
    memprodutosVALORCULTURAL: TFloatField;
    memprodutosLOTESEMENTE: TStringField;
    memprodutosLOTEORIGEM: TStringField;
    memprodutosSAFRACAMPO: TStringField;
    memprodutosCAMPO: TStringField;
    memprodutosCOOPERANTE: TIntegerField;
    memprodutosGERMINACAO: TFloatField;
    memprodutosSAFRAVALIDA: TStringField;
    memprodutosLOTEENTRADA: TStringField;
    memprodutosCATEGORIA: TStringField;
    memprodutosCUSTOPONTO: TFloatField;
    memprodutosTOTALPONTO: TFloatField;
    memprodutosPERCREDUCAO: TFloatField;
    memprodutosexclui: TStringField;
    memprodutosbuscaproduto: TStringField;
    memprodutosbuscalote: TStringField;
    memprodutosDESCRICAO_NOTA: TStringField;
    memprodutosCULTIVAR: TStringField;
    memprodutosCANCELADA: TStringField;
    memprodutosESTADO: TStringField;
    memprodutosCONTRATO: TIntegerField;
    memprodutosDOCUMENTO: TIntegerField;
    memprodutosFRETE: TFloatField;
    memprodutosPESOLIQUIDO: TFloatField;
    memprodutosPESOBRUTO: TFloatField;
    memprodutosEMISSAO: TStringField;
    memprodutosCUSTO: TFloatField;
    memprodutosPESOSACO: TFloatField;
    memprodutosVALIDADE: TStringField;
    memprodutosTOTALPIS: TFloatField;
    memprodutosTOTALCOFINS: TFloatField;
    memprodutosVLRPIS: TFloatField;
    memprodutosVLRCOFINS: TFloatField;
    memprodutosPERCCOMISSAO: TFloatField;
    memprodutosSEGURO: TFloatField;
    memprodutosDESPESA: TFloatField;
    memprodutoserro: TStringField;
    memprodutosopcoes: TStringField;
    memprodutosENTREGUE: TFloatField;
    dsprodutos: TDataSource;
    UniDBDateTimePickeremissao: TUniDBDateTimePicker;
    btnCalcReg: TUniBitBtn;
    UniPopupMenuopcoes: TUniPopupMenu;
    I1: TUniMenuItem;
    i2: TUniMenuItem;
    N1: TUniMenuItem;
    rcBlock590: TUniContainerPanel;
    UniDBGridprodutos: TUniDBGrid;
    rcBlock580: TUniContainerPanel;
    rcBlock550: TUniContainerPanel;
    UniDBMemoobservacao: TUniDBMemo;
    UniLabel15: TUniLabel;
    rcBlock560: TUniContainerPanel;
    dbgTITULOS: TUniDBGrid;
    rcBlock570: TUniContainerPanel;
    UniDBFormattedNumberEditdescontos: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEditvlrprodutos: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEditvlrdespesas: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEditvlrtotal: TUniDBFormattedNumberEdit;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel16: TUniLabel;
    rcBlock600: TUniContainerPanel;
    rcBlock610: TUniContainerPanel;
    rcBlock620: TUniContainerPanel;
    UniButtonDbEditvendedor: TUniButtonDbEdit;
    UniLabel17: TUniLabel;
    UniLabel19: TUniLabel;
    UniEditnomevendedor: TUniEdit;
    UniLabel20: TUniLabel;
    UniDBFormattedNumberEditperccomissao: TUniDBFormattedNumberEdit;
    tbtitulosexclui: TStringField;
    UniComboBoxparaop: TUniComboBox;
    UniLabel21: TUniLabel;
    btntransp: TUniBitBtn;
    memprodutosPEDIDOOR: TStringField;
    memprodutosPEDIDOITEMOR: TStringField;
    rcBlock630: TUniContainerPanel;
    rcBlock640: TUniContainerPanel;
    rcBlock650: TUniContainerPanel;
    rcBlock660: TUniContainerPanel;
    UniDBFormattedNumberEditquantidade: TUniDBFormattedNumberEdit;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    UniDBFormattedNumberEditPESOBRUTO: TUniDBFormattedNumberEdit;
    UniDBEditinscricao: TUniDBEdit;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    rcBlock670: TUniContainerPanel;
    UniDBMemo1: TUniDBMemo;
    UniLabel26: TUniLabel;
    UniScreenMask: TUniScreenMask;
    FDQryFiltroDOCUMENTO: TIntegerField;
    FDQryFiltroFECHAMENTO_STATUS: TStringField;
    N5: TUniMenuItem;
    I4: TUniMenuItem;
    memprodutosSEMENTENOME: TStringField;
    UniDBComboBoxMARCA: TUniDBComboBox;
    UniPopupMenulote: TUniPopupMenu;
    L1: TUniMenuItem;
    L2: TUniMenuItem;
    N6: TUniMenuItem;
    memprodutosTETRAZOLIO: TFloatField;
    memprodutosTIPOLOTE: TStringField;
    tbtitulosSTATUS: TStringField;
    procedure UniButtonEditpessoasButtonClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnSearchCRUDClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure labExitClick(Sender: TObject);
    procedure FDQryFiltrostatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQryFiltroopcoesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure dbgSearchCRUDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dbgSearchCRUDDblClick(Sender: TObject);
    procedure memprodutosbuscaprodutoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure memprodutosexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure memprodutosAfterDelete(DataSet: TDataSet);
    procedure memprodutosAfterPost(DataSet: TDataSet);
    procedure memprodutosBeforeDelete(DataSet: TDataSet);
    procedure memprodutosBeforePost(DataSet: TDataSet);
    procedure btnNewRegClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure UniDBGridprodutosCellClick(Column: TUniDBGridColumn);
    procedure UniButtonDbEditcodigopessoasButtonClick(Sender: TObject);
    procedure UniButtonDbEditcodigopessoasExit(Sender: TObject);
    procedure UniButtonDbEditcodigocondicaoButtonClick(Sender: TObject);
    procedure UniButtonDbEditcodigocondicaoExit(Sender: TObject);
    procedure UniDBFormattedNumberEditdescontosExit(Sender: TObject);
    procedure UniDBFormattedNumberEditvlrdespesasExit(Sender: TObject);
    procedure btnCalcRegClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure i2Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure UniButtonDbEditvendedorButtonClick(Sender: TObject);
    procedure UniButtonDbEditvendedorExit(Sender: TObject);
    procedure btntranspClick(Sender: TObject);
    procedure I4Click(Sender: TObject);
    procedure memprodutosbuscaloteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBGridprodutosMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure L1Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure tbtitulosSTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  posicao_x, posicao_y    : Integer;
  public
    { Public declarations }
  iCurrentPage                    : integer;
  varC_Documento_Mvmestre         : Integer;
  varC_verificarecalculofinanceiro: string;

  procedure  ativabusca();
  procedure  rc_DefaultTitleForm;
  procedure  carregadados();
  procedure  carregaprodutos(codigo:string);
  procedure  SetBut(Acao:TAcaoCrud);
  procedure  LimpaVars();
  procedure  gravamemoria();
  function   CamposValidados :Boolean;
  procedure  Calcula_Totais();
  procedure  GravaMovimento();
  procedure  Calcula_Titulos();
  procedure  ReCalcula_Titulos();
  procedure  Exclui();
  procedure  CarregaParametros();
  procedure  CarregaMarca();
  procedure  VerificaEdicao();
  function   VerificaSetemFinanceiro():Boolean;
  procedure  FechaTabelas();

  procedure  carregaitens     (cempresa,cdocumento,cnumero:integer);
  procedure  carregafinanceiro(cempresa,cdocumento,cnumero:integer);
  procedure  CarregaImportacao(const controle:integer);
  procedure  ReleituraProdutoscfop();
  procedure  carregalote(lote:string;produto:integer);
  procedure  carregaloteProducao(codigo:integer);
  procedure  VerificaFinanceiroAtual();

  end;

var
  frmMOVIMENTOMESTRE: TfrmMOVIMENTOMESTRE;

implementation

{$R *.dfm}

uses MainModule, untFrmPesquisa, mkm_funcoes, mkm_func_web, Vcl.Clipbrd,
  System.DateUtils, untDM_RC, untFrmLookUp_Lite, mkm_layout, Vcl.Grids
, mkm_procedures, System.TypInfo, uniGUITypes, mkm_impressao, unReportImpressao,
  untFrmTransfereImportacao, untFrmTELAGENERICA, untFrmTRANSPORTADORAMOVIMENTO,
  untFrmBLOQUEIOPESSOA, untFrmPesquisaItensestoque, untFrmPesquisaloteinterno;

Procedure TfrmMOVIMENTOMESTRE.ativabusca;
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

procedure TfrmMOVIMENTOMESTRE.btnCalcRegClick(Sender: TObject);
begin
  inherited;

  dm_rc.rc_ShowYesNo( 'POSSO CALCULAR ESSE DOCUMENTO?' );
  if mm.varB_Yes then
    begin
      gravamemoria();
      Calcula_Totais();
      if (VerificaSetemFinanceiro = True) and
         (varC_Documento_Mvmestre = 4)    and
         (dscrud.State in [dsEdit]) then
        begin
          mm.varI_Code_Numero_Documento :=  FDQryCad.FindField('NUMERO').AsInteger;
          mm.varI_Code_documento_serie  :=  FDQryCad.FindField('SERIE').AsString;

          mm.VarC_Atelagenerica         :=  'PEDIDOFINANCEIRO';
          frmTELAGENERICA.ShowModal();
          ReCalcula_Titulos();
        end
      else
        if FDQryCad.FindField('CONDICAO').AsInteger = 9999 then
          begin
            mm.varV_Valor_Documento          := UniDBFormattedNumberEditvlrtotal.value;

            dm_rc.tbtitulos.Close;
            dm_rc.tbtitulos.CopyDataSet(tbtitulos);

            mm.VarC_Atelagenerica            := 'PARCELAPGTOMOVIMENTO';
            frmTELAGENERICA.ShowModal();

            tbtitulos.Close;
            tbtitulos.Open;

            tbtitulos.CopyDataSet(dm_rc.tbtitulos);
            dm_rc.tbtitulos.Close;
          end
        else
          Calcula_Titulos();
    end;

  SetBut(tpCalcular);

  I1.Enabled := False;
  i2.Enabled := False;
  UniDBComboBoxMARCA.ReadOnly      := True;
end;

procedure TfrmMOVIMENTOMESTRE.btnCancelRegClick(Sender: TObject);
begin
  inherited;

   SetBut(tpListaVazia);

   FDQryCad.Close ;

   tbtitulos.Close;
   memprodutos.Close;

     UniDBComboBoxMARCA.ReadOnly      := True;
   LimpaVars;
end;

procedure TfrmMOVIMENTOMESTRE.btnDeleteRegClick(Sender: TObject);
var i : integer; Cmp:String;
begin
  dm_rc.rc_ShowYesNo( 'DESEJA REALMENTE EXCLUIR ESSE REGISTRO ?' );
  if mm.varB_Yes then
    begin
      Exclui();
    end
  else
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Operação cancelada pelo USUÁRIO!' , 'warning' , false );
      Abort
    end;

    Try
       FDQryCad.Close;

      for i := 0 to  FDQryCad.Params.Count - 1 do
      begin
        Cmp :=  FDQryCad.Params[i].Name;
         FDQryCad.Params[i].Value :=  FDQryFiltro.FieldByName(Cmp).Value ;
      end;
       FDQryCad.Open;
    Except
      abort;
    End;
end;

procedure TfrmMOVIMENTOMESTRE.btnEditRegClick(Sender: TObject);
var i : integer; Cmp:String;
  S, R: Integer;
begin
  inherited;
  CarregaParametros();
  CarregaMarca();
  pgBaseCadControl.ActivePage := paBaseRegData1;

  SetBut(tpAlterar);
  mm.FDTransaction.StartTransaction;

  Try
  {
    FDQryCad.Close;
   for i := 0 to  FDQryCad.Params.Count - 1 do
   begin
      Cmp :=  FDQryCad.Params[i].Name;
      FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
   end;
    FDQryCad.Open;
  }
    FDQryCad.Edit;

    UniDBGridprodutos.Options          := UniDBGridprodutos.Options - [dgRowSelect];
    UniDBGridprodutos.Options          := UniDBGridprodutos.Options + [dgEditing];

//    dbgTITULOS.Options                 := dbgTITULOS.Options - [dgRowSelect];
    dbgTITULOS.Options                 := dbgTITULOS.Options + [dgEditing];

    if FDQryCad.State in [dsInsert] then
    begin
      S := 1;
      tbtitulos.Close;
      tbtitulos.Open;

      memprodutos.Close;
      memprodutos.Open;
    end
    else
      S := memprodutos.RecordCount + 30;

    memprodutos.DisableControls;
    memprodutos.AfterDelete  := nil;
    memprodutos.AfterPost    := nil;
    memprodutos.BeforePost   := nil;
    memprodutos.BeforeDelete := nil;

    for R := S to S + 30 do
    begin
      memprodutos.Append;
      memprodutos.Post;
    end;

    memprodutos.First;
    memprodutos.AfterDelete  := memprodutosAfterDelete;
    memprodutos.AfterPost    := memprodutosAfterPost;
    memprodutos.BeforeDelete := memprodutosBeforeDelete;
    memprodutos.BeforePost   := memprodutosBeforePost;
    memprodutos.EnableControls;
    memprodutos.First;

  Except
   Abort ;
  End ;

  I1.Enabled := False;
  i2.Enabled := False;
  UniComboBoxparaop.Text      := FDQryCad.FindField('PARAMETROOPERACAO').AsString;
  UniComboBoxparaop.Enabled   := True;
  UniDBComboBoxMARCA.ReadOnly := False;

end;

procedure TfrmMOVIMENTOMESTRE.btnNewRegClick(Sender: TObject);
  var i : integer; Cmp:String;
  S, R: Integer;
begin
  inherited;
  CarregaParametros();
  CarregaMarca();
  pgBaseCadControl.ActivePage := paBaseRegData1;

  SetBut(tpIncluir);
  mm.FDTransaction.StartTransaction;

  try
    FDQryCad.Close ;
    for i := 0 to  FDQryCad.Params.Count - 1 do
    begin
      Cmp :=  FDQryCad.Params[i].Name;
       FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
    end;
     FDQryCad.Open;
  Except
     FDQryCad.Params[0].AsInteger := -1 ;
     FDQryCad.Open;
  End;

  LimpaVars;
  UniComboBoxparaop.Enabled     := True;

  if not( FDQryCad.Active) then
      FDQryCad.Open;

  SqlPesquisa('select operacao,serie, condicao from documentos where documento = ' + IntToStr(varC_Documento_Mvmestre) +
              'and empresa                                                     = ' + IntToStr(mm.varI_Code_Company));

   FDQryCad.Append ;
   FDQryCad.FindField('PESSOA').AsInteger               := 0;
   FDQryCad.FindField('EMPRESA').AsInteger              := mm.varI_Code_Company;
   FDQryCad.FindField('DOCUMENTO').AsInteger            := varC_Documento_Mvmestre;
   FDQryCad.FindField('NUMERO').AsInteger               := 0;
   FDQryCad.FindField('TRAFRETE').AsInteger             := 0;
   FDQryCad.FindField('SERIE').AsString                 := dm_rc.sqlBuscas.FindField('SERIE').AsString;
   FDQryCad.FindField('EMISSAO').AsDateTime             := Date;
   FDQryCad.FindField('RECEPCAODESPACHO').AsDateTime    := Date;
   FDQryCad.FindField('OPERACAO').AsString              := dm_rc.sqlBuscas.FindField('OPERACAO').AsString;
   FDQryCad.FindField('CONDICAO').AsString              := dm_rc.sqlBuscas.FindField('CONDICAO').AsString;
   FDQryCad.FindField('FUNCIONARIO').AsInteger          := mm.varI_CodeSalesMan;

   FDQryCad.FindField('VLRDESCONTOS').AsFloat           := 0;
   FDQryCad.FindField('VLRPRODUTOS').AsFloat            := 0;
   FDQryCad.FindField('VLRDESPESAS').AsFloat            := 0;
   FDQryCad.FindField('VLRTOTAL').AsFloat               := 0;

   if mm.varC_Doc_Customer = '08606807000184' then
     begin
       FDQryCad.FindField('TRAMARCA').AsString          := 'GUINOSSI';
       FDQryCad.FindField('TRAESPECIE').AsString        := 'VOLUME(S)';
     end;

   if mm.varC_Doc_Customer = '52070356000103' then
     begin
       FDQryCad.FindField('TRAMARCA').AsString          := 'SELEGRAM';
     end;


  UniDBGridprodutos.Options          := UniDBGridprodutos.Options - [dgRowSelect];
  UniDBGridprodutos.Options          := UniDBGridprodutos.Options + [dgEditing];
  dbgTITULOS.Options                 := dbgTITULOS.Options + [dgEditing];


  if FDQryCad.State in [dsInsert] then
  begin
    S := 1;
    tbtitulos.Close;
    tbtitulos.Open;

    memprodutos.Close;
    memprodutos.Open;
  end
  else
    S := memprodutos.RecordCount + 10;

  memprodutos.DisableControls;
  memprodutos.AfterDelete  := nil;
  memprodutos.AfterPost    := nil;
  memprodutos.BeforePost   := nil;
  memprodutos.BeforeDelete := nil;

  for R := S to S + 25 do
  begin
    memprodutos.Append;
    memprodutos.Post;
  end;

  memprodutos.First;
  memprodutos.AfterDelete  := memprodutosAfterDelete;
  memprodutos.AfterPost    := memprodutosAfterPost;
  memprodutos.BeforeDelete := memprodutosBeforeDelete;
  memprodutos.BeforePost   := memprodutosBeforePost;
  memprodutos.EnableControls;
  memprodutos.First;

  UniButtonDbEditcodigopessoas.SetFocus;
  UniButtonDbEditcodigopessoas.SelectAll;

  I1.Enabled := True;
  i2.Enabled := False;

  UniDBComboBoxMARCA.ReadOnly      := false;

end;

procedure TfrmMOVIMENTOMESTRE.btnOptionsClick(Sender: TObject);
begin
  inherited;
  UniPopupMenuopcoes.PopupBy( TUniButton( sender ) );
end;

procedure TfrmMOVIMENTOMESTRE.btnSaveRegClick(Sender: TObject);
var
  vdup:real;
  M_MARCAM,
  M_MARCAF  : TBookMark;
begin
  inherited;

  if verificastatuspessoa(StrToInt(UniButtonDbEditcodigopessoas.Text)) = True then
    begin
      frmBLOQUEIOPESSOA.ShowModal();
      UniButtonDbEditcodigopessoas.Text := '0';
    end;

  vdup:=0;
  tbtitulos.First;
  tbtitulos.DisableControls;
  while not tbtitulos.Eof do
    begin
      vdup := vdup + tbtitulosVALOR.AsFloat;
      tbtitulos.Next;
    end;
  tbtitulos.First;
  tbtitulos.EnableControls;

  if UniComboBoxparaop.Text = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'DEFINA COMO VAI SER A VENDA' , 'error' , false );
      UniComboBoxparaop.SetFocus;
      abort
    end;

  if not (CamposValidados) then
     Abort
  else
    if FDQryCad.State in [dsInsert,dsEdit] then
     Begin
       if FDQryCad.State in [dsInsert] then
         begin
           FDQryCad.FindField('KEY').AsString     := Gera_Guid;
           FDQryCad.FindField('CODIGO').AsInteger := Ultimo_Codigo('MVMESTRE','CODIGO',True);
           FDQryCad.FindField('NUMERO').AsInteger := Ultimo_Numero(mm.varI_Code_Company,varC_Documento_Mvmestre,'GRAVAR');
         end;

       FDQryCad.FindField('PARAMETROOPERACAO').AsString := UniComboBoxparaop.Text;
       if mm.varT_code_tipo_transportadora = '' then
         FDQryCad.FindField('TRAFRETE').AsInteger         := 0;

       FDQryCad.Post;

       GravaMovimento();

       try
         mm.FDTransaction.CommitRetaining;
         mm.FDTransaction.Commit;
         FechaTabelas();

         varC_verificarecalculofinanceiro := '';
         dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Gravados com SUCESSO!' , 'success' , false );
       except
         dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui gravar, chame o SUPORTE!' , 'error' , false );
       end;
     End;


  if FDQryFiltro.Active then
    begin
      FDQryFiltro.Refresh;
      FDQryFiltro.Locate('NUMERO',FDQryCad.FindField('NUMERO').AsInteger,[]);;
    end;

  if  FDQryFiltro.IsEmpty then
   SetBut(tpListaVazia)
  Else
   SetBut(tpListacomRegistros);

  I1.Enabled := False;
  i2.Enabled := True;

end;

procedure TfrmMOVIMENTOMESTRE.btnSearchClick(Sender: TObject);
begin
  inherited;
  ativabusca();
end;

procedure TfrmMOVIMENTOMESTRE.btnSearchCRUDClick(Sender: TObject);
var
  SQL,WHERE,SITUACAO,M_AND,M_ORDEM,M_SITUACAO,CAMPOS : string;
begin
  inherited;

  VerificaEdicao();

  case cbxSearchCRUDFieldordem.ItemIndex of
    0: M_ORDEM := ' ORDER BY M.EMISSAO';
    1: M_ORDEM := ' ORDER BY M.NUMERO';
    2: M_ORDEM := ' ORDER BY M.PESSOA';
  end;

  CAMPOS  := ' M.CODIGO, M.NUMERO,M.EMISSAO,M.DOCUMENTO,M.SERIE,M.CANCELADA,M.PESSOA,P.CIDADE,P.ESTADO,P.NOME,M.FECHAMENTO_STATUS,M.VLRTOTAL ';
  M_AND   := ' AND M.EMISSAO BETWEEN                ' + QuotedStr(DataPonto(edSearchCRUDDtIni.Text)) +
             ' AND                                  ' + QuotedStr(DataPonto(edSearchCRUDDtEnd.Text));;

  SQL :=    ' SELECT          ' + CAMPOS +
            ' FROM   MVMESTRE ' +
            ' M INNER JOIN PESSOAS P ON (M.PESSOA = P.CODIGO)        ' +
            variif(UniButtonEditpessoas.Text              = '0'    ,'','AND M.PESSOA      = '  + QuotedStr(UniButtonEditpessoas.Text))      +
            variif(UniButtonEditnumero.Text               = '0'    ,'','AND M.NUMERO      = '  + QuotedStr(UniButtonEditnumero.Text))       +
            ' AND M.EMPRESA                               = ' + IntToStr(mm.varI_Code_Company) +
            variif(Verificavendedor(mm.varI_CodeSalesMan) = 'Externo',
            ' AND M.FUNCIONARIO                           = ' + IntToStr(mm.varI_CodeSalesMan),'') +
            ' AND M.DOCUMENTO                             = ' + IntToStr(varC_Documento_Mvmestre);

  if (UniButtonEditpessoas.Text = '0') and (UniButtonEditnumero.Text = '0') then
    SQL := SQL + M_AND + M_SITUACAO + M_ORDEM
  else
    SQL := SQL + M_SITUACAO + M_ORDEM ;

  FDQryFiltro.Close;
  FDQryFiltro.SQL.Clear;
  FDQryFiltro.SQL.Text  := SQL;
  FDQryFiltro.Open();

  FDQryFiltro.Last;
  SetBut(tpListaVazia);
end;

procedure TfrmMOVIMENTOMESTRE.btntranspClick(Sender: TObject);
begin
  inherited;

  mm.varT_code_transportadora      := FDQryCad.FindField('TRANSPORTADORA').AsInteger;
  mm.varT_code_nome_transportadora := FDQryCad.FindField('TRANOME').AsString;
  mm.varT_code_tipo_transportadora := FDQryCad.FindField('TRAFRETE').AsString;
  mm.varT_code_cep_entrega         := FDQryCad.FindField('ENTREGA_CEP').AsString;
  mm.varT_code_ibge_entrega        := FDQryCad.FindField('ENTREGA_IBGE').AsString;
  mm.varT_code_endereco_entrega    := FDQryCad.FindField('ENTREGA_ENDERECO').AsString;
  mm.varT_code_numero_entrega      := FDQryCad.FindField('ENTREGA_NUMERO').AsString;
  mm.varT_code_bairro_entrega      := FDQryCad.FindField('ENTREGA_BAIRRO').AsString;
  mm.varT_code_cidade_entrega      := FDQryCad.FindField('ENTREGA_CIDADE').AsString;
  mm.varT_code_estado_entrega      := FDQryCad.FindField('ENTREGA_ESTADO').AsString;

  frmTRANPORTADORAMOVIMENTO.ShowModal();

  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      FDQryCad.FindField('TRANSPORTADORA').AsInteger  := mm.varT_code_transportadora;
      FDQryCad.FindField('TRANOME').AsString          := mm.varT_code_nome_transportadora;
      FDQryCad.FindField('TRAFRETE').AsInteger        := StrToInt(mm.varT_code_tipo_transportadora);
      FDQryCad.FindField('ENTREGA_CEP').AsString      := mm.varT_code_cep_entrega;
      FDQryCad.FindField('ENTREGA_IBGE').AsString     := mm.varT_code_ibge_entrega;
      FDQryCad.FindField('ENTREGA_ENDERECO').AsString := mm.varT_code_endereco_entrega;
      FDQryCad.FindField('ENTREGA_NUMERO').AsString   := mm.varT_code_numero_entrega;
      FDQryCad.FindField('ENTREGA_BAIRRO').AsString   := mm.varT_code_bairro_entrega;
      FDQryCad.FindField('ENTREGA_CIDADE').AsString   := mm.varT_code_cidade_entrega;
      FDQryCad.FindField('ENTREGA_ESTADO').AsString   := mm.varT_code_estado_entrega;

      if mm.varT_code_ibge_entrega = '0' then
        begin
          dm_rc.rc_ShowSweetAlert( 'Ok', 'IBGE DA ENTREGA NÃO INFORMADO CORRETAMENTE - CONFIRA - 1º CORRIJA NO CLIENTE, 2º CORRIJA NA ENTREGA' , 'error' , false );
        end;

      if mm.varT_code_ibge_entrega <> '0' then
        begin
          if mm.varT_code_bairro_entrega = '' then
            begin
              dm_rc.rc_ShowSweetAlert( 'Ok', 'ESTA FALTANDO O BAIRRO DA ENTREGA POR FAVOR CONFIRA' , 'error' , false );
            end;

          if mm.varT_code_cidade_entrega = '' then
            begin
              dm_rc.rc_ShowSweetAlert( 'Ok', 'ESTA FALTANDO  A CIDADE DA ENTREGA POR FAVOR CONFIRA' , 'error' , false );
            end;

          if mm.varT_code_numero_entrega = '' then
            begin
              dm_rc.rc_ShowSweetAlert( 'Ok', 'ESTA FALTANDO  O NUMERO DA ENTREGA POR FAVOR CONFIRA' , 'error' , false );
            end;
        end;

      if mm.varT_code_ibge_entrega = '1058' then
        begin
          dm_rc.rc_ShowSweetAlert( 'Ok', 'IBGE DA ENTREGA NÃO PODE SER 1058 - 1º CORRIJA NO CADASTRO DE PESSOAS' , 'error' , false );
        end;
    end;

end;

procedure TfrmMOVIMENTOMESTRE.Calcula_Titulos;
var
  M_PARCELAS : TStringList;
  R          : Integer;
  M_RESTO    : Real;
  ORDEM,
  M_ITENS    : Integer;
begin
  tbtitulos.Close;
  tbtitulos.Open;

  if SqlPesquisa('SELECT * FROM CONDICOES WHERE CODIGO = ' + QuotedStr(UniButtonDbEditcodigocondicao.Text)) then

  ORDEM      := 0;
  M_PARCELAS := Explode(TRIM(dm_rc.sqlBuscas.FindField('OBSERVACOES').AsString),',');
  M_RESTO    := UniDBFormattedNumberEditvlrtotal.Value;
  M_ITENS    := variif(dm_rc.sqlBuscas.FindField('PARCELAS').AsInteger=0,1,dm_rc.sqlBuscas.FindField('PARCELAS').AsInteger);

  if M_PARCELAS.Count <  M_ITENS then
    begin
      for R := M_PARCELAS.Count to M_ITENS -1 do
        begin
          M_PARCELAS.Add(IntToStr(R * 30));
        end;
    end;

  for R := 0 to M_PARCELAS.Count - 1 do
    begin
      inc(ORDEM);
      tbtitulos.Append;
      tbtitulos.FindField('VENCIMENTO').AsDateTime := UniDBDateTimePickeremissao.DateTime + Valor(M_PARCELAS[R]);
      tbtitulos.FindField('VALOR').AsFloat         := MRound(UniDBFormattedNumberEditvlrtotal.Value / M_ITENS,2);
      tbtitulos.FindField('PARCELA').AsInteger     := ORDEM;
      tbtitulos.FindField('STATUS').AsString       := 'Aberto';
      tbtitulos.Post;
      M_RESTO := M_RESTO - tbtitulos.FindField('VALOR').AsFloat;
    end;

  if M_RESTO > 0 then
    begin
      tbtitulos.Last;
      tbtitulos.Edit;
      tbtitulos.FindField('VALOR').AsFloat := tbtitulos.FindField('VALOR').AsFloat + Abs(M_RESTO);
      tbtitulos.Post;
    end
  else
    if M_RESTO < 0 then
      begin
        tbtitulos.First;
        tbtitulos.Edit;
        tbtitulos.FindField('VALOR').AsFloat := tbtitulos.FindField('VALOR').AsFloat - Abs(M_RESTO);
        tbtitulos.Post;
      end;

  tbtitulos.First;

end;

procedure TfrmMOVIMENTOMESTRE.Calcula_Totais;
var
  M_VLRPRODUTOS, M_VLRDESCONTO, M_VLRLIQUIDO, M_VLRDESPESA, M_VLRTOTAL, M_VLRSERVICOS, M_VLRRESTO, M_FRETE, M_QUANTIDADE: Real;
  M_MARCA: TBookMark;
  M_PESO: Real;
  M_BRUTO: Real;
  M_BASE: Real;
  M_VICM: Real;
  M_BASU: Real;
  M_VSUB: Real;
  M_VIPI: Real;
  M_SACOS: Real;
  M_SEGURO: Real;
  M_VLRIMPOSTO: Real;
  M_TOTIPI: Real;
  M_VALORCICMSF: Real;
  R: Pointer;
begin

  M_MARCA := memprodutos.GetBookmark;
  memprodutos.DisableControls;

  memprodutos.AfterDelete  := nil;
  memprodutos.AfterPost    := nil;
  memprodutos.BeforePost   := nil;
  memprodutos.BeforeDelete := nil;
  memprodutos.First;

  M_VLRPRODUTOS := 0;
  M_VLRTOTAL    := 0;
  M_VLRSERVICOS := 0;
  M_VLRDESCONTO := 0;
  M_QUANTIDADE  := 0;
  M_FRETE       := 0;
  M_BASE        := 0;
  M_VICM        := 0;
  M_BASU        := 0;
  M_VSUB        := 0;
  M_VIPI        := 0;
  M_VLRIMPOSTO  := 0;
  M_PESO        := 0;
  M_BRUTO       := 0;
  M_TOTIPI      := 0;
  M_VALORCICMSF := 0;
  M_SACOS       := 0;
  M_SEGURO      := 0;
  M_BRUTO       := 0;

  if UniDBFormattedNumberEditdescontos.Value > 0 then
    begin
      M_VLRPRODUTOS := 0;
      memprodutos.First;
      while not memprodutos.eof do
        begin
          if memprodutos.FindField('PRODUTO').AsInteger > 0 then
            M_VLRPRODUTOS := M_VLRPRODUTOS + memprodutos.FindField('TOTAL').AsFloat;
          memprodutos.next;
          Application.ProcessMessages;
        end;
      M_VLRRESTO   := UniDBFormattedNumberEditdescontos.Value ;
      M_VLRLIQUIDO := (M_VLRPRODUTOS - UniDBFormattedNumberEditdescontos.Value);
      memprodutos.First;
      while not memprodutos.eof do
        begin
          if memprodutos.FindField('PRODUTO').AsInteger > 0 then
            begin
              memprodutos.Edit;
              memprodutos.FindField('LIQUIDO').AsFloat  := Mround(memprodutos.FindField('TOTAL').AsFloat - MRound(((UniDBFormattedNumberEditdescontos.Value / M_VLRPRODUTOS) * memprodutos.FindField('TOTAL').AsFloat),2),2);
              memprodutos.FindField('DESCONTO').AsFloat := memprodutos.FindField('TOTAL').AsFloat - memprodutos.FindField('LIQUIDO').AsFloat;
              memprodutos.Post;
              M_VLRRESTO   := M_VLRRESTO   - memprodutos.FindField('DESCONTO').AsFloat;
              M_VLRLIQUIDO := M_VLRLIQUIDO - memprodutos.FindField('LIQUIDO').AsFloat;
            end;
          memprodutos.next;
          Application.ProcessMessages;
        end;
      memprodutos.First;
      memprodutos.Edit;
      if M_VLRRESTO > 0 then
        memprodutos.FindField('DESCONTO').AsFloat := memprodutos.FindField('DESCONTO').AsFloat + Abs(M_VLRRESTO)
      else
        if M_VLRRESTO < 0 then
          memprodutos.FindField('DESCONTO').AsFloat := memprodutos.FindField('DESCONTO').AsFloat - Abs(M_VLRRESTO);
      if M_VLRLIQUIDO > 0 then
        memprodutos.FindField('LIQUIDO').AsFloat := memprodutos.FindField('LIQUIDO').AsFloat + Abs(M_VLRLIQUIDO)
      else
        if M_VLRLIQUIDO < 0 then
          memprodutos.FindField('LIQUIDO').AsFloat := memprodutos.FindField('LIQUIDO').AsFloat - Abs(M_VLRLIQUIDO);
      memprodutos.Post;
    end
  else
    begin
      memprodutos.First;
      while not memprodutos.eof do
        begin
          if memprodutos.FindField('PRODUTO').AsInteger > 0 then
            begin
              memprodutos.Edit;
              memprodutos.FindField('LIQUIDO').AsFloat  := memprodutos.FindField('TOTAL').AsFloat;
              memprodutos.FindField('DESCONTO').AsFloat := 0;
              memprodutos.Post;
            end;
          memprodutos.next;
          Application.ProcessMessages;
        end;
    end;

  memprodutos.First;
  while not memprodutos.eof do
  begin
    if memprodutos.FindField('PRODUTO').AsInteger > 0 then
    begin
      memprodutos.Edit;
      memprodutos.FindField('LIQUIDO').AsFloat := memprodutos.FindField('TOTAL').AsFloat;
      memprodutos.Post;
    end;
    memprodutos.next;
    Application.ProcessMessages;
  end;


  //**********************************************************************//
  // CALCULA DESCONTO UNITARIO
  //**********************************************************************//
  if UniDBFormattedNumberEditdescontos.Value > 0 then
  begin
    M_VLRPRODUTOS := 0;
    memprodutos.First;
    while not memprodutos.eof do
    begin
      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
        M_VLRPRODUTOS := M_VLRPRODUTOS + memprodutos.FindField('TOTAL').AsFloat;
      memprodutos.next;
      Application.ProcessMessages;
    end;
    M_VLRRESTO := UniDBFormattedNumberEditdescontos.Value;
    M_VLRLIQUIDO := (M_VLRPRODUTOS - UniDBFormattedNumberEditdescontos.Value);
    memprodutos.First;
    while not memprodutos.eof do
    begin
      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
      begin
        memprodutos.Edit;
        memprodutos.FindField('LIQUIDO').AsFloat  := Mround(memprodutos.FindField('TOTAL').AsFloat - MRound(((UniDBFormattedNumberEditdescontos.Value / M_VLRPRODUTOS) * memprodutos.FindField('TOTAL').AsFloat), 2), 2);
        memprodutos.FindField('DESCONTO').AsFloat := memprodutos.FindField('TOTAL').AsFloat - memprodutos.FindField('LIQUIDO').AsFloat;
        memprodutos.Post;
        M_VLRRESTO   := M_VLRRESTO   - memprodutos.FindField('DESCONTO').AsFloat;
        M_VLRLIQUIDO := M_VLRLIQUIDO - memprodutos.FindField('LIQUIDO').AsFloat;
      end;
      memprodutos.next;
      Application.ProcessMessages;
    end;
    memprodutos.First;
    memprodutos.Edit;
    if M_VLRRESTO > 0 then
      memprodutos.FindField('DESCONTO').AsFloat := memprodutos.FindField('DESCONTO').AsFloat + Abs(M_VLRRESTO)
    else if M_VLRRESTO < 0 then
      memprodutos.FindField('DESCONTO').AsFloat := memprodutos.FindField('DESCONTO').AsFloat - Abs(M_VLRRESTO);
    if M_VLRLIQUIDO > 0 then
      memprodutos.FindField('LIQUIDO').AsFloat := memprodutos.FindField('LIQUIDO').AsFloat + Abs(M_VLRLIQUIDO)
    else if M_VLRLIQUIDO < 0 then
      memprodutos.FindField('LIQUIDO').AsFloat := memprodutos.FindField('LIQUIDO').AsFloat - Abs(M_VLRLIQUIDO);
    memprodutos.Post;
  end
  else
  begin
    memprodutos.First;
    while not memprodutos.eof do
    begin
      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
      begin
        memprodutos.Edit;
        memprodutos.FindField('LIQUIDO').AsFloat := memprodutos.FindField('TOTAL').AsFloat;
        memprodutos.FindField('DESCONTO').AsFloat := 0;
        memprodutos.Post;
      end;
      memprodutos.next;
      Application.ProcessMessages;
    end;
  end;

  M_VLRDESPESA := (UniDBFormattedNumberEditvlrdespesas.Value);

  if M_VLRDESPESA >= 0 then
  begin
    memprodutos.First;
    M_VLRLIQUIDO := 0;
    while not memprodutos.eof do
    begin
      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
        M_VLRLIQUIDO := M_VLRLIQUIDO + memprodutos.FindField('LIQUIDO').Value;
      memprodutos.next;
    end;
    M_VLRRESTO := M_VLRDESPESA;
    memprodutos.First;
    while not memprodutos.eof do
    begin
      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
      begin
        memprodutos.Edit;
        memprodutos.FindField('DESPESA').AsFloat := MRound(((M_VLRDESPESA) / M_VLRLIQUIDO) * memprodutos.FindField('LIQUIDO').Value, 2);
        memprodutos.Post;
        M_VLRRESTO := M_VLRRESTO - memprodutos.FindField('DESPESA').AsFloat;
      end;
      memprodutos.next;
    end;
    memprodutos.First;
    memprodutos.Edit;
    if M_VLRRESTO > 0 then
      memprodutos.FindField('DESPESA').AsFloat := memprodutos.FindField('DESPESA').AsFloat + Abs(M_VLRRESTO)
    else if M_VLRRESTO < 0 then
      memprodutos.FindField('DESPESA').AsFloat := memprodutos.FindField('DESPESA').AsFloat - Abs(M_VLRRESTO);
    memprodutos.Post;
  end;

  M_VLRPRODUTOS := 0;
  M_VLRTOTAL    := 0;

  memprodutos.First;
  while not memprodutos.eof do
  begin
    if memprodutos.FindField('PRODUTO').AsInteger > 0 then
    begin
      //*****************************************************************//
      // PESO LIQUIDO/BRUTO
      //*****************************************************************//
//      M_PESO  := M_PESO  + memprodutos.FindField('QUANTIDADE').AsFloat;
//      M_BRUTO := M_BRUTO + memprodutos.FindField('QUANTIDADE').AsFloat;

      memprodutos.Edit;
      memprodutos.FindField('PESOLIQUIDO').AsFloat := memprodutos.FindField('QUANTIDADE').AsFloat;
      memprodutos.FindField('PESOBRUTO').AsFloat   := memprodutos.FindField('QUANTIDADE').AsFloat;
      memprodutos.Post;
      //*****************************************************************//

      //*****************************************************************//
      // VALORES
      //*****************************************************************//
      M_BRUTO       := M_BRUTO       + memprodutos.FindField('PESOBRUTO').AsFloat;
      M_QUANTIDADE  := M_QUANTIDADE  + memprodutos.FindField('QUANTIDADE').AsFloat;
      M_VLRPRODUTOS := M_VLRPRODUTOS + memprodutos.FindField('TOTAL').AsFloat;
      M_VLRDESCONTO := M_VLRDESCONTO + memprodutos.FindField('DESCONTO').AsFloat;
      M_FRETE       := M_FRETE       + memprodutos.FindField('FRETE').AsFloat;
      M_SEGURO      := M_SEGURO      + memprodutos.FindField('SEGURO').AsFloat;
      M_BASE        := M_BASE        + memprodutos.FindField('BASEICMS').AsFloat;
      M_VICM        := M_VICM        + memprodutos.FindField('VALORICMS').AsFloat;
      M_VLRTOTAL    := M_VLRTOTAL    + memprodutos.FindField('LIQUIDO').AsFloat + memprodutos.FindField('FRETE').AsFloat    +
                                                                                  memprodutos.FindField('VALORIPI').AsFloat +
                                                                                  memprodutos.FindField('DESPESA').AsFloat  +
                                                                                  memprodutos.FindField('SEGURO').AsFloat;

      //*****************************************************************//
    end;
    memprodutos.next;
  end;

  UniDBFormattedNumberEditvlrprodutos.Value     := MRound(M_VLRPRODUTOS,2);
  UniDBFormattedNumberEditvlrtotal.Value        := MRound(M_VLRTOTAL,2);
  UniDBFormattedNumberEditquantidade.Value      := MRound(M_QUANTIDADE,2);
  UniDBFormattedNumberEditPESOBRUTO.Value       := MRound(M_BRUTO,2);

  memprodutos.AfterDelete  := memprodutosAfterDelete;
  memprodutos.AfterPost    := memprodutosAfterPost;
  memprodutos.BeforeDelete := memprodutosBeforeDelete;
  memprodutos.BeforePost   := memprodutosBeforePost;

  memprodutos.GotoBookmark(M_MARCA);
  memprodutos.FreeBookmark(M_MARCA);
  memprodutos.Refresh;
  memprodutos.EnableControls;

end;

function TfrmMOVIMENTOMESTRE.CamposValidados: Boolean;
var
  i,e :Integer;
  Campos :TStrings;
begin
  Try
    Campos := TStringList.Create;
    Campos.Clear ;
    e := 0 ;
    for I:= 0 to ComponentCount -1 do
       begin
         if ( Components[I] is TUniDBEdit )  then
            begin

               If ( TUniDBEdit(Components[i]).Tag = 1 ) then
                 Begin
                   if TUniDBEdit(Components[i]).Text = '' then
                      begin
                        Campos.Add('-' + TUniDBEdit(Components[i]).Field.DisplayName ) ;
                        inc(e) ;
                      end;
                 End;
            end;
       end;

     if e = 0  then
        result := true ;

     If e > 0 then
        Begin
           Campos.Insert(0,'Preencha os campos obrigatórios:');
           dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', Campos.Text, 'warning' , false );
           FDQryCad.Fields[e].FocusControl ;
           result := false ;
        end
     Else
       result := true;

  finally
    Campos.Free;
  end;
end;

procedure TfrmMOVIMENTOMESTRE.carregadados;
begin
  CarregaParametros();
  CarregaMarca();

  tbtitulos.Close;
  tbtitulos.Open;

  memprodutos.Close;
  memprodutos.Open;

  UniComboBoxparaop.Enabled     := False;

  UniEditdescricaocondicao.Text := Acha_Item('CONDICOES',IntToStr(FDQryCad.FindField('CONDICAO').AsInteger));
  UniEditnomevendedor.Text      := Acha_Item('FUNCIONARIOS',IntToStr(FDQryCad.FindField('FUNCIONARIO').AsInteger));

  if SqlPesquisa('SELECT CODIGO, NOME, CIDADE, ESTADO FROM PESSOAS WHERE CODIGO = ' + IntToStr(FDQryCad.FindField('PESSOA').AsInteger)) then
    begin
      UniEditnomepessoa.Text := dm_rc.sqlBuscas.FindField('NOME').AsString;
      UniEditcidade.Text     := dm_rc.sqlBuscas.FindField('CIDADE').AsString;
      UniEditestado.Text     := dm_rc.sqlBuscas.FindField('ESTADO').AsString;
    end;

  SqlPesquisa   ('SELECT FINANCEIRO FROM OPERACOES WHERE CODIGO   = ' + IntToStr(FDQryCad.FindField('OPERACAO').AsInteger));
  if SqlPesquisa(' SELECT SEQUENCIA, VENCIMENTO, SITUACAO, VALORORIGINAL FROM RECEBER ' +
                 ' WHERE NUMERO = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger) + ' AND ' +
                 '       DOCUMENTO = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger) + ' AND ' +
                 '       EMPRESA = ' + IntToStr(mm.varI_Code_Company)                     +
                 ' ORDER BY SEQUENCIA') then
    begin
      dm_rc.sqlBuscas.First;
      while not dm_rc.sqlBuscas.Eof do
        begin
          tbtitulos.Append;
          tbtitulos.FindField('PARCELA').AsInteger     := dm_rc.sqlBuscas.FindField('SEQUENCIA').AsInteger;
          tbtitulos.FindField('VENCIMENTO').AsDateTime := dm_rc.sqlBuscas.FindField('VENCIMENTO').AsDateTime;
          tbtitulos.FindField('VALOR').AsFloat         := dm_rc.sqlBuscas.FindField('VALORORIGINAL').AsFloat;
          tbtitulos.FindField('STATUS').AsString       := dm_rc.sqlBuscas.FindField('SITUACAO').AsString;
          tbtitulos.Post;

          dm_rc.sqlBuscas.Next;
        end;

      tbtitulos.First;
    end;

  if SqlPesquisa(' SELECT * FROM MVITENS WHERE NUMERO   = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger)   +
                 ' AND DOCUMENTO                        = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger)+
                 ' AND EMPRESA                          = ' + IntToStr(mm.varI_Code_Company)                     +
                 ' ORDER BY SEQUENCIA') then
  begin
    memprodutos.DisableControls;
    memprodutos.AfterDelete  := nil;
    memprodutos.AfterPost    := nil;
    memprodutos.BeforePost   := nil;
    memprodutos.BeforeDelete := nil;

    dm_rc.sqlBuscas.First;
    while not dm_rc.sqlBuscas.Eof do
      begin
        memprodutos.Append;
        memprodutos.FindField('PRODUTO').AsInteger       :=  dm_rc.sqlBuscas.FindField('PRODUTO').AsInteger;
        memprodutos.FindField('DESCRICAO').AsString      :=  dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
        memprodutos.FindField('UNIDADE').AsString        :=  dm_rc.sqlBuscas.FindField('UNIDADE').AsString;
        memprodutos.FindField('OPERACAO').AsString       :=  dm_rc.sqlBuscas.FindField('OPERACAO').AsString;
        memprodutos.FindField('CST').AsString            :=  dm_rc.sqlBuscas.FindField('CST').AsString;
        memprodutos.FindField('PRECO').AsFloat           :=  dm_rc.sqlBuscas.FindField('PRECO').AsFloat;
        memprodutos.FindField('DESCONTO').AsFloat        :=  dm_rc.sqlBuscas.FindField('DESCONTO').AsFloat;
        memprodutos.FindField('QUANTIDADE').AsFloat      :=  dm_rc.sqlBuscas.FindField('QUANTIDADE').AsFloat;
        memprodutos.FindField('TOTAL').AsFloat           :=  dm_rc.sqlBuscas.FindField('TOTAL').AsFloat;
        memprodutos.FindField('PERCICMS').AsFloat        :=  dm_rc.sqlBuscas.FindField('PERCICMS').AsFloat;
        memprodutos.FindField('VALORICMS').AsFloat       :=  dm_rc.sqlBuscas.FindField('VALORICMS').AsFloat;
        memprodutos.FindField('BASEICMS').AsFloat        :=  dm_rc.sqlBuscas.FindField('BASEICMS').AsFloat;
        memprodutos.FindField('PEDIDOOR').AsString       :=  dm_rc.sqlBuscas.FindField('PEDIDOOR').AsString;
        memprodutos.FindField('PESOSACO').AsString       :=  dm_rc.sqlBuscas.FindField('PESOSACO').AsString;
        memprodutos.FindField('PEDIDOITEMOR').AsString   :=  dm_rc.sqlBuscas.FindField('PEDIDOITEMOR').AsString;

        if dm_rc.sqlBuscas.FindField('LOTESEMENTE').AsString <> '' then
          begin
            memprodutos.FindField('DESCRICAO_NOTA').AsString := dm_rc.sqlBuscas.Findfield('DESCRICAO_NOTA').AsString;
            memprodutos.FindField('LOTESEMENTE').AsString    := dm_rc.sqlBuscas.Findfield('LOTESEMENTE').AsString;
            memprodutos.FindField('BOLETIMSEMENTE').AsString := dm_rc.sqlBuscas.Findfield('BOLETIMSEMENTE').AsString;
            memprodutos.FindField('TERMOSEMENTE').AsString   := dm_rc.sqlBuscas.Findfield('TERMOSEMENTE').AsString;
            memprodutos.FindField('VALIDADE').AsString       := dm_rc.sqlBuscas.Findfield('VALIDADE').AsString;
            memprodutos.FindField('CATEGORIA').AsString      := dm_rc.sqlBuscas.Findfield('CATEGORIA').AsString;
            memprodutos.FindField('SAFRAVALIDA').AsString    := dm_rc.sqlBuscas.Findfield('SAFRAVALIDA').AsString;
            memprodutos.FindField('VALORCULTURAL').AsFloat   := dm_rc.sqlBuscas.Findfield('VALORCULTURAL').AsFloat;
            memprodutos.FindField('GERMINACAO').AsFloat      := dm_rc.sqlBuscas.Findfield('GERMINACAO').AsFloat;
            memprodutos.FindField('PUREZA').AsFloat          := dm_rc.sqlBuscas.Findfield('PUREZA').AsFloat;
            memprodutos.FindField('TOTALPONTO').AsFloat      := dm_rc.sqlBuscas.Findfield('TOTALPONTO').AsFloat;
            memprodutos.FindField('PESOSACO').AsFloat        := dm_rc.sqlBuscas.Findfield('PESOSACO').AsFloat;
            memprodutos.FindField('TIPOLOTE').AsString       := dm_rc.sqlBuscas.Findfield('TIPOLOTE').AsString;
          end;


        memprodutos.Post;

        dm_rc.sqlBuscas.Next;
      end;

    memprodutos.AfterDelete  := memprodutosAfterDelete;
    memprodutos.AfterPost    := memprodutosAfterPost;
    memprodutos.BeforeDelete := memprodutosBeforeDelete;
    memprodutos.BeforePost   := memprodutosBeforePost;
    memprodutos.EnableControls;
    memprodutos.first;
  end;

  UniDBComboBoxMARCA.ReadOnly     := True;
  UniComboBoxparaop.Text          := FDQryCad.FindField('PARAMETROOPERACAO').AsString;
end;

procedure TfrmMOVIMENTOMESTRE.carregafinanceiro(cempresa, cdocumento,
  cnumero: integer);
begin
  TabelaOperacao('select financeiro from operacoes where codigo = ' + QuotedStr(FDQryCad.FindField('OPERACAO').AsString));

  if SqlPesquisa(' SELECT SEQUENCIA, VENCIMENTO, VALORORIGINAL, SITUACAO FROM RECEBER ' +
                 ' WHERE NUMERO = ' + IntToStr(cnumero) + ' AND ' +
                 '       DOCUMENTO = ' + IntToStr(cdocumento) + ' AND ' +
                 '       EMPRESA = ' + IntToStr(cempresa) +
                 ' ORDER BY SEQUENCIA') then
    begin
      dm_rc.sqlBuscas.First;
      while not dm_rc.sqlBuscas.Eof do
        begin
          tbtitulos.Append;
          tbtitulos.FindField('PARCELA').AsInteger     := dm_rc.sqlBuscas.FindField('SEQUENCIA').AsInteger;
          tbtitulos.FindField('VENCIMENTO').AsDateTime := dm_rc.sqlBuscas.FindField('VENCIMENTO').AsDateTime;
          tbtitulos.FindField('VALOR').AsFloat         := dm_rc.sqlBuscas.FindField('VALORORIGINAL').AsFloat;
          tbtitulos.FindField('STATUS').AsString       := dm_rc.sqlBuscas.FindField('SITUACAO').AsString;
          tbtitulos.Post;

          dm_rc.sqlBuscas.Next;
        end;

      tbtitulos.First;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.CarregaImportacao(const controle: integer);
var i                : integer; Cmp:String;
    R,S              : Integer;
    tabelafinanceiro : string;
begin
  TabelaMvmestre('select * from mvmestre where codigo = ' + IntToStr(controle));

  tabelafinanceiro := 'RECEBER';

  FDQryCad.FindField('PESSOA').AsInteger            := DM_RC.FDQryMvmestre.FindField('PESSOA').AsInteger;
  FDQryCad.FindField('CONDICAO').AsInteger          := DM_RC.FDQryMvmestre.FindField('CONDICAO').AsInteger;
  FDQryCad.FindField('FUNCIONARIO').AsInteger       := DM_RC.FDQryMvmestre.FindField('FUNCIONARIO').AsInteger;

  FDQryCad.FindField('COMISSAOFUNCIONARIO').AsFloat := DM_RC.FDQryMvmestre.FindField('COMISSAOFUNCIONARIO').AsFloat;
  FDQryCad.FindField('EMISSAO').AsDateTime          := Date;
  FDQryCad.FindField('RECEPCAODESPACHO').AsDateTime := Date;

  FDQryCad.FindField('VLRDSPNTRIBUTADA').AsFloat    := DM_RC.FDQryMvmestre.FindField('VLRDSPNTRIBUTADA').AsFloat;
  FDQryCad.FindField('VLRDSPTRIBUTADA').AsFloat     := DM_RC.FDQryMvmestre.FindField('VLRDSPTRIBUTADA').AsFloat;
  FDQryCad.FindField('VLRBASEICMS').AsFloat         := DM_RC.FDQryMvmestre.FindField('VLRBASEICMS').AsFloat;
  FDQryCad.FindField('VLRICMS').AsFloat             := DM_RC.FDQryMvmestre.FindField('VLRICMS').AsFloat;
  FDQryCad.FindField('VLRDESCONTOS').AsFloat        := DM_RC.FDQryMvmestre.FindField('VLRDESCONTOS').AsFloat;
  FDQryCad.FindField('VLRDESPESAS').AsFloat         := DM_RC.FDQryMvmestre.FindField('VLRDESPESAS').AsFloat;
  FDQryCad.FindField('VLRPRODUTOS').AsFloat         := DM_RC.FDQryMvmestre.FindField('VLRPRODUTOS').AsFloat;
  FDQryCad.FindField('VLRTOTAL').AsFloat            := DM_RC.FDQryMvmestre.FindField('VLRTOTAL').AsFloat;
  FDQryCad.FindField('OBSERVACOES').AsString        := DM_RC.FDQryMvmestre.FindField('OBSERVACOES').AsString;

  FDQryCad.FindField('PEDIDO').AsString             := dm_rc.FDQryMvmestre.FindField('NUMERO').AsString;
  FDQryCad.FindField('PEDIDO_SERIE').AsString       := dm_rc.FDQryMvmestre.FindField('SERIE').AsString;
  FDQryCad.FindField('PEDIDO_DOCUMENTO').AsInteger  := dm_rc.FDQryMvmestre.FindField('DOCUMENTO').AsInteger;
  FDQryCad.FindField('NUMERO').AsInteger            := 0;
//  FDQryCad.FindField('SERIE').AsString              := 'NFE';

  FDQryCad.FindField('TRANSPORTADORA').AsInteger    :=  dm_rc.FDQryMvmestre.FindField('TRANSPORTADORA').AsInteger;
  FDQryCad.FindField('TRANOME').AsString            :=  dm_rc.FDQryMvmestre.FindField('TRANOME').AsString;

  if dm_rc.FDQryMvmestre.FindField('ENTREGA_IBGE').AsString <> '' then
    begin
      FDQryCad.FindField('TRAFRETE').AsString         := dm_rc.FDQryMvmestre.FindField('TRAFRETE').AsString;
      FDQryCad.FindField('ENTREGA_CEP').AsString      := dm_rc.FDQryMvmestre.FindField('ENTREGA_CEP').AsString;
      FDQryCad.FindField('ENTREGA_IBGE').AsString     := dm_rc.FDQryMvmestre.FindField('ENTREGA_IBGE').AsString;
      FDQryCad.FindField('ENTREGA_ENDERECO').AsString := dm_rc.FDQryMvmestre.FindField('ENTREGA_ENDERECO').AsString;
      FDQryCad.FindField('ENTREGA_NUMERO').AsString   := dm_rc.FDQryMvmestre.FindField('ENTREGA_NUMERO').AsString;
      FDQryCad.FindField('ENTREGA_BAIRRO').AsString   := dm_rc.FDQryMvmestre.FindField('ENTREGA_BAIRRO').AsString;
      FDQryCad.FindField('ENTREGA_CIDADE').AsString   := dm_rc.FDQryMvmestre.FindField('ENTREGA_CIDADE').AsString;
      FDQryCad.FindField('ENTREGA_ESTADO').AsString   := dm_rc.FDQryMvmestre.FindField('ENTREGA_ESTADO').AsString;
    end;

  varC_Documento_Mvmestre       := FDQryCad.FindField('DOCUMENTO').AsInteger;
  UniComboBoxparaop.Text        := dm_rc.FDQryMvmestre.FindField('PARAMETROOPERACAO').AsString;

  UniEditdescricaocondicao.Text := Acha_Item('CONDICOES'   ,IntToStr(DM_RC.FDQryMvmestre.FindField('CONDICAO').AsInteger));
  UniEditnomevendedor.Text      := Acha_Item('FUNCIONARIOS',IntToStr(DM_RC.FDQryMvmestre.FindField('FUNCIONARIO').AsInteger));

  memprodutos.Close;
  memprodutos.Open;

  carregaitens     (mm.varI_Code_Company,dm_rc.FDQryMvmestre.FindField('DOCUMENTO').AsInteger,dm_rc.FDQryMvmestre.FindField('NUMERO').AsInteger);

  if SqlPesquisa(' SELECT * FROM RECEBER ' +
                 ' WHERE NUMERO = ' + IntToStr(DM_RC.FDQryMvmestre.FindField('numero').AsInteger) + ' AND ' +
                 '       DOCUMENTO = ' + IntToStr(DM_RC.FDQryMvmestre.FindField('documento').AsInteger) + ' AND ' +
                 '       EMPRESA = ' + IntToStr(DM_RC.FDQryMvmestre.FindField('empresa').AsInteger)  +
                 ' ORDER BY SEQUENCIA') then
    begin
      dm_rc.sqlBuscas.First;
      while not dm_rc.sqlBuscas.Eof do
        begin
          tbtitulos.Append;
          tbtitulos.FindField('PARCELA').AsInteger     := dm_rc.sqlBuscas.FindField('SEQUENCIA').AsInteger;
          tbtitulos.FindField('VENCIMENTO').AsDateTime := dm_rc.sqlBuscas.FindField('VENCIMENTO').AsDateTime;
          tbtitulos.FindField('VALOR').AsFloat         := dm_rc.sqlBuscas.FindField('VALORORIGINAL').AsFloat;
          tbtitulos.Post;

          dm_rc.sqlBuscas.Next;
        end;
      tbtitulos.First;
    end;

  //************************************************************************//
  // VERIFICA OS ITENS
  //************************************************************************//
  ReleituraProdutoscfop();
  //************************************************************************//
  dm_rc.FDQryMvmestre.Close;
end;

procedure TfrmMOVIMENTOMESTRE.carregaitens(cempresa, cdocumento,
  cnumero: integer);
var
  M_MARCA: TBookMark;
begin
  M_MARCA := memprodutos.GetBookmark;
  memprodutos.First;
  memprodutos.DisableControls;
  memprodutos.AfterDelete  := nil;
  memprodutos.AfterPost    := nil;
  memprodutos.BeforePost   := nil;
  memprodutos.BeforeDelete := nil;
  memprodutos.First;

  if SqlPesquisa(' SELECT * FROM MVITENS WHERE NUMERO   = ' + IntToStr(cnumero)    +
                 ' AND DOCUMENTO                        = ' + IntToStr(cdocumento) +
                 ' AND EMPRESA                          = ' + IntToStr(cempresa)   +
                 ' ORDER BY SEQUENCIA') then
  begin
    memprodutos.First;
    dm_rc.sqlBuscas.First;
    while not dm_rc.sqlBuscas.Eof do
      begin
        memprodutos.Append;
        memprodutos.FindField('PRODUTO').AsInteger       :=  dm_rc.sqlBuscas.FindField('PRODUTO').AsInteger;
        memprodutos.FindField('DESCRICAO').AsString      :=  dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
        memprodutos.FindField('NUMERONCM').AsString      :=  dm_rc.sqlBuscas.FindField('NUMERONCM').AsString;

        memprodutos.FindField('UNIDADE').AsString        :=  dm_rc.sqlBuscas.FindField('UNIDADE').AsString;
        memprodutos.FindField('OPERACAO').AsString       :=  dm_rc.sqlBuscas.FindField('OPERACAO').AsString;
        memprodutos.FindField('CST').AsString            :=  dm_rc.sqlBuscas.FindField('CST').AsString;
        memprodutos.FindField('PRECO').AsFloat           :=  dm_rc.sqlBuscas.FindField('PRECO').AsFloat;
        memprodutos.FindField('DESCONTO').AsFloat        :=  dm_rc.sqlBuscas.FindField('DESCONTO').AsFloat;
        memprodutos.FindField('QUANTIDADE').AsFloat      :=  dm_rc.sqlBuscas.FindField('QUANTIDADE').AsFloat;
        memprodutos.FindField('TOTAL').AsFloat           :=  dm_rc.sqlBuscas.FindField('TOTAL').AsFloat;
        memprodutos.FindField('PESOBRUTO').AsFloat       :=  dm_rc.sqlBuscas.FindField('PESOBRUTO').AsFloat;
        memprodutos.FindField('PESOLIQUIDO').AsFloat     :=  dm_rc.sqlBuscas.FindField('PESOLIQUIDO').AsFloat;
        memprodutos.FindField('FRETE').AsFloat           :=  dm_rc.sqlBuscas.FindField('FRETE').AsFloat;

        //********************************************************************//
        // IMPOSTOS
        //********************************************************************//
        memprodutos.FindField('PERCICMS').AsFloat        :=  dm_rc.sqlBuscas.FindField('PERCICMS').AsFloat;
        memprodutos.FindField('VALORICMS').AsFloat       :=  dm_rc.sqlBuscas.FindField('VALORICMS').AsFloat;
        memprodutos.FindField('BASEICMS').AsFloat        :=  dm_rc.sqlBuscas.FindField('BASEICMS').AsFloat;

        memprodutos.FindField('PIS').AsString             :=  dm_rc.sqlBuscas.FindField('PIS').AsString;
        memprodutos.FindField('COFINS').AsString          :=  dm_rc.sqlBuscas.FindField('COFINS').AsString;
        memprodutos.FindField('VLRPIS').AsString          :=  dm_rc.sqlBuscas.FindField('VLRPIS').AsString;
        memprodutos.FindField('VLRCOFINS').AsString       :=  dm_rc.sqlBuscas.FindField('VLRCOFINS').AsString;
        memprodutos.FindField('TOTALPIS').AsString        :=  dm_rc.sqlBuscas.FindField('TOTALPIS').AsString;
        memprodutos.FindField('TOTALCOFINS').AsString     :=  dm_rc.sqlBuscas.FindField('TOTALCOFINS').AsString;
        //********************************************************************//

        //********************************************************************//
        // BASE DOS IMPOSTOS
        //********************************************************************//
        if SqlProdutos  ('SELECT PRODUTOS.*,SALDOS.* FROM PRODUTOS JOIN SALDOS ON SALDOS.EMPRESA = ' + IntToStr(cempresa) +
                         'AND SALDOS.PRODUTO = PRODUTOS.CODIGO WHERE PRODUTOS.CODIGO             = ' + IntToStr(memprodutos.FindField('PRODUTO').AsInteger)) then
          begin
            memprodutos.FindField('ICM0').AsFloat       := dm_rc.tbprodutos.Findfield('ICMS0').AsFloat;
            memprodutos.FindField('ICM1').AsFloat       := dm_rc.tbprodutos.Findfield('ICMS1').AsFloat;
            memprodutos.FindField('ICM2').AsFloat       := dm_rc.tbprodutos.Findfield('ICMS2').AsFloat;
            memprodutos.FindField('BAS0').AsFloat       := dm_rc.tbprodutos.Findfield('BASE0').AsFloat;
            memprodutos.FindField('BAS1').AsFloat       := dm_rc.tbprodutos.Findfield('BASE1').AsFloat;
            memprodutos.FindField('BAS2').AsFloat       := dm_rc.tbprodutos.Findfield('BASE2').AsFloat;

            memprodutos.FindField('SEMENTENOME').AsString   := dm_rc.tbprodutos.FindField('SEMENTENOME').AsString;
            memprodutos.FindField('CULTIVAR').AsString      := dm_rc.tbprodutos.Findfield('CULTIVAR').AsString;

          end;
        //********************************************************************//

        memprodutos.FindField('PEDIDOOR').AsString       :=  dm_rc.sqlBuscas.FindField('PEDIDOOR').AsString;
        memprodutos.FindField('PEDIDOITEMOR').AsString   :=  dm_rc.sqlBuscas.FindField('PEDIDOITEMOR').AsString;

          if dm_rc.sqlBuscas.FindField('LOTESEMENTE').AsString <> '' then
            begin
              memprodutos.FindField('DESCRICAO_NOTA').AsString := dm_rc.sqlBuscas.Findfield('DESCRICAO_NOTA').AsString;
              memprodutos.FindField('LOTESEMENTE').AsString    := dm_rc.sqlBuscas.Findfield('LOTESEMENTE').AsString;
              memprodutos.FindField('BOLETIMSEMENTE').AsString := dm_rc.sqlBuscas.Findfield('BOLETIMSEMENTE').AsString;
              memprodutos.FindField('TERMOSEMENTE').AsString   := dm_rc.sqlBuscas.Findfield('TERMOSEMENTE').AsString;
              memprodutos.FindField('VALIDADE').AsString       := dm_rc.sqlBuscas.Findfield('VALIDADE').AsString;
              memprodutos.FindField('CATEGORIA').AsString      := dm_rc.sqlBuscas.Findfield('CATEGORIA').AsString;
              memprodutos.FindField('SAFRAVALIDA').AsString    := dm_rc.sqlBuscas.Findfield('SAFRAVALIDA').AsString;
              memprodutos.FindField('VALORCULTURAL').AsFloat   := dm_rc.sqlBuscas.Findfield('VALORCULTURAL').AsFloat;
              memprodutos.FindField('GERMINACAO').AsFloat      := dm_rc.sqlBuscas.Findfield('GERMINACAO').AsFloat;
              memprodutos.FindField('PUREZA').AsFloat          := dm_rc.sqlBuscas.Findfield('PUREZA').AsFloat;
              memprodutos.FindField('TOTALPONTO').AsFloat      := dm_rc.sqlBuscas.Findfield('TOTALPONTO').AsFloat;
              memprodutos.FindField('PESOSACO').AsFloat        := dm_rc.sqlBuscas.Findfield('PESOSACO').AsFloat;
            end;

        memprodutos.Post;

        dm_rc.sqlBuscas.Next;
      end;
  end;

  memprodutos.First;
  memprodutos.AfterDelete  := memprodutosAfterDelete;
  memprodutos.AfterPost    := memprodutosAfterPost;
  memprodutos.BeforeDelete := memprodutosBeforeDelete;
  memprodutos.BeforePost   := memprodutosBeforePost;
  memprodutos.EnableControls;
  memprodutos.first;

  memprodutos.GotoBookmark(M_MARCA);
  memprodutos.FreeBookmark(M_MARCA);
end;

procedure TfrmMOVIMENTOMESTRE.carregalote(lote: string; produto: integer);
var
  sql:string;
begin
  if lote <> '' then
    begin
      if SqlPesquisa(' select * from sementes where produto = ' + IntToStr(produto) +
                     ' and lote                             = ' + QuotedStr(lote)) then
      begin
        memprodutosLOTESEMENTE.AsString    := lote;
        memprodutosTERMOSEMENTE.AsString   := dm_rc.sqlBuscas.FindField('TERMO').AsString;
        memprodutosCATEGORIA.AsString      := dm_rc.sqlBuscas.FindField('CATEGORIA').AsString;
        memprodutosBOLETIMSEMENTE.AsString := dm_rc.sqlBuscas.FindField('BOLETIM').AsString;
        memprodutosVALORCULTURAL.AsString  := dm_rc.sqlBuscas.FindField('VALORCULTURAL').AsString;
        memprodutosVALIDADE.AsString       := dm_rc.sqlBuscas.FindField('VALIDADE').AsString;
        memprodutosCULTIVAR.AsString       := dm_rc.sqlBuscas.FindField('CULTIVAR').AsString;
        memprodutosCATEGORIA.AsString      := dm_rc.sqlBuscas.FindField('CATEGORIA').AsString;
        memprodutosSAFRAVALIDA.AsString    := dm_rc.sqlBuscas.FindField('SAFRAVALIDA').AsString;
        memprodutosPESOSACO.AsFloat        := dm_rc.sqlBuscas.FindField('PESOEMBALAGEM').AsFloat;
        memprodutosTETRAZOLIO.AsFloat      := dm_rc.sqlBuscas.FindField('TETRAZOLIO').AsFloat;
        memprodutosTIPOLOTE.AsString       := 'N';
      end;

      sql := ' select *                                         ' +
             ' from produtos P                                  ' +
             ' inner join saldos on (p.codigo = saldos.produto) ' +
             ' where P.codigo                                =  ' + IntToStr(produto) +
             ' and saldos.empresa                            =  ' + IntToStr(mm.varI_Code_Company);

      if SqlPesquisa(sql) then
      begin
        memprodutosSEMENTENOME.AsString   := dm_rc.sqlBuscas.FindField('SEMENTENOME').AsString;
      end;

      memprodutos.FindField('DESCRICAO_NOTA').AsString := DescricaoNotaEletronicaItens(RemoverEspeciais((mm.varC_Doc_Customer)),lote,produto);
    end;
end;

procedure TfrmMOVIMENTOMESTRE.carregaloteProducao(codigo: integer);
begin
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      SqlPesquisa('select * from LOTEINTERNO where codigo = ' + IntToStr(codigo));

      memprodutos.Edit;
      memprodutosLOTESEMENTE.AsString    := dm_rc.sqlBuscas.FindField('LOTE').AsString;
      memprodutosPUREZA.AsFloat          := dm_rc.sqlBuscas.FindField('PUREZA').AsFloat;
      memprodutosTIPOLOTE.AsString       := 'P';
    end;
end;

procedure TfrmMOVIMENTOMESTRE.CarregaMarca;
begin
  UniDBComboBoxMARCA.Clear;
  if SqlPesquisa('SELECT DESCRICAO FROM MARCA ORDER BY CODIGO') then
    begin
      dm_rc.sqlBuscas.First;
      while not dm_rc.sqlBuscas.Eof do
        begin
          UniDBComboBoxMARCA.Items.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);

          dm_rc.sqlBuscas.Next;
        end;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.CarregaParametros;
begin
  UniComboBoxparaop.Clear;
  if SqlPesquisa('SELECT DESCRICAO FROM PARAMETROSOPERACAO ORDER BY CODIGO') then
    begin
      dm_rc.sqlBuscas.First;
      while not dm_rc.sqlBuscas.Eof do
        begin
          UniComboBoxparaop.Items.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);

          dm_rc.sqlBuscas.Next;
        end;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.carregaprodutos(codigo: string);
var
  sql:string;
begin
  sql := ' select *                                         ' +
         ' from produtos P                                  ' +
         ' inner join saldos on (p.codigo = saldos.produto) ' +
         ' where P.codigo                                =  ' + QuotedStr(codigo) +
         ' and saldos.empresa                            =  ' + IntToStr(mm.varI_Code_Company);

  if not SqlPesquisa(sql) then
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não encontrei esse Produto' , 'warning' , false )
  else
    begin
      memprodutos.Edit;
      memprodutos.FindField('PRODUTO').AsInteger        := StrToInt(codigo);
      memprodutos.FindField('DESCRICAO').AsString       := dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
      memprodutos.FindField('PRECO').AsFloat            := dm_rc.sqlBuscas.FindField('VENDA').AsFloat;
      memprodutos.FindField('UNIDADE').AsString         := dm_rc.sqlBuscas.FindField('UNIDADE').AsString;

      memprodutos.FindField('NCM').AsString             := dm_rc.sqlBuscas.FindField('NUMERONCM').AsString;
      memprodutos.FindField('NUMERONCM').AsString       := dm_rc.sqlBuscas.FindField('NUMERONCM').AsString;
      memprodutos.FindField('UNIDADE').AsString         := dm_rc.sqlBuscas.FindField('UNIDADE').AsString;
      memprodutos.FindField('ICM0').AsFloat             := dm_rc.sqlBuscas.FindField('ICMS0').AsFloat;
      memprodutos.FindField('ICM1').AsFloat             := dm_rc.sqlBuscas.FindField('ICMS1').AsFloat;
      memprodutos.FindField('ICM2').AsFloat             := dm_rc.sqlBuscas.FindField('ICMS2').AsFloat;

      memprodutos.FindField('BAS0').AsFloat             := dm_rc.sqlBuscas.FindField('BASE0').AsFloat;
      memprodutos.FindField('BAS1').AsFloat             := dm_rc.sqlBuscas.FindField('BASE1').AsFloat;
      memprodutos.FindField('BAS2').AsFloat             := dm_rc.sqlBuscas.FindField('BASE2').AsFloat;

      memprodutos.FindField('SITUACAOLOCAL').AsString   := dm_rc.sqlBuscas.FindField('SITUACAOLOCAL').AsString;
      memprodutos.FindField('SITUACAOOUTRAS').AsString  := dm_rc.sqlBuscas.FindField('SITUACAOOUTRAS').AsString;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
  var Linha, Coluna : Integer;
begin
  inherited;
   Linha  := TStringGrid(dbgSearchCRUD).Row;
   Coluna := dbgSearchCRUD.CurrCol;

  if Column.FieldName = 'opcoes' then
    begin
      UniPopupMenudetalhes.Popup(posicao_x-25,posicao_y, dbgSearchCRUD);
    end;
end;

procedure TfrmMOVIMENTOMESTRE.dbgSearchCRUDDblClick(Sender: TObject);
  var i : integer; Cmp:String;
begin
  inherited;

  VerificaEdicao();

  if FDQryFiltro.RecordCount > 0 then
    begin
      pgBaseCadControl.ActivePage := paBaseRegData1;

      try
        FDQryCad.Close ;
        for i := 0 to  FDQryCad.Params.Count - 1 do
        begin
          Cmp :=  FDQryCad.Params[i].Name;
           FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
        end;
         FDQryCad.Open;
      Except
         FDQryCad.Params[0].AsInteger := -1 ;
         FDQryCad.Open;
      End;

      if not( FDQryCad.Active) then
        begin
          FDQryCad.Open;
        end;

      if FDQryCad.RecordCount > 0 then
        SetBut(tpListacomRegistros);

      pgBaseCadControl.ActivePage := paBaseRegData1;

      carregadados();
    end;
end;

procedure TfrmMOVIMENTOMESTRE.dbgSearchCRUDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmMOVIMENTOMESTRE.Exclui;
begin
  TabelaEntregaLote('select * from entrega_lote where numero = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger)   +
                    'and documento                           = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger)+
                    'and empresa                             = ' + IntToStr(mm.varI_Code_Company));

  executasql('delete from mvitens where numero      = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger)   +
             'and documento                         = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger)+
             'and empresa                           = ' + IntToStr(mm.varI_Code_Company));
  executasql('delete from receber where numero      = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger)   +
             'and documento                         = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger)+
             'and empresa                           = ' + IntToStr(mm.varI_Code_Company));
  executasql('delete from pagar where numero        = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger)   +
             'and documento                         = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger)+
             'and empresa                           = ' + IntToStr(mm.varI_Code_Company));
  executasql('delete from entrega_lote where numero = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger)   +
             'and documento                         = ' + IntToStr(FDQryCad.FindField('DOCUMENTO').AsInteger)+
             'and empresa                           = ' + IntToStr(mm.varI_Code_Company));

  FDQryCad.Delete;

  try

    dm_rc.fdqryentregalote.First;
    while not dm_rc.fdqryentregalote.Eof do
      begin

        CalculaLoteInterno (mm.varI_Code_Company,
                            dm_rc.fdqryentregalote.FindField('PRODUTO').AsInteger,
                            dm_rc.fdqryentregalote.FindField('LOTE').AsString);

        dm_rc.fdqryentregalote.Next;
      end;

    if  FDQryFiltro.Active then
      FDQryFiltro.Refresh;

    LimpaVars;
    tbtitulos.Close;
    memprodutos.Close;
    dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Excluido com SUCESSO!' , 'success' , false );
    pgBaseCadControl.ActivePage := tabSearch;
  except
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui DELETAR, chame o SUPORTE!' , 'error' , false );
  end;
end;

procedure TfrmMOVIMENTOMESTRE.FDQryFiltroopcoesGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
      '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmMOVIMENTOMESTRE.FDQryFiltrostatusGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if StrContains('Finalizado',FDQryFiltroFECHAMENTO_STATUS.AsString) then
        Text := '<span class="badge badge-success">'+FDQryFiltroFECHAMENTO_STATUS.AsString+'</span>'
      else
      if StrContains('Não Concluida',FDQryFiltroFECHAMENTO_STATUS.AsString) then
        Text := '<span class="badge badge-danger">'+FDQryFiltroFECHAMENTO_STATUS.AsString+'</span>'
      else
      if StrContains('Aguardando',FDQryFiltroFECHAMENTO_STATUS.AsString) then
        Text := '<span class="badge badge-warning">'+FDQryFiltroFECHAMENTO_STATUS.AsString+'</span>'
      else
      if StrContains('Andamento',FDQryFiltroFECHAMENTO_STATUS.AsString) then
        Text := '<span class="badge badge-primary">'+FDQryFiltroFECHAMENTO_STATUS.AsString+'</span>'
      else
        Text := '<span class="badge badge-dark">Sem Ação</span>';
    end;
end;

procedure TfrmMOVIMENTOMESTRE.FechaTabelas;
begin
  dm_rc.fdqrytitulos  .Close;
  dm_rc.FDQryMvmestre .Close;
  dm_rc.fdqrypontos   .Close;
  dm_rc.FDQryoperacoes.Close;
  dm_rc.sqlBuscas     .Close;
  dm_rc.executasql    .close;
  dm_rc.tbtitulos     .Close;
  dm_rc.memprodutos   .Close;
end;

procedure TfrmMOVIMENTOMESTRE.gravamemoria;
begin
  if memprodutos.FindField('PRODUTO').AsInteger > 0 then
    begin
      memprodutos.Edit;

      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
        if memprodutos.FindField('QUANTIDADE').AsFloat = 0 then
          begin
            dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Coloque a QUANTIDADE!' , 'warning' , false );
            memprodutos.FindField('QUANTIDADE').FocusControl;
            Abort;
          end;

      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
        if memprodutos.FindField('PRECO').AsFloat = 0 then
          begin
            dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Coloque o PREÇO!' , 'warning' , false );
            memprodutos.FindField('PRECO').FocusControl;
            Abort;
          end;

      memprodutos.FindField('TOTAL').AsFloat  := memprodutos.FindField('PRECO').AsFloat *
                                                 memprodutos.FindField('QUANTIDADE').AsFloat;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.GravaMovimento;
begin

  TabelaMvitens               ('select * from mvitens where codigo                = 999999');
  TabelaPontos                ('select * from pontos  where codigo                = 999999');
  TabelaOperacao              ('select * from operacoes where codigo              =   ' + QuotedStr(FDQryCad.FindField('OPERACAO').AsString));
  TabelaTitulos               ('select * from                                         ' + variif(dm_rc.FDQryoperacoes.FindField('FINANCEIRO').AsInteger = 1,'RECEBER','PAGAR') + ' where codigo = 0');
  TabelaManutencaoLoteProducao('select * from MANUTENCAOLOTE_INTERNO where codigo  = 0');

  Exclui_Movimento('MVITENS'       ,FDQryCad.FindField('SERIE').AsString,MM.varI_Code_Company,varC_Documento_Mvmestre,FDQryCad.FindField('NUMERO').AsInteger);
  Exclui_Movimento('PONTOS'        ,FDQryCad.FindField('SERIE').AsString,MM.varI_Code_Company,varC_Documento_Mvmestre,FDQryCad.FindField('NUMERO').AsInteger);
  Exclui_Movimento('PRODUCAOITENS' ,FDQryCad.FindField('SERIE').AsString,MM.varI_Code_Company,varC_Documento_Mvmestre,FDQryCad.FindField('NUMERO').AsInteger);

  if varC_verificarecalculofinanceiro = 'S' then
    begin
      executasql(' delete from receber where numero = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger) +
                 ' and serie                        = ' + QuotedStr(FDQryCad.FindField('SERIE').AsString)  +
                 ' and situacao                     = ' + QuotedStr('Aberto'));
    end
  else
    Exclui_Movimento('RECEBER',FDQryCad.FindField('SERIE').AsString,MM.varI_Code_Company,varC_Documento_Mvmestre,FDQryCad.FindField('NUMERO').AsInteger);

  memprodutos.DisableControls;
  memprodutos.First;
  while not memprodutos.Eof do
    begin
      if memprodutos.FindField('PRODUTO').AsInteger > 0 then
        begin
          dm_rc.tbmvitens.Append;
          dm_rc.tbmvitens.FindField('SEQUENCIA').AsInteger      := memprodutos.RecNo;
          dm_rc.tbmvitens.FindField('EMPRESA').AsInteger        := mm.varI_Code_Company;
          dm_rc.tbmvitens.FindField('DOCUMENTO').AsInteger      := FDQryCad.FindField('DOCUMENTO').AsInteger;
          dm_rc.tbmvitens.FindField('NUMERO').AsInteger         := FDQryCad.FindField('NUMERO').AsInteger;
          dm_rc.tbmvitens.FindField('SERIE').AsString           := FDQryCad.FindField('SERIE').AsString;
          dm_rc.tbmvitens.FindField('UF').AsString              := UniEditestado.Text;
          dm_rc.tbmvitens.FindField('PESSOA').AsInteger         := FDQryCad.FindField('PESSOA').AsInteger;
          dm_rc.tbmvitens.FindField('EMISSAO').AsDateTime       := FDQryCad.FindField('EMISSAO').AsDateTime;

          dm_rc.tbmvitens.FindField('OPERACAO').AsFloat         := FDQryCad.FindField('OPERACAO').AsFloat;
          dm_rc.tbmvitens.FindField('PRODUTO').AsInteger        := memprodutos.FindField('PRODUTO').AsInteger;
          dm_rc.tbmvitens.FindField('DESCRICAO').AsString       := memprodutos.FindField('DESCRICAO').AsString;
          dm_rc.tbmvitens.FindField('UNIDADE').AsString         := memprodutos.FindField('UNIDADE').AsString;
          dm_rc.tbmvitens.FindField('PRECO').AsFloat            := memprodutos.FindField('PRECO').AsFloat;
          dm_rc.tbmvitens.FindField('DESCONTO').AsFloat         := memprodutos.FindField('DESCONTO').AsFloat;
          dm_rc.tbmvitens.FindField('DESPESAS').AsFloat         := memprodutos.FindField('DESPESA').AsFloat;
          dm_rc.tbmvitens.FindField('QUANTIDADE').AsFloat       := memprodutos.FindField('QUANTIDADE').AsFloat;
          dm_rc.tbmvitens.FindField('TOTAL').AsFloat            := memprodutos.FindField('TOTAL').AsFloat;
          dm_rc.tbmvitens.FindField('CST').AsString             := memprodutos.FindField('CST').AsString;
          dm_rc.tbmvitens.FindField('PERCICMS').AsFloat         := memprodutos.FindField('PERCICMS').AsFloat;
          dm_rc.tbmvitens.FindField('VALORICMS').AsFloat        := memprodutos.FindField('VALORICMS').AsFloat;
          dm_rc.tbmvitens.FindField('BASEICMS').AsFloat         := memprodutos.FindField('BASEICMS').AsFloat;
          dm_rc.tbmvitens.FindField('GRUPO').AsInteger          := memprodutos.FindField('GRUPO').AsInteger;
          dm_rc.tbmvitens.Findfield('CUSTO').AsFloat            := memprodutos.FindField('CUSTO').AsFloat;
          dm_rc.tbmvitens.Findfield('COMPRA').AsFloat           := memprodutos.FindField('COMPRA').AsFloat;
          dm_rc.tbmvitens.FindField('NUMERONCM').AsString       := memprodutos.FindField('NCM').AsString;
          dm_rc.tbmvitens.FindField('FRETE').AsFloat            := memprodutos.FindField('FRETE').AsFloat;
          dm_rc.tbmvitens.Findfield('SEGURO').AsFloat           := memprodutos.FindField('SEGURO').AsFloat;
          dm_rc.tbmvitens.Findfield('FRETE').AsFloat            := memprodutos.FindField('FRETE').AsFloat;
          dm_rc.tbmvitens.Findfield('PESOSACO').AsString        := memprodutos.FindField('PESOSACO').AsString;

          dm_rc.tbmvitens.FindField('PRODUTO').AsInteger        := memprodutos.FindField('PRODUTO').AsInteger;
          dm_rc.tbmvitens.FindField('DESCRICAO').AsString       := memprodutos.FindField('DESCRICAO').AsString;

          dm_rc.tbmvitens.FindField('PEDIDOOR').AsString        := memprodutos.FindField('PEDIDOOR').AsString;
          dm_rc.tbmvitens.FindField('PEDIDOITEMOR').AsString    := memprodutos.FindField('PEDIDOITEMOR').AsString;

          if memprodutos.FindField('LOTESEMENTE').AsString <> '' then
            begin
              dm_rc.tbmvitens.Findfield('DESCRICAO_NOTA').AsString  := memprodutos.FindField('DESCRICAO_NOTA').AsString;
              dm_rc.tbmvitens.Findfield('LOTESEMENTE').AsString     := memprodutos.FindField('LOTESEMENTE').AsString;
              dm_rc.tbmvitens.Findfield('BOLETIMSEMENTE').AsString  := memprodutos.FindField('BOLETIMSEMENTE').AsString;
              dm_rc.tbmvitens.Findfield('TERMOSEMENTE').AsString    := memprodutos.FindField('TERMOSEMENTE').AsString;
              dm_rc.tbmvitens.Findfield('VALIDADE').AsString        := memprodutos.FindField('VALIDADE').AsString;
              dm_rc.tbmvitens.Findfield('CATEGORIA').AsString       := memprodutos.FindField('CATEGORIA').AsString;
              dm_rc.tbmvitens.Findfield('SAFRAVALIDA').AsString     := memprodutos.FindField('SAFRAVALIDA').AsString;
              dm_rc.tbmvitens.Findfield('VALORCULTURAL').AsFloat    := memprodutos.FindField('VALORCULTURAL').AsFloat;
              dm_rc.tbmvitens.Findfield('GERMINACAO').AsFloat       := memprodutos.FindField('GERMINACAO').AsFloat;
              dm_rc.tbmvitens.Findfield('PUREZA').AsFloat           := memprodutos.FindField('PUREZA').AsFloat;
              dm_rc.tbmvitens.Findfield('TOTALPONTO').AsFloat       := memprodutos.FindField('QUANTIDADE').AsFloat * memprodutos.FindField('PUREZA').AsFloat;
              dm_rc.tbmvitens.Findfield('PESOSACO').AsFloat         := memprodutos.FindField('PESOSACO').AsFloat;
              dm_rc.tbmvitens.Findfield('TIPOLOTE').AsString        := memprodutos.FindField('TIPOLOTE').AsString;

              if memprodutos.FindField('TIPOLOTE').AsString = 'P' then
                begin
                  dm_rc.FDQuerymanutencaolote_interno.Append;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('EMISSAO').AsDateTime        := FDQryCad.FindField('EMISSAO').AsDateTime;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('DOCUMENTO').AsInteger       := FDQryCad.FindField('DOCUMENTO').AsInteger;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('NUMERO').AsInteger          := FDQryCad.FindField('NUMERO').AsInteger;

                  dm_rc.FDQuerymanutencaolote_interno.Findfield('PESOSACO').AsFloat          := memprodutos.FindField('PESOSACO').AsFloat;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('PRODUTO').AsInteger         := memprodutos.FindField('PRODUTO').AsInteger;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('DESCRICAO').AsString        := memprodutos.FindField('DESCRICAO').AsString;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('QUANTIDADE').AsFloat        := memprodutos.FindField('QUANTIDADE').AsFloat;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('PUREZA').AsFloat            := memprodutos.FindField('PUREZA').AsFloat;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('TOTALPONTOS').AsFloat       := memprodutos.FindField('QUANTIDADE').AsFloat * memprodutos.FindField('PUREZA').AsFloat;
                  dm_rc.FDQuerymanutencaolote_interno.FindField('LOTE').AsString             := memprodutos.Findfield('LOTESEMENTE').AsString;

                  dm_rc.FDQuerymanutencaolote_interno.Findfield('MESTRE_PRODUCAO').AsInteger := 0;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('ATIVO').AsString            := 'T';
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('EMPRESA').AsInteger         := MM.varI_Code_Company;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('SEQUENCIA').AsInteger       := memprodutos.RecNo;
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('TIPO').AsString             := 'SAIDA';

                  dm_rc.FDQuerymanutencaolote_interno.Findfield('CODIGO').AsInteger          := Ultimo_Codigo('MANUTENCAOLOTE_INTERNO','CODIGO',False);
                  dm_rc.FDQuerymanutencaolote_interno.Findfield('KEY').AsString              := Gera_Guid();
                  dm_rc.FDQuerymanutencaolote_interno.Post;


                  CalculaLoteInterno (mm.varI_Code_Company,
                                      memprodutos.FindField('PRODUTO').AsInteger,
                                      memprodutos.Findfield('LOTESEMENTE').AsString);

                end
              else
                begin
                  //**********************************************************************//
                  // PONTOS
                  //**********************************************************************//
                  TabelaOperacao('select * from operacoes where codigo = ' + IntToStr(memprodutos.FindField('OPERACAO').AsInteger));

                  DM_RC.fdqrypontos.Append;
                  DM_RC.fdqrypontos.FindField('EMPRESA').AsInteger     := MM.varI_Code_Company;
                  DM_RC.fdqrypontos.FindField('DOCUMENTO').AsInteger   := FDQryCad.FindField('DOCUMENTO').AsInteger;
                  DM_RC.fdqrypontos.FindField('SAFRA').AsInteger       := 0;
                  DM_RC.fdqrypontos.FindField('SEQUENCIA').AsInteger   := memprodutos.RecNo;
                  DM_RC.fdqrypontos.FindField('NUMERO').AsInteger      := FDQryCad.FindField('NUMERO').AsInteger;
                  DM_RC.fdqrypontos.FindField('SERIE').AsString        := FDQryCad.FindField('SERIE').AsString;
//                  DM_RC.fdqrypontos.FindField('UF').AsString           := FDQrypessoas.FindField('ESTADO').AsString;
                  DM_RC.fdqrypontos.FindField('PESSOA').AsInteger      := FDQryCad.FindField('PESSOA').AsInteger;
                  DM_RC.fdqrypontos.FindField('DATA').AsDateTime       := FDQryCad.FindField('EMISSAO').AsDateTime;

                  DM_RC.fdqrypontos.FindField('OPERACAO').AsInteger    := memprodutos.FindField('OPERACAO').AsInteger;
                  DM_RC.fdqrypontos.FindField('PRODUTO').AsInteger     := memprodutos.FindField('PRODUTO').AsInteger;
                  DM_RC.fdqrypontos.FindField('DESCRICAO').AsString    := memprodutos.FindField('DESCRICAO').AsString;
                  DM_RC.fdqrypontos.FindField('CANCELADA').AsString    := memprodutos.FindField('CANCELADA').AsString;

                  DM_RC.fdqrypontos.FindField('CATEGORIA').AsString    := memprodutos.FindField('CATEGORIA').AsString;
                  DM_RC.fdqrypontos.FindField('CAMPO').AsString        := memprodutos.FindField('CAMPO').AsString;
                  DM_RC.fdqrypontos.FindField('SAFRACAMPO').AsString   := memprodutos.FindField('SAFRACAMPO').AsString;
                  DM_RC.fdqrypontos.FindField('BOLETIM').AsString      := memprodutos.FindField('BOLETIMSEMENTE').AsString;
                  DM_RC.fdqrypontos.FindField('TERMO').AsString        := memprodutos.FindField('TERMOSEMENTE').AsString;
                  DM_RC.fdqrypontos.FindField('COOPERANTE').AsInteger  := memprodutos.FindField('COOPERANTE').AsInteger;
                  DM_RC.fdqrypontos.FindField('GERMINACAO').AsFloat    := memprodutos.FindField('GERMINACAO').AsFloat;
                  DM_RC.fdqrypontos.FindField('LOTEENTRADA').AsString  := memprodutos.FindField('LOTEENTRADA').AsString;
                  DM_RC.fdqrypontos.FindField('PESOSACO').AsFloat      := memprodutos.FindField('PESOSACO').AsFloat;
                  DM_RC.fdqrypontos.FindField('VALORCULTURAL').AsFloat := memprodutos.FindField('VALORCULTURAL').AsFloat;

                  DM_RC.fdqrypontos.FindField('QUANTIDADE').AsFloat    := memprodutos.FindField('QUANTIDADE').AsFloat;
                  DM_RC.fdqrypontos.FindField('PUREZA').AsFloat        := memprodutos.FindField('PUREZA').AsFloat;
                  DM_RC.fdqrypontos.FindField('PONTOS').AsFloat        := memprodutos.FindField('QUANTIDADE').AsFloat * memprodutos.FindField('PUREZA').AsFloat;
                  DM_RC.fdqrypontos.FindField('TIPO').AsString         := variif(dm_rc.FDQryoperacoes.FindField('ESTOQUE').AsString = '2', 'NULO', variif(dm_rc.FDQryoperacoes.FindField('ESTOQUE').AsString = '1', 'SAIDA', 'ENTRADA'));
                  DM_RC.fdqrypontos.FindField('SAFRAVALIDA').AsString  := memprodutos.FindField('SAFRAVALIDA').AsString;
                  DM_RC.fdqrypontos.Findfield('QTEPESO').AsFloat       := memprodutos.FindField('QUANTIDADE').AsFloat * memprodutos.FindField('PESOSACO').AsFloat;

                  DM_RC.fdqrypontos.FindField('LOTESEMENTE').AsString  := memprodutos.FindField('LOTESEMENTE').AsString;
                  DM_RC.fdqrypontos.FindField('CODIGO').AsInteger      := Ultimo_Codigo('PONTOS','CODIGO',True);
                  DM_RC.fdqrypontos.FindField('KEY').AsString          := Gera_Guid();
                  DM_RC.fdqrypontos.Post;
                  //**********************************************************************//

                  Calcula_Lote(mm.varI_Code_Company,
                               memprodutos.FindField('PRODUTO').AsInteger,
                               memprodutos.FindField('LOTESEMENTE').AsString,
                               memprodutos.FindField('BOLETIMSEMENTE').AsString,
                               memprodutos.FindField('TERMOSEMENTE').AsString,
                               '');

                end;

            end;

          dm_rc.tbmvitens.FindField('KEY').AsString             := Gera_Guid();
          dm_rc.tbmvitens.FindField('CODIGO').AsInteger         := Ultimo_Codigo('MVITENS','CODIGO',False);

          dm_rc.tbmvitens.Post;
        end;
      memprodutos.Next;
    end;
  memprodutos.First;
  memprodutos.EnableControls;

  tbtitulos.DisableControls;
  tbtitulos.First;
  while not tbtitulos.Eof do
    begin
      dm_rc.fdqrytitulos.UpdateOptions.UpdateTableName      := 'RECEBER';

      dm_rc.fdqrytitulos.Append;
      dm_rc.fdqrytitulos.FindField('NUMERO').AsInteger       := FDQryCad.FindField('NUMERO').AsInteger;
      dm_rc.fdqrytitulos.FindField('DOCUMENTO').AsInteger    := FDQryCad.FindField('DOCUMENTO').AsInteger;
      dm_rc.fdqrytitulos.FindField('SERIE').AsString         := FDQryCad.FindField('SERIE').AsString;
      dm_rc.fdqrytitulos.FindField('PESSOA').AsInteger       := FDQryCad.FindField('PESSOA').AsInteger;
      dm_rc.fdqrytitulos.FindField('EMISSAO').AsDateTime     := FDQryCad.FindField('EMISSAO').AsDateTime;

      dm_rc.fdqrytitulos.FindField('SEQUENCIA').AsInteger    := tbtitulos.FindField('PARCELA').AsInteger;
      dm_rc.fdqrytitulos.FindField('VENCIMENTO').AsDateTime  := tbtitulos.FindField('VENCIMENTO').AsDateTime;
      dm_rc.fdqrytitulos.FindField('VALORATUAL').AsFloat     := tbtitulos.FindField('VALOR').AsFloat;
      dm_rc.fdqrytitulos.FindField('VALORORIGINAL').AsFloat  := tbtitulos.FindField('VALOR').AsFloat;
      dm_rc.fdqrytitulos.FindField('CONFIRMABOLETO').AsString:= 'F';
      dm_rc.fdqrytitulos.FindField('SITUACAO').AsString      := 'Aberto';

      dm_rc.fdqrytitulos.FindField('FINANCEIRO').AsInteger   := 1;
      dm_rc.fdqrytitulos.FindField('FUNCIONARIO').AsInteger  := FDQryCad.FindField('FUNCIONARIO').AsInteger;
      dm_rc.fdqrytitulos.FindField('EMPRESA').AsInteger      := mm.varI_Code_Company;

      dm_rc.fdqrytitulos.FindField('APLICACAO').AsInteger    := 0;
      dm_rc.fdqrytitulos.FindField('PLANOCONTAS').AsInteger  := 0;
      dm_rc.fdqrytitulos.FindField('CARTEIRA').AsInteger     := 00001;
      dm_rc.fdqrytitulos.FindField('PORTADOR').AsInteger     := 9999;

      dm_rc.fdqrytitulos.FindField('PEDIDO').AsString      := FDQryCad.FindField('PEDIDO').AsString;
      dm_rc.fdqrytitulos.FindField('PERCCOMISSAO').AsFloat := FDQryCad.FindField('COMISSAOFUNCIONARIO').AsFloat;

      dm_rc.fdqrytitulos.FindField('VALORDESCONTOS').AsFloat := 0;
      dm_rc.fdqrytitulos.FindField('VALORJUROS').AsFloat     := 0;
      dm_rc.fdqrytitulos.FindField('VALORTAXAS').AsFloat     := 0;
      dm_rc.fdqrytitulos.FindField('VALORPAGO').AsFloat      := 0;
      dm_rc.fdqrytitulos.FindField('VALORDIVERSOS').AsFloat  := 0;

      dm_rc.fdqrytitulos.FindField('KEY').AsString           := Gera_Guid();
      dm_rc.fdqrytitulos.FindField('CODIGO').AsInteger       := Ultimo_Codigo('RECEBER','CODIGO',False);
      dm_rc.fdqrytitulos.Post;

      tbtitulos.Next;
    end;

  tbtitulos.First;
  tbtitulos.EnableControls;

  UniDBComboBoxMARCA.ReadOnly        := True;

  UniDBGridprodutos.Options          := UniDBGridprodutos.Options - [dgEditing];
  dbgTITULOS.Options                 := dbgTITULOS.Options        - [dgEditing];

end;

procedure TfrmMOVIMENTOMESTRE.I1Click(Sender: TObject);
begin
  frmTransfereImportacao.ShowModal();
end;

procedure TfrmMOVIMENTOMESTRE.i2Click(Sender: TObject);
begin
  inherited;

  mm.varC_caminhopdf :=  PEDIDOORCAMENTO_impressao(mm.varI_Code_Company,
                         FDQryCad.FindField('NUMERO').AsInteger,
                         FDQryCad.FindField('DOCUMENTO').AsInteger);

  unfImpressao.ShowModal();

end;

procedure TfrmMOVIMENTOMESTRE.I4Click(Sender: TObject);
begin
  frmTransfereImportacao.ShowModal();
  if mm.varI_Code_Documento_Controle <> 0 then
    CarregaImportacao(mm.varI_Code_Documento_Controle);
end;

procedure TfrmMOVIMENTOMESTRE.L1Click(Sender: TObject);
begin
  inherited;

  MM.varC_referencia_produto := IntToStr(memprodutos.FindField('PRODUTO').AsInteger);
  mm.varC_codigo_busca_lote  := memprodutos.FindField('LOTESEMENTE').AsString;
  mm.VarC_Atelagenerica      := 'CONTROLEPONTOS';
  frmTELAGENERICA.ShowModal();

  memprodutos.Edit;
  carregalote(MM.varC_codigo_busca_lote,memprodutos.FindField('PRODUTO').AsInteger);
  MM.varC_referencia_produto := '';

end;

procedure TfrmMOVIMENTOMESTRE.L2Click(Sender: TObject);
begin
  inherited;
  FrmPesquisaloteinterno.showmodal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
        carregaloteProducao(StrToInt(mm.varC_codigo_busca_lote));
     end;
   end);
end;

procedure TfrmMOVIMENTOMESTRE.labExitClick(Sender: TObject);
var
   I, F : integer;

begin

  inherited;
  if dm_rc.rc_ObjectExists('frmLookUp_Lite') then frmLookUp_Lite.Close;

  ed_Table_Status.Text := '';

  ed_Table_Status_OLD.Text := '';

  if pgBaseCadControl.ActivePage = paBaseRegData1 then
  begin
     pgBaseCadControl.ActivePage := tabSearch;

     if ( ed_CodMaster.Tag = 0 ) or ( StrToIntDef( ed_CodMaster.Hint, 0 ) > 0 ) then
     begin
           // v. 3.2.0.0
           //btnSearchCRUDClick( self );
           if iCurrentPage <> -1 then
              UniSession.AddJS( dbgSearchCRUD.JSName+'.store.loadPage(' + iCurrentPage.ToString + ');')
           else
              btnSearchCRUDClick( self );
     end;
     rc_DefaultTitleForm; // v. 3.2.0.0
  end
  else
  begin
     if mm.oPgGeneral <> nil then
        mm.oPgGeneral.ActivePage.Close;
  end;
end;

procedure TfrmMOVIMENTOMESTRE.LimpaVars;
begin
  UniEditnomepessoa.Text           := '';
  UniEditcidade.Text               := '';
  UniEditestado.Text               := '';
  UniEditdescricaocondicao.Text    := '';
  varC_verificarecalculofinanceiro := '';
  UniEditdescricaocondicao.Text    := '';
  memprodutos.Close;
  tbtitulos.Close;
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Calcula_Totais();
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosAfterPost(DataSet: TDataSet);
begin
  inherited;
  Calcula_Totais();
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosBeforeDelete(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosBeforePost(DataSet: TDataSet);
begin
  inherited;
  gravamemoria();
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosbuscaloteGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Lote" class="fa fa-lg fas fa-boxes fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosbuscaprodutoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Produtos" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmMOVIMENTOMESTRE.memprodutosexcluiGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmMOVIMENTOMESTRE.rc_DefaultTitleForm;
var
   i : integer;
begin
     i := Pos( ' [ID:', labTitleForm.Caption );
     if ( i > 0 ) and ( Pos( 'caption-id', labTitleForm.Hint ) > 0 ) then
     begin
        labTitleForm.Caption := Copy ( labTitleForm.Caption, 1, i-1 );
        labTitleForm.hint := rc_SetHintProperty( '', 'caption-dots-default:', labTitleForm.hint );
        labTitleForm.hint := StringReplace( labTitleForm.hint, 'caption-dots-default:', '', [rfReplaceAll] );
     end;
end;

procedure TfrmMOVIMENTOMESTRE.ReCalcula_Titulos;
var
  M_PARCELAS : TStringList;
  R          : Integer;
  M_RESTO    : Real;
  ORDEM,
  M_ITENS    : Integer;
  sqlreceber : string;
  vlratual   : Real;
begin
  tbtitulos.Close;
  tbtitulos.Open;

  vlratual := 0;


  sqlreceber := ' select sum(VALORATUAL) as vlr from receber where numero = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger) +
                ' and serie                                               = ' + QuotedStr(FDQryCad.FindField('SERIE').AsString)  +
                ' and empresa                                             = ' + IntToStr(mm.varI_Code_Company)                   +
                ' and situacao                                            = ' + QuotedStr('Pago');

  SqlPesquisa  ('SELECT * FROM CONDICOES WHERE CODIGO = ' + QuotedStr(UniButtonDbEditcodigocondicao.Text));
  TabelaReceber(sqlreceber); vlratual :=  dm_rc.tbreceber.FindField('VLR').AsFloat;

  ORDEM      := 0;
  M_PARCELAS := Explode(TRIM(dm_rc.sqlBuscas.FindField('OBSERVACOES').AsString),',');
  M_RESTO    := UniDBFormattedNumberEditvlrtotal.Value - vlratual;
  M_ITENS    := variif(dm_rc.sqlBuscas.FindField('PARCELAS').AsInteger=0,1,dm_rc.sqlBuscas.FindField('PARCELAS').AsInteger);

  if M_PARCELAS.Count <  M_ITENS then
    begin
      for R := M_PARCELAS.Count to M_ITENS -1 do
        begin
          M_PARCELAS.Add(IntToStr(R * 30));
        end;
    end;

  for R := 0 to M_PARCELAS.Count - 1 do
    begin
      inc(ORDEM);
      tbtitulos.Append;
      tbtitulos.FindField('VENCIMENTO').AsDateTime := UniDBDateTimePickeremissao.DateTime + Valor(M_PARCELAS[R]);
      tbtitulos.FindField('VALOR').AsFloat         := MRound((UniDBFormattedNumberEditvlrtotal.Value - vlratual) / M_ITENS,2);
      tbtitulos.FindField('PARCELA').AsInteger     := ORDEM;
      tbtitulos.FindField('STATUS').AsString       := 'Aberto';
      tbtitulos.Post;
      M_RESTO := M_RESTO - tbtitulos.FindField('VALOR').AsFloat;
    end;

  if M_RESTO > 0 then
    begin
      tbtitulos.Last;
      tbtitulos.Edit;
      tbtitulos.FindField('VALOR').AsFloat := tbtitulos.FindField('VALOR').AsFloat + Abs(M_RESTO);
      tbtitulos.Post;
    end
  else
    if M_RESTO < 0 then
      begin
        tbtitulos.First;
        tbtitulos.Edit;
        tbtitulos.FindField('VALOR').AsFloat := tbtitulos.FindField('VALOR').AsFloat - Abs(M_RESTO);
        tbtitulos.Post;
      end;

  varC_verificarecalculofinanceiro := 'S';
  tbtitulos.First;
end;

procedure TfrmMOVIMENTOMESTRE.ReleituraProdutoscfop;
begin

end;

procedure TfrmMOVIMENTOMESTRE.SetBut(Acao: TAcaoCrud);
var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));

  // Controle dos botoes
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
     begin
       btnNewReg.Visible     := false;
       btnEditReg.Visible    := false;
       btnDeleteReg.Visible  := false;
       btnCalcReg.Visible    := True;
       btnCancelReg.Visible  := true;
       btnSaveReg.Visible    := false;
       btntransp.Visible     := True;
       btnOptions.Visible    := True;
     end
   else if acao in [tpListaVazia] then
      begin
        btnNewReg.Visible     := true;
        btnEditReg.Visible    := false;
        btnDeleteReg.Visible  := false;
        btnCalcReg.Visible    := False;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
        btntransp.Visible     := False;
        btnOptions.Visible    := False;
      end
   else if acao in [tpCalcular] then
     begin
        btnNewReg.Visible     := false;
        btnEditReg.Visible    := false;
        btnDeleteReg.Visible  := false;
        btnCalcReg.Visible    := True;
        btnCancelReg.Visible  := True;
        btnSaveReg.Visible    := True;
        btnOptions.Visible    := False;
     end
    else if acao in [tpListacomRegistros] then
      begin
        btnNewReg.Visible     := true;
        btnEditReg.Visible    := true;
        btnDeleteReg.Visible  := true;
        btnCalcReg.Visible    := False;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
        btnOptions.Visible    := True;
        btntransp.Visible     := True;
       end;

end;

procedure TfrmMOVIMENTOMESTRE.tbtitulosSTATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if tbtitulosSTATUS.AsString = 'Aberto' then
    Text := '<span class="badge badge-danger">Aberto</span>'
  else
    Text := '<span class="badge badge-info">Pago</span>';
end;

procedure TfrmMOVIMENTOMESTRE.UniButtonDbEditvendedorButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('FUNCIONARIO').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmMOVIMENTOMESTRE.UniButtonDbEditvendedorExit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditvendedor.Text <> '') and (UniButtonDbEditvendedor.Text <> '0') then
        begin
          if SqlPesquisa('SELECT NOME, COMISSAO FROM FUNCIONARIOS WHERE CODIGO = ' + QuotedStr(UniButtonDbEditvendedor.Text)) then
            begin
              UniEditnomevendedor.Text                          := dm_rc.sqlBuscas.FindField('NOME').AsString;
              FDQryCad.FindField('COMISSAOFUNCIONARIO').AsFloat := dm_rc.sqlBuscas.FindField('COMISSAO').AsFloat;
            end;
        end;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.UniButtonDbEditcodigocondicaoButtonClick(
  Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('CONDICOES');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('CONDICAO').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmMOVIMENTOMESTRE.UniButtonDbEditcodigocondicaoExit(
  Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    UniEditdescricaocondicao.Text      := Acha_Item('CONDICOES',FDQryCad.FindField('CONDICAO').AsString);

end;

procedure TfrmMOVIMENTOMESTRE.UniButtonDbEditcodigopessoasButtonClick(
  Sender: TObject);
begin
  inherited;
  UniButtonDbEditcodigopessoas.SetFocus;
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('PESSOA').AsInteger := StrToInt(MM.varC_codigo_busca);
       UniButtonDbEditcodigopessoas.SetFocus;
     end;
   end);
end;

procedure TfrmMOVIMENTOMESTRE.UniButtonDbEditcodigopessoasExit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditcodigopessoas.Text <> '') and (UniButtonDbEditcodigopessoas.Text <> '0') then
        begin
          if verificastatuspessoa(StrToInt(UniButtonDbEditcodigopessoas.Text)) = True then
            begin
              frmBLOQUEIOPESSOA.ShowModal();
              UniButtonDbEditcodigopessoas.Text := '0';
              Abort;
            end;

          if SqlPesquisa('SELECT * FROM PESSOAS WHERE CODIGO = ' + QuotedStr(UniButtonDbEditcodigopessoas.Text)) then
            begin
              UniEditnomepessoa.Text                          := dm_rc.sqlBuscas.FindField('NOME').AsString;
              UniEditcidade.Text                              := dm_rc.sqlBuscas.FindField('CIDADE').AsString;
              UniEditestado.Text                              := dm_rc.sqlBuscas.FindField('ESTADO').AsString;

              FDQryCad.FindField('ENTREGA_CEP').AsString      := dm_rc.sqlBuscas.FindField('CEPENTREGA').AsString;
              FDQryCad.FindField('ENTREGA_IBGE').AsString     := dm_rc.sqlBuscas.FindField('IBGEENTREGA').AsString;
              FDQryCad.FindField('ENTREGA_ENDERECO').AsString := dm_rc.sqlBuscas.FindField('ENDERECOENTREGA').AsString;
              FDQryCad.FindField('ENTREGA_NUMERO').AsString   := dm_rc.sqlBuscas.FindField('NUMEROENTREGA').AsString;
              FDQryCad.FindField('ENTREGA_BAIRRO').AsString   := dm_rc.sqlBuscas.FindField('BAIRROENTREGA').AsString;
              FDQryCad.FindField('ENTREGA_CIDADE').AsString   := dm_rc.sqlBuscas.FindField('CIDADEENTREGA').AsString;
              FDQryCad.FindField('ENTREGA_ESTADO').AsString   := dm_rc.sqlBuscas.FindField('ESTADOENTREGA').AsString;

              if Pos('-',dm_rc.sqlBuscas.FindField('CEP').AsString) <> 0 then
                begin
                  dm_rc.rc_ShowSweetAlert( 'ALERTA', 'CEP NÃO SERÁ VALIDO - AJUSTAR 1º NO CADASTRO' , 'error' , false );
                  Abort;
                end;

              if dm_rc.sqlBuscas.FindField('CIDADE').AsString = '' then
                begin
                  dm_rc.rc_ShowSweetAlert( 'ALERTA', 'INFORMAR NO CADASTRO A CIDADE DO CLIENTE' , 'error' , false );
                  Abort;
                end;

              if dm_rc.sqlBuscas.FindField('ESTADO').AsString = '' then
                begin
                  dm_rc.rc_ShowSweetAlert( 'ALERTA', 'INFORMAR NO CADASTRO A UF DO CLIENTE' , 'error' , false );
                  Abort;
                end;

              if dm_rc.sqlBuscas.FindField('SITUACAO').AsString = '' then
                begin
                  dm_rc.rc_ShowSweetAlert( 'ALERTA', 'INFORMAR NO CADASTRO SE O CLIENTE É - ISENTO - NÃO CONTRUINTE - CONSUMIDOR' , 'error' , false );
                  Abort;
                end;
            end
          else
            begin
              dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'CLIENTE NAO ENCONTRADO, BUSQUE NOVAMENTE' , 'error' , false );
              Abort
            end;
        end;
    end;
end;

procedure TfrmMOVIMENTOMESTRE.UniButtonEditpessoasButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       UniButtonEditpessoas.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmMOVIMENTOMESTRE.UniDBFormattedNumberEditdescontosExit(
  Sender: TObject);
begin
  inherited;
  if FDQryCad.State in [dsInsert,dsEdit] then
    Calcula_Totais;
end;

procedure TfrmMOVIMENTOMESTRE.UniDBFormattedNumberEditvlrdespesasExit(
  Sender: TObject);
begin
  inherited;
  if FDQryCad.State in [dsInsert,dsEdit] then
    Calcula_Totais;
end;

procedure TfrmMOVIMENTOMESTRE.UniDBGridprodutosCellClick(
  Column: TUniDBGridColumn);
  var Linha, Coluna : Integer;
begin
   Linha  := TStringGrid(UniDBGridprodutos).Row;
   Coluna := UniDBGridprodutos.CurrCol;

  if FDQryCad.State in [dsInsert,dsEdit] then
    begin

      if Column.FieldName = 'exclui' then
        begin
          dm_rc.rc_ShowYesNo( 'DESEJA REALMENTE EXCLUIR ESSE REGISTRO?' );
          if mm.varB_Yes then
            begin
              memprodutos.Delete;
            end
        end;

      if Column.FieldName = 'buscaproduto' then
        begin
          MM.Seta_Busca('PRODUTOS');
          UniFfrmPesquisa.showmodal(
          procedure(Sender: TComponent; AResult: Integer)
           begin
             if AResult = mrOK then
             begin
               memprodutos.Edit;
               carregaprodutos(MM.varC_codigo_busca);
             end;
           end);
        end;

      if Column.FieldName = 'buscalote' then
        begin
          UniPopupMenulote.Popup(posicao_x-20,posicao_y, UniDBGridprodutos);
        end;

    end;
end;

procedure TfrmMOVIMENTOMESTRE.UniDBGridprodutosMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmMOVIMENTOMESTRE.UniFrameCreate(Sender: TObject);
begin
  inherited;
  edSearchCRUDDtIni.Text             := DateToStr(StartOfTheMonth(date));
  edSearchCRUDDtEnd.Text             := DateToStr(EndOfMonth(StrToDate(edSearchCRUDDtIni.Text)));
  cbxSearchCRUDFieldordem.ItemIndex  := 1;
  cbxSearchCRUDFieldstatus.ItemIndex := 2;
  ativabusca();
  btnSearchCRUD.OnClick(Self);
end;

procedure TfrmMOVIMENTOMESTRE.VerificaEdicao;
begin
  if  FDQryCad.State in [dsEdit,dsInsert] then
     begin
       dm_rc.rc_ShowSweetAlert('ATENÇÃO',labTitleForm.Caption + ' - REGISTRO AINDA ESTA EM ABERTO - CANCELE OU SALVE', 'error' , false );
       pgBaseCadControl.ActivePage := paBaseRegData1;
       abort ;
     end;
end;

procedure TfrmMOVIMENTOMESTRE.VerificaFinanceiroAtual;
begin

end;

function TfrmMOVIMENTOMESTRE.VerificaSetemFinanceiro: Boolean;
var
  sql : string;
begin
  sql := ' select * from receber where numero = ' + IntToStr(FDQryCad.FindField('NUMERO').AsInteger) +
         ' and serie                          = ' + QuotedStr(FDQryCad.FindField('SERIE').AsString)  +
         ' and empresa                        = ' + IntToStr(mm.varI_Code_Company)                   +
         ' and situacao                       = ' + QuotedStr('Pago');

  SqlPesquisa(sql);
  if dm_rc.sqlBuscas.RecordCount > 0 then
    Result := True
  else
    Result := False;

end;

end.
