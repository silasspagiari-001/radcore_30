unit untFrmCHEQUES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, uniPanel, uniHTMLFrame,
  uniGUIBaseClasses, uniGUIClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, uniBasicGrid, uniDBGrid,
  uniMultiItem, uniComboBox, uniDateTimePicker, uniEdit, UniButtonEdit,
  uniLabel, uniScrollBox, uniPageControl, uniButton, uniBitBtn, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, UniButtonDbEdit, uniDBEdit,
  uniDBDateTimePicker, uniMemo, uniDBMemo;

type
  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros);

  TfrmCADCHEQUES = class(TfrmBase)
    dsfiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    dscrud: TDataSource;
    FDQryCad: TFDQuery;
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
    paSearchFilter1: TUniContainerPanel;
    paSearchField1: TUniContainerPanel;
    UniLabelc1: TUniLabel;
    paSearchOp1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniButtonEditppessoas: TUniButtonEdit;
    UniLabel1: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniButtonEditpnumero: TUniButtonEdit;
    UniLabel2: TUniLabel;
    labTitleSearch: TUniLabel;
    paSearchFilterPeriodSelect: TUniContainerPanel;
    paSearchFilterDtIni: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchCRUDDtIni: TUniDateTimePicker;
    paSearchFilterDtEnd: TUniContainerPanel;
    UniLabelDtEnd: TUniLabel;
    edSearchCRUDDtEnd: TUniDateTimePicker;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel4: TUniLabel;
    cbxSearchCRUDField2: TUniComboBox;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniComboBoxSTATUS: TUniComboBox;
    paSearchBtn: TUniContainerPanel;
    btnSearchCRUD: TUniBitBtn;
    btnSearchMoreFilters: TUniBitBtn;
    dbgSearchCRUD: TUniDBGrid;
    tabRegister: TUniTabSheet;
    paBaseRegData1: TUniContainerPanel;
    labExit: TUniLabel;
    UniLabelTOTALTITULOS: TUniLabel;
    FDQryFiltroKEY: TStringField;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroBANCO: TIntegerField;
    FDQryFiltroAGENCIA: TStringField;
    FDQryFiltroCONTA: TStringField;
    FDQryFiltroNUMERO_CHQ: TIntegerField;
    FDQryFiltroNUMERO_DOC: TIntegerField;
    FDQryFiltroSERIE_DOC: TStringField;
    FDQryFiltroDOCUMENTO_DOC: TIntegerField;
    FDQryFiltroPARCELA: TIntegerField;
    FDQryFiltroVALOR: TFMTBCDField;
    FDQryFiltroCORRENTISTA: TStringField;
    FDQryFiltroCPFCNPJ: TStringField;
    FDQryFiltroPESSOA: TIntegerField;
    FDQryFiltroNOME_PESSOA: TStringField;
    FDQryFiltroEMPRESA: TIntegerField;
    FDQryFiltroEMISSAO: TDateField;
    FDQryFiltroVENCIMENTO: TDateField;
    FDQryFiltroBAIXA: TDateField;
    FDQryFiltroDESTINO: TStringField;
    FDQryFiltroOBSERVACAO: TStringField;
    FDQryFiltroSTATUS: TStringField;
    UniEditdescricaocorrentista: TUniEdit;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    edCodigo: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel18: TUniLabel;
    UniButtonDbEdit2: TUniButtonDbEdit;
    UniLabel6: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    UniButtonDbEdit1: TUniButtonDbEdit;
    UniLabel7: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit;
    UniLabel10: TUniLabel;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    rcBlock100: TUniContainerPanel;
    rcBlock110: TUniContainerPanel;
    rcBlock120: TUniContainerPanel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel13: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel14: TUniLabel;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    UniLabel15: TUniLabel;
    rcBlock130: TUniContainerPanel;
    UniDBEdit6: TUniDBEdit;
    UniLabel16: TUniLabel;
    rcBlock140: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    rcBlock150: TUniContainerPanel;
    UniDBEdit7: TUniDBEdit;
    rcBlock160: TUniContainerPanel;
    rcBlock170: TUniContainerPanel;
    rcBlock180: TUniContainerPanel;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniMemolog: TUniMemo;
    UniLabel22: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel23: TUniLabel;
    tbimpressao: TFDMemTable;
    procedure FDQryFiltroSTATUSGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniFrameCreate(Sender: TObject);
    procedure btnSearchCRUDClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure dbgSearchCRUDDblClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure btnNewRegClick(Sender: TObject);
    procedure UniButtonDbEdit2ButtonClick(Sender: TObject);
    procedure UniButtonDbEdit2Exit(Sender: TObject);
    procedure FDQryFiltroCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure btnOptionsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure ativabusca();
  procedure HabilitaCombobox(status:boolean);
  procedure SomaTotal();
  procedure SetBut(Acao: TAcaoCrud);
  function  CamposValidados :Boolean;
  procedure MemoGravaLog();
  procedure Exclui;
  end;

