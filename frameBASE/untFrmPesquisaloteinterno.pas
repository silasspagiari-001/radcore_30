unit untFrmPesquisaloteinterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, uniGUIBaseClasses, uniTimer, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniButton, uniBitBtn, uniMultiItem, uniComboBox, uniEdit,
  uniLabel, uniBasicGrid, uniDBGrid, uniPanel;

type
  TFrmPesquisaloteinterno = class(TUniForm)
    rcBlock50: TUniContainerPanel;
    UniDBGridLOTE: TUniDBGrid;
    rcBlock10: TUniContainerPanel;
    UniLabelv1: TUniLabel;
    edSearchCRUDconteudo: TUniEdit;
    rcBlock20: TUniContainerPanel;
    cbxSearchCRUDFieldordem: TUniComboBox;
    UniLabel1: TUniLabel;
    rcBlock30: TUniContainerPanel;
    UniComboBoxestoque: TUniComboBox;
    UniLabel2: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    UniComboBoxstatus: TUniComboBox;
    UniLabel3: TUniLabel;
    rcBlock40: TUniContainerPanel;
    btnLkpSearch: TUniBitBtn;
    tblote: TFDMemTable;
    dslote: TDataSource;
    timerClose: TUniTimer;
    tbloteLOTE: TStringField;
    tbloteCODIGO: TIntegerField;
    tblotePRODUTO: TIntegerField;
    tbloteDESCRICAO: TStringField;
    tblotePUREZA: TFloatField;
    tbloteDISPONIVEL: TFloatField;
    tbloteTOTALPONTOS: TFloatField;
    labTotReg: TUniLabel;
    tbloteBARRACAO: TStringField;
    tbloteTIPO: TStringField;
    UniContainerPanel2: TUniContainerPanel;
    UniComboBoxtipo: TUniComboBox;
    UniLabel4: TUniLabel;
    tbloteCODIGOP: TStringField;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure btnLkpSearchClick(Sender: TObject);
    procedure UniDBGridLOTEDblClick(Sender: TObject);
    procedure tbloteTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    cMSG_BUGERROR_RECORDS_SELECTION,
    cMSG_RECORDS_FOUND : string ;
    cFormModal         : TUniForm;    { Public declarations }
  end;

function FrmPesquisaloteinterno: TFrmPesquisaloteinterno;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untDM_RC, mkm_anim, mkm_funcoes, mkm_func_web;
var
  M_STR   : TStringList;

function FrmPesquisaloteinterno: TFrmPesquisaloteinterno;
begin
  Result := TFrmPesquisaloteinterno(mm.GetFormInstance(TFrmPesquisaloteinterno));
end;

procedure TFrmPesquisaloteinterno.btnLkpSearchClick(Sender: TObject);
var
  M_SQL, M_ESTOQUE,M_ATIVO, M_TIPO : string;
begin
  M_STR  := Explode('CODIGO;LOTE;PRODUTO;DESCRICAO',';');
  M_TIPO := ' AND TIPO = ' + QuotedStr(UniComboBoxtipo.Text);

  case UniComboBoxstatus.ItemIndex of
    0 : M_ATIVO := ' AND ATIVO = ' + QuotedStr('T');
    1 : M_ATIVO := ' AND ATIVO = ' + QuotedStr('F');
    2 : M_ATIVO := '';
  end;

  case UniComboBoxestoque.ItemIndex of
    0: M_ESTOQUE := ' AND DISPONIVEL > 0 ';  //positivo
    1: M_ESTOQUE := ' AND DISPONIVEL < 0 ';  //negativo
    2: M_ESTOQUE := ' AND DISPONIVEL = 0 ';  //zerado
    3: M_ESTOQUE := '';                      //todos
  end;


  M_SQL:=' SELECT                              ' +
         ' *                                   ' +
         ' FROM                                ' + 'LOTEINTERNO'                              +
         ' WHERE                               ' + M_STR[cbxSearchCRUDFieldordem.ItemIndex]   +
         ' like                                ' + QuotedStr('%'+edSearchCRUDconteudo.Text+'%')       +  M_ESTOQUE + M_TIPO +  M_ATIVO +
         ' ORDER BY                            ' + M_STR[cbxSearchCRUDFieldordem.ItemIndex];


  dm_rc.sqlPesquisa.Close;
  dm_rc.sqlPesquisa.SQL.Clear;
  dm_rc.sqlPesquisa.sql.add(M_SQL);
  dm_rc.sqlPesquisa.Open;

  tblote.Close;
  tblote.Open;
  if dm_rc.sqlpesquisa.RecordCount > 0 then
    begin
      dm_rc.sqlpesquisa.First;
      while not dm_rc.sqlpesquisa.Eof do
        begin
          tblote.Append;
          tbloteCODIGO.AsInteger      := dm_rc.sqlpesquisa.FindField('CODIGO').AsInteger;
          tbloteTIPO.AsString         := dm_rc.sqlpesquisa.FindField('TIPO').AsString;
          tblotePRODUTO.AsInteger     := dm_rc.sqlpesquisa.FindField('PRODUTO').AsInteger;
          tbloteLOTE.AsString         := dm_rc.sqlpesquisa.FindField('LOTE').AsString;
          tbloteBARRACAO.AsString     := dm_rc.sqlpesquisa.FindField('BARRACAO').AsString;
          tbloteDESCRICAO.AsString    := dm_rc.sqlpesquisa.FindField('DESCRICAO').AsString;
          tbloteDISPONIVEL.AsFloat    := dm_rc.sqlpesquisa.FindField('DISPONIVEL').AsFloat;
          tbloteTOTALPONTOS.AsFloat   := dm_rc.sqlpesquisa.FindField('TOTALPONTOS').AsFloat;
          tbloteCODIGOP.AsString      := dm_rc.sqlpesquisa.FindField('CODIGOP').AsString;
          tblote.Post;

          dm_rc.sqlpesquisa.Next;
        end;
      tblote.First;
    end;

  labTotReg.Caption := IntToStr(dm_rc.sqlpesquisa.RecordCount) + ' Registro(s) Encontrado(s).'
