unit untCadSOLICITACAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uniGUIBaseClasses, uniGUIClasses, uniScreenMask, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uniHTMLFrame, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniEdit, uniLabel, uniScrollBox, uniPanel, uniPageControl,
  uniButton, uniBitBtn, uniMemo, UniButtonDbEdit, uniCheckBox, uniDBCheckBox,
  uniDBEdit, uniDateTimePicker, uniDBDateTimePicker, uniDBComboBox, Vcl.Menus,
  uniMainMenu;

type
  TfrmCADSOLICITACAO = class(TfrmCRUDPROPRIO)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroEMPRESA: TIntegerField;
    FDQryFiltroLABORATORIO: TIntegerField;
    FDQryFiltroNOME_LABORATORIO: TStringField;
    FDQryFiltroFINALIDADE: TStringField;
    FDQryFiltroASSINADO: TStringField;
    FDQryFiltroCAMINHO: TStringField;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel5: TUniLabel;
    UniButtonDbEdit1: TUniButtonDbEdit;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel13: TUniLabel;
    rcBlock100: TUniContainerPanel;
    rcBlock110: TUniContainerPanel;
    rcBlock120: TUniContainerPanel;
    rcBlock130: TUniContainerPanel;
    rcBlock140: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniButtonDbEdit3: TUniButtonDbEdit;
    UniLabel11: TUniLabel;
    UniButtonDbEdit4: TUniButtonDbEdit;
    UniLabel12: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel14: TUniLabel;
    UniDBComboBox4: TUniDBComboBox;
    UniLabel15: TUniLabel;
    rcBlock150: TUniContainerPanel;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniDBCheckBox5: TUniDBCheckBox;
    UniDBCheckBox6: TUniDBCheckBox;
    UniDBCheckBox7: TUniDBCheckBox;
    rcBlock160: TUniContainerPanel;
    UniDBGridsolicitacao: TUniDBGrid;
    tbdetalhesESPECIE: TStringField;
    tbdetalhesCULTIVAR: TStringField;
    tbdetalhesSAFRA: TStringField;
    tbdetalhesCODIGO_LOTE: TIntegerField;
    tbdetalhesLOTE: TStringField;
    tbdetalhesCATEGORIA: TStringField;
    tbdetalhesREPRESENTATIVIDADE: TStringField;
    tbdetalhesIBGE: TIntegerField;
    tbdetalhesPROCEDENCIA: TStringField;
    tbdetalhesESTADO: TStringField;
    tbdetalhesDATA_AMOSTRAGEM: TDateField;
    tbdetalhesPESOAMOSTRA: TFloatField;
    tbdetalhesAMOSTRA: TStringField;
    tbdetalhesexclui: TStringField;
    tbdetalhesbusca_cidade: TStringField;
    tbdetalhesbusca_lote: TStringField;
    UniDBCheckBox8: TUniDBCheckBox;
    UniDBCheckBox9: TUniDBCheckBox;
    UniDBCheckBox11: TUniDBCheckBox;
    FDQryFiltroKEY: TStringField;
    UniPopupMenudetalhes: TUniPopupMenu;
    O1: TUniMenuItem;
    C1: TUniMenuItem;
    I1: TUniMenuItem;
    c2: TUniMenuItem;
    N2: TUniMenuItem;
    N3: TUniMenuItem;
    d1: TUniMenuItem;
    UniButtonDbEdit2: TUniButtonDbEdit;
    UniLabel7: TUniLabel;
    FDQryFiltroSTATUS: TStringField;
    S1: TUniMenuItem;
    O2: TUniMenuItem;
    N5: TUniMenuItem;
    C3: TUniMenuItem;
    N6: TUniMenuItem;
    FDQryFiltroRESPONSAVEL: TIntegerField;
    FDQryFiltroEMISSAO: TDateField;
    G1: TUniMenuItem;
    tbdetalhesPENEIRA: TStringField;
    N1: TUniMenuItem;
    N7: TUniMenuItem;
    L1: TUniMenuItem;
    N4: TUniMenuItem;
    I2: TUniMenuItem;
    FDQryFiltroNUMERO_TERMO: TStringField;
    UniDBCheckBox10: TUniDBCheckBox;
    procedure FDQryFiltroFINALIDADEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQryFiltroSTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQryFiltroASSINADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniButtonDbEdit1ButtonClick(Sender: TObject);
    procedure UniButtonDbEdit1Exit(Sender: TObject);
    procedure UniButtonDbEdit4ButtonClick(Sender: TObject);
    procedure UniButtonDbEdit3ButtonClick(Sender: TObject);
    procedure tbdetalhesbusca_loteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesbusca_cidadeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBGridsolicitacaoCellClick(Column: TUniDBGridColumn);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnNewRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure FDQryFiltroKEYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure dbgSearchCRUDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure I1Click(Sender: TObject);
    procedure UniButtonDbEdit2ButtonClick(Sender: TObject);
    procedure tbdetalhesAfterPost(DataSet: TDataSet);
    procedure S1Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure I2Click(Sender: TObject);
  private
    { Private declarations }
  posicao_x, posicao_y    : Integer;
  public
    { Public declarations }
  procedure carregalote(const    idlote:integer);
  procedure carregaespecie();
  procedure carregacultivar();
  procedure categoria();
  procedure peneira();
  procedure validasolicitacao();
  end;

