unit untFrmBaixaTitulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniBasicGrid, uniDBGrid, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, uniLabel, uniDateTimePicker, uniCheckBox,
  uniEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.Async,
  FireDAC.DApt;

type
  TfrmBAIXATITULOS = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    btnLkpSearch: TUniBitBtn;
    edSearchCRUDDtIni: TUniDateTimePicker;
    UniLabelv1: TUniLabel;
    UniFormattedNumberEdittotal: TUniFormattedNumberEdit;
    UniLabel1: TUniLabel;
    UniCheckBoxgerabanco: TUniCheckBox;
    rcBlock50: TUniContainerPanel;
    UniDBGridbaixas: TUniDBGrid;
    TB_MEMBAI: TFDMemTable;
    TB_MEMBAIBAITDC: TIntegerField;
    TB_MEMBAIBAINDC: TFloatField;
    TB_MEMBAIBAISDC: TStringField;
    TB_MEMBAIBAIODC: TIntegerField;
    TB_MEMBAIBAICLF: TIntegerField;
    TB_MEMBAIBAINOM: TStringField;
    TB_MEMBAIBAIAPL: TIntegerField;
    TB_MEMBAIBAIPOR: TIntegerField;
    TB_MEMBAIBAIBAN: TStringField;
    TB_MEMBAIBAIDTE: TDateField;
    TB_MEMBAIBAIVCT: TDateField;
    TB_MEMBAIBAIVLA: TFloatField;
    TB_MEMBAIBAICOM: TFloatField;
    TB_MEMBAIBAICAR: TIntegerField;
    TB_MEMBAIBAIVEN: TIntegerField;
    TB_MEMBAIBAIPED: TStringField;
    TB_MEMBAIBAIOB1: TStringField;
    TB_MEMBAIBAIPER: TFloatField;
    TB_MEMBAIBAICOMP: TDateField;
    TB_MEMBAIBAIJUR: TFloatField;
    TB_MEMBAIBAITAX: TFloatField;
    TB_MEMBAIBAIDSC: TFloatField;
    TB_MEMBAIBAIVLP: TFloatField;
    TB_MEMBAIBAIPAR: TFloatField;
    TB_MEMBAIBAICONT: TIntegerField;
    TB_MEMBAIBAIPRZ: TIntegerField;
    TB_MEMBAIBAIPLA: TStringField;
    TB_MEMBAIexclui: TStringField;
    TB_MEMBAIPES_PORTADOR: TStringField;
    TB_MEMBAIPES_PLANOCONTAS: TStringField;
    TB_MEMBAIBAIANEXO: TStringField;
    TB_MEMBAIdetalhesanexo: TStringField;
    DS_MEMBAI: TDataSource;
    TB_MEMBAITABELA: TStringField;
    FDQryTitulos: TFDQuery;
    rcBlock60: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    labTotReg: TUniLabel;
    TB_MEMBAIobs: TStringField;
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniDBGridbaixasCellClick(Column: TUniDBGridColumn);
    procedure TB_MEMBAIPES_PORTADORGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TB_MEMBAIPES_PLANOCONTASGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TB_MEMBAIexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnLkpSearchClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure TB_MEMBAIobsGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure TB_MEMBAIBAIANEXOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure BaixaTitulos(const codigo:integer);
  procedure BaixaParcial();
  procedure GeraBanco();
  procedure GeraComissao();
  procedure CmpObservacao(Sender: TComponent; AResult:Integer; AText: string);
  procedure lancaranexos(rcontrole:integer;tabela:string);
  end;

function frmBAIXATITULOS: TfrmBAIXATITULOS;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmBASEBAIXATITULOS, mkm_anim, untDM_RC,
  untFrmPesquisa, mkm_func_web, mkm_procedures, mkm_funcoes, Vcl.Dialogs,
  untFrmANEXOTITULOS;

var
  M_VLRTOT, M_TCRSEL, M_CALJUR,M_JUROSRECEBER : Real;

function frmBAIXATITULOS: TfrmBAIXATITULOS;
begin
  Result := TfrmBAIXATITULOS(mm.GetFormInstance(TfrmBAIXATITULOS));
