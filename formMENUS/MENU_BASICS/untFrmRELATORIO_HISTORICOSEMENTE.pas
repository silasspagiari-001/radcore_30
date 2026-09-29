unit untFrmRELATORIO_HISTORICOSEMENTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  uniEdit, UniButtonEdit, uniDateTimePicker, uniLabel, uniMultiItem, uniComboBox;

type
  TfrmRELATORIO_HISTORICOSEMENTE = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    rcBlock30: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    rcBlock40: TUniContainerPanel;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    rcBlock70: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchDATAINI: TUniDateTimePicker;
    edSearchDATAFIN: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    edSearchPRODUTOSINI: TUniButtonEdit;
    UniLabel2: TUniLabel;
    edSearchPRODUTOSFIN: TUniButtonEdit;
    UniLabel3: TUniLabel;
    procedure edSearchPRODUTOSINIButtonClick(Sender: TObject);
    procedure edSearchPRODUTOSFINButtonClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRELATORIO_HISTORICOSEMENTE: TfrmRELATORIO_HISTORICOSEMENTE;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmPesquisa, System.DateUtils,
  mkm_impressao, unReportImpressao, mkm_relatorios;

function frmRELATORIO_HISTORICOSEMENTE: TfrmRELATORIO_HISTORICOSEMENTE;
begin
  Result := TfrmRELATORIO_HISTORICOSEMENTE(mm.GetFormInstance(TfrmRELATORIO_HISTORICOSEMENTE));
end;

procedure TfrmRELATORIO_HISTORICOSEMENTE.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_HISTORICOSEMENTE(mm.varI_Code_Company,
                                   edSearchDATAINI.DateTime,
                                   edSearchDATAFIN.DateTime,
                                   edSearchPRODUTOSINI.Text,
                                   edSearchPRODUTOSFIN.Text);

  mm.varC_caminhopdf :=  IMPRESSAO_historicosemente(
                         MM.varI_Code_Company,
                         edSearchDATAINI.Text,
                         edSearchDATAFIN.text,
                         edSearchPRODUTOSINI.Text,
                         edSearchPRODUTOSFIN.Text,
                         psql);

  unfImpressao.ShowModal();

end;

procedure TfrmRELATORIO_HISTORICOSEMENTE.edSearchPRODUTOSFINButtonClick(Sender: TObject);
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

procedure TfrmRELATORIO_HISTORICOSEMENTE.edSearchPRODUTOSINIButtonClick(Sender: TObject);
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

procedure TfrmRELATORIO_HISTORICOSEMENTE.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmRELATORIO_HISTORICOSEMENTE.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmRELATORIO_HISTORICOSEMENTE.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;
procedure TfrmRELATORIO_HISTORICOSEMENTE.UniFormShow(Sender: TObject);
begin
  edSearchDATAINI.DateTime    := StartofTheMonth(date);
  edSearchDATAFIN.DateTime    := Date;
end;

Initialization
   RegisterClass( TfrmRELATORIO_HISTORICOSEMENTE );
end.