var
  frmCADSOLICITACAO: TfrmCADSOLICITACAO;

implementation

{$R *.dfm}

uses MainModule, untFrmPesquisa, mkm_procedures, untDM_RC, untfrmPesquisalote,
  uniGUITypes, Vcl.Grids, mkm_impressao, unReportImpressao, Vcl.Clipbrd,
  mkm_funcoes, mkm_func_web, mkm_regrasnegocio, System.Types, untFrmTERMOCOLETA;
procedure TfrmCADSOLICITACAO.btnEditRegClick(Sender: TObject);
begin

  if FDQryFiltroASSINADO.AsString = 'S' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'DOCUMENTO JA FOI GERADO E ASSINADO -  NÃO PERMITIDO ALTERAR SOLICITAÇÃO' , 'error' , false );
      Abort
    end;

  tbdetalhes.AfterPost := nil;

  carregaespecie();
  carregacultivar();
  categoria();
  peneira();

  inherited;

  tbdetalhes.AfterPost := tbdetalhesAfterPost;


  UniDBGridsolicitacao.Options          := UniDBGridsolicitacao.Options - [dgRowSelect];
  UniDBGridsolicitacao.Options          := UniDBGridsolicitacao.Options + [dgEditing];
end;

procedure TfrmCADSOLICITACAO.btnNewRegClick(Sender: TObject);
begin
  tbdetalhes.AfterPost := nil;

  carregaespecie();
  carregacultivar();
  categoria();
  peneira();

  inherited;

  tbdetalhes.AfterPost := tbdetalhesAfterPost;

  UniDBGridsolicitacao.Options          := UniDBGridsolicitacao.Options - [dgRowSelect];
  UniDBGridsolicitacao.Options          := UniDBGridsolicitacao.Options + [dgEditing];
end;

procedure TfrmCADSOLICITACAO.btnSaveRegClick(Sender: TObject);
begin
  inherited;
  UniDBGridsolicitacao.Options          := UniDBGridsolicitacao.Options - [dgEditing];
end;

procedure TfrmCADSOLICITACAO.C3Click(Sender: TObject);
begin
  inherited;
  if FDQryFiltroASSINADO.AsString = 'A' then
    begin
      if AssinaturaResponsavel(FDQryFiltroCODIGO.AsInteger,
                               FDQryFiltroRESPONSAVEL.AsInteger,
                               mm.varI_Code_Company,
                               'SOLICITACAO',
                               'DELETE') = True then
      begin
        executasql(' update solicitacao set assinado = ' + QuotedStr('N') +
                   ' where codigo                    = ' + IntToStr(FDQryFiltroCODIGO.AsInteger));
        FDQryFiltro.Refresh;
        dm_rc.rc_ShowSweetAlert( 'OK', 'SOLICITAÇÃO DA ASSINATURA CANCELADA' , 'sucess' , false );
      end
      else
        begin
          FDQryFiltro.Refresh;
          dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'NÃO CONSEGUI CANCELAR A SOLICITAÇÃO DA ASSINATURA' , 'error' , false )
        end;
    end;
end;

procedure TfrmCADSOLICITACAO.carregacultivar;
begin
  SqlPesquisa('select * from cultivar where ativo = ' + QuotedStr('T') + ' order by CULTIVAR');
  UniDBGridsolicitacao.Columns[4].PickList.Clear;
  UniDBGridsolicitacao.Columns[4].PickList.Add('');
  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      UniDBGridsolicitacao.Columns[4].PickList.Add(dm_rc.sqlBuscas.FindField('CULTIVAR').AsString);
      dm_rc.sqlBuscas.Next;
    end;
