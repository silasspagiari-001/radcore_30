inherited frmCADCHEQUES: TfrmCADCHEQUES
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseTop: TUniContainerPanel
      object labExit: TUniLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 26
        Cursor = crHandPoint
        Hint = '[['#13#10'ico:fas-sign-out-alt rc-mirror-h'#13#10']]'
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 0
        Margins.Bottom = 4
        Alignment = taCenter
        TextConversion = txtHTML
        AutoSize = False
        Caption = '<'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Calibri Light'
        ParentColor = False
        Color = clSilver
        TabOrder = 1
      end
      object UniLabelTOTALTITULOS: TUniLabel
        Left = 49
        Top = 8
        Width = 54
        Height = 26
        Hint = '[['#13#10'caption-dots:mobile-v-16 '#13#10']]'#13#10#13#10
        Margins.Left = 8
        Margins.Top = 8
        Margins.Right = 0
        Margins.Bottom = 4
        TextConversion = txtHTML
        Caption = 'SOMA'
        ParentFont = False
        Font.Color = clGray
        Font.Height = -21
        Font.Name = 'Calibri Light'
        ParentColor = False
        Color = clSkyBlue
        TabOrder = 2
      end
      object UniMemolog: TUniMemo
        Left = 784
        Top = 15
        Width = 29
        Height = 22
        Hint = ''
        Visible = False
        Lines.Strings = (
          'UniMemolog')
        TabOrder = 3
      end
    end
    object paBaseButtons: TUniContainerPanel
      Left = 0
      Top = 40
      Width = 37
      Height = 610
      Hint = ''
      Margins.Left = 4
      Margins.Top = 2
      Margins.Right = 6
      ParentColor = False
      Color = clWhite
      Align = alLeft
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      AutoScroll = True
      TabOrder = 2
      ScrollHeight = 610
      ScrollWidth = 37
      object paOF: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 282
        Width = 37
        Height = 89
        Hint = ''
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        ParentColor = False
        Align = alTop
        TabOrder = 4
        object btnCloseForm: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 56
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite | '#13#10'ico:fa-dollar-sign | '#13#10'cls-ico:font-blac' +
            'k'#13#10']]'
          Margins.Left = 2
          Margins.Top = 20
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '<'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 2
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
        end
        object btnOptions: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-file-pdf |'#13#10'cls-ico:font-black'#13#10 +
            ']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '='
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 1
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnOptionsClick
        end
      end
      object paP: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 37
        Height = 39
        Hint = ''
        Margins.Top = 6
        ParentColor = False
        Align = alTop
        TabOrder = 0
        object btnSearch: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 0
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite |'#13#10'ico:fas-search | '#13#10'cls-ico:font-black |'#13#10 +
            'hint:Abre para Pesquisas t:Search w:200 d:10000 c:rc-bg-info'#13#10']]' +
            #13#10
          Margins.Left = 2
          Margins.Top = 0
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '@'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 1
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnSearchClick
        end
      end
      object paNAE: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 59
        Width = 37
        Height = 110
        Hint = ''
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        ParentColor = False
        Align = alTop
        TabOrder = 2
        object btnNewReg: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 33
          Height = 32
          Hint = '[['#13#10'cls:ButtonWhite |'#13#10'ico:fas-plus | '#13#10'cls-ico:font-black'#13#10']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '+'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 1
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnNewRegClick
        end
        object btnEditReg: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 38
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite |'#13#10'ico:fas-pencil-alt | '#13#10'cls-ico:font-black' +
            #13#10']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '!'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 2
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnEditRegClick
        end
        object btnDeleteReg: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 74
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-trash-alt | '#13#10'cls-ico:font-black' +
            #13#10']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 0
          Caption = '#'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 3
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnDeleteRegClick
        end
      end
      object paGC: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 189
        Width = 37
        Height = 73
        Hint = ''
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        ParentColor = False
        Align = alTop
        TabOrder = 3
        object btnSaveReg: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 33
          Height = 32
          Hint = '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-check | '#13#10'cls-ico:font-black'#13#10']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'V'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 1
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnSaveRegClick
        end
        object btnCancelReg: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 38
          Width = 33
          Height = 32
          Hint = '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-times | '#13#10'cls-ico:font-black'#13#10']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'X'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 2
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnCancelRegClick
        end
      end
    end
    object pgBaseCadControl: TUniPageControl
      Left = 37
      Top = 40
      Width = 983
      Height = 610
      Hint = ''
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 9
      Margins.Bottom = 8
      ActivePage = tabRegister
      Align = alClient
      TabOrder = 3
      object tabSearch: TUniTabSheet
        Hint = ''
        Caption = 'Pesquisa'
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentFont = False
        object paBaseRegSearch: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 580
          Hint = ''
          ParentColor = False
          Align = alClient
          TabOrder = 0
          object paSearchFilters: TUniPanel
            Left = 0
            Top = 0
            Width = 266
            Height = 580
            Hint = ''
            Margins.Top = 0
            Margins.Right = 0
            Align = alLeft
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 0
            BorderStyle = ubsNone
            Title = 'Filtros da Pesquisa'
            Caption = ''
            CollapseDirection = cdLeft
            object UniScrollBox1: TUniScrollBox
              Left = 0
              Top = 0
              Width = 266
              Height = 580
              Hint = ''
              Margins.Left = 0
              Margins.Right = 0
              Align = alClient
              Color = 15724527
              TabOrder = 1
              ScrollHeight = 446
              ScrollWidth = 262
              object paSearchFilter1: TUniContainerPanel
                AlignWithMargins = True
                Left = 12
                Top = 49
                Width = 250
                Height = 178
                Hint = ''
                Margins.Left = 10
                Margins.Top = 6
                Margins.Right = 0
                Margins.Bottom = 0
                ParentColor = False
                Color = 15724527
                TabOrder = 1
                object paSearchField1: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 0
                  Width = 249
                  Height = 60
                  Hint = ''
                  Margins.Top = 0
                  Margins.Right = 0
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 0
                  DesignSize = (
                    249
                    60)
                  object UniLabelc1: TUniLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 1
                    Width = 61
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Correntista'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniEditdescricaocorrentista: TUniEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 23
                    Width = 245
                    Height = 29
                    Hint = ''
                    Margins.Right = 5
                    CharCase = ecUpperCase
                    Text = ''
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    ClearButton = True
                  end
                end
                object paSearchOp1: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 59
                  Width = 250
                  Height = 60
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 8
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 2
                  object UniContainerPanel2: TUniContainerPanel
                    AlignWithMargins = True
                    Left = 0
                    Top = 0
                    Width = 250
                    Height = 60
                    Hint = ''
                    Margins.Left = 0
                    Margins.Top = 8
                    Margins.Bottom = 0
                    ParentColor = False
                    TabOrder = 1
                    DesignSize = (
                      250
                      60)
                    object UniButtonEditppessoas: TUniButtonEdit
                      AlignWithMargins = True
                      Left = 3
                      Top = 30
                      Width = 246
                      Height = 26
                      Hint = ''
                      Text = '0'
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                      IconCls = 'search'
                    end
                    object UniLabel1: TUniLabel
                      AlignWithMargins = True
                      Left = 4
                      Top = 5
                      Width = 45
                      Height = 15
                      Hint = ''
                      Margins.Top = 1
                      Margins.Bottom = 2
                      Caption = 'Pessoas'
                      ParentFont = False
                      Font.Height = -13
                      Font.Name = 'Calibri'
                      TabOrder = 2
                    end
                  end
                end
                object UniContainerPanel1: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 118
                  Width = 250
                  Height = 60
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 8
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 3
                  object UniContainerPanel5: TUniContainerPanel
                    AlignWithMargins = True
                    Left = 0
                    Top = 0
                    Width = 250
                    Height = 60
                    Hint = ''
                    Margins.Left = 0
                    Margins.Top = 8
                    Margins.Bottom = 0
                    ParentColor = False
                    TabOrder = 1
                    DesignSize = (
                      250
                      60)
                    object UniButtonEditpnumero: TUniButtonEdit
                      AlignWithMargins = True
                      Left = 3
                      Top = 30
                      Width = 246
                      Height = 26
                      Hint = ''
                      Text = '0'
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 1
                      IconCls = 'search'
                    end
                    object UniLabel2: TUniLabel
                      AlignWithMargins = True
                      Left = 4
                      Top = 5
                      Width = 43
                      Height = 15
                      Hint = ''
                      Margins.Top = 1
                      Margins.Bottom = 2
                      Caption = 'Numero'
                      ParentFont = False
                      Font.Height = -13
                      Font.Name = 'Calibri'
                      TabOrder = 2
                    end
                  end
                end
              end
              object labTitleSearch: TUniLabel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 158
                Height = 23
                Hint = ''
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 0
                Margins.Bottom = 10
                TextConversion = txtHTML
                Caption = 'Pesquisar Registro(s)'
                Align = alTop
                ParentFont = False
                Font.Color = clGray
                Font.Height = -19
                Font.Name = 'Calibri Light'
                ParentColor = False
                Color = clSilver
                TabOrder = 0
              end
              object paSearchFilterPeriodSelect: TUniContainerPanel
                AlignWithMargins = True
                Left = 11
                Top = 226
                Width = 251
                Height = 179
                Hint = ''
                Margins.Left = 10
                Margins.Top = 0
                Margins.Right = 0
                Margins.Bottom = 0
                ParentColor = False
                Color = 15724527
                AlignmentControl = uniAlignmentClient
                ParentAlignmentControl = False
                TabOrder = 2
                object paSearchFilterDtIni: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 118
                  Height = 60
                  Hint = ''
                  Margins.Top = 0
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 1
                  object UniLabelDtIni: TUniLabel
                    AlignWithMargins = True
                    Left = 0
                    Top = 1
                    Width = 65
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Data Inicial'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object edSearchCRUDDtIni: TUniDateTimePicker
                    AlignWithMargins = True
                    Left = 0
                    Top = 20
                    Width = 110
                    Height = 29
                    Hint = ''
                    Margins.Right = 5
                    DateTime = 43232.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    TabOrder = 2
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    ClientEvents.ExtEvents.Strings = (
                      
                        'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
                        '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
                        '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
                        ':"  /  /   "});'#13#10'}')
                  end
                end
                object paSearchFilterDtEnd: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 133
                  Top = 0
                  Width = 118
                  Height = 60
                  Hint = ''
                  Margins.Top = 0
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 2
                  object UniLabelDtEnd: TUniLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 1
                    Width = 57
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Data Final'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object edSearchCRUDDtEnd: TUniDateTimePicker
                    AlignWithMargins = True
                    Left = 3
                    Top = 20
                    Width = 110
                    Height = 29
                    Hint = ''
                    Margins.Right = 5
                    DateTime = 43597.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    TabOrder = 2
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    ClientEvents.ExtEvents.Strings = (
                      
                        'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
                        '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
                        '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
                        ':"  /  /   "});'#13#10'}')
                  end
                end
                object UniContainerPanel3: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 60
                  Width = 250
                  Height = 60
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 8
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 3
                  DesignSize = (
                    250
                    60)
                  object UniLabel4: TUniLabel
                    AlignWithMargins = True
                    Left = 4
                    Top = 5
                    Width = 76
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Tipo de Busca'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object cbxSearchCRUDField2: TUniComboBox
                    AlignWithMargins = True
                    Left = 3
                    Top = 28
                    Width = 246
                    Height = 29
                    Hint = ''
                    Margins.Right = 5
                    Style = csDropDownList
                    Text = ''
                    Items.Strings = (
                      'Emiss'#227'o'
                      'Vencimento'
                      'Baixa')
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                    IconItems = <>
                  end
                end
                object UniContainerPanel4: TUniContainerPanel
                  AlignWithMargins = True
                  Left = 0
                  Top = 119
                  Width = 250
                  Height = 60
                  Hint = ''
                  Margins.Left = 0
                  Margins.Top = 8
                  Margins.Bottom = 0
                  ParentColor = False
                  TabOrder = 4
                  DesignSize = (
                    250
                    60)
                  object UniLabel5: TUniLabel
                    AlignWithMargins = True
                    Left = 4
                    Top = 5
                    Width = 24
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Tipo'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniComboBoxSTATUS: TUniComboBox
                    AlignWithMargins = True
                    Left = 3
                    Top = 28
                    Width = 246
                    Height = 29
                    Hint = ''
                    Margins.Right = 5
                    Style = csDropDownList
                    Text = ''
                    Items.Strings = (
                      'Aberto'
                      'Devolvido'
                      'Compensado'
                      'Todos')
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                    IconItems = <>
                  end
                end
              end
              object paSearchBtn: TUniContainerPanel
                AlignWithMargins = True
                Left = 12
                Top = 410
                Width = 235
                Height = 36
                Hint = ''
                Margins.Left = 10
                Margins.Top = 12
                Margins.Right = 0
                Margins.Bottom = 0
                ParentColor = False
                Color = 15724527
                TabOrder = 3
                object btnSearchCRUD: TUniBitBtn
                  AlignWithMargins = True
                  Left = 120
                  Top = 2
                  Width = 114
                  Height = 30
                  Hint = '[['#13#10'cls:ButtonThemeCrud-no-border-left |'#13#10'ico:fas-search |'#13#10']]'
                  Margins.Left = 6
                  Margins.Top = 4
                  Margins.Right = 6
                  Margins.Bottom = 4
                  Caption = '@'
                  ParentFont = False
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  TabOrder = 2
                  OnClick = btnSearchCRUDClick
                end
                object btnSearchMoreFilters: TUniBitBtn
                  AlignWithMargins = True
                  Left = 4
                  Top = 2
                  Width = 115
                  Height = 30
                  Hint = '[['#13#10'ico:fas-filter |'#13#10'cls:ButtonThemeCrud-no-border-right'#13#10']]'
                  Margins.Left = 6
                  Margins.Top = 4
                  Margins.Right = 6
                  Margins.Bottom = 4
                  Caption = '+ ...'
                  ParentFont = False
                  Font.Height = -16
                  Font.Name = 'Calibri'
                  TabOrder = 1
                end
              end
            end
          end
          object dbgSearchCRUD: TUniDBGrid
            Left = 266
            Top = 0
            Width = 709
            Height = 580
            Hint = ''
            DataSource = dsfiltro
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick, dgAutoRefreshRow]
            WebOptions.PageSize = 50
            WebOptions.FetchAll = True
            LoadMask.Message = 'Loading data...'
            ForceFit = True
            Align = alClient
            Font.Height = -13
            Font.Name = 'Calibri'
            ParentFont = False
            TabOrder = 2
            Exporter.Enabled = True
            OnCellClick = dbgSearchCRUDCellClick
            OnDblClick = dbgSearchCRUDDblClick
            Columns = <
              item
                FieldName = 'CODIGO'
                Title.Caption = ' '
                Width = 30
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'STATUS'
                Title.Caption = ' '
                Width = 80
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'NUMERO_CHQ'
                Title.Caption = 'NUMERO'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'NOME_PESSOA'
                Title.Caption = 'NOME'
                Width = 250
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'EMISSAO'
                Title.Caption = 'EMISSAO'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'VENCIMENTO'
                Title.Caption = 'VENCIMENTO'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'BAIXA'
                Title.Caption = 'BAIXA'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'VALOR'
                Title.Caption = 'VALOR'
                Width = 137
                Font.Name = 'Calibri'
              end>
          end
        end
      end
      object tabRegister: TUniTabSheet
        Hint = ''
        Caption = 'Cadastro'
        Font.Height = -13
        Font.Name = 'Calibri'
        ParentFont = False
        object paBaseRegData1: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 975
          Height = 580
          Hint = ''
          ParentColor = False
          Align = alClient
          AutoScroll = True
          TabOrder = 0
          ScrollHeight = 580
          ScrollWidth = 975
          object rcBlock10: TUniContainerPanel
            Tag = 1
            Left = 3
            Top = 3
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 1
            DesignSize = (
              150
              48)
            object edCodigo: TUniDBEdit
              Left = 5
              Top = 18
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'CODIGO'
              DataSource = dscrud
              Anchors = [akLeft, akTop, akRight]
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clGray
              ReadOnly = True
            end
            object UniLabel3: TUniLabel
              Left = 0
              Top = 0
              Width = 38
              Height = 15
              Hint = ''
              Caption = 'C'#243'digo'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock20: TUniContainerPanel
            Tag = 1
            Left = 196
            Top = 3
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 2
            DesignSize = (
              150
              48)
            object UniLabel18: TUniLabel
              Left = 4
              Top = 0
              Width = 39
              Height = 15
              Hint = ''
              Caption = 'Pessoa'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniButtonDbEdit2: TUniButtonDbEdit
              Left = 4
              Top = 18
              Width = 142
              Height = 29
              Hint = ''
              DataField = 'PESSOA'
              DataSource = dscrud
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              Color = clInfoBk
              OnExit = UniButtonDbEdit2Exit
              OnButtonClick = UniButtonDbEdit2ButtonClick
              IconCls = 'search'
            end
          end
          object rcBlock30: TUniContainerPanel
            Tag = 1
            Left = 372
            Top = 3
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-6]]'
            ParentColor = False
            TabOrder = 3
            DesignSize = (
              150
              48)
            object UniLabel6: TUniLabel
              Left = 3
              Top = 0
              Width = 73
              Height = 15
              Hint = ''
              Caption = 'Nome Pessoa'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit5: TUniDBEdit
              Tag = 1
              Left = 3
              Top = 18
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'NOME_PESSOA'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object rcBlock40: TUniContainerPanel
            Tag = 1
            Left = 5
            Top = 62
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 4
            DesignSize = (
              150
              48)
            object UniButtonDbEdit1: TUniButtonDbEdit
              Tag = 1
              Left = 3
              Top = 17
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'AGENCIA'
              DataSource = dscrud
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Color = clInfoBk
              IconCls = 'search'
            end
            object UniLabel7: TUniLabel
              Left = 3
              Top = 1
              Width = 43
              Height = 15
              Hint = ''
              Caption = 'Ag'#234'ncia'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock50: TUniContainerPanel
            Tag = 1
            Left = 198
            Top = 62
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 5
            DesignSize = (
              150
              48)
            object UniDBEdit1: TUniDBEdit
              Tag = 1
              Left = 2
              Top = 17
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'CONTA'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
            end
            object UniLabel8: TUniLabel
              Left = 2
              Top = 1
              Width = 32
              Height = 15
              Hint = ''
              Caption = 'Conta'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock60: TUniContainerPanel
            Tag = 1
            Left = 384
            Top = 62
            Width = 289
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 6
            DesignSize = (
              289
              48)
            object UniDBEdit2: TUniDBEdit
              Tag = 1
              Left = 3
              Top = 17
              Width = 182
              Height = 29
              Hint = ''
              DataField = 'NUMERO_CHQ'
              DataSource = dscrud
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object UniLabel9: TUniLabel
              Left = 3
              Top = 1
              Width = 103
              Height = 15
              Hint = ''
              Caption = 'Numero do Cheque'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
            object UniDBEdit11: TUniDBEdit
              Tag = 1
              Left = 191
              Top = 17
              Width = 86
              Height = 29
              Hint = ''
              DataField = 'PARCELA'
              DataSource = dscrud
              CharCase = ecUpperCase
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 3
            end
            object UniLabel23: TUniLabel
              Left = 191
              Top = 1
              Width = 42
              Height = 15
              Hint = ''
              Caption = 'Parcela'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 4
            end
          end
          object rcBlock70: TUniContainerPanel
            Tag = 1
            Left = 744
            Top = 61
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 7
            DesignSize = (
              150
              48)
            object UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit
              Left = 3
              Top = 18
              Width = 147
              Height = 29
              Hint = ''
              DataField = 'VALOR'
              DataSource = dscrud
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
            object UniLabel10: TUniLabel
              Left = 2
              Top = 2
              Width = 89
              Height = 15
              Hint = ''
              Caption = 'Valor do Cheque'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock80: TUniContainerPanel
            Left = 5
            Top = 116
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-6]]'
            ParentColor = False
            TabOrder = 8
            DesignSize = (
              150
              48)
            object UniDBEdit3: TUniDBEdit
              Tag = 1
              Left = 3
              Top = 17
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'CORRENTISTA'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
            end
            object UniLabel11: TUniLabel
              Left = 3
              Top = 1
              Width = 61
              Height = 15
              Hint = ''
              Caption = 'Correntista'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock90: TUniContainerPanel
            Left = 198
            Top = 116
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-6]]'
            ParentColor = False
            TabOrder = 9
            DesignSize = (
              150
              48)
            object UniDBEdit4: TUniDBEdit
              Tag = 1
              Left = 2
              Top = 17
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'CPFCNPJ'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
            end
            object UniLabel12: TUniLabel
              Left = 6
              Top = 1
              Width = 111
              Height = 15
              Hint = ''
              Caption = 'Cpf/Cnpj correntista'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock100: TUniContainerPanel
            Tag = 1
            Left = 5
            Top = 170
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-4]]'
            ParentColor = False
            TabOrder = 10
            DesignSize = (
              150
              48)
            object UniDBDateTimePicker1: TUniDBDateTimePicker
              Tag = 1
              Left = 3
              Top = 16
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'EMISSAO'
              DataSource = dscrud
              DateTime = 44554.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              ClientEvents.ExtEvents.Strings = (
                
                  'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
                  '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
                  '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
                  ':"  /  /   "});'#13#10'}')
            end
            object UniLabel13: TUniLabel
              Left = 3
              Top = 1
              Width = 46
              Height = 15
              Hint = ''
              Caption = 'Emiss'#227'o'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock110: TUniContainerPanel
            Tag = 1
            Left = 198
            Top = 170
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-4]]'
            ParentColor = False
            TabOrder = 11
            DesignSize = (
              150
              48)
            object UniDBDateTimePicker2: TUniDBDateTimePicker
              Tag = 1
              Left = 2
              Top = 16
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'VENCIMENTO'
              DataSource = dscrud
              DateTime = 44554.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              ClientEvents.ExtEvents.Strings = (
                
                  'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
                  '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
                  '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
                  ':"  /  /   "});'#13#10'}')
            end
            object UniLabel14: TUniLabel
              Left = 2
              Top = 1
              Width = 63
              Height = 15
              Hint = ''
              Caption = 'Vencimento'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock120: TUniContainerPanel
            Tag = 1
            Left = 384
            Top = 170
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-4]]'
            ParentColor = False
            TabOrder = 12
            DesignSize = (
              150
              48)
            object UniDBDateTimePicker3: TUniDBDateTimePicker
              Tag = 1
              Left = 3
              Top = 16
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'BAIXA'
              DataSource = dscrud
              DateTime = 44554.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              ReadOnly = True
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              ClientEvents.ExtEvents.Strings = (
                
                  'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
                  '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
                  '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
                  ':"  /  /   "});'#13#10'}')
            end
            object UniLabel15: TUniLabel
              Left = 3
              Top = 1
              Width = 61
              Height = 15
              Hint = ''
              Caption = 'Pagamento'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock130: TUniContainerPanel
            Left = 5
            Top = 224
            Width = 529
            Height = 48
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            TabOrder = 13
            DesignSize = (
              529
              48)
            object UniDBEdit6: TUniDBEdit
              Left = 3
              Top = 17
              Width = 523
              Height = 29
              Hint = ''
              DataField = 'DESTINO'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
            end
            object UniLabel16: TUniLabel
              Left = 3
              Top = 1
              Width = 41
              Height = 15
              Hint = ''
              Caption = 'Destino'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock140: TUniContainerPanel
            Left = 5
            Top = 276
            Width = 529
            Height = 101
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            TabOrder = 14
            DesignSize = (
              529
              101)
            object UniLabel17: TUniLabel
              Left = 3
              Top = 4
              Width = 71
              Height = 15
              Hint = ''
              Caption = 'Observa'#231#245'es'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBMemo1: TUniDBMemo
              Left = 3
              Top = 25
              Width = 523
              Height = 74
              Hint = ''
              DataField = 'OBSERVACAO'
              DataSource = dscrud
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object rcBlock150: TUniContainerPanel
            Left = 5
            Top = 383
            Width = 529
            Height = 48
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            TabOrder = 15
            DesignSize = (
              529
              48)
            object UniDBEdit7: TUniDBEdit
              Tag = 1
              Left = 3
              Top = 17
              Width = 523
              Height = 29
              Hint = ''
              DataField = 'STATUS'
              DataSource = dscrud
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              ParentFont = False
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
              ReadOnly = True
            end
            object UniLabel22: TUniLabel
              Left = 3
              Top = 1
              Width = 34
              Height = 15
              Hint = ''
              Caption = 'Status'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock160: TUniContainerPanel
            Tag = 1
            Left = 5
            Top = 437
            Width = 150
            Height = 68
            Hint = '[[cols:xs-12 sm-12 md-4]]'
            ParentColor = False
            TabOrder = 16
            DesignSize = (
              150
              68)
            object UniDBEdit8: TUniDBEdit
              Left = 3
              Top = 16
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'NUMERO_DOC'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              ReadOnly = True
            end
            object UniLabel19: TUniLabel
              Left = 3
              Top = 1
              Width = 43
              Height = 15
              Hint = ''
              Caption = 'Numero'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock170: TUniContainerPanel
            Tag = 1
            Left = 198
            Top = 437
            Width = 150
            Height = 68
            Hint = '[[cols:xs-12 sm-12 md-4]]'
            ParentColor = False
            TabOrder = 17
            DesignSize = (
              150
              68)
            object UniDBEdit9: TUniDBEdit
              Left = 3
              Top = 16
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'SERIE_DOC'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              ReadOnly = True
            end
            object UniLabel20: TUniLabel
              Left = 3
              Top = 1
              Width = 27
              Height = 15
              Hint = ''
              Caption = 'Serie'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock180: TUniContainerPanel
            Tag = 1
            Left = 384
            Top = 437
            Width = 150
            Height = 68
            Hint = '[[cols:xs-12 sm-12 md-4]]'
            ParentColor = False
            TabOrder = 18
            DesignSize = (
              150
              68)
            object UniDBEdit10: TUniDBEdit
              Left = 3
              Top = 16
              Width = 144
              Height = 29
              Hint = ''
              DataField = 'DOCUMENTO_DOC'
              DataSource = dscrud
              CharCase = ecUpperCase
              Alignment = taCenter
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              ReadOnly = True
            end
            object UniLabel21: TUniLabel
              Left = 3
              Top = 1
              Width = 62
              Height = 15
              Hint = ''
              Caption = 'Documento'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
        end
      end
    end
  end
  inherited htmlFrame: TUniHTMLFrame
    Left = 696
    Top = 3
    ExplicitLeft = 696
    ExplicitTop = 3
  end
  object dsfiltro: TDataSource
    AutoEdit = False
    DataSet = FDQryFiltro
    Left = 523
    Top = 7
  end
  object FDQryFiltro: TFDQuery
    CachedUpdates = True
    Connection = mm.SQLConn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailCascade, evDetailServerCascade]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    SQL.Strings = (
      'SELECT * FROM CHEQUES')
    Left = 553
    Top = 7
    object FDQryFiltroKEY: TStringField
      FieldName = 'KEY'
      Origin = '"KEY"'
      Required = True
      Size = 38
    end
    object FDQryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      OnGetText = FDQryFiltroCODIGOGetText
    end
    object FDQryFiltroBANCO: TIntegerField
      FieldName = 'BANCO'
      Origin = 'BANCO'
    end
    object FDQryFiltroAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object FDQryFiltroCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 25
    end
    object FDQryFiltroNUMERO_CHQ: TIntegerField
      FieldName = 'NUMERO_CHQ'
      Origin = 'NUMERO_CHQ'
    end
    object FDQryFiltroNUMERO_DOC: TIntegerField
      FieldName = 'NUMERO_DOC'
      Origin = 'NUMERO_DOC'
    end
    object FDQryFiltroSERIE_DOC: TStringField
      FieldName = 'SERIE_DOC'
      Origin = 'SERIE_DOC'
      Size = 3
    end
    object FDQryFiltroDOCUMENTO_DOC: TIntegerField
      FieldName = 'DOCUMENTO_DOC'
      Origin = 'DOCUMENTO_DOC'
    end
    object FDQryFiltroPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object FDQryFiltroVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQryFiltroCORRENTISTA: TStringField
      FieldName = 'CORRENTISTA'
      Origin = 'CORRENTISTA'
      Size = 80
    end
    object FDQryFiltroCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Origin = 'CPFCNPJ'
    end
    object FDQryFiltroPESSOA: TIntegerField
      FieldName = 'PESSOA'
      Origin = 'PESSOA'
    end
    object FDQryFiltroNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Origin = 'NOME_PESSOA'
      Size = 80
    end
    object FDQryFiltroEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object FDQryFiltroEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQryFiltroVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'VENCIMENTO'
    end
    object FDQryFiltroBAIXA: TDateField
      FieldName = 'BAIXA'
      Origin = 'BAIXA'
    end
    object FDQryFiltroDESTINO: TStringField
      FieldName = 'DESTINO'
      Origin = 'DESTINO'
      Size = 150
    end
    object FDQryFiltroOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 300
    end
    object FDQryFiltroSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      OnGetText = FDQryFiltroSTATUSGetText
      Size = 10
    end
  end
  object dscrud: TDataSource
    AutoEdit = False
    DataSet = FDQryCad
    Left = 587
    Top = 7
  end
  object FDQryCad: TFDQuery
    Connection = mm.SQLConn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailCascade, evDetailServerCascade]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    UpdateOptions.UpdateTableName = 'CHEQUES'
    SQL.Strings = (
      'SELECT * FROM CHEQUES WHERE CODIGO = :CODIGO')
    Left = 617
    Top = 7
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object tbimpressao: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 729
    Top = 2
  end
end