end;

procedure TfrmBAIXATITULOS.BaixaParcial;
var
  SQL : string;
begin

  SQL := ' select * from   ' + FDQryTitulos.UpdateOptions.UpdateTableName +
         ' where codigo = 0';

  FDQryTitulos.Close;
  FDQryTitulos.SQL.Clear;
  FDQryTitulos.SQL.Text  := SQL;
  FDQryTitulos.Open();

  FDQryTitulos.Append;
  FDQryTitulos.FindField('KEY').AsString          := Gera_Guid();
  FDQryTitulos.FindField('CODIGO').AsInteger      := Ultimo_Codigo(FDQryTitulos.UpdateOptions.UpdateTableName,'CODIGO',False);
  FDQryTitulos.FindField('SEQUENCIA').AsInteger   := TB_MEMBAIBAIODC.AsInteger;
  FDQryTitulos.FindField('NUMERO').AsInteger      := TB_MEMBAIBAINDC.AsInteger;
  FDQryTitulos.FindField('SERIE').AsString        := TB_MEMBAIBAISDC.AsString;
  FDQryTitulos.FindField('DOCUMENTO').AsInteger   := 31;
  FDQryTitulos.FindField('PORTADOR').AsInteger    := TB_MEMBAIBAIPOR.AsInteger;
  FDQryTitulos.FindField('PESSOA').AsInteger      := TB_MEMBAIBAICLF.AsInteger;
  FDQryTitulos.FindField('PLANOCONTAS').AsString  := TB_MEMBAIBAIPLA.AsString;
  FDQryTitulos.FindField('FUNCIONARIO').AsInteger := TB_MEMBAIBAIVEN.AsInteger;
  FDQryTitulos.FindField('APLICACAO').AsInteger   := 0;
  FDQryTitulos.FindField('CARTEIRA').AsInteger    := 0;
  FDQryTitulos.FindField('VALORDESCONTOS').AsFloat:= 0;
  FDQryTitulos.FindField('VALORTAXAS').AsFloat    := 0;
  FDQryTitulos.FindField('VALORJUROS').AsFloat    := 0;
  FDQryTitulos.FindField('VALORATUAL').AsFloat    := TB_MEMBAIBAIPAR.AsFloat;
  FDQryTitulos.FindField('VALORORIGINAL').AsFloat := TB_MEMBAIBAIPAR.AsFloat;
  FDQryTitulos.FindField('VALORPAGO').AsFloat     := TB_MEMBAIBAIPAR.AsFloat;
  FDQryTitulos.FindField('EMPRESA').AsInteger     := mm.varI_Code_Company;
  FDQryTitulos.FindField('OBSERVACOES').AsString  := TB_MEMBAIBAIOB1.AsString;
  FDQryTitulos.FindField('SITUACAO').AsString     := 'Pago';
  FDQryTitulos.FindField('EMISSAO').AsDateTime    := TB_MEMBAIBaiDte.AsDateTime;
  FDQryTitulos.FindField('VENCIMENTO').AsDateTime := TB_MEMBAIBaiVct.AsDateTime;
  FDQryTitulos.FindField('PAGAMENTO').AsDateTime  := edSearchCRUDDtIni.DateTime;
  FDQryTitulos.FindField('FINANCEIRO').AsInteger  := varIIF(FDQryTitulos.UpdateOptions.UpdateTableName = 'PAGAR',0,1);
  FDQryTitulos.FindField('LOGPARCIAL').AsString   := mm.vUserName + ' - ' + DateToStr(date) + ' - ' + TimeToStr(Time);
  FDQryTitulos.Post;
end;

procedure TfrmBAIXATITULOS.BaixaTitulos(const codigo: integer);
var
  SQL :string;
