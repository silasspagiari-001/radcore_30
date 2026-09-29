unit untCadPESSOAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniHTMLFrame,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniGUIClasses, uniEdit,
  uniLabel, uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniDBEdit, uniCheckBox, uniDBCheckBox, uniDBComboBox,
  uniDateTimePicker, uniDBDateTimePicker, UniButtonDbEdit, UniFSCombobox,
  Vcl.Menus, uniMainMenu, uniMemo, uniScreenMask;

type
  TfrmcadPESSOAS = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel5: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel4: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel7: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    rcBlock100: TUniContainerPanel;
    UniDBEditCPFCNPJ: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniButtonDbEditcodigocondicaomestre: TUniButtonDbEdit;
    UniLabel12: TUniLabel;
    rcBlock110: TUniContainerPanel;
    rcBlock120: TUniContainerPanel;
    UniDBEdit5: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel14: TUniLabel;
    rcBlock130: TUniContainerPanel;
    rcBlock140: TUniContainerPanel;
    rcBlock150: TUniContainerPanel;
    rcBlock160: TUniContainerPanel;
    UniButtonDbEditCEPP: TUniButtonDbEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    rcBlock170: TUniContainerPanel;
    rcBlock180: TUniContainerPanel;
    rcBlock200: TUniContainerPanel;
    UniDBEdit10: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniButtonDbEdit3: TUniButtonDbEdit;
    UniLabel22: TUniLabel;
    UniDBComboBoxestado: TUniDBComboBox;
    rcBlock210: TUniContainerPanel;
    rcBlock220: TUniContainerPanel;
    rcBlock230: TUniContainerPanel;
    rcBlock240: TUniContainerPanel;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniLabel23: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel25: TUniLabel;
    UniLabel26: TUniLabel;
    rcBlock250: TUniContainerPanel;
    rcBlock260: TUniContainerPanel;
    UniDBEdit14: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel28: TUniLabel;
    UniDBComboBoxregiao: TUniDBComboBox;
    UniTabSheetdadosdemais: TUniTabSheet;
    rcBlock270: TUniContainerPanel;
    UniLabel29: TUniLabel;
    rcBlock280: TUniContainerPanel;
    rcBlock290: TUniContainerPanel;
    rcBlock300: TUniContainerPanel;
    rcBlock310: TUniContainerPanel;
    UniButtonDbEditCEPENTREGA: TUniButtonDbEdit;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    UniDBEdit18: TUniDBEdit;
    UniLabel30: TUniLabel;
    UniLabel31: TUniLabel;
    UniLabel32: TUniLabel;
    UniLabel33: TUniLabel;
    rcBlock320: TUniContainerPanel;
    rcBlock330: TUniContainerPanel;
    UniDBEdit19: TUniDBEdit;
    UniLabel34: TUniLabel;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel35: TUniLabel;
    rcBlock340: TUniContainerPanel;
    UniLabel36: TUniLabel;
    rcBlock350: TUniContainerPanel;
    rcBlock360: TUniContainerPanel;
    rcBlock370: TUniContainerPanel;
    rcBlock380: TUniContainerPanel;
    UniButtonDbEditcepfaturamento: TUniButtonDbEdit;
    UniLabel37: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniLabel38: TUniLabel;
    UniDBEdit21: TUniDBEdit;
    UniLabel39: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniLabel40: TUniLabel;
    rcBlock390: TUniContainerPanel;
    rcBlock400: TUniContainerPanel;
    UniDBEdit23: TUniDBEdit;
    UniLabel41: TUniLabel;
    UniDBComboBox4: TUniDBComboBox;
    UniLabel42: TUniLabel;
    UniPopupMenudetalhes: TUniPopupMenu;
    R1: TUniMenuItem;
    UniButtonDbEdit1: TUniButtonDbEdit;
    UniLabel21: TUniLabel;
    Ubtncnpj: TUniButton;
    UniScreenMask1: TUniScreenMask;
    UniDBEdit24: TUniDBEdit;
    UniLabel43: TUniLabel;
    UniLabel44: TUniLabel;
    UniDBComboBox5: TUniDBComboBox;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroSTATUS: TStringField;
    FDQryFiltroCPFCNPJ: TStringField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroCIDADE: TStringField;
    FDQryFiltroESTADO: TStringField;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel45: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniScreenMask2: TUniScreenMask;
    procedure dbgSearchCRUDDblClick(Sender: TObject);
    procedure btnNewRegClick(Sender: TObject);
    procedure UniButtonDbEditCEPPButtonClick(Sender: TObject);
    procedure UniButtonDbEditCEPPExit(Sender: TObject);
    procedure UniButtonDbEditCEPENTREGAExit(Sender: TObject);
    procedure UniButtonDbEditCEPENTREGAButtonClick(Sender: TObject);
    procedure UniButtonDbEditcepfaturamentoButtonClick(Sender: TObject);
    procedure UniButtonDbEditcepfaturamentoExit(Sender: TObject);
    procedure UniButtonDbEditcodigocondicaomestreButtonClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure UniButtonDbEdit3ButtonClick(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure UniButtonDbEdit1ButtonClick(Sender: TObject);
    procedure UbtncnpjClick(Sender: TObject);
    procedure UniButtonDbEdit1Exit(Sender: TObject);
    procedure UniDBEdit3Exit(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure FDQryFiltroSTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBEditCPFCNPJExit(Sender: TObject);
    procedure btnlistagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure carregaregiao();
  end;

var
  frmcadPESSOAS: TfrmcadPESSOAS;

implementation

{$R *.dfm}

uses untDM_RC, mkm_procedures, MainModule, untFrmPesquisa, untFrmTELAGENERICA,
  mkm_funcoes, untFrmCONSULTACNPJ, unReportImpressao, mkm_impressao;
{ TfrmcadPESSOAS }

procedure TfrmcadPESSOAS.btnDeleteRegClick(Sender: TObject);
begin
  if VerificafinanceiroPessoa(FDQryCad.FindField('codigo').AsInteger) = True then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'NÃO POSSO DELETAR, EXISTE MOVIMENTO FINANCEIRO COM ESTA PESSOA - DESMARQUE OPÇÃO - "ATIVO"' , 'error' , false );
      Abort
    end;
  inherited;
end;

procedure TfrmcadPESSOAS.btnlistagemClick(Sender: TObject);
begin
  inherited;
  mm.varC_caminhopdf :=  IMPRESSAO_LISTAGEMPESSOAS(FDQryFiltro);
  unfImpressao.ShowModal();
end;

procedure TfrmcadPESSOAS.btnNewRegClick(Sender: TObject);
begin
  inherited;
  carregaregiao();
  UniDBComboBox5.ItemIndex := 1;
end;

procedure TfrmcadPESSOAS.btnOptionsClick(Sender: TObject);
begin
  UniPopupMenudetalhes.PopupBy( TUniButton( sender ) );
end;

procedure TfrmcadPESSOAS.btnSaveRegClick(Sender: TObject);
begin
  if FDQryCad.FindField('SITUACAO').AsString = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', '"INFORMAR A SITUAÇÃO DO CLIENTE"' , 'error' , false );
      abort
    end;

  inherited;
end;

procedure TfrmcadPESSOAS.carregaregiao;
begin
  UniDBComboBoxregiao.Clear;
  Tabelaregiao('SELECT descricao FROM regiao WHERE ATIVO = ' + QuotedStr('T') + ' ORDER BY codigo');
  dm_rc.fdqryregiao.first;
  while not dm_rc.fdqryregiao.Eof do
    begin
      UniDBComboBoxregiao.Items.Add(dm_rc.fdqryregiao.FindField('DESCRICAO').AsString);
      dm_rc.fdqryregiao.Next;
    end;
end;

procedure TfrmcadPESSOAS.dbgSearchCRUDDblClick(Sender: TObject);
begin
  carregaregiao();
  inherited;
end;

procedure TfrmcadPESSOAS.FDQryFiltroSTATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroSTATUS.AsString = 'Livre' then
        Text := '<span class="badge badge-success">'+FDQryFiltroSTATUS.AsString+'</span>'
      else
      if FDQryFiltroSTATUS.AsString = 'Block' then
        Text := '<span class="badge badge-danger">'+FDQryFiltroSTATUS.AsString+'</span>'
      else
      if FDQryFiltroSTATUS.AsString = 'Analise' then
        Text := '<span class="badge badge-warning">'+FDQryFiltroSTATUS.AsString+'</span>'
      else
      if FDQryFiltroSTATUS.AsString = 'Somente A Vista' then
        Text := '<span class="badge badge-info">'+FDQryFiltroSTATUS.AsString+'</span>'
      else
        Text := '<span class="badge badge-primary">Aguarde</span>';
    end;
end;

procedure TfrmcadPESSOAS.R1Click(Sender: TObject);
begin
  mm.varI_Code_Pessoa_historico := FDQryFiltro.FindField('CODIGO').AsInteger;
  mm.VarC_Atelagenerica         := 'HISTORICOFATURAMENTO';
  frmTELAGENERICA.ShowModal();
end;

procedure TfrmcadPESSOAS.UbtncnpjClick(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      mm.varCNPJ_NOME        := '';
      mm.varCNPJ_FANTASIA    := '';
      mm.varCNPJ_CEP         := '';
      mm.varCNPJ_ENDERECO    := '';
      mm.varCNPJ_NUMERO      := '';
      mm.varCNPJ_BAIRRO      := '';
      mm.varCNPJ_COMPLEMENTO := '';
      mm.varCNPJ_CIDADE      := '';
      mm.varCNPJ_IBGE        := '';
      mm.varCNPJ_UF          := '';
      mm.varCNPJ_EMAIL       := '';
      mm.varCNPJ_CNPJ        := '';

      frmCONSULTACNPJ.ShowModal;

      if mm.varCNPJ_SN = 'S' then
        begin
          FDQryCad.FindField('NOME').AsString        := mm.varCNPJ_NOME;
          FDQryCad.FindField('FANTASIA').AsString    := mm.varCNPJ_FANTASIA;
          FDQryCad.FindField('CEP').AsString         := mm.varCNPJ_CEP;
          FDQryCad.FindField('ENDERECO').AsString    := mm.varCNPJ_ENDERECO;
          FDQryCad.FindField('NUMERO').AsString      := mm.varCNPJ_NUMERO;
          FDQryCad.FindField('BAIRRO').AsString      := mm.varCNPJ_BAIRRO;
          FDQryCad.FindField('COMPLEMENTO').AsString := mm.varCNPJ_COMPLEMENTO;
          FDQryCad.FindField('CIDADE').AsString      := mm.varCNPJ_CIDADE;
          FDQryCad.FindField('IBGE').AsString        := mm.varCNPJ_IBGE;
          FDQryCad.FindField('ESTADO').AsString      := mm.varCNPJ_UF;
          FDQryCad.FindField('EMAIL').AsString       := mm.varCNPJ_EMAIL;
          FDQryCad.FindField('CPFCNPJ').AsString     := mm.varCNPJ_CNPJ;
        end;
      mm.varCNPJ_SN := 'N';
    end;
end;

procedure TfrmcadPESSOAS.UniButtonDbEdit1ButtonClick(Sender: TObject);
begin
  mm.Seta_Busca('CIDADES');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('IBGEENTREGA').AsString := MM.varC_codigo_busca;
       UniButtonDbEdit1.SetFocus;
     end;
   end);
end;

procedure TfrmcadPESSOAS.UniButtonDbEdit1Exit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if FDQryCad.FindField('IBGEENTREGA').AsString <> '' then
        begin
          if FDQryCad.FindField('INSCRICAOENTREGA').AsString = '' then
            begin
              if FDQryCad.FindField('IBGEENTREGA').AsString <> FDQryCad.FindField('IBGE').AsString then
                begin
                  dm_rc.rc_ShowSweetAlert( 'ALERTA', 'SE A ENTEGA FOR DIFERENTE DO FATURAMENTO, VERIFICAR A INSCRIÇÃO DO CLIENTE NO ESTADO DE DESTINO' , 'error' , false );
                end;
            end;
        end;
    end;
end;

procedure TfrmcadPESSOAS.UniButtonDbEdit3ButtonClick(Sender: TObject);
begin
  mm.Seta_Busca('CIDADES');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('IBGE').AsString := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmcadPESSOAS.UniButtonDbEditCEPENTREGAButtonClick(Sender: TObject);
begin
  mm.Seta_Busca('CEP');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('CEPENTREGA').AsString := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmcadPESSOAS.UniButtonDbEditCEPENTREGAExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditCEPENTREGA.Text <> '') and (UniButtonDbEditCEPENTREGA.Text <> '0') then
        begin
          SqlPesquisa('select DESCRICAO, UF, CODIIBGE from cidades where cep = ' + QuotedStr(FDQryCad.FindField('CEPENTREGA').AsString));
            FDQryCad.FindField('CIDADEENTREGA').AsString     := dm_rc.sqlBuscas.Findfield('DESCRICAO').asstring;
            FDQryCad.FindField('ESTADOENTREGA').AsString     := dm_rc.sqlBuscas.Findfield('UF').asstring;
            FDQryCad.FindField('IBGEENTREGA').AsString       := dm_rc.sqlBuscas.Findfield('CODIIBGE').asstring;
        end;
    end;
