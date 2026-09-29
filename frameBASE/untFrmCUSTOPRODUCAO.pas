unit untFrmCUSTOPRODUCAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniImage, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel, uniEdit, uniDBEdit, uniLabel, uniDateTimePicker,
  uniDBDateTimePicker, UniButtonDbEdit, uniMemo, uniDBMemo, uniMultiItem,
  uniListBox, uniDBListBox;

type
  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros, tpCalcular, tpAguarde);

  TfrmCUSTOPRODUCAO = class(TUniForm)
    paBaseButtons: TUniContainerPanel;
    paOF: TUniContainerPanel;
    btnOptions: TUniBitBtn;
    paP: TUniContainerPanel;
    UniImage1: TUniImage;
    paNAE: TUniContainerPanel;
    btnEditReg: TUniBitBtn;
    btnDeleteReg: TUniBitBtn;
    paGC: TUniContainerPanel;
    btnSaveReg: TUniBitBtn;
    btnCancelReg: TUniBitBtn;
    btnCalcReg: TUniBitBtn;
    btnimpressao: TUniBitBtn;
    dsfiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    dscrud: TDataSource;
    FDQryCad: TFDQuery;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    rcBlock50: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniButtonDbEditcustoprod: TUniButtonDbEdit;
    rcBlock60: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniButtonDbEditPRODUTODESTINO: TUniButtonDbEdit;
    rcBlock70: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniContainerPanel7: TUniContainerPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniContainerPanel9: TUniContainerPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniContainerPanel11: TUniContainerPanel;
    rcBlock80: TUniContainerPanel;
    UniDBFormattedNumberEditvlrprodutos: TUniDBFormattedNumberEdit;
    UniLabel11: TUniLabel;
    UniContainerPanel12: TUniContainerPanel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniLabel12: TUniLabel;
    UniDBMemoresumoproducao: TUniDBMemo;
    UniDBMemotaxas: TUniDBMemo;
    UniDBMemovendas: TUniDBMemo;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniButtonDbEdit3: TUniButtonDbEdit;
    UniDBMemoinformacao: TUniDBMemo;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniLabel2: TUniLabel;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniLabel14: TUniLabel;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniLabel16: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormResize(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure UniButtonDbEditcustoprodButtonClick(Sender: TObject);
    procedure UniButtonDbEditcustotaxaButtonClick(Sender: TObject);
    procedure UniButtonDbEditcustoprodExit(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnCalcRegClick(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  state : string;
  public
    { Public declarations }
    cFormModal         : TUniForm;
  procedure SetBut(Acao:TAcaoCrud);
  procedure Transfere();
  procedure MontagemCusto(mestreid:integer);
  end;

function frmCUSTOPRODUCAO: TfrmCUSTOPRODUCAO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmPesquisa, mkm_funcoes, mkm_func_web,
  mkm_procedures, untDM_RC, System.TypInfo, Vcl.Clipbrd, mkm_impressao,
  unReportImpressao;

function frmCUSTOPRODUCAO: TfrmCUSTOPRODUCAO;
begin
  Result := TfrmCUSTOPRODUCAO(mm.GetFormInstance(TfrmCUSTOPRODUCAO));
end;

procedure TfrmCUSTOPRODUCAO.btnCalcRegClick(Sender: TObject);
begin
  MontagemCusto(mm.varM_CODIGOMESTRE);
end;

procedure TfrmCUSTOPRODUCAO.btnCancelRegClick(Sender: TObject);
begin
  FDQryCad.Cancel;
end;

procedure TfrmCUSTOPRODUCAO.btnDeleteRegClick(Sender: TObject);
begin
  try
  executasql('delete from custo_producao where mestre_id = ' + IntToStr(mm.varM_CODIGOMESTRE));

   dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados deletado com SUCESSO!' , 'success' , false );
  except
   dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui deletar, chame o SUPORTE!' , 'error' , false );
  end;
end;

procedure TfrmCUSTOPRODUCAO.btnEditRegClick(Sender: TObject);
  var i : integer; Cmp:String;
begin
  if not SqlPesquisa('select * from custo_producao where mestre_id = ' + IntToStr(mm.varM_CODIGOMESTRE)) then
    begin
      state := 'inclui';
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

      SqlPesquisa('select * from loteinterno where codigo = ' + IntToStr(mm.varM_CODIGOMESTRE));

      FDQryCad.Append;
      FDQryCad.FindField('CODIGO_CUSTOPRODUCAO').AsInteger := 0;
      FDQryCad.FindField('CODIGO_CUSTOVENDA').AsInteger    := 0;
      FDQryCad.FindField('VALORFRETETONELADA').AsInteger   := 0;
      FDQryCad.FindField('MARGEMLUCRO').AsInteger          := 0;
      FDQryCad.FindField('COMISSAO').AsInteger             := 0;
      FDQryCad.FindField('IMPOSTO').AsInteger              := 0;
      FDQryCad.FindField('PERCVENDAPRAZO').AsInteger       := 0;

      FDQryCad.FindField('EMISSAO').AsDateTime             := Date;
      FDQryCad.FindField('EMPRESA').AsInteger              := MM.varI_Code_Company;
      FDQryCad.FindField('MESTRE_ID').AsInteger            := mm.varM_CODIGOMESTRE;
      FDQryCad.FindField('CODIGOP').AsString               := dm_rc.sqlBuscas.FindField('CODIGOP').AsString;
    end
  else
    begin
      state := 'altera';
      FDQryCad.Edit;
    end;
  SetBut(tpAlterar);
end;

procedure TfrmCUSTOPRODUCAO.btnimpressaoClick(Sender: TObject);
begin
  mm.varC_caminhopdf :=  IMPRESSAO_CustoProducao(
                         MM.varI_Code_Company,
                         FDQryFiltro.FindField('CODIGO').AsInteger);

  unfImpressao.ShowModal();
end;

procedure TfrmCUSTOPRODUCAO.btnOptionsClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmCUSTOPRODUCAO.btnSaveRegClick(Sender: TObject);
begin
  if FDQryCad.State in [dsInsert,dsEdit] then
   Begin
     if FDQryCad.State in [dsInsert] then
       begin
         FDQryCad.FindField('KEY').AsString              := Gera_Guid;
         FDQryCad.FindField('CODIGO').AsInteger          := Ultimo_Codigo('CUSTO_PRODUCAO','CODIGO',True);
         FDQryCad.FindField('EMPRESA').AsInteger         := mm.varI_Code_Company;
         FDQryCad.FindField('MESTRE_ID').AsInteger       := mm.varM_CODIGOMESTRE;
       end
     else
       FDQryCad.Edit;
   End;

  try
    FDQryCad.Post;
    dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Gravados com SUCESSO!' , 'success' , false );
  except
  on e : Exception do
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui gravar, chame o SUPORTE!' , 'error' , false );
    end;
  end;
  setbut(tpListacomRegistros);
end;

procedure TfrmCUSTOPRODUCAO.MontagemCusto(mestreid: integer);
var
  p_sacos                 : Real;
  p_pesosaco              : integer;
  totalcustoencargos,
  totalgeralcustoencargos : Real;
  totalcustobatida,
  custounitario,
  resumototalcusto        : Real;

  vlrmargemlucro,
  vlrcomissao,
  vlrimposto,
  vlrfretetonelada                  : Real;
  vlrvendavistasaco,vlrvendavistakg,
  vlrvendaprazosaco,vlrvendaprazokg : Real;

  function valorimposto(custounitario,comissao,imposto,vlrlmlucro:real):real;
  var
    r,s,perc,soma:real;
  begin
    perc   :=  comissao              + imposto;
    soma   :=  custounitario         + vlrlmlucro;
    r      :=  ((soma * perc) / 100) ;
    s      :=  (r + soma) * imposto / 100;
    Result :=  s;
  end;

  function valorcomissao(custounitario,comissao,imposto,vlrlmlucro:real):real;
  var
    r,s,perc,soma:real;
  begin
    perc   :=  comissao              + imposto;
    soma   :=  custounitario         + vlrlmlucro;
    r      :=  ((soma * perc) / 100) ;
    s      :=  (r + soma) * comissao / 100;
    Result :=  s;
  end;
  function fretetonelada(freteton,pesosaco,qtesacos:real):real;
  begin
    Result := ((((freteton/1000)*pesosaco)* qtesacos)/ qtesacos);
  end;
  function margemlucro(custounitario,perc:real):real;
  begin
    Result :=  abs(MRound((custounitario / (100 - perc)*100) - custounitario,2));
  end;
  function calculasacos(pesoini,pesosaco:real) : real;
  begin
    Result := mround(pesoini / pesosaco,0);
  end;
  function replicadescricao(pdescricao:string;espaco:integer) : string;
    var
      qtdespace      : integer;
      redefinestring : string;
  begin
    qtdespace      := espaco - length(pdescricao);
    redefinestring := StrReplicate('.',qtdespace);
    Result         := pdescricao+redefinestring;
  end;
begin
  UniDBMemoinformacao.Clear;
  SqlPesquisa('select * from PRODUCAOINTERNA where codigo = ' + IntToStr(mestreid));

  fdqrycad.FindField('CODIGOP').AsString :=  dm_rc.sqlBuscas.FindField('PADRAO').AsString;

  if dm_rc.sqlBuscas.FindField('SACO_10KG').AsString = 'T' then
    p_pesosaco := 10
  else
  if dm_rc.sqlBuscas.FindField('SACO_15KG').AsString = 'T' then
    p_pesosaco := 15
  else
    p_pesosaco := 20;

  p_sacos := calculasacos(dm_rc.sqlBuscas.FindField('TOTALKG').AsFloat,p_pesosaco);

  UniDBMemoinformacao.Lines.Add('QUANT. SACOS');
  UniDBMemoinformacao.Lines.Add(FloatToStr(p_sacos) + ' Sacos');
  UniDBMemoinformacao.Lines.Add(StrReplicate('-',21));
  UniDBMemoinformacao.Lines.Add('FAMILIA');
  UniDBMemoinformacao.Lines.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);
  UniDBMemoinformacao.Lines.Add(StrReplicate('-',21));
  UniDBMemoinformacao.Lines.Add('PUREZA % (VC)');
  UniDBMemoinformacao.Lines.Add(dm_rc.sqlBuscas.FindField('PUREZA').AsString);
  UniDBMemoinformacao.Lines.Add(StrReplicate('-',21));
  UniDBMemoinformacao.Lines.Add('CODIGO "P"');
  UniDBMemoinformacao.Lines.Add(dm_rc.sqlBuscas.FindField('PADRAO').AsString);
  UniDBMemoinformacao.Lines.Add(StrReplicate('-',21));
  UniDBMemoinformacao.Lines.Add('PESO P/ SACO');
  if dm_rc.sqlBuscas.FindField('SACO_10KG').AsString = 'T' then
    UniDBMemoinformacao.Lines.Add('10')
  else
  if dm_rc.sqlBuscas.FindField('SACO_15KG').AsString = 'T' then
    UniDBMemoinformacao.Lines.Add('15')
  else
    UniDBMemoinformacao.Lines.Add('20');
  UniDBMemoinformacao.Lines.Add(StrReplicate('-',21));
  //**************************************************************************//
  resumototalcusto := 0;
  UniDBMemoresumoproducao.Clear;
  TabelaProducaoItens(
                      '  SELECT                                                                     ' +
                      '    p.lote,                                                                  ' +
                      '    li.tipo,                                                                 ' +
                      '    p.descricao,                                                             ' +
                      '    p.quantidade,                                                            ' +
                      '    p.custo_unitario,                                                        ' +
                      '    p.total_custo,                                                           ' +
                      '    p.pontos,                                                                ' +
                      '    p.custo_ponto,                                                           ' +
                      '    p.total_ponto                                                            ' +
                      '  FROM                                                                       ' +
                      '  PRODUCAOINTERNA_ITENS p inner join loteinterno li on (p.lote = li.lote)    ' +
                      '  WHERE p.mestre_id                                                        = ' + IntToStr(dm_rc.sqlBuscas.FindField('CODIGO').AsInteger) +
                      ' and li.tipo <>                                                              ' + QuotedStr('Sacaria') +
                      ' order by p.sequencia');

  UniDBMemoresumoproducao.Lines.Add(StrReplicate('*',77));
  UniDBMemoresumoproducao.Lines.Add('RELAÇÃO DOS ITENS UTILIZADOS');
  UniDBMemoresumoproducao.Lines.Add(StrReplicate('*',77));
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('DESCRIÇÃO',40) + '|' +
                                    replicadescricao('QTDE',10)      + '|' +
                                    replicadescricao('PREÇO',11)     + '|' +
                                    replicadescricao('TOTAL',11)     + '|');


  dm_rc.fdqryproducaointernaitens.First;
  while not dm_rc.fdqryproducaointernaitens.Eof do
    begin
      if dm_rc.fdqryproducaointernaitens.findfield('TIPO').AsString = 'Sementes' then
        begin
          UniDBMemoresumoproducao.Lines.Add(copy(replicadescricao(dm_rc.fdqryproducaointernaitens.FindField('DESCRICAO').AsString + ' ' + dm_rc.fdqryproducaointernaitens.FindField('LOTE').AsString,40),1,40)                   + '|'+
                                            replicadescricao(dm_rc.fdqryproducaointernaitens.FindField('QUANTIDADE').AsString,10)                             + '|'+
                                            replicadescricao(FormatFloat('R$ 0.00',dm_rc.fdqryproducaointernaitens.FindField('CUSTO_PONTO').AsFloat),11)      + '|'+
                                            replicadescricao(FormatFloat('R$ 0.00',dm_rc.fdqryproducaointernaitens.FindField('TOTAL_PONTO').AsFloat)   ,11)   + '|');
          resumototalcusto := resumototalcusto + dm_rc.fdqryproducaointernaitens.FindField('TOTAL_PONTO').AsFloat;

        end
      else
        begin
          UniDBMemoresumoproducao.Lines.Add(copy(replicadescricao(dm_rc.fdqryproducaointernaitens.FindField('DESCRICAO').AsString,40),1,40)                   + '|'+
                                            replicadescricao(dm_rc.fdqryproducaointernaitens.FindField('QUANTIDADE').AsString,10)                             + '|'+
                                            replicadescricao(FormatFloat('R$ 0.00',dm_rc.fdqryproducaointernaitens.FindField('CUSTO_UNITARIO').AsFloat),11)   + '|'+
                                            replicadescricao(FormatFloat('R$ 0.00',dm_rc.fdqryproducaointernaitens.FindField('TOTAL_CUSTO').AsFloat)   ,11)   + '|');

          resumototalcusto := resumototalcusto + dm_rc.fdqryproducaointernaitens.FindField('TOTAL_CUSTO').AsFloat;
        end;
      dm_rc.fdqryproducaointernaitens.Next;
    end;

  UniDBMemoresumoproducao.Lines.Add(replicadescricao('TOTAL GERAL',40) + '|'+
                                    replicadescricao(dm_rc.sqlBuscas.FindField('TOTALKG').AsString,10)   + '|' +
                                    replicadescricao('',11)                                              + '|' +
                                    replicadescricao(FormatFloat('R$ 0.00',resumototalcusto),11)         + '|');

  UniDBMemoresumoproducao.Lines.Add('');
  UniDBMemoresumoproducao.Lines.Add(StrReplicate('*',77));
  UniDBMemoresumoproducao.Lines.Add('DEMAIS CUSTOS/ENCARGOS');
  UniDBMemoresumoproducao.Lines.Add(StrReplicate('*',77));
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('DESCRIÇÃO',51) + '|' +
                                    replicadescricao('PREÇO',11)     + '|' +
                                    replicadescricao('TOTAL',11)     + '|');

  TabelaCustoLoteinternoItens('select * from CUSTO_LOTEINTERNOITENS where mestre_id = ' + IntToStr(FDQryCad.FindField('CODIGO_CUSTOPRODUCAO').AsInteger) + ' order by sequencia');
  totalgeralcustoencargos := 0;
  dm_rc.fdqrycustoloteinternoitens.First;
  while not dm_rc.fdqrycustoloteinternoitens.Eof do
    begin
      totalcustoencargos := 0;
      totalcustoencargos := dm_rc.fdqrycustoloteinternoitens.FindField('CUSTO').AsFloat * p_sacos;
      UniDBMemoresumoproducao.Lines.Add(copy(replicadescricao(dm_rc.fdqrycustoloteinternoitens.FindField('DESCRICAO').AsString,51),1            ,52)   + '|'+
                                             replicadescricao(FormatFloat('R$ 0.00',dm_rc.fdqrycustoloteinternoitens.FindField('CUSTO').AsFloat),11)   + '|'+
                                             replicadescricao(FormatFloat('R$ 0.00',totalcustoencargos)                                         ,11)   + '|');

      totalgeralcustoencargos := totalgeralcustoencargos + totalcustoencargos;

      dm_rc.fdqrycustoloteinternoitens.Next;
    end;
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('TOTAL GERAL',63)                                     + '|'+
                                    replicadescricao(FormatFloat('R$ 0.00',totalgeralcustoencargos) ,11)   + '|');

  totalcustobatida := 0;
  custounitario    := 0;
  totalcustobatida := (resumototalcusto + totalgeralcustoencargos);
  custounitario    := MRound((totalcustobatida / p_sacos),2);

  UniDBMemoresumoproducao.Lines.Add('');
  UniDBMemoresumoproducao.Lines.Add(StrReplicate('*',77));
  UniDBMemoresumoproducao.Lines.Add('RESULTADOS DA PRODUÇÃO');
  UniDBMemoresumoproducao.Lines.Add(StrReplicate('*',77));
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('PESO BRUTO'                                            ,63) + '|' +
                                    replicadescricao(dm_rc.sqlBuscas.FindField('TOTALKG').AsString + ' kg'   ,11) + '|');
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('TOTAL DE PONTOS'                                       ,63) + '|' +
                                    replicadescricao(dm_rc.sqlBuscas.FindField('TOTALPONTOS').AsString       ,11) + '|');
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('CUSTO TOTAL BATIDA'                                    ,63) + '|' +
                                    replicadescricao(FormatFloat('R$ 0.00',(totalcustobatida))               ,11) + '|');
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('QUANTIDADE BATIDA'                                     ,63) + '|' +
                                    replicadescricao(FloatToStr(p_sacos) + ' Sacos'                          ,11) + '|');
  UniDBMemoresumoproducao.Lines.Add(replicadescricao('CUSTO UNITÁRIO'                                        ,63) + '|' +
                                    replicadescricao(FormatFloat('R$ 0.00',(custounitario))                  ,11) + '|');

  //*************************************************************************************************************************************//
  vlrmargemlucro   := 0;
  vlrcomissao      := 0;
  vlrimposto       := 0;
  vlrfretetonelada := 0;

  vlrfretetonelada := fretetonelada(FDQryCad.FindField('VALORFRETETONELADA').AsFloat,
                                    p_pesosaco,
                                    p_sacos);
  vlrmargemlucro   := margemlucro  (custounitario,
                                    FDQryCad.FindField('MARGEMLUCRO').AsFloat);
  vlrcomissao      := valorcomissao(custounitario                         ,
                                    FDQryCad.FindField('COMISSAO').AsFloat,
                                    FDQryCad.FindField('IMPOSTO').AsFloat ,
                                    vlrmargemlucro);
  vlrimposto       := valorimposto (custounitario                         ,
                                    FDQryCad.FindField('COMISSAO').AsFloat,
                                    FDQryCad.FindField('IMPOSTO').AsFloat ,
                                    vlrmargemlucro);
  UniDBMemotaxas.Clear;

  UniDBMemotaxas.Lines.Add(replicadescricao('DESCRIÇÃO'      ,26) + '|' +
                           replicadescricao('TAXAS '         ,11) + '|' +
                           replicadescricao('VLR P/ SC'      ,11) + '|');

  UniDBMemotaxas.Lines.Add(replicadescricao('MARGEM DE LUCRO'                                                       ,26) + '|' +
                           replicadescricao(FormatFloat('%  0.00',FDQryCad.FindField('MARGEMLUCRO').AsFloat)        ,11) + '|' +
                           replicadescricao(FormatFloat('R$ 0.00',vlrmargemlucro)                                   ,11) + '|');

  UniDBMemotaxas.Lines.Add(replicadescricao('COMISSÃO'                                                              ,26) + '|' +
                           replicadescricao(FormatFloat('%  0.00',FDQryCad.FindField('COMISSAO').AsFloat)           ,11) + '|' +
                           replicadescricao(FormatFloat('R$ 0.00',vlrcomissao)                                      ,11) + '|');

  UniDBMemotaxas.Lines.Add(replicadescricao('IMPOSTO'                                                               ,26) + '|' +
                           replicadescricao(FormatFloat('% 0.00',FDQryCad.FindField('IMPOSTO').AsFloat)             ,11) + '|' +
                           replicadescricao(FormatFloat('R$ 0.00',vlrimposto)                                       ,11) + '|');

  UniDBMemotaxas.Lines.Add(replicadescricao('FRETE TONELADA'                                                        ,26) + '|' +
                           replicadescricao(FormatFloat('R$ 0.00',FDQryCad.FindField('VALORFRETETONELADA').AsFloat) ,11) + '|' +
                           replicadescricao(FormatFloat('R$ 0.00',vlrfretetonelada)                                 ,11) + '|');

  //*************************************************************************************************************************************//
  vlrvendavistasaco := 0;
  vlrvendavistakg   := 0;
  vlrvendaprazosaco := 0;
  vlrvendaprazokg   := 0;

  vlrvendavistasaco := custounitario + vlrmargemlucro + vlrcomissao + vlrimposto + vlrfretetonelada;
  vlrvendavistakg   := MRound((vlrvendavistasaco / p_pesosaco),2);
  vlrvendaprazosaco := ((vlrvendavistasaco * fdqrycad.FindField('PERCVENDAPRAZO').AsFloat)/100) + vlrvendavistasaco;
  vlrvendaprazokg   := MRound((vlrvendaprazosaco / p_pesosaco),2);

  UniDBMemovendas.Clear;
  UniDBMemovendas.Lines.Add(replicadescricao('DESCRIÇÃO' ,27)  + '|' +
                            replicadescricao('POR SACO'  ,11)  + '|' +
                            replicadescricao('POR KG'    ,11)  + '|');

  UniDBMemovendas.Lines.Add(replicadescricao('VENDA A VISTA'                           ,27)  + '|' +
                            replicadescricao(FormatFloat('R$ 0.00',vlrvendavistasaco)  ,11)  + '|' +
                            replicadescricao(FormatFloat('R$ 0.00',vlrvendavistakg)    ,11)  + '|');
  UniDBMemovendas.Lines.Add(replicadescricao('VENDA A PRAZO'                           ,27)  + '|' +
                            replicadescricao(FormatFloat('R$ 0.00',vlrvendaprazosaco)  ,11)  + '|' +
                            replicadescricao(FormatFloat('R$ 0.00',vlrvendaprazokg)    ,11)  + '|');

  UniDBMemovendas.Lines.Add('');
