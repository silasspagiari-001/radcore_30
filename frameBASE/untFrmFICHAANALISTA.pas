unit untFrmFICHAANALISTA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniPanel, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Menus, uniMainMenu, uniDBEdit, UniButtonDbEdit,
  uniDateTimePicker, uniDBDateTimePicker, uniLabel, uniEdit, uniMemo, uniDBMemo,
  uniCheckBox, uniDBCheckBox;

type
  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros);
  TfrmFICHAANALISTA = class(TUniForm)
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
    btnOptions: TUniBitBtn;
    UniPageControl: TUniPageControl;
    UniTabSheetFICHA: TUniTabSheet;
    UniPopupMenuImpressao: TUniPopupMenu;
    EntregadosItenss1: TUniMenuItem;
    N13: TUniMenuItem;
    dsfiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    dscrud: TDataSource;
    FDQryCad: TFDQuery;
    UniContainerPanel1: TUniContainerPanel;
    rcBlock10: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    UniContainerPanel4: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    UniContainerPanel6: TUniContainerPanel;
    UniContainerPanel7: TUniContainerPanel;
    UniContainerPanel8: TUniContainerPanel;
    UniContainerPanel9: TUniContainerPanel;
    UniContainerPanel10: TUniContainerPanel;
    UniContainerPanel11: TUniContainerPanel;
    UniContainerPanel12: TUniContainerPanel;
    UniContainerPanel13: TUniContainerPanel;
    UniContainerPanel14: TUniContainerPanel;
    UniContainerPanel15: TUniContainerPanel;
    UniContainerPanel16: TUniContainerPanel;
    UniContainerPanel17: TUniContainerPanel;
    UniContainerPanel18: TUniContainerPanel;
    UniContainerPanel19: TUniContainerPanel;
    UniContainerPanel20: TUniContainerPanel;
    UniEditlote: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBFormattedNumberEditvlrtotal: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniLabel7: TUniLabel;
    UniLabel14: TUniLabel;
    UniButtonDbEditanalistai: TUniButtonDbEdit;
    UniLabel8: TUniLabel;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniLabel9: TUniLabel;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniLabel10: TUniLabel;
    UniButtonDbEditanalistaii: TUniButtonDbEdit;
    UniLabel11: TUniLabel;
    UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit9: TUniDBFormattedNumberEdit;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel15: TUniLabel;
    UniButtonDbEditanalistaiii: TUniButtonDbEdit;
    UniLabel16: TUniLabel;
    UniDBFormattedNumberEdit10: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit11: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit12: TUniDBFormattedNumberEdit;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniDBMemoobs: TUniDBMemo;
    rcBlock20: TUniContainerPanel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    UniDBCheckBox4: TUniDBCheckBox;
    UniContainerPanel21: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniDBFormattedNumberEdit13: TUniDBFormattedNumberEdit;
    UniContainerPanel22: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniContainerPanel23: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormResize(Sender: TObject);
    procedure btnCloseFormClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure btnDeleteRegClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure UniDBFormattedNumberEdit5Exit(Sender: TObject);
    procedure UniDBFormattedNumberEdit8Exit(Sender: TObject);
    procedure UniDBFormattedNumberEdit11Exit(Sender: TObject);
    procedure UniButtonDbEditanalistaiButtonClick(Sender: TObject);
    procedure UniButtonDbEditanalistaiiButtonClick(Sender: TObject);
    procedure UniButtonDbEditanalistaiiiButtonClick(Sender: TObject);
    procedure EntregadosItenss1Click(Sender: TObject);
  private
    { Private declarations }
  status:string;
  public
    { Public declarations }
  procedure SetBut(Acao: TAcaoCrud);
  procedure HabilitaCombobox(status:boolean);
  procedure MediaGeral();

  end;

function frmFICHAANALISTA: TfrmFICHAANALISTA;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.TypInfo, uniDBComboBox,
  untDM_RC, mkm_procedures, mkm_funcoes, untFrmPesquisa, mkm_impressao,
  unReportImpressao;

function frmFICHAANALISTA: TfrmFICHAANALISTA;
begin
  Result := TfrmFICHAANALISTA(mm.GetFormInstance(TfrmFICHAANALISTA));
end;

{ TfrmFICHAANALISTA }

procedure TfrmFICHAANALISTA.btnCancelRegClick(Sender: TObject);
begin
  FDQryCad.Cancel ;

  HabilitaCombobox(True);
  SetBut(tpListacomRegistros);
end;

procedure TfrmFICHAANALISTA.btnCloseFormClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmFICHAANALISTA.btnDeleteRegClick(Sender: TObject);
begin
  FDQryCad.Delete;
  HabilitaCombobox(True);
end;

procedure TfrmFICHAANALISTA.btnEditRegClick(Sender: TObject);
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
      FDQryCad.FindField('MESTRE_ID').AsInteger    := mm.varM_CODIGOMESTRE;
      FDQryCad.FindField('EMPRESA').AsInteger      := MM.varI_Code_Company;

      FDQryCad.FindField('ANALISTA_I').AsInteger   := 0;
      FDQryCad.FindField('ANALISTA_II').AsInteger  := 0;
      FDQryCad.FindField('ANALISTA_III').AsFloat   := 0;

      FDQryCad.FindField('PESO_INI_I').AsFloat     := 0;
      FDQryCad.FindField('PESO_INI_II').AsFloat    := 0;
      FDQryCad.FindField('PESO_INI_III').AsFloat   := 0;

      FDQryCad.FindField('PESO_FIN_I').AsFloat     := 0;
      FDQryCad.FindField('PESO_FIN_II').AsFloat    := 0;
      FDQryCad.FindField('PESO_FIN_III').AsFloat   := 0;

      FDQryCad.FindField('PESO_MEDIA_I').AsFloat   := 0;
      FDQryCad.FindField('PESO_MEDIA_II').AsFloat  := 0;
      FDQryCad.FindField('PESO_MEDIA_III').AsFloat := 0;

      dm_rc.sqlBuscas.Close;
    end
  else
    FDQryCad.Edit;

  HabilitaCombobox(False);
  SetBut(tpAlterar);
