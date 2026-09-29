unit untFrmPEDIDOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmMOVIMENTOMESTRE,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.Client, Vcl.Menus,
  uniMainMenu, FireDAC.Comp.DataSet, uniHTMLFrame, uniDBEdit, uniMemo,
  uniDBMemo, uniDBDateTimePicker, UniButtonDbEdit, uniMultiItem, uniComboBox,
  uniDateTimePicker, UniButtonEdit, uniScrollBox, uniPanel, uniPageControl,
  uniButton, uniBitBtn, uniBasicGrid, uniDBGrid, uniGUIClasses, uniEdit,
  uniLabel, uniGUIBaseClasses, uniScreenMask, uniDBComboBox;

type
  TfrmPEDIDOS = class(TfrmMOVIMENTOMESTRE)
    E1: TUniMenuItem;
    F1: TUniMenuItem;
    N2: TUniMenuItem;
    N3: TUniMenuItem;
    A1: TUniMenuItem;
    N4: TUniMenuItem;
    I3: TUniMenuItem;
    procedure UniFrameCreate(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure F1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure I3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPEDIDOS: TfrmPEDIDOS;

implementation

{$R *.dfm}

uses MainModule, untDM_RC, untFrmTELAGENERICA, untFrmCADCHEQUEMOVIMENTO,
  untFrmSTATUSMOVIMENTO;
procedure TfrmPEDIDOS.A1Click(Sender: TObject);
begin
  inherited;
  mm.varI_Code_Numero_Documento     :=  FDQryFiltro.FindField('NUMERO').AsInteger;
  mm.varI_Code_Documento_Documento  :=  4;
  mm.varI_Code_documento_serie      :=  FDQryFiltro.FindField('SERIE').AsString;
  mm.varI_Code_pessoa_cheque        :=  FDQryFiltro.FindField('PESSOA').AsInteger;

  frmCADCHEQUESMOVIMENTO.ShowModal();
end;

procedure TfrmPEDIDOS.E1Click(Sender: TObject);
begin
  inherited;

  mm.var_ENTREGA_NUMERO        :=  FDQryFiltro.FindField('NUMERO').AsInteger;
  mm.var_ENTREGA_EMISSAO       :=  FDQryFiltro.FindField('EMISSAO').AsDateTime;
  mm.var_ENTREGA_NOMEFORNECEDOR:=  FDQryFiltro.FindField('NOME').AsString;
  mm.var_ENTREGA_VALORTOTAL    :=  FDQryFiltro.FindField('VLRTOTAL').AsFloat;

  mm.varE_numero_entrega       :=  FDQryFiltro.FindField('NUMERO').AsInteger;
  mm.varE_documento_entrega    :=  FDQryFiltro.FindField('DOCUMENTO').AsInteger;

  UniScreenMask.Enabled        :=  True;
  mm.VarC_Atelagenerica        :=  'LISTAENTREGA';

  frmTELAGENERICA.ShowModal();
end;

procedure TfrmPEDIDOS.F1Click(Sender: TObject);
begin
  inherited;

  mm.varI_Code_Numero_Documento    := FDQryFiltro.FindField('NUMERO').AsInteger;
  mm.varI_Code_documento_serie     := FDQryFiltro.FindField('SERIE').AsString;
  mm.varI_Code_codigo_Documento    := FDQryFiltro.FindField('CODIGO').AsInteger;

  mm.VarC_Atelagenerica            :=  'FINANCEIRODOC';
  frmTELAGENERICA.ShowModal();

end;

procedure TfrmPEDIDOS.I3Click(Sender: TObject);
begin
  inherited;
  mm.varE_numero_entrega       :=  FDQryFiltro.FindField('NUMERO').AsInteger;
  mm.varE_documento_entrega    :=  FDQryFiltro.FindField('DOCUMENTO').AsInteger;
  frmSTATUSMOVIMENTO.ShowModal();

  FDQryFiltro.Refresh;
end;

procedure TfrmPEDIDOS.UniFrameCreate(Sender: TObject);
begin
  labTitleForm.Caption        := 'PEDIDOS';
  varC_Documento_Mvmestre     := 4;
  inherited;
end;

initialization
  RegisterClass(TfrmPEDIDOS);
end.
