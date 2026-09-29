unit untCadCAMPO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, uniHTMLFrame,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniEdit, uniLabel,
  uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn, uniGUIClasses,
  uniMemo, uniGUIBaseClasses, UniButtonDbEdit, uniDateTimePicker,
  uniDBDateTimePicker, uniCheckBox, uniDBCheckBox, uniDBEdit, uniScreenMask;

type
  TfrmcadCAMPO = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel5: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniButtonDbEditcodigopessoas: TUniButtonDbEdit;
    UniLabel49: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniLabel6: TUniLabel;
    rcBlock70: TUniContainerPanel;
    UniDBGridbeneficiamento: TUniDBGrid;
    tbdetalhesNUMERO: TIntegerField;
    tbdetalhesPRODUTO: TIntegerField;
    tbdetalhesCULTIVAR: TStringField;
    tbdetalhesCAMPO: TStringField;
    tbdetalhesDATA: TDateField;
    tbdetalhesLATITUDE: TStringField;
    tbdetalhesLONGITUDE: TStringField;
    tbdetalhesAREA: TFloatField;
    tbdetalhesPRODUCAO: TFloatField;
    tbdetalhesSAFRACAMPO: TStringField;
    tbdetalhesbusca: TStringField;
    tbdetalhesexclui: TStringField;
    tbdetalhesCOOPERANTE: TIntegerField;
    procedure UniButtonDbEditcodigopessoasButtonClick(Sender: TObject);
    procedure UniButtonDbEditcodigopessoasExit(Sender: TObject);
    procedure tbdetalhesbuscaGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbdetalhesexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure UniDBGridbeneficiamentoCellClick(Column: TUniDBGridColumn);
    procedure btnNewRegClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure carregacultivar(const ccodigo:integer);
  end;

var
  frmcadCAMPO: TfrmcadCAMPO;

implementation

{$R *.dfm}

uses MainModule, untFrmPesquisa, mkm_procedures, untDM_RC, uniGUITypes;
procedure TfrmcadCAMPO.btnEditRegClick(Sender: TObject);
begin
  inherited;
  UniDBGridbeneficiamento.Options          := UniDBGridbeneficiamento.Options - [dgRowSelect];
  UniDBGridbeneficiamento.Options          := UniDBGridbeneficiamento.Options + [dgEditing];
end;

procedure TfrmcadCAMPO.btnNewRegClick(Sender: TObject);
begin
  inherited;
  UniDBGridbeneficiamento.Options          := UniDBGridbeneficiamento.Options - [dgRowSelect];
  UniDBGridbeneficiamento.Options          := UniDBGridbeneficiamento.Options + [dgEditing];
end;

procedure TfrmcadCAMPO.carregacultivar(const ccodigo: integer);
var
  sql:string;
begin
  sql := ' select *                                         ' +
         ' from produtos P                                  ' +
         ' inner join saldos on (p.codigo = saldos.produto) ' +
         ' where P.codigo                                =  ' + IntToStr(ccodigo) +
         ' and saldos.empresa                            =  ' + IntToStr(mm.varI_Code_Company);

  if not SqlPesquisa(sql) then
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'Não encontrei esse Produto' , 'warning' , false )
  else
    begin
      tbdetalhes.Edit;
      tbdetalhes.FindField('PRODUTO').AsInteger        := ccodigo;
      tbdetalhes.FindField('CULTIVAR').AsString        := dm_rc.sqlBuscas.FindField('CULTIVAR').AsString;
    end;

end;

procedure TfrmcadCAMPO.tbdetalhesbuscaGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Produtos" class="fa fa-lg fas fa-search-plus fa-lg" style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmcadCAMPO.tbdetalhesexcluiGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmcadCAMPO.UniButtonDbEditcodigopessoasButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('COOPERANTE').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmcadCAMPO.UniButtonDbEditcodigopessoasExit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditcodigopessoas.Text <> '') and (UniButtonDbEditcodigopessoas.Text <> '0') then
        begin
          if SqlPesquisa('SELECT * FROM PESSOAS WHERE CODIGO = ' + QuotedStr(UniButtonDbEditcodigopessoas.Text)) then
            begin
              FDQryCad.FindField('NOME').AsString := dm_rc.sqlBuscas.FindField('NOME').AsString;
            end;
        end;
    end;
end;

procedure TfrmcadCAMPO.UniDBGridbeneficiamentoCellClick(
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

      if Column.FieldName = 'busca' then
        begin
          MM.Seta_Busca('PRODUTOS');
          UniFfrmPesquisa.showmodal(
          procedure(Sender: TComponent; AResult: Integer)
           begin
             if AResult = mrOK then
             begin
               tbdetalhes.Edit;
               carregacultivar(StrToInt(MM.varC_codigo_busca));
             end;
           end);
        end;
    end;
end;

initialization
  RegisterClass(TfrmcadCAMPO);
end.