var
  frmCADCHEQUES: TfrmCADCHEQUES;
  state           : string;

implementation

{$R *.dfm}

uses MainModule, mkm_func_web,uniDBComboBox, untDM_RC, System.TypInfo,
  mkm_funcoes, mkm_procedures, untFrmPesquisa, untFrmCADCHEQUES_HISTORICO,
  unReportImpressao, mkm_impressao;

procedure TfrmCADCHEQUES.ativabusca;
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


procedure TfrmCADCHEQUES.SomaTotal;
var
  sumvalue : Real;
begin
  sumvalue := 0;

  FDQryFiltro.DisableControls;
  FDQryFiltro.First;
  while not FDQryFiltro.Eof do
    begin
      sumvalue := sumvalue + FDQryFiltro.FindField('VALOR').AsFloat;
      FDQryFiltro.Next;
    end;
  FDQryFiltro.First;
  FDQryFiltro.EnableControls;

  UniLabelTOTALTITULOS.Text := FormatFloat('R$ #,0.00', sumvalue);
end;

procedure TfrmCADCHEQUES.btnCancelRegClick(Sender: TObject);
begin
  inherited;
  if  FDQryFiltro.IsEmpty then
      SetBut(tpListaVazia)
  else
      SetBut(tpListacomRegistros);

   FDQryCad.Close ;
end;

procedure TfrmCADCHEQUES.btnDeleteRegClick(Sender: TObject);
begin
  inherited;
  Exclui();
end;

procedure TfrmCADCHEQUES.btnEditRegClick(Sender: TObject);
  var i : integer; Cmp:String;
begin
  inherited;
  pgBaseCadControl.ActivePage := tabRegister;

  SetBut(tpAlterar);
  mm.FDTransaction.StartTransaction;

  HabilitaCombobox(False);

  Try
    FDQryCad.Close;
   for i := 0 to  FDQryCad.Params.Count - 1 do
   begin
      Cmp :=  FDQryCad.Params[i].Name;
      FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
   end;
    FDQryCad.Open;

    FDQryCad.Edit;
  Except
   Abort ;
  End ;
end;

procedure TfrmCADCHEQUES.btnNewRegClick(Sender: TObject);
  var i : integer; Cmp:String;
begin
  inherited;

  pgBaseCadControl.ActivePage := tabRegister;

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

  HabilitaCombobox(False);

  if not( FDQryCad.Active) then
      FDQryCad.Open;

   FDQryCad.Insert ;
   FDQryCad.FindField('CODIGO').AsInteger      := 0;
   FDQryCad.FindField('PARCELA').AsInteger     := 1;
   FDQryCad.FindField('PESSOA').AsInteger      := 0;
   FDQryCad.FindField('EMPRESA').AsInteger     := MM.varI_Code_Company;
   FDQryCad.FindField('STATUS').AsString       := 'Aberto';
   FDQryCad.FindField('EMISSAO').AsDateTime    := Date;
   FDQryCad.FindField('VENCIMENTO').AsDateTime := Date;
   FDQryCad.FindField('VALOR').AsFloat         := 0;

  UniButtonDbEdit2.SetFocus;
end;

procedure TfrmCADCHEQUES.btnOptionsClick(Sender: TObject);
begin
  inherited;
  if FDQryFiltro.RecordCount > 0 then
    begin
      tbimpressao.Close;
      tbimpressao.CopyDataSet(FDQryFiltro,[coStructure,coRestart,coAppend]);

      mm.varC_caminhopdf :=  RELATORIO_RELACAOCHEQUE(mm.varI_Code_Company,
                                                    edSearchCRUDDtIni.Text,
                                                    edSearchCRUDDtEnd.Text,
                                                    cbxSearchCRUDField2.Text,
                                                    UniComboBoxSTATUS.Text,
                                                    tbimpressao
                                                    );

      unfImpressao.ShowModal();
    end
  else
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Busque Alguma Informação antes de IMPRIMIR!' , 'warning' , false );
end;