end;

procedure TfrmCUSTOPRODUCAO.SetBut(Acao: TAcaoCrud);
var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));

  // Controle dos botoes
  if acao in [tpAguarde] then
    begin
      btnEditReg.Visible    := True;
      btnDeleteReg.Visible  := True;
      btnCancelReg.Visible  := False;
      btnOptions.Visible    := True;

      btnCalcReg.Visible    := False;
      btnSaveReg.Visible    := False;
      btnimpressao.Visible  := True;
    end
  else
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
     begin
       btnEditReg.Visible    := false;
       btnDeleteReg.Visible  := false;
       btnCancelReg.Visible  := true;
       btnOptions.Visible    := True;

       btnCalcReg.Visible    := True;
       btnSaveReg.Visible    := True;
       btnimpressao.Visible  := False;

     end
   else if acao in [tpListaVazia] then
      begin
        btnEditReg.Visible    := false;
        btnDeleteReg.Visible  := false;
        btnCalcReg.Visible    := False;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
        btnOptions.Visible    := True;
        btnimpressao.Visible  := False;
      end
   else if acao in [tpCalcular] then
     begin
        btnEditReg.Visible    := false;
        btnDeleteReg.Visible  := false;
        btnCalcReg.Visible    := True;
        btnCancelReg.Visible  := True;
        btnSaveReg.Visible    := True;
        btnOptions.Visible    := True;
        btnimpressao.Visible  := False;
     end
    else if acao in [tpListacomRegistros] then
      begin
        btnEditReg.Visible    := true;
        btnDeleteReg.Visible  := true;
        btnCalcReg.Visible    := False;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
        btnOptions.Visible    := True;
        btnimpressao.Visible  := True;
       end;
