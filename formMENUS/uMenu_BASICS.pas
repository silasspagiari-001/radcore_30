unit uMenu_BASICS;

interface

procedure rc_BuildMenu_BASICS ;


implementation

uses uconsts, MainModule, system.sysutils, untdm_rc, mkm_menus, uniGUIDialogs,
  mkm_func_web, mkm_procedures;

procedure rc_BuildMenu_BASICS ;
var
   iSeqMenu,
   iSeqMenuPermission : Integer;
begin
     SetLength( mm.varA_MenuBasics, 200 );
     SetLength( mm.varA_MenuBasicsPermissions, 200 );

     iSeqMenu           := 1;
     iSeqMenuPermission := 1;
     // v. 3.2.0.0
     // este recurso ainda é experimental. Ainda não obtive sucesso para evitar que esta opção recebe o HOVER
     // this feature is still experimental. I haven't been successful yet to prevent this option from receiving HOVER


     if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Cadastros')  = True) or
        (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Tabelas')    = True) or
        (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Financeiro') = True) or
        (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Bancos')     = True) or
        (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Movimento')  = True) or
        (mm.vUserMaster = 'S')                                                       then
       begin
         //**********************************************************************//
         // SEMENTEIRAS
         //**********************************************************************//
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'ADMINISTRAÇÃO'                                        , ''                      , '' ,'', 'fa-pencil-ruler' );

         if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Cadastros')  = True) or (mm.vUserMaster = 'S') then
           begin
             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Cadastros' , ''                      , '', '', 'fa-book' );

             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'pessoas','ACESSAR') = 'T' then
               rc_BuildMenuItem(mm.varA_MenuBasics, iSeqMenu, 0, 'Pessoas'            , 'pessoas', '', '', 'fa-book');
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'produtos','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Produtos'                                        , 'produtos'              , '', '', 'fa-book' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'transportes','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Transportes'                                     , 'transportes'           , '', '', 'fa-book' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'funcionarios','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Funcionários'                                    , 'funcionarios'          , '', '', 'fa-book' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'responsavel','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Responsável Técnico'                             , 'responsavel'           , '', '', 'fa-book' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'laboratorio','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'L.A.Q.S'                                         , 'laboratorio'           , '', '', 'fa-book' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'empresas','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Empresa'                                         , 'empresas'              , '', '', 'fa-book' );
           end;

         if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Tabelas')  = True) or (mm.vUserMaster = 'S') then
           begin
             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Tabelas'               , ''                      , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'condicoes','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Condições Pgto'        , 'condicoes'             , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'portadores','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Instituição Bancária'  , 'portadores'            , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'planocontas','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Plano de Contas'       , 'planocontas'           , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'historico','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Histórico'             , 'historico'             , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'cidades','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cidade(s)'             , 'cidades'             , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'carteira','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Carteira'              , 'carteira'              , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'operacoes','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cadastro CFOP'         , 'operacoes'             , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'escritas','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Escrita CFOP'          , 'escritas'              , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'parametrosoperacao','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Parâmetros Operação'   , 'parametrosoperacao'    , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'centrocusto','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Centro de Custo'       , 'centrocusto'           , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'documentos','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Documentos'            , 'documentos'            , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'aplicacao','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Aplicação'             , 'aplicacao'             , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'regiao','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Região'                , 'regiao'                , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'medidas','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Medidas'               , 'medidas'               , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'marca','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Marca(s)'               , 'marca'                , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'especie','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Espécie'               , 'especie'               , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'cultivar','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cultivar'              , 'cultivar'              , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'pragas','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Nocivas'               , 'pragas'                , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'balancas','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Balanças'              , 'balancas'              , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'peneira','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Peneira'               , 'peneira'               , '', '', 'fa-table' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'categoria','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Categoria'             , 'categoria'             , '', '', 'fa-table' );
           end;

         if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Financeiro')  = True) or
            (mm.vUserMaster = 'S') then
           begin
             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Financeiro'            , ''                        , '', '', 'fa-money-bill' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'receber','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Contas a Receber'      , 'receber'               , '', '', 'fa-money-bill' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'pagar','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Contas a Pagar'        , 'pagar'                 , '', '', 'fa-money-bill' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'cheques','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Controle de Cheques'   , 'cheques'               , '', '', 'fa-money-check-alt' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'extrato_comissao','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Comissão Vendedor'      , 'extrato_comissao'               , '', '', 'fa-comment-dollar' );

             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'extratofinanceiropessoa','ACESSAR') = 'T' then
               rc_BuildMenuItem(mm.varA_MenuBasics, iSeqMenu, 0, 'Extrato de Pessoa'  , ''                      , '', 'extratofinanceiropessoa'  , 'fa-university' );


             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Baixas Financeira'     , ''                        , '', '', 'fa-comment-dollar' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'baixareceber','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Baixas a Receber'      , ''                      , '', 'baixareceber', 'fa-comment-dollar' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'baixapagar','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Baixas a Pagar'        , ''                      , '', 'baixapagar'  , 'fa-comment-dollar' );
           end;

         if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Bancos')  = True) or
            (mm.vUserMaster = 'S') then
           begin
             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Bancos'                , ''                      , '', '', 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'bancos','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Lançamento Bancário'   , 'bancos'                , '', '', 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'fluxocaixa','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Fluxo de Caixa'        , ''                      , '', 'fluxocaixa'           , 'fa-calendar' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'caixadiario','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Caixa Diário'          , ''                      , '', 'caixadiario'          , 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'extratobancario','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Extrato Bancário'      , ''                      , '', 'extratobancario'      , 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'planocontasindividual','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Extrato Plano de Contas'       , ''              , '', 'planocontasindividual', 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'planocontasanalitico','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Plano Contas Analítico'        , ''              , '', 'planocontasanalitico' , 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'planocontasresumo','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Resumo do Plano de Contas'     , ''              , '', 'planocontasresumo'    , 'fa-university' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'bancoresumo','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Resumo de Bancos'              , ''              , '', 'bancoresumo'          , 'fa-university' );

             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Arquivo(s) Banco'                , ''                      , '', '', 'fa-file-csv' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'gerarremessabancaria','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Remessa Bancária'       , ''              , '', 'gerarremessabancaria', 'fa-upload');
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'gerarretornobancario','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Retorno Bancário'       , ''              , '', 'gerarretornobancario', 'fa-download');

           end;

         if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'Movimento')  = True) or
            (mm.vUserMaster = 'S') then
           begin
             rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Movimento'                     , '', '', ''                     , 'fa-file-invoice' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'orcamento','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Orçamento(s)'                  , '', '', 'orcamento'          , 'fa-file-invoice' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'pedidos','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Pedido(s)'                     , '', '', 'pedidos'            , 'fa-file-invoice' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'notaentrada','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Nota Entrada'               , '', '', 'notaentrada'           , 'fa-file-invoice' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'cteentrada','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'CTE Entrada'                   , '', '', 'cteentrada'         , 'fa-dolly-flatbed' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'notaeletronica','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Nota Eletrônica'               , '', '', 'notaeletronica'     , 'fa-file-invoice' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'manifesto','ACESSAR') = 'T' then
               rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Manifesto Eletrônico'          , '', '', 'manifesto'          , 'fa-truck-moving' );
             if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'romaneio','ACESSAR') = 'T' then
               rc_BuildMenuItem(mm.varA_MenuBasics, iSeqMenu, 0, 'Romaneio' , 'romaneio', '', '', 'fa-truck-loading');
           end;
       end;

    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'U.B.S.')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       //**********************************************************************//
       // U.B.S.
       //**********************************************************************//
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'U.B.S.'                  , ''                , '' ,'','fa-industry' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'solicitacao','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Termo de Amostragem'   , 'solicitacao'  , '', '','fa-mail-bulk' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'sementes','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cadastro Lote/Boletim'   , 'sementes'      , '', '','fa-industry' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'pontos','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Controle de Pontos'      , 'pontos'        , '', '','fa-industry' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'beneficiamento','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Beneficiamento por Nota' , 'beneficiamento', '', '','fa-industry' );

       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'CONSULTA'                  , ''                , '' ,'','fa-archive' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'historicobenenota','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Histórico Benef.'               , ''              , '', 'historicobenenota'          , 'fa-search' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'sementes','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Histórico Lote'               , ''              , '', 'consultakardexlote'           , 'fa-th' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'produtos','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Histórico Produto'               , ''            , '', 'consultakardexproduto'       , 'fa-truck-loading' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'portalforrageira','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Portal Laboratório(s)'               , ''            , '', 'portalforrageira'            , 'fa-sitemap' );

     end;

    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'BARRACÃO')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       //**********************************************************************//
       // BARRACÃO
       //**********************************************************************//
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'BARRACÃO'                       , ''                 , '' ,'','fa-warehouse' );

       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'barracao','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cadastro de Barracão'         , 'barracao'                 , '', '','fa-book' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'custoloteinterno','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Custo Lote Interno'           , 'custo_loteinterno'         , '', '','fa-hand-holding-usd' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'loteinterno','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Lote Controle Interno'        , 'loteinterno'              , '', '','fa-project-diagram' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'producaointerna','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Produção do Lote'             , 'producaointerna'          , '', '','fa-people-carry' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'manutencaolote_interno','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Manutenção do Lote'           , 'manutencaolote_interno'   , '', '','fa-snowplow' );

       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Estoque Interno'         , ''        , '', '', 'fa-boxes' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relacaoloteinterno','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Relação Lote Interno'   , '', ''    , 'relacaoloteinterno', 'fa-boxes', True );

     end;


    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'CAMPO PRODUÇÃO')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'CAMPO PRODUÇÃO'          , ''              , '', '', 'fa-tractor' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'campo','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cadastro de Campo'        , 'campo'      , '', '','fa-industry' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'historicocampo','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Historico do Campo'       , ''              , '', 'historicocampo'          , 'fa-search' );
     end;

    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'GRÁFICOS')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       //**********************************************************************//
       // GRAFICOS
       //**********************************************************************//
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'GRÁFICOS'                  , ''                , '' ,'','fa-chart-pie' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'grafico_comparativofat','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Comparativo Mensal Fat.'       , ''          , '', 'grafico_comparativofat', 'fa-chart-pie' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'grafico_comparativoanualfat','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Comparativo Anual Fat.'       , ''          , '', 'grafico_comparativoanualfat', 'fa-chart-pie' );
     end;

    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'RELATÓRIOS')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       //**********************************************************************//
       // RELATORIOS
       //**********************************************************************//
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'RELATÓRIOS'            , ''        , '' , '','fa-file-pdf' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'Faturamento','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Faturamento'           , ''        , '' , '', 'fa-dollar-sign' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'RELATORIOS','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Notas Emitidas'        , '', ''    , 'RELATORIOS'                    , 'fa-dollar-sign', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatorio_impostocontabilidade','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Apuração de I.C.M.S'   , '', ''    , 'relatorio_impostocontabilidade', 'fa-square-root-alt', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'CURVAABCPESSOA','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Curva ABC Pessoa'      , ''                      , '', 'CURVAABCPESSOA'      , 'fa-not-equal' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'CURVAABCPRODUTOS','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Curva ABC Produtos'      , ''                    , '', 'CURVAABCPRODUTOS'    , 'fa-not-equal' );

       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'crescimentofatempresa','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, '% de Crescimento'   , '', ''    , 'crescimentofatempresa', 'fa-chart-line', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatoriovenvendedor','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Vendas por Vendedor'   , '', ''    , 'relatoriovenvendedor', 'fa-user-friends', True );

       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Estoque Vendas'                , ''        , '', '', 'fa-boxes' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatorio_lote','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Lotes/BAS'             , '', ''    , 'relatorio_lote', 'fa-boxes', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatoriohistoricosementesintetico','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Lote Sintético'   , '', ''    , 'relatoriohistoricosementesintetico', 'fa-boxes', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatorio_historicosemente','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Histórico da Semente'             , '', ''    , 'relatorio_historicosemente', 'fa-boxes', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'saldobeneficiamento','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Saldo Beneficiamento'        , '', ''    , 'saldobeneficiamento', 'fa-boxes', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relacaoentregas','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Relação de Entregas'   , '', ''    , 'relacaoentregas', 'fa-boxes', True );

       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Vendas'                  , ''        , '', '', 'fa-boxes' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatorio_vendasdetalhada','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Vendas Detalhadas'     , '', ''    , 'relatorio_vendasdetalhada', 'fa-file-pdf', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatoriocontroleitensef','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Controle E.F./E.P.'     , '', ''    , 'relatoriocontroleitensef', 'fa-file-pdf', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatoriosaldoefep','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Saldo Itens E.F./E.P.'     , '', ''    , 'relatoriosaldoefep', 'fa-file-pdf', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatorioperiodoproduto','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Venda de Produtos'     , '', ''    , 'relatorioperiodoproduto', 'fa-file-pdf', True );

       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Compras'                   , ''        , '', '', 'fa-boxes' );
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Compras de Produtos'     , '', ''    , 'relatorioperiodoproduto', 'fa-file-pdf', True );


       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 2, 'Vendedores'                  , ''        , '', '', 'fa-running' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'relatorio_vendasdetalhada','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Comissão por Baixa'     , '', ''    , 'comissaobaixaefetuada', 'fa-file-pdf', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'previsaocomissao','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Previsão de Comissão'     , '', ''    , 'previsaocomissao', 'fa-file-pdf', True );

     end;

    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'CONTABILIDADE')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       //**********************************************************************//
       // CONTABILIDADE
       //**********************************************************************//
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'CONTABILIDADE'                                   , '', ''    ,''                              ,'fa-calculator' );
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Apuração de I.C.M.S'                             , '', ''    ,'relatorio_impostocontabilidade', 'fa-square-root-alt', True );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'spedefd','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Sped EFD ICMS IPI'   , ''                      , '', 'spedefd'      , 'fa-file-prescription' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'spedpiscofins','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Sped PIS/COFINS'     , ''                      , '', 'spedpiscofins', 'fa-file-prescription' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'spedpiscofins','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Arquivo(s) XML'         , ''                   , '', 'arquivoxml'   , 'fa-file-code' );
       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'saldoprodutonotas','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Saldo de Produtos Nota'     , '', ''    , 'saldoprodutonotas', 'fa-file-pdf', True );
     end;
{
    if (Verifica_MenuMainPai(mm.varI_Code_Company,mm.varI_User,'CONTRATOS')  = True) or
       (mm.vUserMaster = 'S') then
     begin
       //**********************************************************************//
       // CONTRATOS
       //**********************************************************************//
       rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'CONTRATOS'                                       , '', ''    ,''                              ,'fa-file-contract' );

       if Verifica_Permissao(mm.varI_Code_Company,mm.varI_User,'cessaoproducaosemente','ACESSAR') = 'T' then
         rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Cessão de Produção'      , '', ''    , 'cessaoproducaosemente', 'fa-file-signature', True );
     end;
}
    if (mm.vUserMaster = 'S') then
    begin
      rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 1, 'LIXEIRA'                  , '', '', ''       ,'fa-trash-alt' );
      rc_BuildMenuItem( mm.varA_MenuBasics, iSeqMenu, 0, 'Reciclagem de Registro'   , '', '', 'lixeira', 'fa-recycle', True );
    end;

  SetLength( mm.varA_MenuBasics, iSeqMenu );
  SetLength( mm.varA_MenuBasicsPermissions, iSeqMenuPermission );
end;


end.