end;

procedure TfrmCADSOLICITACAO.carregaespecie;
begin
  SqlPesquisa('select * from especie where ativo = ' + QuotedStr('T') + ' order by SEMENTENOME');
  UniDBGridsolicitacao.Columns[3].PickList.Clear;
  UniDBGridsolicitacao.Columns[3].PickList.Add('');
  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      UniDBGridsolicitacao.Columns[3].PickList.Add(dm_rc.sqlBuscas.FindField('SEMENTENOME').AsString);
      dm_rc.sqlBuscas.Next;
    end;
end;

procedure TfrmCADSOLICITACAO.carregalote(const idlote: integer);
begin
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      SqlPesquisa   ('select * from sementes where codigo = ' + IntToStr(idlote));
      TabelaProdutos('select * from produtos where codigo = ' + IntToStr(dm_rc.sqlBuscas.FindField('PRODUTO').AsInteger));

      tbdetalhes.Edit;
      tbdetalhes.FindField('LOTE').AsString           :=  dm_rc.sqlBuscas.FindField('LOTE').AsString;
      tbdetalhes.FindField('CULTIVAR').AsString       :=  dm_rc.sqlBuscas.FindField('CULTIVAR').AsString;
      tbdetalhes.FindField('CATEGORIA').AsString      :=  dm_rc.sqlBuscas.FindField('CATEGORIA').AsString;
      tbdetalhes.FindField('ESPECIE').AsString        :=  dm_rc.FDQryProdutos.FindField('SEMENTENOME').AsString;
      tbdetalhes.FindField('SAFRA').AsString          :=  dm_rc.sqlBuscas.FindField('SAFRAVALIDA').AsString;
      tbdetalhes.FindField('CODIGO_LOTE').AsInteger   :=  idlote;
    end;
end;

procedure TfrmCADSOLICITACAO.categoria;
begin
  SqlPesquisa('select * from categoria where ativo = ' + QuotedStr('T') + ' order by codigo');
  UniDBGridsolicitacao.Columns[6].PickList.Clear;
  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      UniDBGridsolicitacao.Columns[6].PickList.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);
      dm_rc.sqlBuscas.Next;
    end;
end;

procedure TfrmCADSOLICITACAO.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
  var Linha, Coluna : Integer;
begin
  inherited;
   Linha  := TStringGrid(dbgSearchCRUD).Row;
   Coluna := dbgSearchCRUD.CurrCol;

  if Column.FieldName = 'KEY' then
    begin
      if FDQryFiltroASSINADO.AsString = 'S' then
        begin
          G1.Caption    := 'Cancelar Assinatura';
          G1.ImageIndex := 33;
        end
      else
        begin
          G1.Caption    := 'Gerar Assinatura Automática';
          G1.ImageIndex := 128;
        end;

      UniPopupMenudetalhes.Popup(posicao_x-25,posicao_y, dbgSearchCRUD);
    end;

end;

procedure TfrmCADSOLICITACAO.dbgSearchCRUDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmCADSOLICITACAO.FDQryFiltroASSINADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroASSINADO.AsString = 'N' then
        Text := '<span class="badge badge-danger">NÃO</span>'
      else
      if FDQryFiltroASSINADO.AsString = 'S' then
        Text := '<span class="badge badge-success">SIM</span>'
      else
      if FDQryFiltroASSINADO.AsString = 'A' then
        Text := '<span class="badge badge-warning">Aguarde</span>';
    end;
end;

procedure TfrmCADSOLICITACAO.FDQryFiltroFINALIDADEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroFINALIDADE.AsString = 'BAS' then
        Text := '<span class="badge badge-info">'+FDQryFiltroFINALIDADE.AsString+'</span>'
      else
      if FDQryFiltroFINALIDADE.AsString = 'IR' then
        Text := '<span class="badge badge-dark">'+FDQryFiltroFINALIDADE.AsString+'</span>';
    end;
end;

procedure TfrmCADSOLICITACAO.FDQryFiltroKEYGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
      '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADSOLICITACAO.FDQryFiltroSTATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if StrAllTrim(FDQryFiltroSTATUS.AsString) = 'Andamento' then
        Text := '<span class="badge badge-warning">Andamento</span>'
      else
      if StrAllTrim(FDQryFiltroSTATUS.AsString) = 'Enviado' then
        Text := '<span class="badge badge-secundary">Enviado</span>'
      else
      if StrAllTrim(FDQryFiltroSTATUS.AsString) = 'Retornado' then
        Text := '<span class="badge badge-success">Retornado</span>';
    end;