procedure TfrmCADCHEQUES.btnSaveRegClick(Sender: TObject);
begin
  inherited;
  if not (CamposValidados) then
     Abort
  else
    if FDQryCad.State in [dsInsert,dsEdit] then
     Begin
       if FDQryCad.State in [dsInsert] then
         begin
           FDQryCad.FindField('LOGINCLUSAO').AsString  := mm.vUserName + ' - ' + DateToStr(date) + ' - ' + TimeToStr(Time);
           FDQryCad.FindField('CODIGO').AsInteger      := Ultimo_Codigo(FDQryCad.UpdateOptions.UpdateTableName,'CODIGO',True);
           FDQryCad.FindField('KEY').AsString          := Gera_Guid;
         end
       else
         FDQryCad.FindField('LOGALTERACAO').AsString  := mm.vUserName + ' - ' + DateToStr(date) + ' - ' + TimeToStr(Time);

       state := Retornastatustable(FDQryCad);
       FDQryCad.Post;
       mm.FDTransaction.CommitRetaining;
       mm.FDTransaction.Commit;

       try
         MemoGravaLog();
         GravaLog(mm.varI_Code_Company,
                  mm.varI_User,
                  FDQryCad.FindField('CODIGO').AsInteger,
                  mm.vUserName,
                  state,
                  FDQryCad.UpdateOptions.UpdateTableName,
                  '',
                  UniMemolog.Text);

         dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Gravados com SUCESSO!' , 'success' , false );
       except
         dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui gravar, chame o SUPORTE!' , 'error' , false );
       end;
     End;

  HabilitaCombobox(True);

  if  FDQryFiltro.Active then
    FDQryFiltro.Refresh;

  if  FDQryFiltro.IsEmpty then
   SetBut(tpListaVazia)
  Else
   SetBut(tpListacomRegistros);
end;

procedure TfrmCADCHEQUES.btnSearchClick(Sender: TObject);
begin
  inherited;
  ativabusca();
end;

procedure TfrmCADCHEQUES.btnSearchCRUDClick(Sender: TObject);
var
  SQL,WHERE,SITUACAO,M_AND,M_ORDEM,M_SITUACAO : string;
begin
  inherited;

  if UniButtonEditppessoas.Text = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'Atenção', 'Preencher o campo de Pessoas ou deixa "0"', 'warning' ) ;
      UniButtonEditppessoas.SetFocus;
      abort;
    end;

  if UniButtonEditpnumero.Text = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'Atenção', 'Preencher o campo de Numero ou deixa "0"', 'warning' ) ;
      UniButtonEditpnumero.SetFocus;
      abort;
    end;

  case UniComboBoxSTATUS.ItemIndex of
    0 : M_SITUACAO := ' AND STATUS = ' + QuotedStr('Aberto');
    1 : M_SITUACAO := ' AND STATUS = ' + QuotedStr('Devolvido');
    2 : M_SITUACAO := ' AND STATUS = ' + QuotedStr('Compensado');
    3 : M_SITUACAO := '';
  end;


  case cbxSearchCRUDField2.ItemIndex of
    0: M_ORDEM := ' ORDER BY EMISSAO    asc';
    1: M_ORDEM := ' ORDER BY VENCIMENTO asc';
    2: M_ORDEM := ' ORDER BY BAIXA      asc';
  end;


  case cbxSearchCRUDField2.ItemIndex of
    0: M_AND   := ' AND EMISSAO    BETWEEN               ' + QuotedStr(DataPonto(edSearchCRUDDtIni.Text))        +
                  ' AND                                  ' + QuotedStr(DataPonto(edSearchCRUDDtEnd.Text));
    1: M_AND   := ' AND VENCIMENTO  BETWEEN              ' + QuotedStr(DataPonto(edSearchCRUDDtIni.Text))        +
                  ' AND                                  ' + QuotedStr(DataPonto(edSearchCRUDDtEnd.Text));
    2: M_AND   := ' AND BAIXA       BETWEEN              ' + QuotedStr(DataPonto(edSearchCRUDDtIni.Text))        +
                  ' AND                                  ' + QuotedStr(DataPonto(edSearchCRUDDtEnd.Text));
  end;

  SQL := ' SELECT * FROM CHEQUES ' +
         ' WHERE EMPRESA                                = ' + IntToStr(mm.varI_Code_Company) +
          variif(UniEditdescricaocorrentista.Text       = ''     ,'','AND CORRENTISTA STARTING WITH ' + QuotedStr(UniEditdescricaocorrentista.Text)) +
          variif(UniButtonEditppessoas.Text             = '0'    ,'','AND PESSOA                  = ' + QuotedStr(UniButtonEditppessoas.Text))       +
          variif(UniButtonEditpnumero.Text              = '0'    ,'','AND NUMERO                  = ' + QuotedStr(UniButtonEditpnumero.Text));

  FDQryFiltro.Close;
  FDQryFiltro.SQL.Clear;
  FDQryFiltro.SQL.Text  := SQL + M_AND + M_SITUACAO + M_ORDEM;
  FDQryFiltro.Open();


  SomaTotal();
  if FDQryFiltro.RecordCount > 0 then
    SetBut(tpListacomRegistros)
  else
    SetBut(tpListaVazia);