end;

procedure TfrmcadPESSOAS.UniButtonDbEditcepfaturamentoButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('CEP');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('CEPCOBRANCA').AsString := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmcadPESSOAS.UniButtonDbEditcepfaturamentoExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditcepfaturamento.Text <> '') and (UniButtonDbEditcepfaturamento.Text <> '0') then
        begin
          SqlPesquisa('select DESCRICAO, UF from cidades where cep = ' + QuotedStr(FDQryCad.FindField('CEPCOBRANCA').AsString));
            FDQryCad.FindField('CIDADECOBRANCA').AsString     := dm_rc.sqlBuscas.Findfield('DESCRICAO').asstring;
            FDQryCad.FindField('ESTADOCOBRANCA').AsString     := dm_rc.sqlBuscas.Findfield('UF').asstring;
        end;
    end;
end;

procedure TfrmcadPESSOAS.UniButtonDbEditCEPPButtonClick(Sender: TObject);
begin
  mm.Seta_Busca('CEP');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('CEP').AsString := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmcadPESSOAS.UniButtonDbEditCEPPExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin

      if Pos('-',UniButtonDbEditCEPP.Text) <> 0 then
        begin
          dm_rc.rc_ShowSweetAlert( 'ALERTA', 'CEP NÃO SERÁ VALIDO' , 'error' , false );
          Abort;
        end;

      if (UniButtonDbEditCEPP.Text <> '') and (UniButtonDbEditCEPP.Text <> '0') then
        begin
          SqlPesquisa('select DESCRICAO, UF, CODIIBGE from cidades where cep = ' + QuotedStr(FDQryCad.FindField('CEP').AsString));
            FDQryCad.FindField('CIDADE').AsString     := dm_rc.sqlBuscas.Findfield('DESCRICAO').asstring;
            FDQryCad.FindField('ESTADO').AsString     := dm_rc.sqlBuscas.Findfield('UF').asstring;
            FDQryCad.FindField('IBGE').AsString       := dm_rc.sqlBuscas.Findfield('CODIIBGE').asstring;
        end;
    end;
