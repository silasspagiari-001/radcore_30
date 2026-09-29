unit untFrmGERARRETORNOBANCARIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFrmBase, uniPanel, uniHTMLFrame,
  uniGUIBaseClasses, uniGUIClasses, uniEdit, uniBasicGrid, uniDBGrid,
  UniButtonEdit, uniScrollBox, uniPageControl, uniButton, uniBitBtn, uniLabel,
  uniFileUpload;

type
  TfrmGERARRETORNOBANCARIO = class(TfrmBase)
    labTitleFormdetails: TUniLabel;
    labExit: TUniLabel;
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
    paSearchFilterDtIni: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniFormattedNumberEditENTRADA: TUniFormattedNumberEdit;
    paSearchFilterDtEnd: TUniContainerPanel;
    UniFormattedNumberEditLIQUIDACAO: TUniFormattedNumberEdit;
    UniLabel3: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniFormattedNumberEditREJEICAO: TUniFormattedNumberEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniFormattedNumberEditOUTRAS: TUniFormattedNumberEdit;
    UniLabel5: TUniLabel;
    uniFileUp: TUniFileUpload;
    procedure UniButtonEditpbancosButtonClick(Sender: TObject);
    procedure UniButtonEditpbancosExit(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure uniFileUpCompleted(Sender: TObject; AStream: TFileStream);
    procedure btnSearchCRUDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGERARRETORNOBANCARIO: TfrmGERARRETORNOBANCARIO;

implementation

{$R *.dfm}

uses untDM_RC, mkm_funcoes, mkm_func_web, untFrmPesquisa, mkm_procedures,
  MainModule, mkm_regrasnegocio;
procedure TfrmGERARRETORNOBANCARIO.btnOptionsClick(Sender: TObject);
begin
  inherited;

  uniFileUp.Filter       := '*.ret';
  uniFileUp.TargetFolder := 'uploads';

  if dm_rc.rc_ForceDirectories( uniFileUp.TargetFolder ) then
     uniFileUp.Execute;

end;

procedure TfrmGERARRETORNOBANCARIO.btnSearchCRUDClick(Sender: TObject);
var
  Linha,seq     : String;
  M_ENTRADAS    : Real;
  M_LIQUIDACOES : Real;
  M_REJEICOES   : Real;
  M_CARTORIO,
  M_BSIMPLES    : Real;
  I, R, S       : Integer;
  ordem         : TStringList;
begin
  inherited;

  M_ENTRADAS    := 0;
  M_LIQUIDACOES := 0;
  M_REJEICOES   := 0;
  M_CARTORIO    := 0;
  M_BSIMPLES    := 0;
  R             := 0;
  I             := 0;

  dm_rc.tbretornobancario.Close;
  dm_rc.tbretornobancario.Open;

  for I := 0 to dm_rc.ACBrBoletoretorno.ListadeBoletos.Count-1 do
    begin
      S  := 0;
      if dm_rc.ACBrBoletoretorno.ListadeBoletos[I].OcorrenciaOriginal.Descricao = '06-Liquidação Normal' then
       begin
          dm_rc.tbretornobancario.Append;
          dm_rc.tbretornobancario.FindField('TAXAS').AsFloat          := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorOutrasDespesas+dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorDespesaCobranca;
          dm_rc.tbretornobancario.FindField('JUROS').AsFloat          := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorMoraJuros;
          dm_rc.tbretornobancario.FindField('DESCONTO').AsFloat       := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorDesconto;
          dm_rc.tbretornobancario.FindField('VALORDOCUMENTO').AsFloat := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorDocumento;
          dm_rc.tbretornobancario.FindField('STATUS').AsString        := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].OcorrenciaOriginal.Descricao;
          dm_rc.tbretornobancario.FindField('NOSSONUMERO').AsString   := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].NossoNumero;
          dm_rc.tbretornobancario.FindField('VENCIMENTO').AsDateTime  := dm_rc.ACBrBoletoretorno.ListadeBoletos[I].Vencimento;

          dm_rc.tbretornobancario.FindField('PORTADOR').AsInteger     := StrToInt(UniButtonEditpbancos.Text);
          dm_rc.tbretornobancario.FindField('PAGAMENTO').AsString     := DateToStr(dm_rc.ACBrBoletoretorno.ListadeBoletos[I].DataBaixa);

           ordem := Explode(dm_rc.ACBrBoletoretorno.ListadeBoletos[I].NumeroDocumento,'/');
          for R := 0 to ordem.Count - 1 do
            begin
               Inc(S);
              if S = 1 then
                begin
                  dm_rc.tbretornobancario.FindField('NUMERO').AsString   := ordem[R];
                end
              else
                begin
                   seq                                        := ordem[R];
                   dm_rc.tbretornobancario.FindField('SEQUENCIA').AsInteger    := StrToInt(RemoverEspacos(seq));

                  if SqlPesquisa (' SELECT * FROM RECEBER WHERE NUMERO = ' + QuotedStr(dm_rc.tbretornobancario.FindField('NUMERO').AsString) +
                                  ' AND SERIE                          = ' + QuotedStr('NFE')                                                +
                                  ' AND EMPRESA                        = ' + IntToStr(mm.varI_Code_Company)                                  +
                                  ' AND SEQUENCIA                      = ' + IntToStr(dm_rc.tbretornobancario.FindField('SEQUENCIA').AsInteger)) then
                  begin
                    dm_rc.tbretornobancario.FindField('NUMERO').AsString      := dm_rc.sqlBuscas.Findfield('NUMERO').AsString;
                    dm_rc.tbretornobancario.FindField('SERIE').AsString       := dm_rc.sqlBuscas.Findfield('SERIE').AsString;
                    dm_rc.tbretornobancario.FindField('PLANOCONTAS').AsString := dm_rc.sqlBuscas.Findfield('PLANOCONTAS').AsString;