begin
  FDQryTitulos.UpdateOptions.UpdateTableName := TB_MEMBAITABELA.AsString;

  SQL := ' select * from  ' + FDQryTitulos.UpdateOptions.UpdateTableName +
         ' where codigo = ' + IntToStr(codigo) ;

  FDQryTitulos.Close;
  FDQryTitulos.SQL.Clear;
  FDQryTitulos.SQL.Text  := SQL;
  FDQryTitulos.Open();

  if TB_MEMBAIBAIPAR.AsFloat > 0 then
    begin
      FDQryTitulos.Edit;
      FDQryTitulos.FindField('PORTADOR').AsInteger   := TB_MEMBAI.FindField('BAIPOR').AsInteger;
      FDQryTitulos.FindField('PLANOCONTAS').AsString := TB_MEMBAI.FindField('BAIPLA').AsString;
      FDQryTitulos.FindField('VALORATUAL').AsFloat   := TB_MEMBAI.FindField('BAIVLP').AsFloat - TB_MEMBAI.FindField('BAIPAR').AsFloat;
      FDQryTitulos.Post;

      BaixaParcial();
    end
  else
    begin
      FDQryTitulos.Edit;
      FDQryTitulos.FindField('PORTADOR').AsInteger   := TB_MEMBAI.FindField('BAIPOR').AsInteger;
      FDQryTitulos.FindField('PLANOCONTAS').AsString := TB_MEMBAI.FindField('BAIPLA').AsString;
      FDQryTitulos.FindField('OBSERVACOES').AsString := TB_MEMBAI.FindField('BAIOB1').AsString;
      FDQryTitulos.FindField('VALORPAGO').AsFloat    := TB_MEMBAI.FindField('BAIVLP').AsFloat;
      FDQryTitulos.FindField('PAGAMENTO').AsDateTime := edSearchCRUDDtIni.DateTime;
      FDQryTitulos.FindField('SITUACAO').AsString    := 'Pago';
      FDQryTitulos.FindField('LOGBAIXA').AsString    := mm.vUserName + ' - ' + DateToStr(date) + ' - ' + TimeToStr(Time);
      FDQryTitulos.Post;

      if FDQryTitulos.UpdateOptions.UpdateTableName = 'RECEBER' then
        GeraComissao;
    end;
  FDQryTitulos.Refresh;
end;

procedure TfrmBAIXATITULOS.btnLkpSearchClick(Sender: TObject);
begin
  TB_MEMBAI.First;
  while not TB_MEMBAI.Eof do
     begin
       if TB_MEMBAI.FindField('BAIPLA').AsString = '' then
         begin
           dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'INFORME UM PLANO DE CONTAS' , 'error' , false );
           abort;
         end;

       if (TB_MEMBAI.FindField('BAIPAR').AsFloat > TB_MEMBAI.FindField('BAIVLA').AsFloat) then
         begin
           dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'VALOR DA BAIXA PARCIAL E MAIOR QUE O VALOR DO TITULO' , 'error' , false );
           abort;
         end;


       BaixaTitulos(TB_MEMBAIBAICONT.AsInteger);
       lancaranexos(TB_MEMBAIBAICONT.AsInteger,FDQryTitulos.UpdateOptions.UpdateTableName);

       if UniCheckBoxgerabanco.Checked then
         GeraBanco();


       TB_MEMBAI.Next;
     end;

  TB_MEMBAI.Close;

  dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Gravados com SUCESSO!' , 'success' , false );
end;

procedure TfrmBAIXATITULOS.CmpObservacao(Sender: TComponent; AResult:Integer; AText: string);
begin
  if AResult = mrOK then
  begin
    TB_MEMBAI.Edit;
    TB_MEMBAIBAIOB1.AsString := AText;
    TB_MEMBAI.Post;
  end;
end;

procedure TfrmBAIXATITULOS.GeraBanco;
var
  SQL :string;