end;

procedure TfrmcadPESSOAS.UniButtonDbEditcodigocondicaomestreButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('FUNCIONARIO').AsString := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmcadPESSOAS.UniDBEdit3Exit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (FDQryCad.FindField('PRODUTOR').AsString <> '') and
         (FDQryCad.FindField('TIPO').AsString     <> 'Produtor Rural') then
        begin
          FDQryCad.FindField('TIPO').AsString := 'Produtor Rural';
          dm_rc.rc_ShowSweetAlert( 'OK', 'Mudei o Cliente para PRODUTOR RURAL' , 'warning' , false );
        end;
    end;
end;

procedure TfrmcadPESSOAS.UniDBEditCPFCNPJExit(Sender: TObject);
begin
  inherited;
  case FDQryCad.State of dsInsert, DsEdit:
      begin
        if UniDBEditCPFCNPJ.Text <> ''  then
          begin
            if not ValidaCPFCNP(StrAllTrim(UniDBEditCPFCNPJ.text)) then
              begin
                dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'CPF/CNPJ INVALIDO!' , 'warning' , false );
                Abort;
              end;
          end;

        if Length(StrAllTrim(UniDBEditCPFCNPJ.text)) = 14 then
          FDQryCad.FindField('CPFCNPJ').EditMask := '99\.999\.999\/9999\-99;0;_'
        else
          if Length(StrAllTrim(UniDBEditCPFCNPJ.text)) = 11 then
            FDQryCad.FindField('CPFCNPJ').EditMask := '999\.999\.999\-99;0;_';
        FDQryCad.FindField('CPFCNPJ').AsString := UniDBEditCPFCNPJ.text;
        if SqlPesquisa('SELECT * FROM PESSOAS WHERE CPFCNPJ = ' + QuotedStr(UniDBEditCPFCNPJ.Text)) then
          begin
            dm_rc.rc_ShowYesNo( 'CNPJ/CPF Ja Cadastrado! Deseja Continuar?' );
            if mm.varB_Yes then
                begin
                  UniDBEditCPFCNPJ.SelectAll;
                  Abort;
                end;
          end;
      end;
  end;
end;

initialization
  RegisterClass(TfrmcadPESSOAS);
end.
