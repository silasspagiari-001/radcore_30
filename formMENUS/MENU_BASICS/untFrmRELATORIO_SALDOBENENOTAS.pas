unit untFrmRELATORIO_SALDOBENENOTAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, UniButtonEdit, uniDateTimePicker,
  uniLabel, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel;

type
  TfrmSALDOBENEFICIAMENTO = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    rcBlock30: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    rcBlock40: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchDATAINI: TUniDateTimePicker;
    rcBlock50: TUniContainerPanel;
    edSearchDATAFIN: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    rcBlock60: TUniContainerPanel;
    edSearchPRODUTOSINI: TUniButtonEdit;
    UniLabel2: TUniLabel;
    rcBlock70: TUniContainerPanel;
    edSearchPRODUTOSFIN: TUniButtonEdit;
    UniLabel3: TUniLabel;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure edSearchPRODUTOSFINButtonClick(Sender: TObject);
    procedure edSearchPRODUTOSINIButtonClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSALDOBENEFICIAMENTO: TfrmSALDOBENEFICIAMENTO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.DateUtils, mkm_impressao,
  mkm_relatorios, unReportImpressao, untFrmPesquisa;

function frmSALDOBENEFICIAMENTO: TfrmSALDOBENEFICIAMENTO;
begin
  Result := TfrmSALDOBENEFICIAMENTO(mm.GetFormInstance(TfrmSALDOBENEFICIAMENTO));
end;

procedure TfrmSALDOBENEFICIAMENTO.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_SALDOBENENOTAS(mm.varI_Code_Company,
                                   edSearchDATAINI.DateTime,
                                   edSearchDATAFIN.DateTime,
                                   edSearchPRODUTOSINI.Text,
                                   edSearchPRODUTOSFIN.Text);

  mm.varC_caminhopdf :=  IMPRESSAO_saldobenenotas(
                         MM.varI_Code_Company,
                         edSearchDATAINI.Text,
                         edSearchDATAFIN.text,
                         edSearchPRODUTOSINI.Text,
                         edSearchPRODUTOSFIN.Text,
                         psql);

  unfImpressao.ShowModal();
end;

procedure TfrmSALDOBENEFICIAMENTO.edSearchPRODUTOSFINButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPRODUTOSFIN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmSALDOBENEFICIAMENTO.edSearchPRODUTOSINIButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPRODUTOSINI.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmSALDOBENEFICIAMENTO.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmSALDOBENEFICIAMENTO.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmSALDOBENEFICIAMENTO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmSALDOBENEFICIAMENTO.UniFormShow(Sender: TObject);
begin
  edSearchDATAINI.DateTime    := StartofTheMonth(date);
  edSearchDATAFIN.DateTime    := Date;
end;
Initialization
   RegisterClass( TfrmSALDOBENEFICIAMENTO );
end.