begin
  SQL := ' select * from  bancos where codigo = 0';

  FDQryTitulos.UpdateOptions.UpdateTableName := 'BANCOS';

  FDQryTitulos.Close;
  FDQryTitulos.SQL.Clear;
  FDQryTitulos.SQL.Text  := SQL;
  FDQryTitulos.Open();

  FDQryTitulos.Append;
  FDQryTitulos.FindField('KEY').AsString           := Gera_Guid;
  FDQryTitulos.FindField('CODIGO').AsInteger       := Ultimo_Codigo('BANCOS','CODIGO',False);
  FDQryTitulos.FindField('PORTADOR').AsInteger     := TB_MEMBAI.FindField('BAIPOR').AsInteger;
  FDQryTitulos.FindField('PLANOCONTAS').AsString   := TB_MEMBAI.FindField('BAIPLA').AsString;
  FDQryTitulos.FindField('OBSERVACOES').AsString   := TB_MEMBAI.FindField('BAIOB1').AsString;

  FDQryTitulos.FindField('HISTORICO').AsString     := TB_MEMBAIBAINOM.AsString;
  FDQryTitulos.FindField('EMISSAO').AsDateTime     := edSearchCRUDDtIni.DateTime;
  FDQryTitulos.FindField('PAGAMENTO').AsDateTime   := edSearchCRUDDtIni.DateTime;
  FDQryTitulos.FindField('COMPETENCIA').AsDateTime := edSearchCRUDDtIni.DateTime;
  FDQryTitulos.FindField('NUMERO').AsInteger       := TB_MEMBAIBAINDC.AsInteger;
  FDQryTitulos.FindField('SERIE').AsString         := TB_MEMBAIBAISDC.AsString;
  FDQryTitulos.FindField('LOGINCLUSAO').AsString   := mm.vUserName + ' - ' + DateToStr(date) + ' - ' + TimeToStr(Time);

  FDQryTitulos.FindField('VALORPAGO').AsFloat      := VARIIF(TB_MEMBAIBAIPAR.AsFloat > 0,TB_MEMBAIBAIPAR.AsFloat, TB_MEMBAIBAIVLP.AsFloat);

  FDQryTitulos.FindField('DESCPORTADOR').AsString  := Acha_Item('PORTADORES',IntToStr(TB_MEMBAI.FindField('BAIPOR').AsInteger));

  SqlPesquisa('select tipo, descricao from planocontas where plano = ' + QuotedStr(TB_MEMBAI.FindField('BAIPLA').AsString));
    FDQryTitulos.FindField('TIPO').AsString           :=  dm_rc.sqlBuscas.FindField('TIPO').AsString;
    FDQryTitulos.FindField('PLANODESCRICAO').AsString :=  dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;

  FDQryTitulos.FindField('CODHISTORICO').AsInteger := 1;
  FDQryTitulos.FindField('EMPRESA').AsInteger      := MM.varI_Code_Company;
  FDQryTitulos.FindField('DOCUMENTO').AsInteger    := TB_MEMBAI.FindField('BAITDC').AsInteger;
  FDQryTitulos.FindField('SEQUENCIA').AsInteger    := Sequencia_Caixa(FDQryTitulos.FindField('PAGAMENTO').AsDateTime,
                                                                      TB_MEMBAI.FindField('BAIPOR').AsInteger);
  FDQryTitulos.Post;

end;

procedure TfrmBAIXATITULOS.GeraComissao;
var
  SQL           : string;
  FDQryComissao : TFDQuery;
