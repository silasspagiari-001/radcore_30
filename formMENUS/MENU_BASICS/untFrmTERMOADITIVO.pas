unit untFrmTERMOADITIVO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniButton, uniBitBtn,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uniDateTimePicker, uniDBDateTimePicker,
  uniLabel, uniEdit, uniDBEdit, uniCheckBox, uniDBCheckBox, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TAcaoCrud = (tpIncluir, tpAlterar, tpExcluir, tpListaVazia,tpListacomRegistros, tpCalcular);
  TfrmTEMOADITIVO = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    paBaseButtons: TUniContainerPanel;
    paOF: TUniContainerPanel;
    btnCloseForm: TUniBitBtn;
    paNAE: TUniContainerPanel;
    btnEditReg: TUniBitBtn;
    paGC: TUniContainerPanel;
    btnSaveReg: TUniBitBtn;
    btnCancelReg: TUniBitBtn;
    dsfiltro: TDataSource;
    FDQryFiltro: TFDQuery;
    FDQryFiltroopcoes: TStringField;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroCATEGORIA: TStringField;
    FDQryFiltroLOTE: TStringField;
    FDQryFiltroBOLETIM: TStringField;
    FDQryFiltroTERMO: TStringField;
    FDQryFiltroCULTIVAR: TStringField;
    FDQryFiltroTIPO: TStringField;
    FDQryFiltroPRODUTO: TIntegerField;
    FDQryFiltroDISPONIVEL: TFMTBCDField;
    dscrud: TDataSource;
    FDQryCad: TFDQuery;
    rcBlock20: TUniContainerPanel;
    UniDBCheckBox1: TUniDBCheckBox;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniDBEdit3: TUniDBEdit;
    UniLabel15: TUniLabel;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel22: TUniLabel;
    UniContainerPanel2: TUniContainerPanel;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniContainerPanel3: TUniContainerPanel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel2: TUniLabel;
    UniDBCheckBox2: TUniDBCheckBox;
    UniDBCheckBox3: TUniDBCheckBox;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnCloseFormClick(Sender: TObject);
    procedure btnEditRegClick(Sender: TObject);
    procedure btnSaveRegClick(Sender: TObject);
    procedure btnCancelRegClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  cMSG_BUGERROR_RECORDS_SELECTION,
  cMSG_RECORDS_FOUND : string ;
  cFormModal         : TUniForm;
  procedure SetBut(Acao: TAcaoCrud);
  end;

function frmTEMOADITIVO: TfrmTEMOADITIVO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untDM_RC, System.TypInfo;

function frmTEMOADITIVO: TfrmTEMOADITIVO;
begin
  Result := TfrmTEMOADITIVO(mm.GetFormInstance(TfrmTEMOADITIVO));
end;

procedure TfrmTEMOADITIVO.btnCancelRegClick(Sender: TObject);
begin
  FDQryCad.Cancel;
  ModalResult := mrOK;
end;

procedure TfrmTEMOADITIVO.btnCloseFormClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmTEMOADITIVO.btnEditRegClick(Sender: TObject);
  var i : integer; Cmp:String;
begin
  SetBut(tpAlterar);
  mm.FDTransaction.StartTransaction;
  Try
    FDQryCad.Close;
   for i := 0 to  FDQryCad.Params.Count - 1 do
   begin
      Cmp :=  FDQryCad.Params[i].Name;
      FDQryCad.Params[i].Value :=  FDQryFiltro.FieldbyName(Cmp).Value;
   end;
    FDQryCad.Open;

    FDQryCad.Edit;
    FDQryCad.FindField('OP_TERMO').AsInteger       := 1;
    FDQryCad.FindField('OP_CERTIFICADO').AsInteger := 1;
    FDQryCad.FindField('REEMBALADA').AsString      := 'T';
  Except
   Abort ;
  End ;
end;

procedure TfrmTEMOADITIVO.btnSaveRegClick(Sender: TObject);
begin
  FDQryCad.Post;
  SetBut(tpListacomRegistros);
end;

procedure TfrmTEMOADITIVO.SetBut(Acao: TAcaoCrud);
var s:string ;
begin
  s := GetEnumName(TypeInfo(TAcaoCrud),integer(Acao));

  // Controle dos botoes
  if acao in [tpIncluir,tpAlterar,tpExcluir] then
     begin
       btnEditReg.Visible    := false;
       btnCancelReg.Visible  := true;
       btnSaveReg.Visible    := true;
     end
   else if acao in [tpListaVazia] then
      begin
        btnEditReg.Visible    := false;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
      end
   else if acao in [tpCalcular] then
     begin
        btnEditReg.Visible    := false;
        btnCancelReg.Visible  := True;
        btnSaveReg.Visible    := True;
     end
    else if acao in [tpListacomRegistros] then
      begin
        btnEditReg.Visible    := true;
        btnCancelReg.Visible  := false;
        btnSaveReg.Visible    := false;
       end;
end;

procedure TfrmTEMOADITIVO.UniFormCreate(Sender: TObject);
begin
  cFormModal := mm.varC_Form_Modal;
end;

procedure TfrmTEMOADITIVO.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TfrmTEMOADITIVO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmTEMOADITIVO.UniFormShow(Sender: TObject);
  var i : integer; Cmp:String;
begin
  FDQryFiltro.Close;
  FDQryFiltro.sql.Clear;
  FDQryFiltro.SQL.Text := 'SELECT * FROM SEMENTES WHERE CODIGO = ' + IntToStr(mm.varI_Code_Codigo_Semente);
  FDQryFiltro.Open;

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

  if not( FDQryCad.Active) then
    begin
      FDQryCad.Open;
    end;

  setbut(tpListacomRegistros);

end;

end.
