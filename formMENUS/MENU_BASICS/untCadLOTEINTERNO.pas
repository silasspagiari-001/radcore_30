unit untCadLOTEINTERNO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uniGUIBaseClasses, uniGUIClasses, uniScreenMask, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uniHTMLFrame, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniEdit, uniLabel, uniScrollBox, uniPanel, uniPageControl,
  uniButton, uniBitBtn, uniMemo, uniCheckBox, uniDBCheckBox, uniDBEdit,
  uniDBComboBox, UniButtonDbEdit, Vcl.Menus, uniMainMenu;

type
  TfrmcadLOTEINTERNO = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBComboBoxbarracao: TUniDBComboBox;
    UniLabel6: TUniLabel;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    UniButtonDbEditcodPRODUTO: TUniButtonDbEdit;
    UniLabel10: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel11: TUniLabel;
    rcBlock70: TUniContainerPanel;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    rcBlock100: TUniContainerPanel;
    rcBlock110: TUniContainerPanel;
    UniLabel7: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniLabel25: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniLabel8: TUniLabel;
    UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit;
    UniLabel9: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel12: TUniLabel;
    rcBlock120: TUniContainerPanel;
    rcBlock130: TUniContainerPanel;
    rcBlock140: TUniContainerPanel;
    UniLabel13: TUniLabel;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroLOTE: TStringField;
    FDQryFiltroPOSICAO: TStringField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroDISPONIVEL: TFMTBCDField;
    FDQryFiltroTOTALPONTOS: TFMTBCDField;
    FDQryFiltroBARRACAO: TStringField;
    FDQryFiltroopcao: TStringField;
    rcBlock150: TUniContainerPanel;
    rcBlock160: TUniContainerPanel;
    UniDBComboBox2: TUniDBComboBox;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    FDQryFiltroTIPO: TStringField;
    UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit;
    UniLabel18: TUniLabel;
    popMenuOptions: TUniPopupMenu;
    G1: TUniMenuItem;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    rcBlock170: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    N1: TUniMenuItem;
    R1: TUniMenuItem;
    FDQryFiltroPRODUTO: TIntegerField;
    procedure btnNewRegClick(Sender: TObject);
    procedure dbgSearchCRUDDblClick(Sender: TObject);
    procedure UniButtonDbEditcodPRODUTOButtonClick(Sender: TObject);
    procedure UniButtonDbEditcodPRODUTOExit(Sender: TObject);
    procedure FDQryFiltroopcaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FDQryFiltroTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure dbgSearchCRUDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure G1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
  private
    { Private declarations }
  posicao_x, posicao_y  : Integer;
  public
    { Public declarations }
  procedure carregabarracao();
  end;

var
  frmcadLOTEINTERNO: TfrmcadLOTEINTERNO;

implementation

{$R *.dfm}

uses mkm_procedures, untDM_RC, MainModule, untFrmPesquisa, Vcl.Grids,
  untFrmFICHA, untFrmCUSTOPRODUCAO, untFrmFICHAANALISTA;
{ TfrmcadLOTEINTERNO }

procedure TfrmcadLOTEINTERNO.btnNewRegClick(Sender: TObject);
begin
  inherited;
  carregabarracao();
end;

procedure TfrmcadLOTEINTERNO.carregabarracao;
begin
  UniDBComboBoxbarracao.Clear;
  SqlPesquisa('select descricao from barracao where ativo = ' + QuotedStr('T') + ' ORDER BY CODIGO');
  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      UniDBComboBoxbarracao.Items.Add(dm_rc.sqlBuscas.FindField('DESCRICAO').AsString);

      dm_rc.sqlBuscas.Next;
    end;
dm_rc.sqlBuscas.Close;
end;

procedure TfrmcadLOTEINTERNO.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
  var Linha, Coluna : Integer;
begin
  inherited;
   Linha  := TStringGrid(dbgSearchCRUD).Row;
   Coluna := dbgSearchCRUD.CurrCol;

  if Column.FieldName = 'opcao' then
    begin
      popMenuOptions.Popup(posicao_x-20,posicao_y, dbgSearchCRUD);
    end;

end;

procedure TfrmcadLOTEINTERNO.dbgSearchCRUDDblClick(Sender: TObject);
begin
  carregabarracao();
  inherited;
end;

procedure TfrmcadLOTEINTERNO.dbgSearchCRUDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmcadLOTEINTERNO.FDQryFiltroopcaoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
      '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmcadLOTEINTERNO.FDQryFiltroTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if DisplayText then
    begin
      if FDQryFiltroTIPO.AsString = 'Produto Acabado' then
        Text := '<span class="badge badge-success">'+FDQryFiltroTIPO.AsString+'</span>'
      else
      if FDQryFiltroTIPO.AsString = 'Sementes' then
        Text := '<span class="badge badge-warning">'+FDQryFiltroTIPO.AsString+'</span>'
      else
      if FDQryFiltroTIPO.AsString = 'Insumos' then
        Text := '<span class="badge badge-info">'+FDQryFiltroTIPO.AsString+'</span>'
      else
      if FDQryFiltroTIPO.AsString = 'Sacaria' then
        Text := '<span class="badge badge-dark">'+FDQryFiltroTIPO.AsString+'</span>'
    end;
end;

procedure TfrmcadLOTEINTERNO.G1Click(Sender: TObject);
begin
  inherited;
  if mm.varC_Doc_Customer =  '27646158000190' then
    begin
      mm.varM_CODIGOMESTRE := FDQryFiltroCODIGO.AsInteger;
      frmFICHAANALISTA.ShowModal();
    end
  else
    begin
      mm.varM_CODIGOMESTRE := FDQryFiltroCODIGO.AsInteger;
      frmFICHA.ShowModal();
    end;
end;

procedure TfrmcadLOTEINTERNO.R1Click(Sender: TObject);
begin
  inherited;
  try
    CalculaLoteInterno (mm.varI_Code_Company,
                        FDQryFiltro.FindField('PRODUTO').AsInteger,
                        FDQryFiltro.Findfield('LOTE').AsString);

    dm_rc.rc_ShowSweetAlert( 'Ok', 'Calculado com SUCESSO!' , 'success' , false );
    FDQryFiltro.Refresh;
  except
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não Consegui calcular, chame o SUPORTE!' , 'error' , false );
  end;
end;

procedure TfrmcadLOTEINTERNO.UniButtonDbEditcodPRODUTOButtonClick(
  Sender: TObject);
begin
  inherited;
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

procedure TfrmcadLOTEINTERNO.UniButtonDbEditcodPRODUTOExit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditcodPRODUTO.Text <> '') and (UniButtonDbEditcodPRODUTO.Text <> '0') then
        begin
          FDQryCad.FindField('DESCRICAO').AsString        := Acha_Item('PRODUTOS',IntToStr(FDQryCad.FindField('PRODUTO').AsInteger));
        end;
    end;
end;

initialization
  RegisterClass(TfrmcadLOTEINTERNO);
end.
