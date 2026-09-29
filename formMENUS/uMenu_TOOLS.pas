unit uMenu_TOOLS;

interface

procedure rc_BuildMenu_TOOLS ;


implementation


uses uconsts, MainModule, mkm_menus, mkm_func_web, mkm_procedures,
  uniGUIDialogs;


procedure rc_BuildMenu_TOOLS ;
var

   iSeqMenu,
   iSeqMenuPermission : Integer;

begin

     SetLength( mm.varA_MenuTools, 200 );
     SetLength( mm.varA_MenuToolsPermissions, 200 );

     iSeqMenu           := 1;
     iSeqMenuPermission := 1;


     if (mm.varI_User = 9999) or (mm.vUserMaster = 'S') then
       begin
         rc_BuildMenuItem( mm.varA_MenuTools, iSeqMenu, 1, mm.MNU_TOOLS              , '', '', '', 'fa-wrench' );
         rc_BuildMenuItem( mm.varA_MenuTools, iSeqMenu, 2, 'CONFIGURAÇÕES'           , '', '', '', 'fas-cog' );
         rc_BuildMenuItem( mm.varA_MenuTools, iSeqMenu, 0, 'Aliquotas de I.C.M.S.'   , 'tabelaicms' , '', '', 'fa-percent' );
         rc_BuildMenuItem( mm.varA_MenuTools, iSeqMenu, 0, 'Rastreio do Usuario'     , 'rastreio'   , '', '', 'fas-user-ninja' );
         rc_BuildMenuItem( mm.varA_MenuTools, iSeqMenu, 0, 'Lista do Menu'           , 'menusistema', '', '', 'fas-user-ninja' );
         rc_BuildMenuItem( mm.varA_MenuTools, iSeqMenu, 0, 'Usuários'                , 'usuarios'   , '', '', 'fas-user-cog', false, false, true, false );   // parametro do GUS // v. 3.2.0.1

         rc_BuildMenuItemPermission( mm.varA_MenuToolsPermissions, iSeqMenu, iSeqMenuPermission, '<AIEDH>' );
         rc_BuildMenuItemPermission( mm.varA_MenuToolsPermissions, iSeqMenu, iSeqMenuPermission, 'Permission:Master' ); // v. 3.2.0.1
         rc_BuildMenuItemPermission( mm.varA_MenuToolsPermissions, iSeqMenu, iSeqMenuPermission, 'Permission:All' );    // v. 3.2.0.1
       end;


     SetLength( mm.varA_MenuTools, iSeqMenu );
     SetLength( mm.varA_MenuToolsPermissions, iSeqMenuPermission );

     //--------------

end;


end.
