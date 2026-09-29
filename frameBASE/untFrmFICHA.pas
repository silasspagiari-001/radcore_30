unit untFrmFICHA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniPageControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,uniHTMLFrame, uniEdit, UniButtonDbEdit, uniDateTimePicker,
  uniDBDateTimePicker, uniLabel, uniDBEdit, uniMultiItem, uniComboBox,
  uniDBComboBox, Vcl.Menus, uniMainMenu;

type
  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros);

  TfrmFICHA = class(TUniForm)
    paBaseButtons: TUniContainerPanel;
    paOF: TUniContainerPanel;
    btnCloseForm: TUniBitBtn;
    paP: TUniContainerPanel;
    paNAE: TUniContainerPanel;
    btnEditReg: TUniBitBtn;
    btnDeleteReg: TUniBitBtn;
    paGC: TUniContainerPanel;
    btnSaveReg: TUniBitBtn;
    btnCancelReg: TUniBitBtn;
    rcBlock10: TUniContainerPanel;
    UniPageControl: TUniPageControl;
    UniTabSheetFICHA: TUniTabSheet;
    UniContainerPanel1: TUniContainerPanel;
    dsfiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    dscrud: TDataSource;
    FDQryCad: TFDQuery;
    UniContainerPanel2: TUniContainerPanel;
    edCodigo: TUniDBEdit;
    UniLabel3: TUniLabel;
    rcBlock280: TUniContainerPanel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel14: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel2: TUniLabel;
    rcBlock40: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniButtonDbEdit1: TUniButtonDbEdit;
    rcBlock50: TUniContainerPanel;
    UniLabel9: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel5: TUniLabel;
    UniContainerPanel7: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniContainerPanel8: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniContainerPanel9: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniContainerPanel11: TUniContainerPanel;
    UniLabel12: TUniLabel;
    UniContainerPanel12: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniContainerPanel13: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniContainerPanel14: TUniContainerPanel;
    UniLabel16: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    rcBlock290: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel17: TUniLabel;
    UniContainerPanel15: TUniContainerPanel;
    UniLabel18: TUniLabel;
    UniContainerPanel17: TUniContainerPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniContainerPanel18: TUniContainerPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniContainerPanel21: TUniContainerPanel;
    UniContainerPanel22: TUniContainerPanel;
    UniContainerPanel23: TUniContainerPanel;
    UniContainerPanel24: TUniContainerPanel;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniContainerPanel25: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniContainerPanel26: TUniContainerPanel;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniLabel24: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniContainerPanel10: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniDBEdit19: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBComboBoxcategoria: TUniDBComboBox;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    btnOptions: TUniBitBtn;
    UniPopupMenuImpressao: TUniPopupMenu;
    EntregadosItenss1: TUniMenuItem;
    N13: TUniMenuItem;
    I1: TUniMenuItem;
    procedure btnCloseFormClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniButtonDbEdit1ButtonClick(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormResize(Sender: TObject);
    procedure UniButtonDbEdit1Exit(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure EntregadosItenss1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
  private
    { Private declarations }
  status:string;
  public
    { Public declarations }
  procedure SetBut(Acao: TAcaoCrud);
  procedure HabilitaCombobox(status:boolean);
  end;

function frmFICHA: TfrmFICHA;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmBase, untDM_RC, mkm_layout, mkm_func_web,
  System.TypInfo, mkm_procedures, mkm_funcoes, untFrmPesquisa, mkm_impressao,
  unReportImpressao;

function frmFICHA: TfrmFICHA;
begin
  Result := TfrmFICHA(mm.GetFormInstance(TfrmFICHA));
end;

procedure TfrmFICHA.btnCancelRegClick(Sender: TObject);
begin
  FDQryCad.Cancel ;

  HabilitaCombobox(True);
  SetBut(tpListacomRegistros);
end;

procedure TfrmFICHA.btnCloseFormClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmFICHA.btnDeleteRegClick(Sender: TObject);
begin
  FDQryCad.Delete;
  HabilitaCombobox(True);
end;

procedure TfrmFICHA.btnEditRegClick(Sender: TObject);
var
  i : integer; Cmp:String;
begin

  if FDQryFiltro.RecordCount > 0 then
    status := 'altera'
  else
    status := 'inclui';

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

  if status = 'inclui' then
    begin
      FDQryCad.Append;
      FDQryCad.FindField('MESTRE_ID').AsInteger          := mm.varM_CODIGOMESTRE;
      FDQryCad.FindField('PESSOA').AsInteger             := 0;
      FDQryCad.FindField('EMPRESA').AsInteger            := 0;
      FDQryCad.FindField('PESOENTRADA').AsFloat          := 0;
      FDQryCad.FindField('VIABILIDADE_FOR').AsFloat      := 0;
      FDQryCad.FindField('PUREZA_FOR').AsFloat           := 0;
      FDQryCad.FindField('PUREZA_INTERNA').AsFloat       := 0;
      FDQryCad.FindField('VIABILIDADE_INTERNA').AsFloat  := 0;

      SqlPesquisa('select * from loteinterno where codigo = ' + IntToStr(mm.varM_CODIGOMESTRE));
        FDQryCad.FindField('MESTRE_LOTE').AsString         := dm_rc.sqlBuscas.FindField('LOTE').AsString;
        FDQryCad.FindField('SAFRA').AsString               := dm_rc.sqlBuscas.FindField('SAFRAVALIDA').AsString;
        FDQryCad.FindField('PUREZA_FOR').AsFloat           := dm_rc.sqlBuscas.FindField('PUREZA').AsFloat;
        FDQryCad.FindField('VIABILIDADE_FOR').AsFloat      := dm_rc.sqlBuscas.FindField('TETRAZOLIO').AsFloat;

      SqlPesquisa('select p.cultivar,p.sementenome from  loteinterno li inner join produtos p on (li.produto = p.codigo) where li.codigo = ' + IntToStr(mm.varM_CODIGOMESTRE));
        FDQryCad.FindField('ESPECIE').AsString             := dm_rc.sqlBuscas.FindField('SEMENTENOME').AsString;
        FDQryCad.FindField('CULTIVAR').AsString            := dm_rc.sqlBuscas.FindField('CULTIVAR').AsString;


      UniDBComboBox1.ItemIndex                             := 0;
      dm_rc.sqlBuscas.Close;
    end
  else
    FDQryCad.Edit;

  HabilitaCombobox(False);
  SetBut(tpAlterar);
end;

procedure TfrmFICHA.btnOptionsClick(Sender: TObject);
begin
  UniPopupMenuImpressao.PopupBy( TUniButton( sender ) );
end;

procedure TfrmFICHA.btnSaveRegClick(Sender: TObject);
begin
  if FDQryCad.State in [dsInsert] then
   begin
     FDQryCad.FindField('KEY').AsString          := Gera_Guid;
     FDQryCad.FindField('CODIGO').AsInteger      := Ultimo_Codigo('FICHA','CODIGO',True);
   end;

  try
    FDQryCad.Post;
    HabilitaCombobox(True);
    SetBut(tpListacomRegistros);
    dm_rc.rc_ShowSweetAlert( 'Ok', 'Dados Gravados com SUCESSO!' , 'success' , false );
  except
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui gravar, chame o SUPORTE!' , 'error' , false );
  end;

end;

procedure TfrmFICHA.EntregadosItenss1Click(Sender: TObject);
begin
  mm.varC_caminhopdf :=  IMPRESSAO_FichaControle(mm.varI_Code_Company,
                                                 mm.varM_CODIGOMESTRE);

  unfImpressao.ShowModal();
end;

procedure TfrmFICHA.HabilitaCombobox(status: boolean);
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

procedure TfrmFICHA.I1Click(Sender: TObject);
begin
  mm.varC_caminhopdf :=  IMPRESSAO_FichaBatida(mm.varI_Code_Company,
                                               mm.varM_CODIGOMESTRE);

  unfImpressao.ShowModal();
end;

procedure TfrmFICHA.SetBut(Acao: TAcaoCrud);
var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));

  // Controle dos botoes
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
   begin
     btnEditReg.Visible    := false;
     btnDeleteReg.Visible  := false;
     btnCancelReg.Visible  := true;
     btnSaveReg.Visible    := true;
     btnOptions.Visible    := False;
   end
  else if acao in [tpListacomRegistros] then
    begin
      btnEditReg.Visible    := true;
      btnDeleteReg.Visible  := true;
      btnCancelReg.Visible  := false;
      btnSaveReg.Visible    := false;
      btnOptions.Visible    := true;
    end;