end;

procedure TfrmCADSOLICITACAO.G1Click(Sender: TObject);
begin
  inherited;
  if FDQryFiltroASSINADO.AsString = 'N' then
    begin
      if VerificaExisteAssinatura(FDQryFiltroRESPONSAVEL.AsInteger) = False then
        begin
          dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'RESPONSAVEL TÉCNICO NÃO POSSUI ASSINATURA NO SISTEMA' , 'error' , false );
          Abort
        end
      else
        begin
          try
            mm.varC_caminhopdf := IMPRESSAO_solicitacao(mm.varI_Code_Company,
                                                        FDQryFiltro.FindField('CODIGO').AsInteger,
                                                        True,'R');

            executasql(' update solicitacao set assinado = ' + QuotedStr('S') + ',' +
                       ' datahora_assinado               = ' + QuotedStr(DateToStr(date) + ' ' + TimeToStr(time)) +
                       ' where codigo                    = ' + IntToStr(FDQryFiltroCODIGO.AsInteger));

            FDQryFiltro.Refresh;

            dm_rc.rc_ShowSweetAlert( 'OK', 'DOCUMENTO ASSINADO COM SUCESSO' , 'sucess' , false );
          except
            dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'NÃO CONSEGUI GERAR A ASSINATURA' , 'error' , false );
          end;
        end;
    end
  else
    if FDQryFiltroASSINADO.AsString = 'S' then
      begin
        DeleteFile(FDQryFiltroCAMINHO.AsString);
        executasql(' update solicitacao set assinado = ' + QuotedStr('N') + ',' +
                   ' caminho = null                    ' + ',' +
                   ' datahora_assinado = null          ' +
                   ' where codigo                    = ' + IntToStr(FDQryFiltroCODIGO.AsInteger));

        FDQryFiltro.Refresh;

        dm_rc.rc_ShowSweetAlert( 'OK', 'DOCUMENTO REMOVIDO COM SUCESSO!' , 'sucess' , false );
      end;
end;

procedure TfrmCADSOLICITACAO.I1Click(Sender: TObject);
begin
  inherited;

  dm_rc.rc_ShowYesNo( 'ESTA SOLICITAÇÃO É DO AMOSTRADOR?' );
  if mm.varB_Yes then
    begin
      mm.varC_caminhopdf :=  IMPRESSAO_solicitacao(mm.varI_Code_Company,
                                                   FDQryFiltro.FindField('CODIGO').AsInteger,False,'A');
    end
  else
    begin
      mm.varC_caminhopdf :=  IMPRESSAO_solicitacao(mm.varI_Code_Company,
                                                   FDQryFiltro.FindField('CODIGO').AsInteger,False,'R');

    end;

  unfImpressao.ShowModal();
end;

procedure TfrmCADSOLICITACAO.I2Click(Sender: TObject);
begin
  inherited;
  if FDQryFiltroNUMERO_TERMO.AsString <> '' then
    begin
      mm.varC_caminhopdf :=  IMPRESSAO_termocoleta(mm.varI_Code_Company,
                                                   FDQryFiltro.FindField('CODIGO').AsInteger);
      unfImpressao.ShowModal();
    end
  else
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'NÃO INCLUIDO NENHUM TERMO DE COLETA' , 'error' , false );
end;

procedure TfrmCADSOLICITACAO.L1Click(Sender: TObject);
begin
  inherited;
  mm.varI_Code_Documento_Controle := FDQryFiltroCODIGO.AsInteger;
  frmTERMOCOLETA.ShowModal();
  FDQryFiltro.Refresh;
end;

procedure TfrmCADSOLICITACAO.peneira;
begin
  SqlPesquisa('select * from peneira where ativo = ' + QuotedStr('T') + ' order by codigo');
  UniDBGridsolicitacao.Columns[8].PickList.Clear;
  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      UniDBGridsolicitacao.Columns[8].PickList.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);
      dm_rc.sqlBuscas.Next;
    end;
end;

