unit untCadPRODUCAOINTERNA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uniGUIBaseClasses, uniGUIClasses, uniScreenMask, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uniHTMLFrame, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniEdit, uniLabel, uniScrollBox, uniPanel, uniPageControl,
  uniButton, uniBitBtn, uniMemo, uniDBEdit, UniButtonDbEdit, uniDateTimePicker,
  uniDBDateTimePicker, uniDBComboBox, Vcl.Menus, uniMainMenu, uniCheckBox,
  uniDBCheckBox;

type
  TfrmcadPRODUCAOINTERNA = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel5: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    rcBlock80: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniButtonDbEditLOTEDESTINO: TUniButtonDbEdit;
    UniLabel15: TUniLabel;
    UniButtonDbEditPRODUTODESTINO: TUniButtonDbEdit;
    UniDBEditDESCRICAOPRODUTO: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBFormattedNumberEditquantidade: TUniDBFormattedNumberEdit;
    UniLabel8: TUniLabel;
    rcBlock90: TUniContainerPanel;
    rcBlock100: TUniContainerPanel;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniLabel10: TUniLabel;
    tbdetalhesLOTE: TStringField;
    tbdetalhesPRODUTO: TIntegerField;
    tbdetalhesDESCRICAO: TStringField;
    tbdetalhesSEQUENCIA: TIntegerField;
    tbdetalhesQUANTIDADE: TFloatField;
    tbdetalhesbuscalote: TStringField;
    tbdetalhesexclui: TStringField;
    rcBlock130: TUniContainerPanel;
    rcBlock140: TUniContainerPanel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel12: TUniLabel;
    UniDBFormattedNumberEditvlrtotal: TUniDBFormattedNumberEdit;
    UniLabel14: TUniLabel;
    rcBlock150: TUniContainerPanel;
    FDQryFiltroKEY: TStringField;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroNUMERO: TIntegerField;
    FDQryFiltroATIVO: TStringField;
    FDQryFiltroEMISSAO: TDateField;
    FDQryFiltroEMPRESA: TIntegerField;
    FDQryFiltroDOCUMENTO: TIntegerField;
    FDQryFiltroLOTE: TStringField;
    FDQryFiltroPRODUTO: TIntegerField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroPUREZA: TFMTBCDField;
    FDQryFiltroTOTALKG: TFMTBCDField;
    FDQryFiltroTOTALPONTOS: TFMTBCDField;
    FDQryFiltroSTATUS: TStringField;
    FDQryFiltroTIPO: TStringField;
    FDQryFiltroTOTAL_CUSTO: TBCDField;
    FDQryCadKEY: TStringField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadNUMERO: TIntegerField;
    FDQryCadATIVO: TStringField;
    FDQryCadEMISSAO: TDateField;
    FDQryCadEMPRESA: TIntegerField;
    FDQryCadDOCUMENTO: TIntegerField;
    FDQryCadLOTE: TStringField;
    FDQryCadPRODUTO: TIntegerField;
    FDQryCadDESCRICAO: TStringField;
    FDQryCadPUREZA: TFMTBCDField;
    FDQryCadTOTALKG: TFMTBCDField;
    FDQryCadTOTALPONTOS: TFMTBCDField;
    FDQryCadSTATUS: TStringField;
    FDQryCadTIPO: TStringField;
    FDQryCadTOTAL_CUSTO: TBCDField;
    tbdetalhesTIPO: TStringField;
    tbdetalhesPUREZA: TFloatField;
    tbdetalhesPONTOS: TFloatField;
    tbdetalhesCUSTO_UNITARIO: TCurrencyField;
    tbdetalhesTOTAL_CUSTO: TCurrencyField;
    tbdetalhesPERC: TStringField;
    tbdetalhesCUSTO_PONTO: TFloatField;
    tbdetalhesTOTAL_PONTO: TFloatField;
    tbdetalhescalculos: TStringField;
    UniLabel11: TUniLabel;
    FDQryCadPESOSACO: TFMTBCDField;
    UniContainerPanel4: TUniContainerPanel;
    UniDBGridbatidaitens: TUniDBGrid;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBComboBoxMARCA: TUniDBComboBox;
    FDQryCadSACO_05KG: TStringField;
    FDQryCadSACO_10KG: TStringField;
    FDQryCadSACO_15KG: TStringField;
    FDQryCadSACO_20KG: TStringField;
    FDQryCadSACARIA: TStringField;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniLabel9: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel16: TUniLabel;
    FDQryCadPADRAO: TStringField;
    UniPopupMenudetalhes: TUniPopupMenu;
    EntregadosItenss1: TUniMenuItem;
    N13: TUniMenuItem;
    C1: TUniMenuItem;
    N1: TUniMenuItem;
    I1: TUniMenuItem;
    procedure UniButtonDbEditLOTEDESTINOButtonClick(Sender: TObject);
    procedure btnNewRegClick(Sender: TObject);
    procedure tbdetalhesbuscaloteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBGridbatidaitensCellClick(Column: TUniDBGridColumn);
    procedure btnSaveRegClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure tbdetalhesAfterPost(DataSet: TDataSet);
    procedure tbdetalhesBeforePost(DataSet: TDataSet);
    procedure dbgSearchCRUDDblClick(Sender: TObject);
    procedure UniDBFormattedNumberEditquantidadeExit(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure FDQryFiltroSTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesAfterDelete(DataSet: TDataSet);
    procedure tbdetalhesTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhescalculosGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniFrameCreate(Sender: TObject);
    procedure EntregadosItenss1Click(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure btnSearchCRUDClick(Sender: TObject);
    procedure I1Click(Sender: TObject);
  private
    { Private declarations }
  posicao_x, posicao_y    : Integer;
  public
    { Public declarations }
  procedure BuscaLoteinterno(codigo:integer);
  procedure carregalote(codigo:integer);
  procedure CalculaTotal();
  procedure Exclui(codigo:integer);
  procedure CarregaMarca();
  procedure HabilitaMenu(acao:string);
  procedure importacabecalho(mestreid:integer);
  procedure importacaoitens(mestreid:integer);
  end;

var
  frmcadPRODUCAOINTERNA: TfrmcadPRODUCAOINTERNA;

implementation

{$R *.dfm}

uses MainModule, untFrmPesquisaloteinterno, mkm_procedures, untDM_RC,
  uniGUITypes, mkm_func_web,
  untFrmTELADETALHESPRODUCAODLOTE, Vcl.Grids, mkm_impressao, unReportImpressao,
  untFrmCUSTOPRODUCAO, untFrmPesquisa, Main;

procedure TfrmcadPRODUCAOINTERNA.btnCancelRegClick(Sender: TObject);
begin
  inherited;
  tbdetalhes.Close;
  HabilitaMenu('cancela');

end;

procedure TfrmcadPRODUCAOINTERNA.btnDeleteRegClick(Sender: TObject);
begin
  Exclui(FDQryCad.FindField('CODIGO').AsInteger);
  inherited;
end;

procedure TfrmcadPRODUCAOINTERNA.btnEditRegClick(Sender: TObject);
begin
  tbdetalhes.AfterPost  := nil;
  tbdetalhes.BeforePost := nil;
  tbdetalhes.AfterDelete:= nil;

  inherited;

  tbdetalhes.AfterPost   := tbdetalhesAfterPost;
  tbdetalhes.BeforePost  := tbdetalhesBeforePost;
  tbdetalhes.AfterDelete := tbdetalhesAfterDelete;

  UniDBGridbatidaitens.Options          := UniDBGridbatidaitens.Options - [dgRowSelect];
  UniDBGridbatidaitens.Options          := UniDBGridbatidaitens.Options + [dgEditing];

  HabilitaMenu('altera');

end;

procedure TfrmcadPRODUCAOINTERNA.btnNewRegClick(Sender: TObject);
begin
  tbdetalhes.AfterPost    := nil;
  tbdetalhes.BeforePost   := nil;
  tbdetalhes.AfterDelete  := nil;

  CarregaMarca();

  inherited;

  tbdetalhes.AfterPost    := tbdetalhesAfterPost;
  tbdetalhes.BeforePost   := tbdetalhesBeforePost;
  tbdetalhes.AfterDelete  := tbdetalhesAfterDelete;

  UniButtonDbEditLOTEDESTINO.SetFocus;

  UniDBGridbatidaitens.Options          := UniDBGridbatidaitens.Options - [dgRowSelect];
  UniDBGridbatidaitens.Options          := UniDBGridbatidaitens.Options + [dgEditing];
  HabilitaMenu('inclui');
end;

procedure TfrmcadPRODUCAOINTERNA.btnOptionsClick(Sender: TObject);
begin
  UniPopupMenudetalhes.PopupBy( TUniButton( sender ) );
end;

procedure TfrmcadPRODUCAOINTERNA.btnSaveRegClick(Sender: TObject);
begin
  inherited;
  UniDBGridbatidaitens.Options          := UniDBGridbatidaitens.Options - [dgEditing];
  HabilitaMenu('grava');

end;

procedure TfrmcadPRODUCAOINTERNA.btnSearchCRUDClick(Sender: TObject);
begin
  inherited;
  if FDQryFiltro.RecordCount > 0 then
    HabilitaMenu('carrega')
  else
    HabilitaMenu('grava')

end;

procedure TfrmcadPRODUCAOINTERNA.BuscaLoteinterno(codigo: integer);
begin
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      SqlPesquisa('select * from LOTEINTERNO where codigo = ' + IntToStr(codigo));

      FDQryCad.Edit;
      FDQryCad.FindField('LOTE').AsString      :=  dm_rc.sqlBuscas.FindField('LOTE').AsString;
      FDQryCad.FindField('PRODUTO').AsInteger  :=  dm_rc.sqlBuscas.FindField('PRODUTO').AsInteger;
      FDQryCad.FindField('DESCRICAO').AsString :=  dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
      FDQryCad.FindField('PUREZA').AsFloat     :=  dm_rc.sqlBuscas.FindField('PUREZA').AsFloat;
      FDQryCad.FindField('PADRAO').AsString    :=  dm_rc.sqlBuscas.FindField('CODIGOP').AsString;

    end;

end;

procedure TfrmcadPRODUCAOINTERNA.C1Click(Sender: TObject);
begin
  inherited;
  mm.varM_CODIGOMESTRE := FDQryFiltroCODIGO.AsInteger;
  frmCUSTOPRODUCAO.ShowModal();
end;

procedure TfrmcadPRODUCAOINTERNA.CalculaTotal;
var
  M_MARCA       : TBookMark;
  TOTAL         : Real;
  CUSTOTOTAL    : Real;
  TOTALPONTOS   : Real;
  TOTALQTDEPERC,
  RESULTPERC    : Real;
begin
  M_MARCA      := tbdetalhes.GetBookmark;
  TOTALPONTOS  := 0;
  TOTAL        := 0;
  CUSTOTOTAL   := 0;
  TOTALQTDEPERC:= 0;
  RESULTPERC   := 0;


  tbdetalhes.DisableControls;
  tbdetalhes.AfterPost  := nil;
  tbdetalhes.BeforePost := nil;

  tbdetalhes.First;
  while not tbdetalhes.Eof do
    begin
      if tbdetalhesLOTE.AsString <> '' then
        begin
          tbdetalhes.Edit;
          tbdetalhesTOTAL_CUSTO.AsFloat  := MRound(tbdetalhesCUSTO_UNITARIO.AsFloat * tbdetalhesQUANTIDADE.AsFloat,2);
          tbdetalhesPONTOS.AsFloat       := MRound((tbdetalhesQUANTIDADE.AsFloat    * tbdetalhesPUREZA.AsFloat),2);
          tbdetalhesTOTAL_PONTO.AsFloat  := MRound(tbdetalhesCUSTO_PONTO.AsFloat    * tbdetalhesPONTOS.AsFloat,2);

          if tbdetalhesTIPO.AsString = 'Sementes' then
            begin
              TOTALPONTOS  := TOTALPONTOS + tbdetalhesPONTOS.AsFloat;
              CUSTOTOTAL   := CUSTOTOTAL  + tbdetalhesTOTAL_PONTO.AsFloat;
            end;

          if tbdetalhesQUANTIDADE.AsString <> '' then
            begin
              if (tbdetalhesTIPO.AsString <> 'Sacaria') then
                TOTAL      := TOTAL      + tbdetalhesQUANTIDADE.AsFloat;

              CUSTOTOTAL := CUSTOTOTAL + tbdetalhesTOTAL_CUSTO.AsFloat;
            end;
        end;

      TOTALQTDEPERC := TOTALQTDEPERC + tbdetalhesQUANTIDADE.AsFloat;

      tbdetalhes.Next;
    end;

  tbdetalhes.First;
  while not tbdetalhes.Eof do
    begin
      if tbdetalhesLOTE.AsString <> '' then
        begin
          RESULTPERC := MRound((tbdetalhesQUANTIDADE.AsFloat / TOTALQTDEPERC) *100,2);

          tbdetalhes.Edit;
          tbdetalhesPERC.AsString := FloatToStr(RESULTPERC);
        end;
      tbdetalhes.Next;
    end;

  FDQryCad.FindField('TOTAL_CUSTO').AsCurrency  := MRound(CUSTOTOTAL,2);
  FDQryCad.FindField('TOTALKG').AsCurrency      := MRound(TOTAL,2);
  FDQryCad.FindField('TOTALPONTOS').AsFloat     := TOTALPONTOS;

  tbdetalhes.AfterPost  := tbdetalhesAfterPost;
  tbdetalhes.BeforePost := tbdetalhesBeforePost;

  tbdetalhes.GotoBookmark(M_MARCA);
  tbdetalhes.FreeBookmark(M_MARCA);
  tbdetalhes.Refresh;
  tbdetalhes.EnableControls;
end;

procedure TfrmcadPRODUCAOINTERNA.carregalote(codigo: integer);
begin
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      SqlPesquisa('select * from LOTEINTERNO where codigo = ' + IntToStr(codigo));

      tbdetalhes.Edit;
      tbdetalhes.FindField('LOTE').AsString           :=  dm_rc.sqlBuscas.FindField('LOTE').AsString;
      tbdetalhes.FindField('PRODUTO').AsInteger       :=  dm_rc.sqlBuscas.FindField('PRODUTO').AsInteger;
      tbdetalhes.FindField('DESCRICAO').AsString      :=  dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
      tbdetalhes.FindField('CUSTO_UNITARIO').AsFloat  :=  dm_rc.sqlBuscas.FindField('CUSTO_UNITARIO').AsFloat;
      tbdetalhes.FindField('CUSTO_PONTO').AsFloat     :=  dm_rc.sqlBuscas.FindField('CUSTO_PONTO').AsFloat;
      tbdetalhes.FindField('PUREZA').AsFloat          :=  dm_rc.sqlBuscas.FindField('PUREZA').AsFloat;
      tbdetalhes.FindField('TIPO').AsString           :=  dm_rc.sqlBuscas.FindField('TIPO').AsString;
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.CarregaMarca;
begin
  UniDBComboBoxMARCA.Clear;
  if SqlPesquisa('SELECT DESCRICAO FROM MARCA WHERE ATIVO = '+QuotedStr('T')+' ORDER BY CODIGO') then
    begin
      dm_rc.sqlBuscas.First;
      while not dm_rc.sqlBuscas.Eof do
        begin
          UniDBComboBoxMARCA.Items.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);

          dm_rc.sqlBuscas.Next;
        end;
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.dbgSearchCRUDDblClick(Sender: TObject);
begin
  tbdetalhes.AfterPost  := nil;
  tbdetalhes.BeforePost := nil;
  inherited;
  tbdetalhes.AfterPost  := tbdetalhesAfterPost;
  tbdetalhes.BeforePost := tbdetalhesBeforePost;
  HabilitaMenu('carrega');

end;

procedure TfrmcadPRODUCAOINTERNA.EntregadosItenss1Click(Sender: TObject);
begin
  mm.varC_caminhopdf :=  IMPRESSAO_producaointerna(
                         MM.varI_Code_Company,
                         FDQryFiltro.FindField('CODIGO').AsInteger);

  unfImpressao.ShowModal();
end;

procedure TfrmcadPRODUCAOINTERNA.Exclui(codigo: integer);
begin
  if TabelaProducaoItens('select * from MANUTENCAOLOTE_INTERNO where MESTRE_PRODUCAO = ' + IntToStr(codigo)) then
    begin
      executasql        ('delete   from MANUTENCAOLOTE_INTERNO where MESTRE_PRODUCAO =  ' + IntToStr(codigo));
      dm_rc.fdqryproducaointernaitens.First;
      while not dm_rc.fdqryproducaointernaitens.Eof do
        begin

          CalculaLoteInterno (mm.varI_Code_Company,
                              dm_rc.fdqryproducaointernaitens.FindField('PRODUTO').AsInteger,
                              dm_rc.fdqryproducaointernaitens.Findfield('LOTE').AsString);

          dm_rc.fdqryproducaointernaitens.Next;
        end;
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.FDQryFiltroSTATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroSTATUS.AsString = 'Concluido' then
        Text := '<span class="badge badge-success">Concluido</span>'
      else
      if FDQryFiltroSTATUS.AsString = 'Andamento' then
        Text := '<span class="badge badge-danger">Adamento</span>'
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.HabilitaMenu(acao: string);
begin
  if StrContains('inclui',acao) then
    begin
      I1.Enabled                := True;     //duplicar
      EntregadosItenss1.Enabled := False;    //impresssao
      C1.Enabled                := False;    //custos
    end;
  if StrContains('altera',acao) then
    begin
      I1.Enabled                := False;    //duplicar
      EntregadosItenss1.Enabled := False;    //impresssao
      C1.Enabled                := False;    //custos
    end;
  if StrContains('carrega#grava',acao) then
    begin
      I1.Enabled                := False;    //duplicar
      EntregadosItenss1.Enabled := True;     //impresssao
      C1.Enabled                := True;     //custos
    end;
  if StrContains('cancela',acao) then
    begin
      I1.Enabled                := False;    //duplicar
      EntregadosItenss1.Enabled := False;    //impresssao
      C1.Enabled                := False;    //custos
    end;
end;
procedure TfrmcadPRODUCAOINTERNA.importacabecalho(mestreid:integer);
  var
    i            : integer; Cmp:String;
    tableimporta : TFDQuery;
begin
  tableimporta            := TFDQuery.Create(nil);
  tableimporta.Connection := mm.SQLConn;

  tableimporta.Close;
  tableimporta.SQL.Clear;
  tableimporta.sql.Text  := 'select * from producaointerna where codigo = ' + IntToStr(mestreid);
  tableimporta.Open();

  try
    FDQryCad.FindField('CODIGO').AsInteger    := 0;
    FDQryCad.FindField('NUMERO').AsInteger    := 0;
    FDQryCad.FindField('DOCUMENTO').AsInteger := 70;
    FDQryCad.FindField('EMISSAO').AsDateTime  := Date;
    FDQryCad.FindField('EMPRESA').AsInteger   := MM.varI_Code_Company;
    FDQryCad.FindField('STATUS').AsString     := 'Andamento';

    FDQryCad.FindField('PRODUTO').AsInteger   := tableimporta.FindField('PRODUTO').AsInteger;
    FDQryCad.FindField('DESCRICAO').AsString  := tableimporta.FindField('DESCRICAO').AsString;
    FDQryCad.FindField('SACARIA').AsString    := tableimporta.FindField('SACARIA').AsString;
    FDQryCad.FindField('PADRAO').AsString     := tableimporta.FindField('PADRAO').AsString;
    FDQryCad.FindField('LOTE').AsString       := tableimporta.FindField('LOTE').AsString;
    FDQryCad.FindField('PUREZA').AsFloat      := tableimporta.FindField('PUREZA').AsFloat;
    FDQryCad.FindField('TOTALKG').AsFloat     := tableimporta.FindField('TOTALKG').AsFloat;
    FDQryCad.FindField('TOTALPONTOS').AsFloat := tableimporta.FindField('TOTALPONTOS').AsFloat;
    FDQryCad.FindField('TOTAL_CUSTO').AsFloat := tableimporta.FindField('TOTAL_CUSTO').AsFloat;
    FDQryCad.FindField('PESOSACO').AsFloat    := tableimporta.FindField('PESOSACO').AsFloat;
    FDQryCad.FindField('SACO_05KG').AsString  := tableimporta.FindField('SACO_05KG').AsString;
    FDQryCad.FindField('SACO_10KG').AsString  := tableimporta.FindField('SACO_10KG').AsString;
    FDQryCad.FindField('SACO_20KG').AsString  := tableimporta.FindField('SACO_20KG').AsString;

    dm_rc.rc_ShowToasterRT('info', 'Produção Importada com Sucesso!', True,'pinItUp');
  finally
    tableimporta.Free;
  end;
end;
procedure TfrmcadPRODUCAOINTERNA.importacaoitens(mestreid: integer);
begin
  tbdetalhes.Close;
  tbdetalhes.open;
  tbdetalhes.DisableControls;
  SqlPesquisa('SELECT * FROM PRODUCAOINTERNA_ITENS WHERE MESTRE_ID = ' + IntToStr(mestreid) + ' order by sequencia');

  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      SqlPesquisaPrimeira(' SELECT * FROM LOTEINTERNO WHERE LOTE = ' + QuotedStr(dm_rc.sqlBuscas.Findfield('LOTE').AsString) +
                          ' AND PRODUTO                          = ' + IntToStr (dm_rc.sqlBuscas.Findfield('PRODUTO').AsInteger));

      tbdetalhes.Append;
      tbdetalhes.FindField('LOTE').AsString            := dm_rc.sqlBuscas.Findfield('LOTE').AsString;
      tbdetalhes.FindField('PRODUTO').AsInteger        := dm_rc.sqlBuscas.Findfield('PRODUTO').AsInteger;
      tbdetalhes.FindField('DESCRICAO').AsString       := dm_rc.sqlBuscas.Findfield('DESCRICAO').AsString;
      tbdetalhes.FindField('SEQUENCIA').AsInteger      := dm_rc.sqlBuscas.Findfield('SEQUENCIA').AsInteger;
      tbdetalhes.FindField('QUANTIDADE').AsFloat       := dm_rc.sqlBuscas.Findfield('QUANTIDADE').AsFloat;
      tbdetalhes.FindField('CUSTO_UNITARIO').AsCurrency:= dm_rc.sqlBuscas.Findfield('CUSTO_UNITARIO').AsCurrency;
      tbdetalhes.FindField('TOTAL_CUSTO').AsCurrency   := dm_rc.sqlBuscas.Findfield('TOTAL_CUSTO').AsCurrency;
      tbdetalhes.FindField('TOTAL_PONTO').AsCurrency   := dm_rc.sqlBuscas.Findfield('TOTAL_PONTO').AsCurrency;
      tbdetalhes.FindField('CUSTO_PONTO').AsCurrency   := dm_rc.sqlBuscas.Findfield('CUSTO_PONTO').AsCurrency;
      tbdetalhes.FindField('PUREZA').AsFloat           := dm_rc.sqlBuscas.Findfield('PUREZA').AsFloat;
      tbdetalhes.FindField('PONTOS').AsFloat           := dm_rc.sqlBuscas.Findfield('PONTOS').AsFloat;
      tbdetalhes.FindField('TIPO').AsString            := dm_rc.sqlpesquisaprimaria.Findfield('TIPO').AsString;
      tbdetalhes.FindField('PERC').AsString            := FloatToStr(dm_rc.sqlBuscas.Findfield('PERC').AsFloat);
      tbdetalhes.Post;

      dm_rc.sqlBuscas.Next;
    end;

  tbdetalhes.First;
  tbdetalhes.EnableControls;
  tbdetalhes.First;
end;

procedure TfrmcadPRODUCAOINTERNA.I1Click(Sender: TObject);

begin
  inherited;
  mm.Seta_Busca('PRODUCAOINTERNA');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       importacabecalho(StrToInt(MM.varC_codigo_busca));
       importacaoitens (StrToInt(MM.varC_codigo_busca));
     end;
   end);
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  CalculaTotal;
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalculaTotal;
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhesBeforePost(DataSet: TDataSet);
begin
  inherited;
  CalculaTotal;
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhesbuscaloteGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Lote Interno" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhescalculosGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Calculos" class="fa fa-lg fas fa-percentage fa-lg" style="color:black; cursor:pointer;"></i>';
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhesexcluiGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmcadPRODUCAOINTERNA.tbdetalhesTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if tbdetalhesTIPO.AsString = 'Produto Acabado' then
        Text := '<span class="badge badge-success">'+tbdetalhesTIPO.AsString+'</span>'
      else
      if tbdetalhesTIPO.AsString = 'Sementes' then
        Text := '<span class="badge badge-warning">'+tbdetalhesTIPO.AsString+'</span>'
      else
      if tbdetalhesTIPO.AsString = 'Insumos' then
        Text := '<span class="badge badge-info">'+tbdetalhesTIPO.AsString+'</span>'
      else
      if tbdetalhesTIPO.AsString = 'Sacaria' then
        Text := '<span class="badge badge-dark">'+tbdetalhesTIPO.AsString+'</span>'
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.UniButtonDbEditLOTEDESTINOButtonClick(
  Sender: TObject);
