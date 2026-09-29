unit untFrmRELATORIOCOMPRASPRODUTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniCheckBox, uniButton, uniBitBtn, uniMultiItem,
  uniComboBox, uniEdit, UniButtonEdit, uniDateTimePicker, uniLabel, uniPanel,
  uniPageControl, uniGUIBaseClasses;

type
  TFrmRELATORIOCOMPRASPRODUTO = class(TUniForm)
    UniPageControl: TUniPageControl;
    UniTabSheetcompras: TUniTabSheet;
    UniContainerPanel2: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchDATAINIVEN: TUniDateTimePicker;
    rcBlock50: TUniContainerPanel;
    UniLabel1: TUniLabel;
    edSearchDATAFINVEN: TUniDateTimePicker;
    rcBlock60: TUniContainerPanel;
    UniLabel2: TUniLabel;
    edSearchPESSOAINIVEN: TUniButtonEdit;
    rcBlock80: TUniContainerPanel;
    cbxtipo: TUniComboBox;
    UniLabelFd1: TUniLabel;
    rcBlock90: TUniContainerPanel;
    cbxordem: TUniComboBox;
    UniLabel4: TUniLabel;
    rcBlock100: TUniContainerPanel;
    cbxstatus: TUniComboBox;
    UniLabel5: TUniLabel;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    rcBlock30: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    UniContainerPanelprofinal: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edSearchPESSOAFINVEN: TUniButtonEdit;
    rcBlock120: TUniContainerPanel;
    UniCheckBoxresumo: TUniCheckBox;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure edSearchPESSOAINIVENButtonClick(Sender: TObject);
    procedure edSearchPESSOAFINVENButtonClick(Sender: TObject);
    procedure UniCheckBoxresumoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRELATORIOCOMPRASPRODUTO: TFrmRELATORIOCOMPRASPRODUTO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmPesquisa;

function FrmRELATORIOCOMPRASPRODUTO: TFrmRELATORIOCOMPRASPRODUTO;
begin
  Result := TFrmRELATORIOCOMPRASPRODUTO(mm.GetFormInstance(TFrmRELATORIOCOMPRASPRODUTO));
end;

procedure TFrmRELATORIOCOMPRASPRODUTO.edSearchPESSOAFINVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAFINVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TFrmRELATORIOCOMPRASPRODUTO.edSearchPESSOAINIVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAFINVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TFrmRELATORIOCOMPRASPRODUTO.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmRELATORIOCOMPRASPRODUTO.UniCheckBoxresumoChange(Sender: TObject);
begin
  if UniCheckBoxresumo.Checked then
    UniContainerPanelprofinal.Visible := true
  else
    UniContainerPanelprofinal.Visible := False;
end;

procedure TFrmRELATORIOCOMPRASPRODUTO.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TFrmRELATORIOCOMPRASPRODUTO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;
Initialization
   RegisterClass( TFrmRELATORIOCOMPRASPRODUTO );
end.