end;

procedure TfrmCUSTOPRODUCAO.Transfere;
  var i : integer; Cmp:String;
begin
  FDQryCad.Close;
  FDQryFiltro.Close;
  FDQryFiltro.sql.Clear;
  FDQryFiltro.SQL.Text := 'SELECT * FROM custo_producao WHERE mestre_id = ' + IntToStr(mm.varM_CODIGOMESTRE);
  FDQryFiltro.Open;

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

  setbut(tpListacomRegistros);
end;

procedure TfrmCUSTOPRODUCAO.UniButtonDbEditcustotaxaButtonClick(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      mm.Seta_Busca('CUSTOLOTEINTERNO');
      UniFfrmPesquisa.ShowModal(
      procedure(Sender: TComponent; AResult: Integer)
       begin
         if AResult = mrOK then
         begin
           FDQryCad.Edit;
           FDQryCad.FindField('CODIGO_CUSTOPRODUCAO').AsInteger := StrToInt(MM.varC_codigo_busca);
         end;
       end);
    end;
end;

procedure TfrmCUSTOPRODUCAO.UniButtonDbEditcustoprodButtonClick(
  Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      mm.Seta_Busca('CUSTOLOTEINTERNO');
      UniFfrmPesquisa.ShowModal(
      procedure(Sender: TComponent; AResult: Integer)
       begin
         if AResult = mrOK then
         begin
           FDQryCad.Edit;
           FDQryCad.FindField('DESCRICAO_CUSTOVENDA').AsInteger := StrToInt(MM.varC_codigo_busca);
         end;
       end);
    end;
end;

procedure TfrmCUSTOPRODUCAO.UniButtonDbEditcustoprodExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditcustoprod.Text <> '') and (UniButtonDbEditcustoprod.Text <> '0') then
        begin
          FDQryCad.FindField('DESCRICAO_CUSTOPRODUCAO').AsString        := Acha_Item('CUSTO_LOTEINTERNO',IntToStr(FDQryCad.FindField('CODIGO_CUSTOPRODUCAO').AsInteger));
        end;
    end;
end;

procedure TfrmCUSTOPRODUCAO.UniFormCreate(Sender: TObject);
begin
  cFormModal := mm.varC_Form_Modal;
end;

procedure TfrmCUSTOPRODUCAO.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal          := nil;
end;

procedure TfrmCUSTOPRODUCAO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmCUSTOPRODUCAO.UniFormResize(Sender: TObject);
begin
  frmCUSTOPRODUCAO.Height   := 556;
  frmCUSTOPRODUCAO.Width    := 935;

  with frmCUSTOPRODUCAO.Constraints do
    begin
      MaxWidth  := 935;
      MinWidth  := 935;
      MaxHeight := 556;
      MinHeight := 556;
    end;

  frmCUSTOPRODUCAO.Position := poScreenCenter;
end;

procedure TfrmCUSTOPRODUCAO.UniFormShow(Sender: TObject);
begin
  Transfere();
end;

end.
