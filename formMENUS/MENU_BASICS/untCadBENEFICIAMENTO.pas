unit untCadBENEFICIAMENTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uniHTMLFrame,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniEdit, uniLabel,
  uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn, uniGUIClasses,
  uniMemo, uniGUIBaseClasses, uniDateTimePicker, uniDBDateTimePicker, uniDBEdit,
  uniScreenMask;

type
  TfrmCADBENEFICIAMENTO = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniDBEditDESCRICAOPRODUTO: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBEdit1: TUniDBEdit;
    UniLabel4: TUniLabel;
    rcBlock50: TUniContainerPanel;
    UniDBGridbeneficiamento: TUniDBGrid;
    tbdetalhesNOTA: TIntegerField;
    tbdetalhesPESSOA: TIntegerField;
    tbdetalhesSERIE: TStringField;
    tbdetalhesPRODUTO: TIntegerField;
    tbdetalhesSEQITENS: TIntegerField;
    tbdetalhesDESCRICAO: TStringField;
    tbdetalhesLOTE: TStringField;
    tbdetalhesQTENOTA: TFloatField;
    tbdetalhesGERNOTA: TFloatField;
    tbdetalhesPUREZANOTA: TFloatField;
    tbdetalhesQUANTIDADE: TFloatField;
    tbdetalhesVCNOTA: TFloatField;
    tbdetalhesVALORCULTURAL: TFloatField;
    tbdetalhesGERMINACAO: TFloatField;
    tbdetalhesPUREZA: TFloatField;
    tbdetalhesLOTEDESTINO: TStringField;
    tbdetalhesBOLETIMDESTINO: TStringField;
    tbdetalhesDESCARTE: TFloatField;
    tbdetalhesPONTOS: TFloatField;
    tbdetalhesDISPONIVEL: TFloatField;
    tbdetalhesTERMO: TStringField;
    tbdetalhesCOOPERANTE: TIntegerField;
    tbdetalhesCAMPO: TStringField;
    tbdetalhesSAFRACAMPO: TStringField;
    tbdetalhesbuscanota: TStringField;
    tbdetalhesdetalhesnota: TStringField;
    tbdetalhesbuscalote: TStringField;
    tbdetalhesexclui: TStringField;
    tbdetalhesMAQUINA: TIntegerField;
    tbdetalhesmontagem: TStringField;
    tbdetalhesCATEGORIA: TStringField;
    procedure tbdetalhesbuscanotaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBGridbeneficiamentoCellClick(Column: TUniDBGridColumn);
    procedure tbdetalhesbuscaloteGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesmontagemGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure carreganota(const f_codigo:integer);
  end;

var
  frmCADBENEFICIAMENTO: TfrmCADBENEFICIAMENTO;

implementation

{$R *.dfm}

uses untDM_RC, MainModule, untfrmPesquisalote, untFrmPesquisaItensestoque,
  mkm_procedures, untFrmDETALHESBENEFICIAMENTO;

procedure TfrmCADBENEFICIAMENTO.carreganota(const f_codigo: integer);
begin
  if SqlPesquisa('select * from mvitens where codigo = ' + IntToStr(f_codigo)) then
    begin
      if tbdetalhes.State = dsBrowse then tbdetalhes.edit;
      tbdetalhes.FindField('NOTA').AsInteger          := dm_rc.sqlBuscas.Findfield('NUMERO').AsInteger;
      tbdetalhes.FindField('PESSOA').AsInteger        := dm_rc.sqlBuscas.Findfield('PESSOA').AsInteger;
      tbdetalhes.FindField('LOTE').AsString           := dm_rc.sqlBuscas.Findfield('LOTEENTRADA').AsString;
      tbdetalhes.FindField('TERMO').AsString          := dm_rc.sqlBuscas.Findfield('TERMOSEMENTE').AsString;
      tbdetalhes.FindField('SERIE').AsString          := dm_rc.sqlBuscas.Findfield('SERIE').AsString;
      tbdetalhes.FindField('PRODUTO').AsInteger       := dm_rc.sqlBuscas.Findfield('PRODUTO').AsInteger;
      tbdetalhes.FindField('DESCRICAO').AsString      := dm_rc.sqlBuscas.Findfield('DESCRICAO').AsString;
      tbdetalhes.FindField('QTENOTA').AsFloat         := dm_rc.sqlBuscas.Findfield('QUANTIDADE').AsFloat;
      tbdetalhes.FindField('GERNOTA').AsFloat         := dm_rc.sqlBuscas.Findfield('GERMINACAO').AsFloat;
      tbdetalhes.FindField('PUREZANOTA').AsFloat      := dm_rc.sqlBuscas.Findfield('PUREZA').AsFloat;
      tbdetalhes.FindField('SEQITENS').AsInteger      := dm_rc.sqlBuscas.Findfield('SEQUENCIA').AsInteger;
      tbdetalhes.FindField('VALORCULTURAL').AsFloat   := dm_rc.sqlBuscas.Findfield('VALORCULTURAL').AsFloat;
      tbdetalhes.FindField('CATEGORIA').AsString      := dm_rc.sqlBuscas.Findfield('CATEGORIA').AsString;

      tbdetalhes.FindField('CAMPO').AsString          := dm_rc.sqlBuscas.Findfield('CAMPO').AsString;
      tbdetalhes.FindField('SAFRACAMPO').AsString     := dm_rc.sqlBuscas.Findfield('SAFRACAMPO').AsString;
      tbdetalhes.FindField('COOPERANTE').AsInteger    := dm_rc.sqlBuscas.Findfield('COOPERANTE').AsInteger;

      tbdetalhes.FindField('DISPONIVEL').AsFloat      := dm_rc.sqlBuscas.Findfield('DISPONIVEL').AsFloat;
    end;
end;

procedure TfrmCADBENEFICIAMENTO.dbgSearchCRUDDblClick(Sender: TObject);
begin
  inherited;
  carregabeneficiamento(FDQryCad.FindField('CODIGO').AsInteger);
end;

procedure TfrmCADBENEFICIAMENTO.tbdetalhesbuscaloteGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Produtos" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADBENEFICIAMENTO.tbdetalhesbuscanotaGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Produtos" class="fa fa-lg fas fa-file-alt fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADBENEFICIAMENTO.tbdetalhesexcluiGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmCADBENEFICIAMENTO.tbdetalhesmontagemGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Produtos" class="fa fa-lg fas fa-tools fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmCADBENEFICIAMENTO.UniDBGridbeneficiamentoCellClick(
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

      if Column.FieldName = 'buscanota' then
        begin
          frmpesquisaitensestoque.showmodal(
          procedure(Sender: TComponent; AResult: Integer)
           begin
             if AResult = mrOK then
             begin
               tbdetalhes.Edit;
               carreganota(StrToInt(MM.varC_codigo_busca));
             end;
           end);
        end;

      if Column.FieldName = 'montagem' then
        begin
          dm_rc.tbdetalhes.Close;
          dm_rc.tbdetalhes.open;
          //********************************************//
          dm_rc.tbdetalhes.Append;
          dm_rc.tbdetalhes.CopyRecord(tbdetalhes);
          dm_rc.tbdetalhes.Post;
          //********************************************//
          frmDETALHESBENEFICIAMENTO.ShowModal();
          //********************************************//
          tbdetalhes.Edit;
          tbdetalhes.CopyRecord(dm_rc.tbdetalhes);
          tbdetalhes.Post;
          //********************************************//
        end;
    end;
end;

initialization
  RegisterClass(TfrmCADBENEFICIAMENTO);
end.