begin
  if TB_MEMBAIBAICOM.AsFloat > 0 then
    begin
      FDQryComissao                               := TFDQuery.Create(nil);
      FDQryComissao.Connection                    := mm.SQLConn;
      FDQryComissao.UpdateOptions.UpdateTableName := 'EXTRATO_COMISSAO';
      SQL                                         := ' select * from  EXTRATO_COMISSAO where codigo = 0';

      FDQryComissao.Close;
      FDQryComissao.SQL.Clear;
      FDQryComissao.SQL.Text  :=  SQL;
      FDQryComissao.Prepare;
      FDQryComissao.Open();

      try
        FDQryComissao.Append;
        FDQryComissao.FindField('KEY').AsString              := Gera_Guid();
        FDQryComissao.FindField('CODIGO').AsInteger          := Ultimo_Codigo(FDQryComissao.UpdateOptions.UpdateTableName,'CODIGO',False);
        FDQryComissao.FindField('FUNCIONARIO').AsInteger     := TB_MEMBAIBAIVEN.AsInteger;
        FDQryComissao.FindField('NOME_FUNCIONARIO').AsString := Acha_Item('FUNCIONARIOS',TB_MEMBAIBAIVEN.AsString);
        FDQryComissao.FindField('EMPRESA').AsInteger         := MM.varI_Code_Company;
        FDQryComissao.FindField('NUMERO').AsInteger          := TB_MEMBAIBAINDC.AsInteger;
        FDQryComissao.FindField('SERIE').AsString            := TB_MEMBAIBAISDC.AsString;
        FDQryComissao.FindField('EMISSAO').AsDateTime        := TB_MEMBAIBAIDTE.AsDateTime;
        FDQryComissao.FindField('VENCIMENTO').AsDateTime     := TB_MEMBAIBAIVCT.AsDateTime;
        FDQryComissao.FindField('PAGAMENTO').AsDateTime      := edSearchCRUDDtIni.DateTime;
        FDQryComissao.FindField('HISTORICO').AsString        := TB_MEMBAIBAINOM.AsString + ' ' + varIIF(TB_MEMBAIBAIPED.AsString <> '','Pedido -> ' + TB_MEMBAIBAIPED.AsString,'');
        FDQryComissao.FindField('TIPO').AsString             := 'Entrada';
        FDQryComissao.FindField('COMISSAO').AsFloat          := TB_MEMBAIBAICOM.AsFloat;
        FDQryComissao.FindField('VALOR').AsFloat             := MRound((variif(TB_MEMBAIBAIPAR.AsFloat > 0,TB_MEMBAIBAIPAR.AsFloat,TB_MEMBAIBAIVLA.AsFloat) *  TB_MEMBAIBAICOM.AsFloat) / 100,2);
        FDQryComissao.FindField('PARCELA').AsInteger         := TB_MEMBAIBaiOdc.AsInteger;
        FDQryComissao.FindField('SEQUENCIA').AsInteger       := SequenciapagamentoComissao(edSearchCRUDDtIni.DateTime);
        FDQryComissao.FindField('LOGINCLUSAO').AsString      := mm.vUserName + ' - ' + DateToStr(date) + ' - ' + TimeToStr(Time);
        FDQryComissao.Post;
      except
      end;

      FDQryComissao.Free;

    end;
end;

procedure TfrmBAIXATITULOS.lancaranexos(rcontrole: integer; tabela: string);
begin
  TabelaTitulosAnexo('select * from TITULOS_PLANOS where codigo = 0');

  dm_rc.tbanexotitulos.First;
  while not dm_rc.tbanexotitulos.Eof do
    begin
      if dm_rc.tbanexotitulos.FindField('PLANO').AsString <> '' then
        begin
          dm_rc.fdqrytitulosplanos.Append;
          dm_rc.fdqrytitulosplanos.FindField('KEY').AsString        := Gera_Guid;
          dm_rc.fdqrytitulosplanos.FindField('CODIGO').AsInteger    := Ultimo_Codigo('TITULOS_PLANOS','CODIGO',True);
          dm_rc.fdqrytitulosplanos.FindField('PLANO').AsString      := dm_rc.tbanexotitulos.FindField('PLANO').AsString;
          dm_rc.fdqrytitulosplanos.FindField('DESCRICAO').AsString  := dm_rc.tbanexotitulos.FindField('DESCRICAO').AsString;
          dm_rc.fdqrytitulosplanos.FindField('VALOR').AsFloat       := dm_rc.tbanexotitulos.FindField('VALOR').AsFloat;
          dm_rc.fdqrytitulosplanos.FindField('TABELA').AsString     := tabela;
          dm_rc.fdqrytitulosplanos.FindField('EMPRESA').AsInteger   := mm.varI_Code_Company;
          dm_rc.fdqrytitulosplanos.FindField('SEQUENCIA').AsInteger := dm_rc.tbanexotitulos.RecNo;
          dm_rc.fdqrytitulosplanos.FindField('MESTRE_ID').AsInteger := rcontrole;
          dm_rc.fdqrytitulosplanos.Post;
        end;
      dm_rc.tbanexotitulos.Next;
    end;
  dm_rc.fdqrytitulosplanos.Close;
end;