end;

procedure TfrmFICHAANALISTA.btnOptionsClick(Sender: TObject);
begin
  UniPopupMenuImpressao.PopupBy( TUniButton( sender ) );
end;

procedure TfrmFICHAANALISTA.btnSaveRegClick(Sender: TObject);
begin
  if FDQryCad.State in [dsInsert] then
   begin
     FDQryCad.FindField('KEY').AsString          := Gera_Guid;
     FDQryCad.FindField('CODIGO').AsInteger      := Ultimo_Codigo('SEMENTES_ANALISTA','CODIGO',True);
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

procedure TfrmFICHAANALISTA.EntregadosItenss1Click(Sender: TObject);
begin
  mm.varC_caminhopdf :=  IMPRESSAO_FichaSemente(mm.varI_Code_Company,
                                                mm.varM_CODIGOMESTRE);

  unfImpressao.ShowModal();
end;

procedure TfrmFICHAANALISTA.HabilitaCombobox(status: boolean);
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

procedure TfrmFICHAANALISTA.MediaGeral;
var
  m_total : Real;
begin
  m_total := FDQryCad.FindField('PESO_MEDIA_I').AsFloat  +
             FDQryCad.FindField('PESO_MEDIA_II').AsFloat +
             FDQryCad.FindField('PESO_MEDIA_III').AsFloat;

  if FDQryCad.FindField('PESO_MEDIA_II').AsFloat > 0 then
    FDQryCad.FindField('MEDIA_GERAL').AsFloat := m_total / 2
  else
  if FDQryCad.FindField('PESO_MEDIA_III').AsFloat > 0 then
    FDQryCad.FindField('MEDIA_GERAL').AsFloat := m_total / 3
  else
    FDQryCad.FindField('MEDIA_GERAL').AsFloat := m_total;
end;

procedure TfrmFICHAANALISTA.SetBut(Acao: TAcaoCrud);
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

procedure TfrmFICHAANALISTA.UniButtonDbEditanalistaiButtonClick(
  Sender: TObject);
begin
  UniButtonDbEditanalistai.SetFocus;
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.FindField('ANALISTA_I').AsInteger := StrToInt(MM.varC_codigo_busca);
       UniButtonDbEditanalistai.SetFocus;
     end;
   end);
end;

procedure TfrmFICHAANALISTA.UniButtonDbEditanalistaiiButtonClick(
  Sender: TObject);
begin
  UniButtonDbEditanalistaii.SetFocus;
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.FindField('ANALISTA_II').AsInteger := StrToInt(MM.varC_codigo_busca);
       UniButtonDbEditanalistaii.SetFocus;
     end;
   end);
end;

procedure TfrmFICHAANALISTA.UniButtonDbEditanalistaiiiButtonClick(
  Sender: TObject);
begin
  UniButtonDbEditanalistaiii.SetFocus;
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.FindField('ANALISTA_III').AsInteger := StrToInt(MM.varC_codigo_busca);
       UniButtonDbEditanalistaiii.SetFocus;
     end;
   end);
end;

procedure TfrmFICHAANALISTA.UniDBFormattedNumberEdit11Exit(Sender: TObject);
begin
  FDQryCad.FindField('PESO_MEDIA_III').AsFloat := (FDQryCad.FindField('PESO_FIN_III').AsFloat / FDQryCad.FindField('PESO_INI_III').AsFloat)  * 100;
  MediaGeral();

end;

procedure TfrmFICHAANALISTA.UniDBFormattedNumberEdit5Exit(Sender: TObject);
begin
  FDQryCad.FindField('PESO_MEDIA_I').AsFloat := (FDQryCad.FindField('PESO_FIN_I').AsFloat / FDQryCad.FindField('PESO_INI_I').AsFloat)  * 100;
  MediaGeral();
end;

procedure TfrmFICHAANALISTA.UniDBFormattedNumberEdit8Exit(Sender: TObject);
begin
  FDQryCad.FindField('PESO_MEDIA_II').AsFloat := (FDQryCad.FindField('PESO_FIN_II').AsFloat / FDQryCad.FindField('PESO_INI_II').AsFloat)  * 100;
  MediaGeral();

end;

procedure TfrmFICHAANALISTA.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmFICHAANALISTA.UniFormResize(Sender: TObject);
begin
  frmFICHAANALISTA.Height   := 432;
  frmFICHAANALISTA.Width    := 750;

  with frmFICHAANALISTA.Constraints do
    begin
      MaxWidth  := 750;
      MinWidth  := 729;
      MaxHeight := 432;
      MinHeight := 432;
    end;

  frmFICHAANALISTA.Position := poScreenCenter;
end;

procedure TfrmFICHAANALISTA.UniFormShow(Sender: TObject);
  var i : integer; Cmp:String;
begin
  UniEditlote.Text    :=  '';

  FDQryFiltro.Close;
  FDQryFiltro.SQL.Clear;
  FDQryFiltro.SQL.Text := 'select * from SEMENTES_ANALISTA where mestre_id = ' + IntToStr(mm.varM_CODIGOMESTRE);
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

  SqlPesquisa('select * from LOTEINTERNO where codigo = '+IntToStr(mm.varM_CODIGOMESTRE));
  UniEditlote.Text    :=  dm_rc.sqlBuscas.FindField('LOTE').AsString;

  SetBut(tpListacomRegistros);
  HabilitaCombobox(True);
end;

end.