end;

function TfrmCADCHEQUES.CamposValidados: Boolean;
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

procedure TfrmCADCHEQUES.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
begin
  inherited;
  if Column.FieldName = 'CODIGO' then
    begin
      mm.varC_cheques_codigo := FDQryFiltroCODIGO.AsInteger;
      frmcadcheques_historico.ShowModal();
      FDQryFiltro.Refresh;
    end;
end;

procedure TfrmCADCHEQUES.dbgSearchCRUDDblClick(Sender: TObject);
  var i : integer; Cmp:String;
begin
  inherited;
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
  pgBaseCadControl.ActivePage := tabRegister;
end;

procedure TfrmCADCHEQUES.Exclui;
var
  codigotable : integer;
begin
  MemoGravaLog();
  codigotable := FDQryCad.FindField('CODIGO').AsInteger;
  FDQryCad.Delete;

  try
    if  FDQryFiltro.Active then
      FDQryFiltro.Refresh;

   GravaLog(mm.varI_Code_Company,
            mm.varI_User,
            codigotable,
            mm.vUserName,
            'dsDelete',
            FDQryCad.UpdateOptions.UpdateTableName,
            '',
            UniMemolog.Text);

    dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Excluido com SUCESSO!' , 'success' , false );
    pgBaseCadControl.ActivePage := tabSearch;
  except
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui DELETAR, chame o SUPORTE!' , 'error' , false );
  end;
  SomaTotal();
end;

procedure TfrmCADCHEQUES.FDQryFiltroCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
      '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';

end;

procedure TfrmCADCHEQUES.FDQryFiltroSTATUSGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroSTATUS.AsString = 'Aberto' then
        Text := '<span class="badge badge-warning">Aberto</span>'
      else
      if FDQryFiltroSTATUS.AsString = 'Compensado' then
        Text := '<span class="badge badge-success">Compensado</span>'
      else
      if FDQryFiltroSTATUS.AsString = 'Devolvido' then
        Text := '<span class="badge badge-danger">Devolvido</span>';
    end;
end;

procedure TfrmCADCHEQUES.HabilitaCombobox(status: boolean);
var
  e,i:integer;
begin
  e := 0 ;
  for I:= 0 to ComponentCount -1 do
     begin
       if ( Components[I] is TUniDBComboBox )  then
         begin
           TUniDBEdit(Components[i]).ReadOnly := status;
         end;
     end;
end;

procedure TfrmCADCHEQUES.MemoGravaLog;
begin
  UniMemolog.Clear;

  UniMemolog.Lines.Add(DataSetToJsonTXT(FDQryCad));
end;

procedure TfrmCADCHEQUES.SetBut(Acao: TAcaoCrud);
var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));

  // Controle dos botoes
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
     begin
       btnNewReg.Visible     := false;
       btnEditReg.Visible    := false;
       btnDeleteReg.Visible  := false;
       btnCancelReg.Visible  := true;
       btnSaveReg.Visible    := true;
     end
   else if acao in [tpListaVazia] then
      begin
        btnNewReg.Visible     := true;
        btnEditReg.Visible    := false;
        btnDeleteReg.Visible  := false;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
      end
    else if acao in [tpListacomRegistros] then
      begin
        btnNewReg.Visible     := true;
        btnEditReg.Visible    := true;
        btnDeleteReg.Visible  := true;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
       end;
end;


procedure TfrmCADCHEQUES.UniButtonDbEdit2ButtonClick(Sender: TObject);
begin
  inherited;
  UniButtonDbEdit2.SetFocus;
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('PESSOA').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADCHEQUES.UniButtonDbEdit2Exit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEdit2.Text <> '') and (UniButtonDbEdit2.Text <> '0') then
        begin
          FDQryCad.FindField('NOME_PESSOA').AsString := Acha_Item('PESSOAS',FDQryCad.FindField('PESSOA').AsString);
        end;
    end;
end;

procedure TfrmCADCHEQUES.UniFrameCreate(Sender: TObject);
begin
  inherited;

  cbxSearchCRUDField2.ItemIndex := 1;
  UniComboBoxSTATUS.ItemIndex   := 0;

  edSearchCRUDDtIni.Text        := '01/01/2010';
  edSearchCRUDDtEnd.Text        := '31/12/2099';

  HabilitaCombobox(True);

  btnSearchCRUD.OnClick(Self);
  ativabusca();
end;

initialization
  RegisterClass(TfrmCADCHEQUES);
end.