//                    dm_rc.tbretornobancario.FindField('VENCIMENTO').AsString  := dm_rc.sqlBuscas.Findfield('VENCIMENTO').AsString;
                  end;

                end;
            end;

         dm_rc.tbretornobancario.Post;

         if dm_rc.tbretornobancario.FindField('STATUS').AsString = '02' then
           M_ENTRADAS    := M_ENTRADAS    + dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorDocumento
         else
         if dm_rc.tbretornobancario.FindField('STATUS').AsString = '06' then
           M_LIQUIDACOES := M_LIQUIDACOES + dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorAbatimento
         else
         if dm_rc.tbretornobancario.FindField('STATUS').AsString = '03' then
           M_REJEICOES   := M_REJEICOES + dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorOutrasDespesas
         else
         if dm_rc.tbretornobancario.FindField('STATUS').AsString = '09' then
           M_BSIMPLES    := M_BSIMPLES  + dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorDocumento
         else
           M_CARTORIO    := M_CARTORIO  +  dm_rc.ACBrBoletoretorno.ListadeBoletos[I].ValorMoraJuros;
       end;
      application.ProcessMessages;
    end;

end;

procedure TfrmGERARRETORNOBANCARIO.UniButtonEditpbancosButtonClick(
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

procedure TfrmGERARRETORNOBANCARIO.UniButtonEditpbancosExit(Sender: TObject);
begin
  inherited;
  UniEditdescricaobanco.Text := Acha_Item('PORTADORES'  ,UniButtonEditpbancos.Text);
end;

procedure TfrmGERARRETORNOBANCARIO.uniFileUpCompleted(Sender: TObject;
  AStream: TFileStream);
begin
  inherited;
  try
    LerRetorno(mm.varI_Code_Company,StrToInt(UniButtonEditpbancos.Text));

    dm_rc.ACBrBoletoretorno.DirArqRetorno             := AStream.FileName;
    dm_rc.ACBrBoletoretorno.NomeArqRetorno            := AStream.FileName;
    dm_rc.ACBrBoletoretorno.LerRetorno();
  except
    on e:exception do
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', e.Message , 'error' , false );
  end;
end;

initialization
  RegisterClass(TfrmGERARRETORNOBANCARIO);
end.
