unit untFrmGERARREMESSABANCARIA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, uniBasicGrid, uniDBGrid,
  uniEdit, uniDateTimePicker, uniGUIClasses, UniButtonEdit, uniLabel,
  uniScrollBox, uniPanel, uniPageControl, uniButton, uniBitBtn, uniHTMLFrame,
  uniGUIBaseClasses, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmGERARREMESSABANCARIA = class(TfrmBase)
    paBaseButtons: TUniContainerPanel;
    paOF: TUniContainerPanel;
    btnCloseForm: TUniBitBtn;
    btnOptions: TUniBitBtn;
    paP: TUniContainerPanel;
    btnSearch: TUniBitBtn;
    paNAE: TUniContainerPanel;
    paGC: TUniContainerPanel;
    pgBaseCadControl: TUniPageControl;
    tabSearch: TUniTabSheet;
    paBaseRegSearch: TUniContainerPanel;
    paSearchFilters: TUniPanel;
    UniScrollBox1: TUniScrollBox;
    labTitleSearch: TUniLabel;
    paSearchBtn: TUniContainerPanel;
    btnSearchCRUD: TUniBitBtn;
    btnSearchMoreFilters: TUniBitBtn;
    paSearchFilter1: TUniContainerPanel;
    paSearchField1: TUniContainerPanel;
    UniLabelc1: TUniLabel;
    UniButtonEditpbancos: TUniButtonEdit;
    paSearchOp1: TUniContainerPanel;
    UniEditdescricaobanco: TUniEdit;
    UniLabel1: TUniLabel;
    dbgSearchCRUD: TUniDBGrid;
    labTitleFormdetails: TUniLabel;
    labExit: TUniLabel;
    dsfiltro: TDataSource;
    tbbusca: TFDMemTable;
    tbbuscaNUMERO: TIntegerField;
    tbbuscaVENCIMENTO: TDateField;
    tbbuscaPESSOA: TIntegerField;
    tbbuscaNOME: TStringField;
    tbbuscaPORTADOR: TIntegerField;
    tbbuscaEMISSAOBOLETO: TDateField;
    tbbuscaSEQUENCIA: TIntegerField;
    tbbuscaVALORATUAL: TFloatField;
    tbbuscaSERIE: TStringField;
    paSearchFilterDtIni: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchCRUDDtIni: TUniDateTimePicker;
    paSearchFilterDtEnd: TUniContainerPanel;
    UniLabelDtEnd: TUniLabel;
    edSearchCRUDDtEnd: TUniDateTimePicker;
    procedure btnSearchClick(Sender: TObject);
    procedure UniButtonEditpbancosButtonClick(Sender: TObject);
    procedure UniButtonEditpbancosExit(Sender: TObject);
    procedure btnSearchCRUDClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  procedure ativabusca();
  end;

var
  frmGERARREMESSABANCARIA: TfrmGERARREMESSABANCARIA;

implementation

{$R *.dfm}

uses MainModule, mkm_func_web, mkm_funcoes, untFrmPesquisa, mkm_procedures,
  untDM_RC, mkm_regrasnegocio, ServerModule;

{ TfrmGERARREMESSABANCARIA }

procedure TfrmGERARREMESSABANCARIA.ativabusca;
begin
  if not ( dsfiltro.State in [dsEdit, dsInsert ] ) then
  begin
     pgBaseCadControl.ActivePage := tabSearch;

     if mm.varB_Mobile_Screen_Portrait then
        paSearchFilters.Width := varIIF( paSearchFilters.width = 0, dbgSearchCRUD.Width, 0 )
     else
        paSearchFilters.Width := varIIF( paSearchFilters.width = 0, 266, 0 );
  end;
end;


procedure TfrmGERARREMESSABANCARIA.btnOptionsClick(Sender: TObject);
var
  nomearquivo,caminhoret,caminho:string;
