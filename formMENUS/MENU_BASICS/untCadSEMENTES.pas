unit untCadSEMENTES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniHTMLFrame,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniGUIClasses, uniEdit,
  uniLabel, uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniCheckBox, uniDBCheckBox, uniDBEdit, UniButtonDbEdit,
  uniDBComboBox, uniDateTimePicker, uniDBDateTimePicker, Vcl.Menus, uniMainMenu,
  uniMemo, uniDBMemo, uniScreenMask;

type
  TfrmCADSEMENTES = class(TfrmCRUDPROPRIO)
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
    UniDBCheckBox2: TUniDBCheckBox;
    UniButtonDbEditcodPRODUTO: TUniButtonDbEdit;
    UniLabel10: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel11: TUniLabel;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    rcBlock100: TUniContainerPanel;
    UniDBComboBoxcultivar: TUniDBComboBox;
    UniLabel6: TUniLabel;
    UniDBComboBoxcategoria: TUniDBComboBox;
    UniLabel7: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel8: TUniLabel;
    UniButtonDbEdit1: TUniButtonDbEdit;
    UniLabel9: TUniLabel;
    UniButtonDbEdit2: TUniButtonDbEdit;
    UniLabel12: TUniLabel;
    rcBlock110: TUniContainerPanel;
    rcBlock120: TUniContainerPanel;
    UniButtonDbEditlaboratorio: TUniButtonDbEdit;
    UniLabel13: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel14: TUniLabel;
    rcBlock130: TUniContainerPanel;
    UniLabel18: TUniLabel;
    rcBlock140: TUniContainerPanel;
    rcBlock150: TUniContainerPanel;
    rcBlock160: TUniContainerPanel;
    rcBlock170: TUniContainerPanel;
    UniDBEdit3: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel17: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel19: TUniLabel;
    rcBlock180: TUniContainerPanel;
    rcBlock190: TUniContainerPanel;
    rcBlock200: TUniContainerPanel;
    UniDBEdit7: TUniDBEdit;
    UniLabel20: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel21: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel22: TUniLabel;
    rcBlock210: TUniContainerPanel;
    rcBlock220: TUniContainerPanel;
    rcBlock230: TUniContainerPanel;
    rcBlock240: TUniContainerPanel;
    UniDBFormattedNumberEditpureza: TUniDBFormattedNumberEdit;
    UniLabel23: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniLabel24: TUniLabel;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniLabel25: TUniLabel;
    UniDBComboBoxpeneira: TUniDBComboBox;
    UniLabel26: TUniLabel;
    FDQryFiltroopcoes: TStringField;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroCATEGORIA: TStringField;
    FDQryFiltroLOTE: TStringField;
    FDQryFiltroBOLETIM: TStringField;
    FDQryFiltroTERMO: TStringField;
    FDQryFiltroCULTIVAR: TStringField;
    FDQryFiltroTIPO: TStringField;
    UniPopupMenuopcoes: TUniPopupMenu;
    I1: TUniMenuItem;
    T1: TUniMenuItem;
    H1: TUniMenuItem;
    FDQryFiltroPRODUTO: TIntegerField;
    rcBlock250: TUniContainerPanel;
    rcBlock260: TUniContainerPanel;
    rcBlock270: TUniContainerPanel;
    UniLabel27: TUniLabel;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEditgerminacao: TUniDBFormattedNumberEdit;
    UniLabel28: TUniLabel;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniLabel29: TUniLabel;
    rcBlock280: TUniContainerPanel;
    rcBlock290: TUniContainerPanel;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    A1: TUniMenuItem;
    N1: TUniMenuItem;
    FDQryFiltroDISPONIVEL: TFMTBCDField;
    rcBlock300: TUniContainerPanel;
    UniBitBtn6: TUniBitBtn;
    UniLabel32: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    N3: TUniMenuItem;
    I2: TUniMenuItem;
    N4: TUniMenuItem;
    FDQryFiltroOP_TERMO: TIntegerField;
    t2: TUniMenuItem;
    N2: TUniMenuItem;
    Ubtngeratseqtermo: TUniButton;
    I3: TUniMenuItem;
    N6: TUniMenuItem;
    UniLabel33: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    R1: TUniMenuItem;
    N5: TUniMenuItem;
    procedure FDQryFiltroTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQryFiltroopcoesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnNewRegClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure dbgSearchCRUDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UniButtonDbEditcodPRODUTOButtonClick(Sender: TObject);
    procedure UniButtonDbEditcodPRODUTOExit(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure UniButtonDbEdit1ButtonClick(Sender: TObject);
    procedure UniButtonDbEdit2ButtonClick(Sender: TObject);
    procedure UniButtonDbEditlaboratorioButtonClick(Sender: TObject);
    procedure UniButtonDbEditlaboratorioExit(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure I2Click(Sender: TObject);
    procedure t2Click(Sender: TObject);
    procedure UbtngeratseqtermoClick(Sender: TObject);
    procedure I3Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure UniDBFormattedNumberEditgerminacaoExit(Sender: TObject);
    procedure UniDBFormattedNumberEdit5Exit(Sender: TObject);
  private
    { Private declarations }
  posicao_x, posicao_y    : Integer;
  ntermo                  : string;
  public
    { Public declarations }
  procedure carregacultivar();
  procedure carregacategoria();
  procedure carregapeneira();
  procedure PromptCallBack(Sender: TComponent; AResult:Integer; AText: string);
  end;

var
  frmCADSEMENTES: TfrmCADSEMENTES;

implementation

{$R *.dfm}

uses untFrmProtocoloopcoes, mkm_procedures, untDM_RC, Vcl.Grids, MainModule,
  untFrmPesquisa, untFrmTELAGENERICA, mkm_impressao, unReportImpressao,
  untFrmMANUTENCAOLOTE, untFrmTERMOADITIVO, mkm_funcoes, mkm_func_web,
  untFrmSEMENTEBAS;
procedure TfrmCADSEMENTES.A1Click(Sender: TObject);
var
  M_MARCA  : TBookMark;
begin
  inherited;
  mm.varI_Code_Codigo_Semente := FDQryFiltroCODIGO.AsInteger;
  frmMANUTENCAOLOTE.ShowModal();

  FDQryFiltro.Refresh;
end;

procedure TfrmCADSEMENTES.btnEditRegClick(Sender: TObject);
begin
  carregacultivar();
  carregacategoria();
  carregapeneira();
  ntermo := '';
  inherited;
end;

procedure TfrmCADSEMENTES.btnNewRegClick(Sender: TObject);
begin
  carregacultivar();
  carregacategoria();
  carregapeneira();
  ntermo := '';
  inherited;
end;

procedure TfrmCADSEMENTES.btnSaveRegClick(Sender: TObject);
begin
  FDQryCad.FindField('VENCIMENTO').AsDateTime :=   FDQryCad.FindField('VALIDADE').AsDateTime;
  inherited;
end;

procedure TfrmCADSEMENTES.carregacategoria;
begin
  UniDBComboBoxcategoria.Clear;
  TabelaCategoria('SELECT descricao FROM categoria WHERE ATIVO = ' + QuotedStr('T') + ' ORDER BY codigo');
  dm_rc.FDQryCategoria.first;
  while not dm_rc.FDQryCategoria.Eof do
    begin
      UniDBComboBoxcategoria.Items.Add(dm_rc.FDQryCategoria.FindField('DESCRICAO').AsString);
      dm_rc.FDQryCategoria.Next;
    end;
end;

procedure TfrmCADSEMENTES.carregacultivar;
begin
  UniDBComboBoxcultivar.Clear;
  TabelaCultivar('SELECT cultivar FROM CULTIVAR WHERE ATIVO = ' + QuotedStr('T') + ' ORDER BY CULTIVAR');
  dm_rc.FDQryCultivar.first;
  while not dm_rc.FDQryCultivar.Eof do
    begin
      UniDBComboBoxcultivar.Items.Add(dm_rc.FDQryCultivar.FindField('CULTIVAR').AsString);
      dm_rc.FDQryCultivar.Next;
    end;
end;

procedure TfrmCADSEMENTES.carregapeneira;
begin
  UniDBComboBoxpeneira.Clear;
  Tabelapeneira('SELECT descricao FROM peneira WHERE ATIVO = ' + QuotedStr('T') + ' ORDER BY codigo');
  dm_rc.fdqrypeneira.first;
  while not dm_rc.fdqrypeneira.Eof do
    begin
      UniDBComboBoxpeneira.Items.Add(dm_rc.fdqrypeneira.FindField('DESCRICAO').AsString);
      dm_rc.fdqrypeneira.Next;
    end;
end;

procedure TfrmCADSEMENTES.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
  var Linha, Coluna : Integer;
begin
  inherited;
   Linha  := TStringGrid(dbgSearchCRUD).Row;
   Coluna := dbgSearchCRUD.CurrCol;

  if Column.FieldName = 'opcoes' then
    begin
      UniPopupMenuopcoes.Popup(posicao_x-25,posicao_y, dbgSearchCRUD);
    end;

end;

procedure TfrmCADSEMENTES.dbgSearchCRUDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmCADSEMENTES.FDQryFiltroopcoesGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
      '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADSEMENTES.FDQryFiltroTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroTIPO.AsString = 'Saida' then
        Text := '<span class="badge badge-success">Saida</span>'
      else
      if FDQryFiltroTIPO.AsString = 'Aguarde' then
        Text := '<span class="badge badge-warning">Aguarde</span>'
      else
      if FDQryFiltroTIPO.AsString =  'Entrada'  then
        Text := '<span class="badge badge-danger">Entrada</span>'
      else
      if FDQryFiltroTIPO.AsString =  'Fiscal'  then
        Text := '<span class="badge badge-info">Fiscal</span>'
      else
      if FDQryFiltroTIPO.AsString =  'Estoque'  then
        Text := '<span class="badge badge-secondary">Fiscal</span>';
    end;
end;

procedure TfrmCADSEMENTES.H1Click(Sender: TObject);
begin
  mm.varI_Code_Lote_Lotesemente    := FDQryFiltro.FindField('LOTE').AsString;
  mm.varI_Code_Lote_Boletimsemente := FDQryFiltro.FindField('BOLETIM').AsString;
  mm.varI_Code_Lote_Produto        := FDQryFiltro.FindField('PRODUTO').AsInteger;
  mm.VarC_Atelagenerica            := 'HISTORICOVENDALOTE';
  frmTELAGENERICA.ShowModal();
end;

procedure TfrmCADSEMENTES.I2Click(Sender: TObject);
begin
  inherited;
  if FDQryFiltro.FindField('OP_TERMO').AsInteger = 1 then
    begin
      dm_rc.rc_ShowYesNo( 'POSSO IMPRIMIR COM ASSINATURA?' );
      if mm.varB_Yes then
        begin
          try
            mm.varC_caminhopdf :=  SEMENTES_Termo(mm.varI_Code_Company,
                                                  FDQryFiltro.FindField('CODIGO').AsInteger,
                                                  1,'S',FDQryFiltro.FindField('TERMO').AsString);

          except
            on e: exception do
            begin
              gera_log(e.message);
              dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', e.message , 'error' , false );
            end;
          end;
        end
      else
        begin
          try
            mm.varC_caminhopdf :=  SEMENTES_Termo(mm.varI_Code_Company,
                                                  FDQryFiltro.FindField('CODIGO').AsInteger,
                                                  0,'S',FDQryFiltro.FindField('TERMO').AsString);
          except
            on e: exception do
            begin
              gera_log(e.message);
              dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', e.message , 'error' , false );
            end;
          end;
        end;

      unfImpressao.ShowModal();
    end
  else
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'OPÇÃO DE TERMO ADITIVO NÃO MARCADO' , 'error' , false );
end;

procedure TfrmCADSEMENTES.I3Click(Sender: TObject);
begin
  inherited;
  mm.varI_Code_Codigo_Semente := FDQryFiltroCODIGO.AsInteger;
  frmSEMENTEBAS.ShowModal();
  FDQryFiltro.Refresh;
end;

procedure TfrmCADSEMENTES.L1Click(Sender: TObject);
begin
  inherited;
  mm.varI_Code_Codigo_Semente := FDQryFiltroCODIGO.AsInteger;
  frmTEMOADITIVO.ShowModal();
end;

procedure TfrmCADSEMENTES.PromptCallBack(Sender: TComponent; AResult: Integer;
  AText: string);
begin
  if AResult = mrOK then
  begin
    FDQryCad.FindField('TERMO').AsString     := StrZeroS(AText,5) + '/' + FormatDateTime('yyyy', FDQryCad.Findfield('RECEBIDA').AsDateTime);
    FDQryCad.FindField('SEQTERMO').AsString  := AText;
  end;
end;

procedure TfrmCADSEMENTES.R1Click(Sender: TObject);
begin
  inherited;
  try
    Calcula_Lote(mm.varI_Code_Company,
                 FDQryFiltro.FindField('PRODUTO').AsInteger,
                 FDQryFiltro.FindField('LOTE').AsString    ,
                 FDQryFiltro.FindField('BOLETIM').AsString ,
                 FDQryFiltro.FindField('TERMO').AsString   ,
                 mm.M_TIPOPESO);

    FDQryFiltro.Refresh;
    dm_rc.rc_ShowSweetAlert( 'OK', 'RECALCULADO COM SUCESSO!' , 'sucess' , false );
  except
    on e: exception do
    begin
      gera_log(e.message);
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', e.message , 'error' , false );
    end;
  end;
end;

procedure TfrmCADSEMENTES.T1Click(Sender: TObject);
begin
  dm_rc.rc_ShowYesNo( 'POSSO IMPRIMIR COM ASSINATURA?' );
  if mm.varB_Yes then
    begin
      try
        mm.varC_caminhopdf :=  SEMENTES_Termo(mm.varI_Code_Company,
                                              FDQryFiltro.FindField('CODIGO').AsInteger,
                                              1,'N',FDQryFiltro.FindField('TERMO').AsString);

      except
        on e: exception do
        begin
          gera_log(e.message);
          dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', e.message , 'error' , false );
        end;
      end;
    end
  else
    begin
      try
        mm.varC_caminhopdf :=  SEMENTES_Termo(mm.varI_Code_Company,
                                              FDQryFiltro.FindField('CODIGO').AsInteger,
                                              0,'N',FDQryFiltro.FindField('TERMO').AsString);
      except
        on e: exception do
        begin
          gera_log(e.message);
          dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', e.message , 'error' , false );
        end;
      end;
    end;

  unfImpressao.ShowModal();
end;

procedure TfrmCADSEMENTES.t2Click(Sender: TObject);
begin
  inherited;
  mm.varI_Code_Codigo_Semente := FDQryFiltroCODIGO.AsInteger;
  frmTEMOADITIVO.ShowModal();

  FDQryFiltro.Refresh;
end;

procedure TfrmCADSEMENTES.UbtngeratseqtermoClick(Sender: TObject);
begin
  inherited;
  dm_rc.rc_ShowYesNo( 'POSSO GERAR O Nº DO TERMO SEQUENCIAL?' );
  if mm.varB_Yes then
    begin
      ntermo  :=  Numero_Termo(MM.varI_Code_Company, FormatDateTime('yyyy', FDQryCad.Findfield('RECEBIDA').AsDateTime));

      Prompt('Sequência do termo esta CORRETO? ',ntermo ,mtInformation, mbOKCancel, PromptCallBack);
    end;
end;

procedure TfrmCADSEMENTES.UniBitBtn6Click(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      FDQryCad.Edit;
      FDQryCad.FindField('OBSERVACOES').AsString := 'A Amostra de sementes entregue ao Laboatório apresenta-se incrustada.';
    end;
end;

procedure TfrmCADSEMENTES.UniButtonDbEdit1ButtonClick(Sender: TObject);
begin
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

procedure TfrmCADSEMENTES.UniButtonDbEdit2ButtonClick(Sender: TObject);
begin
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

procedure TfrmCADSEMENTES.UniButtonDbEditlaboratorioButtonClick(Sender: TObject);
begin
  mm.Seta_Busca('LABORATORIO');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('LABORATORIO').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);end;

procedure TfrmCADSEMENTES.UniButtonDbEditlaboratorioExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditlaboratorio.Text <> '') and (UniButtonDbEditlaboratorio.Text <> '0') then
        begin
          FDQryCad.FindField('NOMELABORATORIO').AsString    := Acha_Item('LABORATORIO',UniButtonDbEditlaboratorio.Text);
        end;
    end;
