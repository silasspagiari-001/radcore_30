unit untCadPLANOCONTAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniHTMLFrame,
  uniBasicGrid, uniDBGrid, uniMultiItem, uniComboBox, uniGUIClasses, uniEdit,
  uniLabel, uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniDBComboBox, uniCheckBox, uniDBCheckBox, uniDBEdit,
  uniMemo, uniScreenMask, UniButtonDbEdit;

type
  TfrmCADPLANOCONTAS = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    edCodigo: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel6: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    UniDBEdit1: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBComboBox1: TUniDBComboBox;
    UniLabel7: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniLabel8: TUniLabel;
    UniDBComboBox3: TUniDBComboBox;
    UniLabel9: TUniLabel;
    rcBlock80: TUniContainerPanel;
    rcBlock90: TUniContainerPanel;
    UniLabel10: TUniLabel;
    UniButtonDbEditCENTROCUSTO: TUniButtonDbEdit;
    UniDBEdit3: TUniDBEdit;
    UniLabel11: TUniLabel;
    procedure UniButtonDbEditCENTROCUSTOButtonClick(Sender: TObject);
    procedure UniButtonDbEditCENTROCUSTOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCADPLANOCONTAS: TfrmCADPLANOCONTAS;

implementation

{$R *.dfm}

uses MainModule, untFrmPesquisa, mkm_procedures;
procedure TfrmCADPLANOCONTAS.UniButtonDbEditCENTROCUSTOButtonClick(Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('CENTROCUSTO');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       FDQryCad.Edit;
       FDQryCad.FindField('CENTROCUSTO').AsInteger := StrToInt(MM.varC_codigo_busca);
     end;
   end);
end;

procedure TfrmCADPLANOCONTAS.UniButtonDbEditCENTROCUSTOExit(Sender: TObject);
begin
  inherited;
  if ( dscrud.State in [dsEdit, dsInsert ] ) then
    begin
      if (UniButtonDbEditCENTROCUSTO.Text <> '') and (UniButtonDbEditCENTROCUSTO.Text <> '0') then
        begin
          FDQryCad.FindField('CENTRO_DESCRICAO').AsString := Acha_Item('CENTROCUSTO',FDQryCad.FindField('CENTROCUSTO').AsString);
        end;
    end;
end;

initialization
  RegisterClass(TfrmCADPLANOCONTAS);

end.