end;

procedure TFrmPesquisaloteinterno.tbloteTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    begin
      if tbloteTIPO.AsString = 'Produto Acabado' then
        Text := '<span class="badge badge-success">'+tbloteTIPO.AsString+'</span>'
      else
      if tbloteTIPO.AsString = 'Sementes' then
        Text := '<span class="badge badge-warning">'+tbloteTIPO.AsString+'</span>'
      else
      if tbloteTIPO.AsString = 'Insumos' then
        Text := '<span class="badge badge-info">'+tbloteTIPO.AsString+'</span>'
      else
      if tbloteTIPO.AsString = 'Sacaria' then
        Text := '<span class="badge badge-dark">'+tbloteTIPO.AsString+'</span>'
    end;
end;

procedure TFrmPesquisaloteinterno.UniDBGridLOTEDblClick(Sender: TObject);
begin
  mm.varC_codigo_busca_lote := tblote.FindField('CODIGO').AsString;

  ModalResult := mrOK;

  dm_rc.sqlpesquisa.Close;
  timerClose.Enabled := true;
  rc_MoveAnimationForm( self,
                       self.left,
                       self.left,
                       self.top,
                       -self.Height,
                       400,
                       0 ) ;
end;

procedure TFrmPesquisaloteinterno.UniFormCreate(Sender: TObject);
begin
  cFormModal := mm.varC_Form_Modal;

  cbxSearchCRUDFieldordem.Clear;
  cbxSearchCRUDFieldordem.Items.Add('Codigo');
  cbxSearchCRUDFieldordem.Items.Add('Lote');
  cbxSearchCRUDFieldordem.Items.Add('Cod. Prod');
  cbxSearchCRUDFieldordem.Items.Add('Descrição');
  cbxSearchCRUDFieldordem.ItemIndex := 1;

  UniComboBoxestoque.Clear;
  UniComboBoxestoque.Items.Add('Positivo');
  UniComboBoxestoque.Items.Add('Negativo');
  UniComboBoxestoque.Items.Add('Zerado');
  UniComboBoxestoque.Items.Add('Todos');
  UniComboBoxestoque.ItemIndex := 3;

  UniComboBoxstatus.Clear;
  UniComboBoxstatus.Items.Add('Ativo');
  UniComboBoxstatus.Items.Add('Inativo');
  UniComboBoxstatus.Items.Add('Todos');
  UniComboBoxstatus.ItemIndex := 0;

  UniComboBoxtipo.Clear;
  UniComboBoxtipo.Items.Add('Produto Acabado');
  UniComboBoxtipo.Items.Add('Sementes');
  UniComboBoxtipo.Items.Add('Insumos');
  UniComboBoxtipo.Items.Add('Sacaria');

  if MM.varBPI_TIPOBUSCA = 'BPA' then
    UniComboBoxtipo.ItemIndex := 0
  else
    UniComboBoxtipo.ItemIndex := 1;

  if mm.varCD_PRODUTOENTREGA <> 0 then
    begin
      cbxSearchCRUDFieldordem.ItemIndex := 2;
      edSearchCRUDconteudo.Text         := IntToStr(mm.varCD_PRODUTOENTREGA);
      btnLkpSearch.OnClick(self);
    end;

end;

procedure TFrmPesquisaloteinterno.UniFormDestroy(Sender: TObject);
begin
  dm_rc.sqlPesquisa.Close;
  mm.varC_Form_Modal := nil;
end;

procedure TFrmPesquisaloteinterno.UniFormReady(Sender: TObject);
begin
     Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TFrmPesquisaloteinterno.UniFormShow(Sender: TObject);
begin
  if Self.Tag = 0 then
  begin
      Self.Visible := True;
      Self.Top  := 0;

      rc_MoveAnimationForm( self,
                            self.left,
                            self.left,
                            self.top,
                            ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  ),
                            400,
                            1 ) ;
  end
  else
  begin
    Self.Visible := False;
    Self.Top  := -1000;
  end;
  Self.Visible := True;
end;

end.
