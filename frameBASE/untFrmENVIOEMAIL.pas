unit untFrmENVIOEMAIL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniDateTimePicker, uniLabel, uniEdit, uniMemo, uniScreenMask;

type
  TFrmENVIOEMAIL = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    ubtnenvio: TUniBitBtn;
    UniContainerPanel2: TUniContainerPanel;
    ubtnsair: TUniBitBtn;
    rcBlock20: TUniContainerPanel;
    paSearchFilterDtIni: TUniContainerPanel;
    edSearchCRUDDtIni: TUniDateTimePicker;
    UniContainerPanel3: TUniContainerPanel;
    UniFormattedNumberEditcBASEICMS: TUniFormattedNumberEdit;
    UniLabel2: TUniLabel;
    UniLabel1: TUniLabel;
    UniContainerPanel4: TUniContainerPanel;
    UniFormattedNumberEditVLRICMS: TUniFormattedNumberEdit;
    UniLabel3: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniFormattedNumberEditVLRTOTAL: TUniFormattedNumberEdit;
    UniLabel4: TUniLabel;
    rcBlock30: TUniContainerPanel;
    UniEditdemail: TUniEdit;
    UniLabel5: TUniLabel;
    rcBlock40: TUniContainerPanel;
    UniMemorespostaTXT: TUniMemo;
    rcBlock50: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniScreenMask1: TUniScreenMask;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormResize(Sender: TObject);
    procedure ubtnsairClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure ubtnenvioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

function FrmENVIOEMAIL: TFrmENVIOEMAIL;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untDM_RC, mkm_funcoes, mkm_func_web,
  mkm_procedures;

function FrmENVIOEMAIL: TFrmENVIOEMAIL;
begin
  Result := TFrmENVIOEMAIL(mm.GetFormInstance(TFrmENVIOEMAIL));
end;

procedure TFrmENVIOEMAIL.ubtnenvioClick(Sender: TObject);
begin
  if UniEditdemail.Text = '' then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'INFORMAR EMAIL VÁLIDO' , 'error' , false );
      abort;
    end;

  UniMemorespostaTXT.Clear;
  try
    UniMemorespostaTXT.Text :=   Envia_EmailACBr(mm.varI_Code_Company,
                                                 mm.varI_Code_Documento_Controle,
                                                 UniEditdemail.Text);

  except
    dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'NÃO CONSEGUI ANEXAR A NOTA PRA ENVIO' , 'error' , false );
  end;
end;

procedure TFrmENVIOEMAIL.ubtnsairClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmENVIOEMAIL.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TFrmENVIOEMAIL.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TFrmENVIOEMAIL.UniFormResize(Sender: TObject);
begin
  FrmENVIOEMAIL.Height   := 372;
  FrmENVIOEMAIL.Width    := 563;

  with FrmENVIOEMAIL.Constraints do
    begin
      MaxWidth  := 563;
      MinWidth  := 563;
      MaxHeight := 372;
      MinHeight := 372;
    end;

  FrmENVIOEMAIL.Position := poScreenCenter;
end;

procedure TFrmENVIOEMAIL.UniFormShow(Sender: TObject);
begin
  TabelaMvmestre('select * from mvmestre inner join pessoas on (mvmestre.pessoa = pessoas.codigo) where mvmestre.codigo = ' + IntToStr(mm.varI_Code_Documento_Controle));
  edSearchCRUDDtIni.DateTime            := dm_rc.FDQryMvmestre.FindField('EMISSAO').AsDateTime;
  UniFormattedNumberEditcBASEICMS.Value := dm_rc.FDQryMvmestre.FindField('VLRBASEICMS').AsCurrency;
  UniFormattedNumberEditVLRICMS.Value   := dm_rc.FDQryMvmestre.FindField('VLRICMS').AsCurrency;
  UniFormattedNumberEditVLRTOTAL.Value  := dm_rc.FDQryMvmestre.FindField('VLRTOTAL').AsCurrency;
  UniEditdemail.Text                    := dm_rc.FDQryMvmestre.FindField('EMAIL').AsString;
end;

end.