end;

procedure TfrmFICHA.UniButtonDbEdit1ButtonClick(Sender: TObject);
begin
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       fdqrycad.FindField('PESSOA').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmFICHA.UniButtonDbEdit1Exit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    FDQryCad.FindField('NOME_PESSOA').AsString := Acha_Item('PESSOAS',FDQryCad.FindField('PESSOA').AsString);
end;

procedure TfrmFICHA.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmFICHA.UniFormResize(Sender: TObject);
begin
  frmFICHA.Height   := 432;
  frmFICHA.Width    := 750;

  with frmFICHA.Constraints do
    begin
      MaxWidth  := 750;
      MinWidth  := 729;
      MaxHeight := 432;
      MinHeight := 432;
    end;

  frmFICHA.Position := poScreenCenter;
end;

procedure TfrmFICHA.UniFormShow(Sender: TObject);
  var i : integer; Cmp:String;
begin
  FDQryFiltro.Close;
  FDQryFiltro.SQL.Clear;
  FDQryFiltro.SQL.Text := 'select * from ficha where mestre_id = ' + IntToStr(mm.varM_CODIGOMESTRE);
  FDQryFiltro.Open();

  try
    FDQryCad.Close ;
    for i := 0 to FDQryCad.Params.Count - 1 do
    begin
      Cmp                       :=  FDQryCad.Params[i].Name;
       FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
    end;
     FDQryCad.Open;
  Except
     FDQryCad.Params[0].AsInteger := -1 ;
     FDQryCad.Open;
  End;

  SetBut(tpListacomRegistros);
  HabilitaCombobox(True);
end;

end.