begin
  inherited;

  FrmPesquisaloteinterno.showmodal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
        BuscaLoteinterno(StrToInt(mm.varC_codigo_busca_lote));
     end;
   end);
end;

procedure TfrmcadPRODUCAOINTERNA.UniDBFormattedNumberEditquantidadeExit(
  Sender: TObject);
begin
  inherited;
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      CalculaTotal;
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.UniDBGridbatidaitensCellClick(
  Column: TUniDBGridColumn);
begin
  inherited;
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      if Column.FieldName = 'exclui' then
        begin
          dm_rc.rc_ShowYesNo( 'DESEJA REALMENTE EXCLUIR ESSE REGISTRO?' );
          if mm.varB_Yes then
            begin
              tbdetalhes.Delete;
            end
        end;

      if Column.FieldName = 'buscalote' then
        begin
          FrmPesquisaloteinterno.showmodal(
          procedure(Sender: TComponent; AResult: Integer)
           begin
             if AResult = mrOK then
             begin
               carregalote(StrToInt(MM.varC_codigo_busca_lote));
             end;
           end);
        end;
    end;

  if Column.FieldName = 'calculos' then
    begin
      mm.varV_totalkg    := tbdetalhesTOTAL_CUSTO.AsFloat;
      mm.varV_custokg    := tbdetalhesCUSTO_UNITARIO.AsFloat;
      mm.varV_totalponto := tbdetalhesTOTAL_PONTO.AsFloat;
      mm.varV_custoponto := tbdetalhesCUSTO_PONTO.AsFloat;

      FrmTELADETALHESPRODUCAODLOTE.ShowModal();
    end;
end;

procedure TfrmcadPRODUCAOINTERNA.UniFrameCreate(Sender: TObject);
begin
  CarregaMarca();
  inherited;
end;

initialization
  RegisterClass(TfrmcadPRODUCAOINTERNA);
end.
