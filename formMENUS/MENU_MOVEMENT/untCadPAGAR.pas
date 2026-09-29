unit untCadPAGAR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untCadTITULOS, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, uniMainMenu, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uniHTMLFrame, uniDBDateTimePicker, uniDBEdit, UniButtonDbEdit, uniDBComboBox,
  uniMultiItem, uniComboBox, uniDateTimePicker, UniButtonEdit, uniScrollBox,
  uniPanel, uniPageControl, uniButton, uniBitBtn, uniBasicGrid, uniDBGrid,
  uniGUIClasses, uniEdit, uniLabel, uniGUIBaseClasses, uniMemo, uniDBMemo,
  uniScreenMask;

type
  TfrmcadPAGAR = class(TfrmBaseTITULOS)
    FDQryFiltroVALORORIGINAL: TFMTBCDField;
    FDQryFiltroVALORPAGO: TFMTBCDField;
    FDQryFiltroDOCUMENTO: TIntegerField;
    rcBlock350: TUniContainerPanel;
    rcBlock360: TUniContainerPanel;
    UniDBMemoobs: TUniDBMemo;
    UniLabel39: TUniLabel;
    UniPopupMenuopcoes: TUniPopupMenu;
    L1: TUniMenuItem;
    FDQryFiltroKEY: TStringField;
    rcBlock370: TUniContainerPanel;
    UniDBEdit1: TUniDBEdit;
    UniLabel28: TUniLabel;
    FDQryFiltroOBSERVACOES: TStringField;
    FDQryFiltroCARTEIRA: TIntegerField;
    procedure G1Click(Sender: TObject);
    procedure dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
    procedure dbgSearchCRUDMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure L1Click(Sender: TObject);
    procedure FDQryFiltroKEYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  posicao_x, posicao_y    : Integer;
  public
    { Public declarations }
  end;

var
  frmcadPAGAR: TfrmcadPAGAR;

implementation

{$R *.dfm}

uses MainModule, Vcl.Grids, untFrmTELAGENERICA;
procedure TfrmcadPAGAR.dbgSearchCRUDCellClick(Column: TUniDBGridColumn);
  var Linha, Coluna : Integer;
begin
  inherited;
   Linha  := TStringGrid(dbgSearchCRUD).Row;
   Coluna := dbgSearchCRUD.CurrCol;

  if Column.FieldName = 'KEY' then
    begin
      UniPopupMenuopcoes.Popup(posicao_x-25,posicao_y, dbgSearchCRUD);
    end;

end;

procedure TfrmcadPAGAR.dbgSearchCRUDMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  posicao_x := X;
  posicao_y := Y;
end;

procedure TfrmcadPAGAR.FDQryFiltroKEYGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text :=
    '<i title="detalhes" class="fa fa-lg fas fa-cog fa-lg"; style="color:blue; cursor:pointer;"></i>';
end;

procedure TfrmcadPAGAR.G1Click(Sender: TObject);
begin
  mm.varFP_id_parcela := 'PAGAR';
  inherited;
end;

procedure TfrmcadPAGAR.L1Click(Sender: TObject);
begin
  inherited;
  mm.varTTLOG_TABELA    := 'PAGAR';
  mm.varTTLOG_CODIGO    := IntToStr(FDQryFiltroCODIGO.AsInteger);
  mm.VarC_Atelagenerica := 'LOGTITULOS';
  frmTELAGENERICA.ShowModal();
end;

initialization
  RegisterClass(TfrmcadPAGAR);
end.