begin
  inherited;

  if tbbusca.RecordCount = 0 then
    begin
      dm_rc.rc_ShowSweetAlert( 'Ok', 'NADA A GERAR' , 'error' , false );
      abort;
    end;

  dm_rc.rc_ShowYesNo( 'POSSO GERAR ESSA REMESSA?' );
  if mm.varB_Yes then
    begin
      try
        caminhoret:= GerarRemessar(mm.varI_Code_Company,
                                   StrToInt(UniButtonEditpbancos.Text));

        caminho     := ExtractFilePath(caminhoret);
        nomearquivo := ExtractFileName(caminhoret);

        Copyfile(pchar(caminhoret), pchar(sm.LocalCachePath + nomearquivo ),true);
        sleep(5000);
        unisession.SendFile(sm.LocalCachePath + nomearquivo);
        btnSearchCRUD.OnClick(Self);
        dm_rc.rc_ShowSweetAlert( 'Ok', 'GERADO COM SUCESSO' , 'sucess' , false );
      except
        dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'FALHA AO GERAR REMESSA' , 'error' , false );
      end;
    end;
end;

procedure TfrmGERARREMESSABANCARIA.btnSearchClick(Sender: TObject);
begin
  inherited;
  ativabusca();
end;

procedure TfrmGERARREMESSABANCARIA.btnSearchCRUDClick(Sender: TObject);
begin
  inherited;
  tbbusca.Close;
  tbbusca.Open;

  if (UniButtonEditpbancos.Text = '0') or (UniButtonEditpbancos.Text = '') then
    begin
      dm_rc.rc_ShowSweetAlert( 'Ok', 'INFORMAR UMA CONTA VÁLIDA' , 'error' , false );
      abort;
    end;

  if SqlPesquisa('select * from receber where portador = ' + QuotedStr(UniButtonEditpbancos.Text) +
                 ' and empresa                          = ' + IntToStr(mm.varI_Code_Company)       +
                 ' and confirmaboleto                   = ' + QuotedStr('T')                       +
                 ' and confirmaremessa                 <> ' + QuotedStr('T')                       +
                 ' and emissao between                    ' + QuotedStr(DataPonto(edSearchCRUDDtIni.Text)) +
                 ' and                                    ' + QuotedStr(DataPonto(edSearchCRUDDtEnd.Text)) +
                 ' order by numero,sequencia              ') then
  begin
    dm_rc.sqlBuscas.First;
    while not dm_rc.sqlBuscas.Eof do
      begin

        tbbusca.Append;
        tbbusca.FindField('PORTADOR').AsInteger    := dm_rc.sqlBuscas.FindField('PORTADOR').AsInteger;
        tbbusca.FindField('NUMERO').AsInteger      := dm_rc.sqlBuscas.FindField('NUMERO').AsInteger;
        tbbusca.FindField('SERIE').AsString        := dm_rc.sqlBuscas.FindField('SERIE').AsString;
        tbbusca.FindField('SEQUENCIA').AsInteger   := dm_rc.sqlBuscas.FindField('SEQUENCIA').AsInteger;
        tbbusca.FindField('VENCIMENTO').AsDateTime := dm_rc.sqlBuscas.FindField('VENCIMENTO').AsDateTime;
        tbbusca.FindField('VALORATUAL').AsFloat    := dm_rc.sqlBuscas.FindField('VALORATUAL').AsFloat;
        tbbusca.FindField('NOME').AsString         := Acha_Item('PESSOAS',dm_rc.sqlBuscas.FindField('PESSOA').AsString);
        tbbusca.Post;

        dm_rc.sqlBuscas.Next;
      end;
  end;

end;

procedure TfrmGERARREMESSABANCARIA.UniButtonEditpbancosButtonClick(
  Sender: TObject);
begin
  inherited;
  mm.Seta_Busca('PORTADORES');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       UniButtonEditpbancos.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmGERARREMESSABANCARIA.UniButtonEditpbancosExit(Sender: TObject);
begin
  inherited;
    UniEditdescricaobanco.Text := Acha_Item('PORTADORES'  ,UniButtonEditpbancos.Text);
end;
initialization
  RegisterClass(TfrmGERARREMESSABANCARIA);

end.