procedure TfrmBAIXATITULOS.TB_MEMBAIBAIANEXOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text :=
  '<i title="Obs" class="fa fa-lg fa-file-alt fa-paperclip" style="color:purple; cursor:pointer;"></i>';
end;

procedure TfrmBAIXATITULOS.TB_MEMBAIexcluiGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text :=
  '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmBAIXATITULOS.TB_MEMBAIobsGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text :=
  '<i title="Obs" class="fa fa-lg fa-file-alt fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmBAIXATITULOS.TB_MEMBAIPES_PLANOCONTASGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text :=
  '<i title="Produtos" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmBAIXATITULOS.TB_MEMBAIPES_PORTADORGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text :=
  '<i title="Produtos" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmBAIXATITULOS.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmBAIXATITULOS.UniDBGridbaixasCellClick(Column: TUniDBGridColumn);
var
textobs : string;
begin
  if Column.FieldName = 'BAIANEXO' then
    begin
      frmCADANEXOTITULOS.ShowModal();
    end;

  if Column.FieldName = 'obs' then
    begin
      textobs := TB_MEMBAIBAIOB1.AsString;
      Prompt('Observação',textobs, mtInformation, mbOKCancel, CmpObservacao);
    end;

  if Column.FieldName = 'exclui' then
    begin
      TB_MEMBAI.Delete;
    end;

  if Column.FieldName = 'PES_PORTADOR' then
    begin
      MM.Seta_Busca('PORTADORES');
      UniFfrmPesquisa.showmodal(
      procedure(Sender: TComponent; AResult: Integer)
       begin
         if AResult = mrOK then
         begin
           TB_MEMBAI.Edit;
           TB_MEMBAI.FindField('BAIPOR').AsInteger := StrToInt(MM.varC_codigo_busca);
           TB_MEMBAI.Post;
         end;
       end);
    end;

  if Column.FieldName = 'PES_PLANOCONTAS' then
    begin
      MM.Seta_Busca('PLANOCONTAS');
      UniFfrmPesquisa.showmodal(
      procedure(Sender: TComponent; AResult: Integer)
       begin
         if AResult = mrOK then
         begin
           TB_MEMBAI.Edit;
           TB_MEMBAI.FindField('BAIPLA').AsInteger := StrToInt(MM.varC_codigo_busca);
           TB_MEMBAI.Post;
         end;
       end);
    end;
end;

procedure TfrmBAIXATITULOS.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dm_rc.tbanexotitulos.close;
end;

procedure TfrmBAIXATITULOS.UniFormCreate(Sender: TObject);
begin
  // sort
  UniDBGridbaixas.ClientEvents.UniEvents.Add(
       'store.afterCreate=function store.afterCreate(sender)' +
       '{ sender.setRemoteSort(false);﻿ }'
  );
end;

procedure TfrmBAIXATITULOS.UniFormDestroy(Sender: TObject);
begin
    mm.varC_Form_Modal := nil;
end;

procedure TfrmBAIXATITULOS.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmBAIXATITULOS.UniFormShow(Sender: TObject);
begin
  if Self.Tag = 0 then
  begin
      Self.Visible := True;
      Self.Top  := 0;

      rc_MoveAnimationForm( self,
                            self.left,
                            self.left,
                            self.top,
                            ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  ),
                            400,
                            1 ) ;
  end
  else
  begin
    Self.Visible := False;
    Self.Top  := -1000;
  end;
  Self.Visible := True;

  M_VLRTOT := 0;
  TB_MEMBAI.First;
  while not TB_MEMBAI.Eof do
    begin
      M_VLRTOT := M_VLRTOT + TB_MEMBAIBAIVLA.AsFloat;
      TB_MEMBAI.Next;
    end;
    TB_MEMBAI.First;

  edSearchCRUDDtIni.DateTime             := Date;
  UniFormattedNumberEdittotal.Value      := M_VLRTOT;
  labTotReg.Caption                      := IntToStr(TB_MEMBAI.RecordCount) + ' Registro(s) Encontrado(s).';

  dm_rc.tbanexotitulos.close;
  dm_rc.tbanexotitulos.Open;

end;

end.
