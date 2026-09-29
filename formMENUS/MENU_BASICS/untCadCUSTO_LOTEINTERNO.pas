unit untCadCUSTO_LOTEINTERNO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uniGUIBaseClasses, uniGUIClasses, uniScreenMask, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uniHTMLFrame, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniEdit, uniScrollBox, uniPanel, uniPageControl, uniButton,
  uniBitBtn, uniLabel, uniMemo, uniDBComboBox, uniCheckBox, uniDBCheckBox,
  uniDBEdit, uniDateTimePicker, uniDBDateTimePicker;

type
  TfrmCadCUSTO_LOTEINTERNO = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edCodigo: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel22: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBComboBox3: TUniDBComboBox;
    rcBlock60: TUniContainerPanel;
    UniDBGridcustoloteitens: TUniDBGrid;
    tbdetalhesexclui: TStringField;
    tbdetalhesSEQUENCIA: TIntegerField;
    tbdetalhesDESCRICAO: TStringField;
    tbdetalhesCUSTO: TFloatField;
    tbdetalhesPERC: TFloatField;
    procedure tbdetalhesexcluiGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btnNewRegClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure UniDBGridcustoloteitensCellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCUSTO_LOTEINTERNO: TfrmCadCUSTO_LOTEINTERNO;

implementation

uses
  uniGUITypes, untDM_RC, MainModule, untFrmCUSTOPRODUCAO;

{$R *.dfm}
procedure TfrmCadCUSTO_LOTEINTERNO.btnCancelRegClick(Sender: TObject);
begin
  inherited;
  tbdetalhes.Close;
end;

procedure TfrmCadCUSTO_LOTEINTERNO.btnEditRegClick(Sender: TObject);
begin
  inherited;
  UniDBGridcustoloteitens.Options          := UniDBGridcustoloteitens.Options - [dgRowSelect];
  UniDBGridcustoloteitens.Options          := UniDBGridcustoloteitens.Options + [dgEditing];
end;

procedure TfrmCadCUSTO_LOTEINTERNO.btnNewRegClick(Sender: TObject);
begin
  inherited;

  UniDBGridcustoloteitens.Options          := UniDBGridcustoloteitens.Options - [dgRowSelect];
  UniDBGridcustoloteitens.Options          := UniDBGridcustoloteitens.Options + [dgEditing];
end;

procedure TfrmCadCUSTO_LOTEINTERNO.btnSaveRegClick(Sender: TObject);
begin
  inherited;
  UniDBGridcustoloteitens.Options          := UniDBGridcustoloteitens.Options - [dgEditing];
end;

procedure TfrmCadCUSTO_LOTEINTERNO.tbdetalhesexcluiGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text :=
    '<i title="Excluir" class="fa fa-lg fa-trash fa-lg" style="color:red; cursor:pointer;"></i>';
end;

procedure TfrmCadCUSTO_LOTEINTERNO.UniDBGridcustoloteitensCellClick(
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
    end;
end;

initialization
  RegisterClass(TfrmCadCUSTO_LOTEINTERNO);
end.
