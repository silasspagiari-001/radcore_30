unit untCadEMPRESAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniHTMLFrame,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniGUIClasses, uniEdit,
  uniLabel, uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, UniButtonDbEdit, uniDBComboBox, uniCheckBox, uniDBCheckBox,
  uniDBEdit, uniMemo, Vcl.Menus, uniMainMenu, uniScreenMask;

type
  TfrmcadEMPRESAS = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel4: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel9: TUniLabel;
    UniDBEditCPFCNPJ: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    UniDBEdit3: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    rcBlock100: TUniContainerPanel;
    rcBlock110: TUniContainerPanel;
    rcBlock120: TUniContainerPanel;
    UniButtonDbEditCEPP: TUniButtonDbEdit;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel17: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    rcBlock130: TUniContainerPanel;
    rcBlock140: TUniContainerPanel;
    rcBlock150: TUniContainerPanel;
    rcBlock160: TUniContainerPanel;
    rcBlock170: TUniContainerPanel;
    UniLabel20: TUniLabel;
    UniDBComboBoxestado: TUniDBComboBox;
    UniLabel21: TUniLabel;
    UniButtonDbEdit2: TUniButtonDbEdit;
    UniDBEdit5: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniLabel22: TUniLabel;
    UniButtonDbEdit3: TUniButtonDbEdit;
    rcBlock180: TUniContainerPanel;
    rcBlock190: TUniContainerPanel;
    rcBlock200: TUniContainerPanel;
    rcBlock210: TUniContainerPanel;
    UniLabel11: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel14: TUniLabel;
    rcBlock220: TUniContainerPanel;
    rcBlock230: TUniContainerPanel;
    UniDBEdit14: TUniDBEdit;
    UniLabel23: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel24: TUniLabel;
    UniPopupMenuopcoes: TUniPopupMenu;
    HistricodeMovimentaoEstoque1: TUniMenuItem;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroCNPJ: TStringField;
    FDQryFiltroFANTASIA: TStringField;
    FDQryFiltroopcoes: TStringField;
    FDQryFiltroCIDADE: TStringField;
    FDQryFiltroESTADO: TStringField;
    rcBlock240: TUniContainerPanel;
    rcBlock250: TUniContainerPanel;
    rcBlock260: TUniContainerPanel;
    rcBlock270: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniDBEdit16: TUniDBEdit;
    procedure UniButtonDbEditCEPPButtonClick(Sender: TObject);
    procedure UniButtonDbEditCEPPExit(Sender: TObject);
    procedure UniButtonDbEdit3ButtonClick(Sender: TObject);
    procedure FDQryFiltroopcoesGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure dbgSearchCRUDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HistricodeMovimentaoEstoque1Click(Sender: TObject);
    procedure UniDBEditCPFCNPJExit(Sender: TObject);
  private
    { Private declarations }
  posicao_x, posicao_y    : Integer;
  public
    { Public declarations }
  end;

var
  frmcadEMPRESAS: TfrmcadEMPRESAS;

implementation

{$R *.dfm}

uses MainModule, untFrmPesquisa, mkm_procedures, untDM_RC, Vcl.Grids,
  untFrmTELAGENERICA, mkm_funcoes;
procedure TfrmcadEMPRESAS.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
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

procedure TfrmcadEMPRESAS.dbgSearchCRUDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmcadEMPRESAS.FDQryFiltroopcoesGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
      '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmcadEMPRESAS.HistricodeMovimentaoEstoque1Click(Sender: TObject);
begin
  mm.varI_Code_Empresa_Configuranota := FDQryFiltro.FindField('codigo').AsInteger;
  mm.VarC_Atelagenerica              := 'CONFIGURANOTAELETRONICA';
  frmTELAGENERICA.ShowModal();
end;

procedure TfrmcadEMPRESAS.UniButtonDbEdit3ButtonClick(Sender: TObject);
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

procedure TfrmcadEMPRESAS.UniButtonDbEditCEPPButtonClick(Sender: TObject);
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

procedure TfrmcadEMPRESAS.UniButtonDbEditCEPPExit(Sender: TObject);
begin
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditCEPP.Text <> '') and (UniButtonDbEditCEPP.Text <> '0') then
        begin
          SqlPesquisa('select DESCRICAO, UF, CODIIBGE from cidades where cep = ' + QuotedStr(FDQryCad.FindField('CEP').AsString));
            FDQryCad.FindField('CIDADE').AsString     := dm_rc.sqlBuscas.Findfield('DESCRICAO').asstring;
            FDQryCad.FindField('ESTADO').AsString     := dm_rc.sqlBuscas.Findfield('UF').asstring;
            FDQryCad.FindField('IBGE').AsString       := dm_rc.sqlBuscas.Findfield('CODIIBGE').asstring;
        end;
    end;
end;

procedure TfrmcadEMPRESAS.UniDBEditCPFCNPJExit(Sender: TObject);
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
          FDQryCad.FindField('CNPJ').EditMask := '99\.999\.999\/9999\-99;0;_'
        else
          if Length(StrAllTrim(UniDBEditCPFCNPJ.text)) = 11 then
            FDQryCad.FindField('CNPJ').EditMask := '999\.999\.999\-99;0;_';
        FDQryCad.FindField('CPFCNPJ').AsString := UniDBEditCPFCNPJ.text;
        if SqlPesquisa('SELECT * FROM EMPRESAS WHERE CNPJ = ' + QuotedStr(UniDBEditCPFCNPJ.Text)) then
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
  RegisterClass(TfrmcadEMPRESAS);
end.
