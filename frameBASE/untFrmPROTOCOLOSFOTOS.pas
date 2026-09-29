unit untFrmPROTOCOLOSFOTOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  Vcl.Imaging.jpeg, uniImage, acPNG, Vcl.Menus, uniMainMenu, uniFileUpload,
  uniTrackBar;

type
  TfrmPROTOCOLOFOTO = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    img_1: TUniImage;
    img_2: TUniImage;
    img_3: TUniImage;
    rcBlock10: TUniContainerPanel;
    UniPopupMenu_img: TUniPopupMenu;
    E1: TUniMenuItem;
    N1: TUniMenuItem;
    D1: TUniMenuItem;
    N2: TUniMenuItem;
    V1: TUniMenuItem;
    btnLkpClear: TUniBitBtn;
    img_visualiza: TUniImage;
    uniFile_1: TUniFileUpload;
    uniFile_2: TUniFileUpload;
    uniFile_3: TUniFileUpload;
    procedure img_1Click(Sender: TObject);
    procedure btnLkpClearClick(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure img_2Click(Sender: TObject);
    procedure img_3Click(Sender: TObject);
    procedure img_4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure uniFile_1Completed(Sender: TObject; AStream: TFileStream);
    procedure uniFile_2Completed(Sender: TObject; AStream: TFileStream);
    procedure uniFile_3Completed(Sender: TObject; AStream: TFileStream);
    procedure D1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
  private
    { Private declarations }
  seqfotos:integer;
  public
    { Public declarations }
    cMSG_BUGERROR_RECORDS_SELECTION,
    cMSG_RECORDS_FOUND : string ;
    cFormModal         : TUniForm;
    procedure carregadados    (const pproduto:integer);
    procedure crudfotos       (const acao :string;seq:integer;AStream: TFileStream);
    function  checacarregafoto(const pprotocolo,pseq:integer):boolean;
  end;

function frmPROTOCOLOFOTO: TfrmPROTOCOLOFOTO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untDM_RC, mkm_procedures, uconsts,
  mkm_func_web, mkm_funcoes, Vcl.Clipbrd, FireDAC.Comp.Client,
  mkm_procedurelaboratorio;

function frmPROTOCOLOFOTO: TfrmPROTOCOLOFOTO;
begin
  Result := TfrmPROTOCOLOFOTO(mm.GetFormInstance(TfrmPROTOCOLOFOTO));
end;

procedure TfrmPROTOCOLOFOTO.btnLkpClearClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPROTOCOLOFOTO.carregadados(const pproduto:integer);
begin
  TabelaProtocoloFotos(' select * from PROTOCOLO_FOTOS where protocolo = ' + IntToStr(pproduto)             +
                       ' and empresa                                   = ' + IntToStr(mm.varI_Code_Company) +
                       ' order by sequencia                              ');

  dm_rc.fdqryprotocolofotos.First;
  while not dm_rc.fdqryprotocolofotos.Eof do
    begin

      if dm_rc.fdqryprotocolofotos.FindField('SEQUENCIA').AsInteger = 1 then
        img_1.Picture.LoadFromFile(dm_rc.fdqryprotocolofotos.FindField('caminho').AsString);
      if dm_rc.fdqryprotocolofotos.FindField('SEQUENCIA').AsInteger = 2 then
        img_2.Picture.LoadFromFile(dm_rc.fdqryprotocolofotos.FindField('caminho').AsString);
      if dm_rc.fdqryprotocolofotos.FindField('SEQUENCIA').AsInteger = 3 then
        img_3.Picture.LoadFromFile(dm_rc.fdqryprotocolofotos.FindField('caminho').AsString);

      dm_rc.fdqryprotocolofotos.Next;
    end;

end;

function TfrmPROTOCOLOFOTO.checacarregafoto(const pprotocolo,
  pseq: integer): boolean;
var
  query : TFDQuery;
  M_SQL : string;
begin
  query            := TFDQuery.Create(nil);
  query.Connection := mm.SQLConn;

    M_SQL := 'select caminho from protocolo_fotos where protocolo = ' + inttostr(pprotocolo) + ' and sequencia = ' + inttostr(pseq);

  with query do
    begin
      Close;
      UnPrepare;
      Sql.Clear;
      sql.Text := M_SQL;
      Prepare;
      Open;
    end;

  if query.RecordCount > 0 then
    begin
      if query.FindField('CAMINHO').AsString <> '' then
        Result := True
      else
        Result := False;
    end
  else
    Result := False;


  FreeAndNil(query);
end;

procedure TfrmPROTOCOLOFOTO.crudfotos(const acao :string;seq:integer;AStream: TFileStream);
var
  pathimg:string;
begin
  if acao = 'inclui' then
    begin
      executasql(' delete from PROTOCOLO_FOTOS where protocolo = ' + IntToStr(mm.varcI_protocolo) +
                 ' and sequencia                               = ' + IntToStr(seq));

      TabelaProtocoloFotos('select * from PROTOCOLO_FOTOS where codigo = 0');

      dm_rc.fdqryprotocolofotos.Append;
      dm_rc.fdqryprotocolofotos.FindField('KEY').AsString        := Gera_Guid;
      dm_rc.fdqryprotocolofotos.FindField('CODIGO').AsInteger    := Ultimo_Codigo('PROTOCOLO_FOTOS','CODIGO',True);
      dm_rc.fdqryprotocolofotos.FindField('PROTOCOLO').AsInteger := mm.varcI_protocolo;
      dm_rc.fdqryprotocolofotos.FindField('EMPRESA').AsInteger   := MM.varI_Code_Company;
      dm_rc.fdqryprotocolofotos.FindField('SEQUENCIA').AsInteger := seq;
      dm_rc.fdqryprotocolofotos.FindField('CAMINHO').AsString    := AStream.FileName;
      dm_rc.fdqryprotocolofotos.Post;

      GravaHistoricoAnalista(mm.varcI_protocolo,
                             'ANEXADO FOTO ' + IntToStr(seq),
                             'dsInsert',
                             '');
    end;

  if acao = 'exclui' then
    begin
      SqlPesquisa('select * from PROTOCOLO_FOTOS where protocolo = ' + IntToStr(mm.varcI_protocolo) +
                 ' and sequencia                                 = ' + IntToStr(seq));
      try
        DeleteFile(dm_rc.sqlBuscas.FindField('CAMINHO').AsString);
        sleep(2000);
        executasql(' delete from PROTOCOLO_FOTOS where protocolo = ' + IntToStr(mm.varcI_protocolo) +
                   ' and sequencia                               = ' + IntToStr(seq));

        GravaHistoricoAnalista(mm.varcI_protocolo,
                               'REMOVIDO FOTO ' + IntToStr(seq),
                               'dsDelete',
                               '');
      except
      end;

      pathimg :=  ExtractFilePath(Application.ExeName) + 'uploads' + BACKSLASH +  'semfoto.jpg';

      if seq = 1 then
        img_1.Picture.LoadFromFile(pathimg);
      if seq = 2 then
        img_2.Picture.LoadFromFile(pathimg);
      if seq = 3 then
        img_3.Picture.LoadFromFile(pathimg);

      img_visualiza.Picture.LoadFromFile(pathimg);
    end;

  if acao = 'carrega' then
    begin
      SqlPesquisa('select * from PROTOCOLO_FOTOS where protocolo = ' + IntToStr(mm.varcI_protocolo) +
                 ' and sequencia                                 = ' + IntToStr(seq));

      img_visualiza.Picture := nil;
      img_visualiza.Picture.LoadFromFile(dm_rc.sqlBuscas.FindField('CAMINHO').AsString);

        GravaHistoricoAnalista(mm.varcI_protocolo,
                               'VISUALIZOU FOTO ' + IntToStr(seq),
                               'dsView',
                               '');
    end;

end;

procedure TfrmPROTOCOLOFOTO.D1Click(Sender: TObject);
var
  va : TFileStream;
begin
  crudfotos('exclui',seqfotos,va);
end;

procedure TfrmPROTOCOLOFOTO.E1Click(Sender: TObject);
begin
  if checacarregafoto(mm.varcI_protocolo,seqfotos) = True then
    begin
      dm_rc.rc_ShowSweetAlert( 'ATENÇÃO', 'PRIMEIRO, DELETE A FOTO EXISTENTE, DEPOIS CARREGUE OUTRA' , 'error' , false );
      abort;
    end;

  if seqfotos = 1 then
    begin
      uniFile_1.CleanupInstance;
      uniFile_1.Filter       := '*.png;*.jpg';
      uniFile_1.TargetFolder := 'uploads' + BACKSLASH + 'amostrafotos';

      if dm_rc.rc_ForceDirectories( uniFile_1.TargetFolder ) then
         uniFile_1.Execute;
    end;
  if seqfotos = 2 then
    begin
      uniFile_2.CleanupInstance;
      uniFile_2.Filter       := '*.png;*.jpg';
      uniFile_2.TargetFolder := 'uploads' + BACKSLASH + 'amostrafotos';

      if dm_rc.rc_ForceDirectories( uniFile_2.TargetFolder ) then
         uniFile_2.Execute;
    end;
  if seqfotos = 3 then
    begin
      uniFile_3.CleanupInstance;
      uniFile_3.Filter       := '*.png;*.jpg';
      uniFile_3.TargetFolder := 'uploads' + BACKSLASH + 'amostrafotos';

      if dm_rc.rc_ForceDirectories( uniFile_3.TargetFolder ) then
         uniFile_3.Execute;
    end;
end;

procedure TfrmPROTOCOLOFOTO.img_1Click(Sender: TObject);
begin
  seqfotos := 1;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPROTOCOLOFOTO.UniFormCreate(Sender: TObject);
begin
  cFormModal     := mm.varC_Form_Modal;
end;

procedure TfrmPROTOCOLOFOTO.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TfrmPROTOCOLOFOTO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmPROTOCOLOFOTO.UniFormShow(Sender: TObject);
begin
  frmPROTOCOLOFOTO.Caption := 'Foto(s) da Amostra : ' +   mm.vari_amostraassinatura;
  carregadados(mm.varcI_protocolo);
end;

procedure TfrmPROTOCOLOFOTO.V1Click(Sender: TObject);
var
  va : TFileStream;
begin
  crudfotos('carrega',seqfotos,va);
end;

procedure TfrmPROTOCOLOFOTO.img_2Click(Sender: TObject);
begin
  seqfotos := 2;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPROTOCOLOFOTO.img_3Click(Sender: TObject);
begin
  seqfotos := 3;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPROTOCOLOFOTO.img_4Click(Sender: TObject);
begin
  seqfotos := 4;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPROTOCOLOFOTO.uniFile_1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_1.Filter       := '*.jpg';
  uniFile_1.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 1 then
    img_1.Picture.LoadFromFile(AStream.FileName);

  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

procedure TfrmPROTOCOLOFOTO.uniFile_2Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_2.Filter       := '*.jpg';
  uniFile_2.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 2 then
    img_2.Picture.LoadFromFile(AStream.FileName);


  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

procedure TfrmPROTOCOLOFOTO.uniFile_3Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_3.Filter       := '*.jpg';
  uniFile_3.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 3 then
    img_3.Picture.LoadFromFile(AStream.FileName);

  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

end.
