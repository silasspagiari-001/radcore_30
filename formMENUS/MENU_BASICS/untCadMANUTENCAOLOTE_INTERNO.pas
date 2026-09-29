unit untCadMANUTENCAOLOTE_INTERNO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uniGUIBaseClasses, uniGUIClasses, uniScreenMask, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uniHTMLFrame, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniEdit, uniLabel, uniScrollBox, uniPanel, uniPageControl,
  uniButton, uniBitBtn, uniMemo, uniDBEdit, uniDBComboBox, uniDateTimePicker,
  uniDBDateTimePicker, UniButtonDbEdit;

type
  TfrmcadMANUTENCAOLOTE_INTERNO = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel9: TUniLabel;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniButtonDbEditLOTE: TUniButtonDbEdit;
    UniLabel4: TUniLabel;
    UniButtonDbEdit1: TUniButtonDbEdit;
    UniDBEdit2: TUniDBEdit;
    UniLabel7: TUniLabel;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    rcBlock100: TUniContainerPanel;
    UniLabel14: TUniLabel;
    UniDBFormattedNumberEditdescontos: TUniDBFormattedNumberEdit;
    UniLabel8: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit;
    UniLabel11: TUniLabel;
    procedure UniButtonDbEditLOTEButtonClick(Sender: TObject);
    procedure UniDBFormattedNumberEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure BuscaLoteinterno(codigo: integer);
  end;

var
  frmcadMANUTENCAOLOTE_INTERNO: TfrmcadMANUTENCAOLOTE_INTERNO;

implementation

{$R *.dfm}

uses untDM_RC, mkm_procedures, MainModule, untCadLOTEINTERNO,
  untFrmPesquisaloteinterno, untCadPRODUCAOINTERNA;
procedure TfrmcadMANUTENCAOLOTE_INTERNO.BuscaLoteinterno(codigo: integer);
begin
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      SqlPesquisa('select * from LOTEINTERNO where codigo = ' + IntToStr(codigo));

      FDQryCad.Edit;
      FDQryCad.FindField('LOTE').AsString      :=  dm_rc.sqlBuscas.FindField('LOTE').AsString;
      FDQryCad.FindField('PRODUTO').AsInteger  :=  dm_rc.sqlBuscas.FindField('PRODUTO').AsInteger;
      FDQryCad.FindField('DESCRICAO').AsString :=  dm_rc.sqlBuscas.FindField('DESCRICAO').AsString;
      FDQryCad.FindField('PUREZA').AsFloat     :=  dm_rc.sqlBuscas.FindField('PUREZA').AsFloat;
    end;
end;

procedure TfrmcadMANUTENCAOLOTE_INTERNO.UniButtonDbEditLOTEButtonClick(
  Sender: TObject);
begin
  inherited;
  FrmPesquisaloteinterno.showmodal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
        BuscaLoteinterno(StrToInt(mm.varC_codigo_busca_lote));
     end;
   end);
end;

procedure TfrmcadMANUTENCAOLOTE_INTERNO.UniDBFormattedNumberEdit1Exit(
  Sender: TObject);
begin
  inherited;
  if FDQryCad.State in [dsInsert,dsEdit] then
    begin
      FDQryCad.FindField('TOTALPONTOS').AsFloat := FDQryCad.FindField('QUANTIDADE').AsFloat *
                                                   FDQryCad.FindField('PUREZA').AsFloat;
    end;
end;

initialization
  RegisterClass(TfrmcadMANUTENCAOLOTE_INTERNO);
end.