procedure TfrmCADSOLICITACAO.S1Click(Sender: TObject);
begin
  inherited;
  if FDQryFiltroASSINADO.AsString = 'N' then
    begin
      if AssinaturaResponsavel(FDQryFiltroCODIGO.AsInteger,
                               FDQryFiltroRESPONSAVEL.AsInteger,
                               mm.varI_Code_Company,
                               'SOLICITACAO',
                               'INCLUI') = True then
      begin
        executasql(' update solicitacao set assinado = ' + QuotedStr('A') +
                   ' where codigo                    = ' + IntToStr(FDQryFiltroCODIGO.AsInteger));
        FDQryFiltro.Refresh;
        dm_rc.rc_ShowSweetAlert( 'OK', 'SOLICITAÇÃO ENVIADA AO RESPONSÁVEL TÉCNICO' , 'sucess' , false );
      end
      else
        begin
          dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'NÃO CONSEGUI ENVIAR A SOLICITAÇÃO DA ASSINATURA' , 'error' , false );
        end;
    end;
end;

procedure TfrmCADSOLICITACAO.tbdetalhesAfterPost(DataSet: TDataSet);
begin
  inherited;
  validasolicitacao();
end;

procedure TfrmCADSOLICITACAO.tbdetalhesbusca_cidadeGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Busca Cidade" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADSOLICITACAO.tbdetalhesbusca_loteGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Busca Lote" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADSOLICITACAO.tbdetalhesexcluiGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmCADSOLICITACAO.UniButtonDbEdit1ButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('LABORATORIO');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('LABORATORIO').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADSOLICITACAO.UniButtonDbEdit1Exit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if UniButtonDbEdit1.Text <> '' then
        FDQryCad.FindField('NOME_LABORATORIO').AsString := Acha_Item('LABORATORIO'  ,FDQryCad.FindField('LABORATORIO').AsString);
    end;
end;

procedure TfrmCADSOLICITACAO.UniButtonDbEdit2ButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('RESPONSAVEL');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('AMOSTRADOR').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADSOLICITACAO.UniButtonDbEdit3ButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('EMPRESAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('REMETENTE').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADSOLICITACAO.UniButtonDbEdit4ButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('RESPONSAVEL');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('RESPONSAVEL').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADSOLICITACAO.UniDBGridsolicitacaoCellClick(
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

      if Column.FieldName = 'busca_lote' then
        begin
          MM.varC_referencia_busca := 'BENEFICIAMENTO';
          frmpesquisalote.showmodal(
          procedure(Sender: TComponent; AResult: Integer)
           begin
             if AResult = mrOK then
             begin
               carregalote(StrToInt(MM.varC_codigo_busca_lote));
             end;
           end);
        end;

      if Column.FieldName = 'busca_cidade' then
        begin
          mm.Seta_Busca('CIDADES');
          UniFfrmPesquisa.ShowModal(
          procedure(Sender: TComponent; AResult: Integer)
           begin
             if AResult = mrOK then
             begin
               tbdetalhes.Edit;
               tbdetalhes.FindField('IBGE').AsString := MM.varC_codigo_busca;

               if SqlPesquisa('SELECT * FROM CIDADES WHERE CODIIBGE = ' + QuotedStr(MM.varC_codigo_busca)) then
                 begin
                   tbdetalhes.FindField('PROCEDENCIA').AsString := dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
                   tbdetalhes.FindField('ESTADO').AsString      := dm_rc.sqlBuscas.FindField('UF').AsString;
                 end;
             end;
           end);
        end;
    end;
end;

procedure TfrmCADSOLICITACAO.validasolicitacao;
begin
  if tbdetalhesESPECIE.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO ESPÉCIE' , 'error' , false );
      abort;
    end;
  if tbdetalhesCULTIVAR.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO CULTIVAR' , 'error' , false );
      abort;
    end;
  if tbdetalhesSAFRA.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO SAFRA' , 'error' , false );
      abort;
    end;
  if tbdetalhesLOTE.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO LOTE' , 'error' , false );
      abort;
    end;
  if tbdetalhesCATEGORIA.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO CATEGORIA' , 'error' , false );
      abort;
    end;
  if tbdetalhesREPRESENTATIVIDADE.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO REPRESENTATIVIDADE' , 'error' , false );
      abort;
    end;
  if tbdetalhesPROCEDENCIA.AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PREENCHER O CAMPO PROCEDÊNCIA' , 'error' , false );
      abort;
    end;
end;

initialization
  RegisterClass(TfrmCADSOLICITACAO);
end.