end;

procedure TfrmCADSEMENTES.UniDBFormattedNumberEdit5Exit(Sender: TObject);
var
  cv : Real;
begin
  if (UniDBFormattedNumberEditgerminacao.Value > 0) and
     (UniDBFormattedNumberEditpureza.Value     > 0) then
    begin
      cv := 0;
      cv := (UniDBFormattedNumberEditgerminacao.Value * UniDBFormattedNumberEditpureza.Value) / 100;
      FDQryCad.FindField('VALORCULTURAL').AsFloat := cv;
    end;
end;

procedure TfrmCADSEMENTES.UniDBFormattedNumberEditgerminacaoExit(Sender: TObject);
var
  cv : Real;
begin
  if (UniDBFormattedNumberEditgerminacao.Value > 0) and
     (UniDBFormattedNumberEditpureza.Value     > 0) then
    begin
      cv := 0;
      cv := (UniDBFormattedNumberEditgerminacao.Value * UniDBFormattedNumberEditpureza.Value) / 100;
      FDQryCad.FindField('VALORCULTURAL').AsFloat := cv;
    end;
end;

procedure TfrmCADSEMENTES.UniButtonDbEditcodPRODUTOButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('PRODUTO').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADSEMENTES.UniButtonDbEditcodPRODUTOExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditcodPRODUTO.Text <> '') and (UniButtonDbEditcodPRODUTO.Text <> '0') then
        begin
          SqlPesquisa('select sementenome, cultivar from produtos where codigo = ' + IntToStr(FDQryCad.FindField('PRODUTO').AsInteger));
            FDQryCad.FindField('NOME').AsString        := dm_rc.sqlBuscas.FindField('SEMENTENOME').AsString;
            FDQryCad.FindField('CULTIVAR').AsString    := dm_rc.sqlBuscas.FindField('CULTIVAR').AsString;
        end;
    end;
end;

procedure TfrmCADSEMENTES.UniFrameCreate(Sender: TObject);
begin
  carregacultivar();
  carregacategoria();
  carregapeneira();
  inherited;
end;

initialization
  RegisterClass(TfrmCADSEMENTES);
end.
