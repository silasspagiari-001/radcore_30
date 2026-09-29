inherited frmcadPRODUCAOINTERNA: TfrmcadPRODUCAOINTERNA
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseButtons: TUniContainerPanel
      ScrollHeight = 610
      ScrollWidth = 37
      inherited paOF: TUniContainerPanel
        inherited btnOptions: TUniBitBtn
          OnClick = btnOptionsClick
        end
      end
    end
    inherited pgBaseCadControl: TUniPageControl
      ActivePage = tabRegister
      inherited tabSearch: TUniTabSheet
        ExplicitTop = 24
        ExplicitHeight = 582
        inherited paBaseRegSearch: TUniContainerPanel
          ExplicitHeight = 582
          inherited paSearchFilters: TUniPanel
            ExplicitHeight = 582
            inherited UniScrollBox1: TUniScrollBox
              ExplicitHeight = 582
              ScrollHeight = 271
              ScrollWidth = 262
              inherited paSearchFilter1: TUniContainerPanel
                inherited UniContainerPanel1: TUniContainerPanel
                  inherited UniContainerPanel5: TUniContainerPanel
                    Top = 5
                    ExplicitTop = 5
                  end
                end
              end
              inherited paSearchBtn: TUniContainerPanel
                Top = 235
                ExplicitTop = 235
              end
              inherited UniContainerPanel3: TUniContainerPanel
                Left = 9
                Top = 291
                ExplicitLeft = 9
                ExplicitTop = 291
              end
            end
          end
          inherited dbgSearchCRUD: TUniDBGrid
            Columns = <
              item
                FieldName = 'STATUS'
                Title.Caption = ' '
                Width = 70
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'NUMERO'
                Title.Caption = 'NUMERO'
                Width = 74
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'EMISSAO'
                Title.Caption = 'EMISS'#195'O'
                Width = 100
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'LOTE'
                Title.Caption = 'LOTE'
                Width = 100
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'DESCRICAO'
                Title.Caption = 'DESCRICAO'
                Width = 300
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'TOTALKG'
                Title.Caption = 'TOTALKG'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'TOTALPONTOS'
                Title.Caption = 'TOTALPONTOS'
                Width = 80
                Font.Name = 'Calibri'
              end>
          end
        end
      end
      inherited tabRegister: TUniTabSheet
        ExplicitTop = 24
        ExplicitHeight = 582
        inherited paBaseRegData1: TUniContainerPanel
          ExplicitHeight = 582
          ScrollHeight = 582
          ScrollWidth = 975
          inherited UniPageControlcadastros: TUniPageControl
            inherited UniTabSheetCRUD: TUniTabSheet
              inherited UniScrollBox2: TUniScrollBox
                ScrollHeight = 569
                ScrollWidth = 706
                object rcBlock10: TUniContainerPanel
                  Tag = 1
                  Left = 1
                  Top = 1
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 0
                  DesignSize = (
                    150
                    48)
                  object UniLabel3: TUniLabel
                    Left = 3
                    Top = 0
                    Width = 38
                    Height = 15
                    Hint = ''
                    Caption = 'C'#243'digo'
                    ParentFont = False
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object edCodigo: TUniDBEdit
                    Left = 3
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
                    TabOrder = 2
                    Color = clGray
                    ReadOnly = True
                  end
                end
                object rcBlock20: TUniContainerPanel
                  Tag = 1
                  Left = 194
                  Top = 1
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 1
                  DesignSize = (
                    150
                    48)
                  object UniLabel4: TUniLabel
                    Left = 3
                    Top = 0
                    Width = 43
                    Height = 15
                    Hint = ''
                    Caption = 'Numero'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBEdit1: TUniDBEdit
                    Left = 3
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
                    TabOrder = 2
                    Color = clGray
                    ReadOnly = True
                  end
                end
                object rcBlock30: TUniContainerPanel
                  Tag = 1
                  Left = 380
                  Top = 1
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 2
                  DesignSize = (
                    150
                    48)
                  object UniLabel6: TUniLabel
                    Left = 2
                    Top = 0
                    Width = 46
                    Height = 15
                    Hint = ''
                    Caption = 'Emiss'#227'o'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBDateTimePicker2: TUniDBDateTimePicker
                    Tag = 1
                    Left = 2
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'EMISSAO'
                    DataSource = dscrud
                    DateTime = 44561.000000000000000000
                    DateFormat = 'dd/MM/yyyy'
                    TimeFormat = 'HH:mm:ss'
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                  end
                end
                object rcBlock40: TUniContainerPanel
                  Tag = 1
                  Left = 556
                  Top = 0
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 3
                  DesignSize = (
                    150
                    48)
                  object UniLabel5: TUniLabel
                    Left = 2
                    Top = 1
                    Width = 62
                    Height = 15
                    Hint = ''
                    Caption = 'Documento'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBEdit2: TUniDBEdit
                    Left = 2
                    Top = 19
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'DOCUMENTO'
                    DataSource = dscrud
                    Alignment = taRightJustify
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clWhite
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold]
                    TabOrder = 2
                    Color = clGray
                    ReadOnly = True
                  end
                end
                object rcBlock50: TUniContainerPanel
                  Tag = 1
                  Left = 1
                  Top = 54
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 4
                  DesignSize = (
                    150
                    48)
                  object UniLabel7: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 66
                    Height = 15
                    Hint = ''
                    Caption = 'Lote Destino'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniButtonDbEditLOTEDESTINO: TUniButtonDbEdit
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'LOTE'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    Color = clInfoBk
                    OnButtonClick = UniButtonDbEditLOTEDESTINOButtonClick
                    IconCls = 'search'
                  end
                end
                object rcBlock60: TUniContainerPanel
                  Tag = 1
                  Left = 194
                  Top = 54
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-1]]'
                  ParentColor = False
                  TabOrder = 5
                  DesignSize = (
                    150
                    48)
                  object UniLabel15: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 29
                    Height = 15
                    Hint = ''
                    Caption = 'Prod.'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniButtonDbEditPRODUTODESTINO: TUniButtonDbEdit
                    Tag = 1
                    Left = 2
                    Top = 18
                    Width = 145
                    Height = 29
                    Hint = ''
                    DataField = 'PRODUTO'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    Color = clInfoBk
                    ReadOnly = True
                    IconCls = 'search'
                  end
                end
                object rcBlock70: TUniContainerPanel
                  Tag = 1
                  Left = 380
                  Top = 54
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-5]]'
                  ParentColor = False
                  TabOrder = 6
                  DesignSize = (
                    150
                    48)
                  object UniDBEditDESCRICAOPRODUTO: TUniDBEdit
                    Left = 2
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'DESCRICAO'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                    ReadOnly = True
                  end
                  object UniLabel13: TUniLabel
                    Left = 2
                    Top = 1
                    Width = 119
                    Height = 15
                    Hint = ''
                    Caption = 'Descri'#231#227'o do Produto'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock80: TUniContainerPanel
                  Tag = 1
                  Left = 556
                  Top = 53
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 7
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEditquantidade: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 2
                    Top = 19
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'PUREZA'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                    OnExit = UniDBFormattedNumberEditquantidadeExit
                  end
                  object UniLabel8: TUniLabel
                    Left = 2
                    Top = 2
                    Width = 49
                    Height = 15
                    Hint = ''
                    Caption = '% Pureza'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock90: TUniContainerPanel
                  Left = 1
                  Top = 106
                  Width = 375
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-6]]'
                  ParentColor = False
                  TabOrder = 8
                  DesignSize = (
                    375
                    48)
                  object UniLabel11: TUniLabel
                    Left = 2
                    Top = 2
                    Width = 42
                    Height = 15
                    Hint = ''
                    Caption = 'Sacaria'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBComboBoxMARCA: TUniDBComboBox
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 184
                    Height = 29
                    Hint = ''
                    DataField = 'SACARIA'
                    DataSource = dscrud
                    Style = csDropDownList
                    Items.Strings = (
                      'Andamento'
                      'Concluido')
                    TabOrder = 2
                    IconItems = <>
                  end
                  object UniDBEdit3: TUniDBEdit
                    Tag = 1
                    Left = 193
                    Top = 18
                    Width = 179
                    Height = 29
                    Hint = ''
                    DataField = 'PADRAO'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 3
                  end
                  object UniLabel16: TUniLabel
                    Left = 196
                    Top = 2
                    Width = 65
                    Height = 15
                    Hint = ''
                    Caption = 'C'#243'digo - "P"'
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 4
                  end
                end
                object rcBlock100: TUniContainerPanel
                  Left = 380
                  Top = 106
                  Width = 326
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-6]]'
                  ParentColor = False
                  TabOrder = 9
                  DesignSize = (
                    326
                    48)
                  object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 178
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'TOTALPONTOS'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                    ReadOnly = True
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel10: TUniLabel
                    Left = 178
                    Top = 2
                    Width = 68
                    Height = 15
                    Hint = ''
                    Caption = 'Total Pontos'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                  object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 2
                    Top = 18
                    Width = 170
                    Height = 29
                    Hint = ''
                    DataField = 'TOTALKG'
                    DataSource = dscrud
                    TabOrder = 3
                    ReadOnly = True
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel9: TUniLabel
                    Left = 2
                    Top = 2
                    Width = 44
                    Height = 15
                    Hint = ''
                    Caption = 'Total KG'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 4
                  end
                end
                object rcBlock130: TUniContainerPanel
                  Tag = 1
                  Left = 3
                  Top = 160
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 10
                  DesignSize = (
                    150
                    48)
                  object UniDBComboBox2: TUniDBComboBox
                    Tag = 1
                    Left = 2
                    Top = 17
                    Width = 145
                    Height = 29
                    Hint = ''
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'STATUS'
                    DataSource = dscrud
                    Style = csDropDownList
                    Items.Strings = (
                      'Andamento'
                      'Concluido')
                    TabOrder = 1
                    IconItems = <>
                  end
                  object UniLabel12: TUniLabel
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
                object rcBlock140: TUniContainerPanel
                  Tag = 1
                  Left = 194
                  Top = 160
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 11
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEditvlrtotal: TUniDBFormattedNumberEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 16
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'TOTAL_CUSTO'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    ReadOnly = True
                    DecimalPrecision = 3
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel14: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 144
                    Height = 15
                    Hint = ''
                    Caption = 'Total Custo Mat'#233'ria Prima'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock150: TUniContainerPanel
                  Left = 380
                  Top = 159
                  Width = 326
                  Height = 48
                  Hint = '[['#13#10'cols:xs-12 sm-12 md-4'#13#10']]'
                  ParentColor = False
                  TabOrder = 12
                  object UniDBCheckBox1: TUniDBCheckBox
                    Left = 3
                    Top = 16
                    Width = 50
                    Height = 17
                    Hint = ''
                    DataField = 'SACO_10KG'
                    DataSource = dscrud
                    ValueChecked = 'T'
                    ValueUnchecked = 'F'
                    Caption = '10 Kg'
                    TabOrder = 1
                    ParentColor = False
                    Color = clBtnFace
                  end
                  object UniDBCheckBox2: TUniDBCheckBox
                    Left = 74
                    Top = 16
                    Width = 49
                    Height = 17
                    Hint = ''
                    DataField = 'SACO_15KG'
                    DataSource = dscrud
                    ValueChecked = 'T'
                    ValueUnchecked = 'F'
                    Caption = '15 Kg'
                    TabOrder = 2
                    ParentColor = False
                    Color = clBtnFace
                  end
                  object UniDBCheckBox3: TUniDBCheckBox
                    Left = 153
                    Top = 16
                    Width = 51
                    Height = 17
                    Hint = ''
                    DataField = 'SACO_20KG'
                    DataSource = dscrud
                    ValueChecked = 'T'
                    ValueUnchecked = 'F'
                    Caption = '20 Kg'
                    TabOrder = 3
                    ParentColor = False
                    Color = clBtnFace
                  end
                end
                object UniContainerPanel4: TUniContainerPanel
                  Left = 3
                  Top = 261
                  Width = 942
                  Height = 308
                  Hint = ''
                  ParentColor = False
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 13
                  object UniDBGridbatidaitens: TUniDBGrid
                    Left = 0
                    Top = 0
                    Width = 942
                    Height = 308
                    Hint = ''
                    DataSource = dsdetalhes
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgTabs, dgAutoRefreshRow]
                    WebOptions.Paged = False
                    LoadMask.Message = 'Carregando Item(s)...'
                    ForceFit = True
                    Align = alClient
                    Font.Color = clBlack
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    ParentFont = False
                    TabOrder = 1
                    Summary.Enabled = True
                    OnCellClick = UniDBGridbatidaitensCellClick
                    Columns = <
                      item
                        FieldName = 'calculos'
                        Title.Caption = '...'
                        Width = 30
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                      end
                      item
                        FieldName = 'TIPO'
                        Title.Caption = ' '
                        Width = 80
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                      end
                      item
                        FieldName = 'buscalote'
                        Title.Caption = ' '
                        Width = 30
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                      end
                      item
                        FieldName = 'PERC'
                        Title.Caption = '%PERC'
                        Width = 60
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                        ReadOnly = True
                      end
                      item
                        FieldName = 'LOTE'
                        Title.Caption = 'LOTE'
                        Width = 150
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'PRODUTO'
                        Title.Caption = 'PROD'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'DESCRICAO'
                        Title.Caption = 'DESCRICAO'
                        Width = 250
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'QUANTIDADE'
                        Title.Caption = 'QTDE'
                        Width = 74
                        Font.Color = clBlue
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'PUREZA'
                        Title.Caption = '%PUR '
                        Width = 70
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                        ReadOnly = True
                      end
                      item
                        FieldName = 'CUSTO_UNITARIO'
                        Title.Caption = 'UNT. KG'
                        Width = 100
                        Visible = False
                        Font.Color = clRed
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'TOTAL_CUSTO'
                        Title.Caption = 'R$ TOTAL'
                        Width = 100
                        Visible = False
                        Font.Color = clRed
                        Font.Name = 'Calibri'
                        ReadOnly = True
                      end
                      item
                        FieldName = 'PONTOS'
                        Title.Caption = 'PONTOS'
                        Width = 100
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        ReadOnly = True
                      end
                      item
                        FieldName = 'exclui'
                        Title.Caption = ' '
                        Width = 30
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                      end>
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited FDQryFiltro: TFDQuery
    SQL.Strings = (
      'select * from PRODUCAOINTERNA')
    object FDQryFiltroKEY: TStringField
      FieldName = 'KEY'
      Origin = '"KEY"'
      Size = 38
    end
    object FDQryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQryFiltroNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object FDQryFiltroATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object FDQryFiltroEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQryFiltroEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object FDQryFiltroDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Required = True
    end
    object FDQryFiltroLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 30
    end
    object FDQryFiltroPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
    end
    object FDQryFiltroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQryFiltroPUREZA: TFMTBCDField
      FieldName = 'PUREZA'
      Origin = 'PUREZA'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroTOTALKG: TFMTBCDField
      FieldName = 'TOTALKG'
      Origin = 'TOTALKG'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroTOTALPONTOS: TFMTBCDField
      FieldName = 'TOTALPONTOS'
      Origin = 'TOTALPONTOS'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      OnGetText = FDQryFiltroSTATUSGetText
      Size = 10
    end
    object FDQryFiltroTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 15
    end
    object FDQryFiltroTOTAL_CUSTO: TBCDField
      FieldName = 'TOTAL_CUSTO'
      Origin = 'TOTAL_CUSTO'
      Precision = 18
    end
  end
  inherited FDQryCad: TFDQuery
    UpdateOptions.UpdateTableName = 'PRODUCAOINTERNA'
    SQL.Strings = (
      'select * from PRODUCAOINTERNA where codigo = :codigo')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQryCadKEY: TStringField
      FieldName = 'KEY'
      Origin = '"KEY"'
      Size = 38
    end
    object FDQryCadCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQryCadNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object FDQryCadATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object FDQryCadEMISSAO: TDateField
      FieldName = 'EMISSAO'
      Origin = 'EMISSAO'
    end
    object FDQryCadEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Required = True
    end
    object FDQryCadDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
      Required = True
    end
    object FDQryCadLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 30
    end
    object FDQryCadPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
    end
    object FDQryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQryCadPUREZA: TFMTBCDField
      FieldName = 'PUREZA'
      Origin = 'PUREZA'
      Precision = 18
      Size = 2
    end
    object FDQryCadTOTALKG: TFMTBCDField
      FieldName = 'TOTALKG'
      Origin = 'TOTALKG'
      Precision = 18
      Size = 2
    end
    object FDQryCadTOTALPONTOS: TFMTBCDField
      FieldName = 'TOTALPONTOS'
      Origin = 'TOTALPONTOS'
      Precision = 18
      Size = 2
    end
    object FDQryCadSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 10
    end
    object FDQryCadTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 15
    end
    object FDQryCadTOTAL_CUSTO: TBCDField
      FieldName = 'TOTAL_CUSTO'
      Origin = 'TOTAL_CUSTO'
      currency = True
      Precision = 18
    end
    object FDQryCadPESOSACO: TFMTBCDField
      FieldName = 'PESOSACO'
      Origin = 'PESOSACO'
      Precision = 18
      Size = 2
    end
    object FDQryCadSACO_05KG: TStringField
      FieldName = 'SACO_05KG'
      Origin = 'SACO_05KG'
      FixedChar = True
      Size = 1
    end
    object FDQryCadSACO_10KG: TStringField
      FieldName = 'SACO_10KG'
      Origin = 'SACO_10KG'
      FixedChar = True
      Size = 1
    end
    object FDQryCadSACO_15KG: TStringField
      FieldName = 'SACO_15KG'
      Origin = 'SACO_15KG'
      FixedChar = True
      Size = 1
    end
    object FDQryCadSACO_20KG: TStringField
      FieldName = 'SACO_20KG'
      Origin = 'SACO_20KG'
      FixedChar = True
      Size = 1
    end
    object FDQryCadSACARIA: TStringField
      FieldName = 'SACARIA'
      Origin = 'SACARIA'
    end
    object FDQryCadPADRAO: TStringField
      FieldName = 'PADRAO'
      Origin = 'PADRAO'
      Size = 15
    end
  end
  inherited tbdetalhes: TFDMemTable
    BeforePost = tbdetalhesBeforePost
    AfterPost = tbdetalhesAfterPost
    AfterDelete = tbdetalhesAfterDelete
    object tbdetalhesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 30
    end
    object tbdetalhesPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object tbdetalhesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object tbdetalhesSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object tbdetalhesQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object tbdetalhesbuscalote: TStringField
      FieldName = 'buscalote'
      OnGetText = tbdetalhesbuscaloteGetText
      Size = 1
    end
    object tbdetalhesexclui: TStringField
      FieldName = 'exclui'
      OnGetText = tbdetalhesexcluiGetText
      Size = 1
    end
    object tbdetalhesTIPO: TStringField
      FieldName = 'TIPO'
      OnGetText = tbdetalhesTIPOGetText
      Size = 15
    end
    object tbdetalhesPUREZA: TFloatField
      FieldName = 'PUREZA'
    end
    object tbdetalhesPONTOS: TFloatField
      FieldName = 'PONTOS'
    end
    object tbdetalhesCUSTO_UNITARIO: TCurrencyField
      FieldName = 'CUSTO_UNITARIO'
    end
    object tbdetalhesTOTAL_CUSTO: TCurrencyField
      FieldName = 'TOTAL_CUSTO'
    end
    object tbdetalhesPERC: TStringField
      FieldName = 'PERC'
    end
    object tbdetalhesCUSTO_PONTO: TFloatField
      FieldName = 'CUSTO_PONTO'
    end
    object tbdetalhesTOTAL_PONTO: TFloatField
      FieldName = 'TOTAL_PONTO'
    end
    object tbdetalhescalculos: TStringField
      FieldName = 'calculos'
      OnGetText = tbdetalhescalculosGetText
    end
  end
  inherited dsdetalhes: TDataSource
    Left = 717
  end
  object UniPopupMenudetalhes: TUniPopupMenu
    Images = dm_rc.imgl20
    Left = 639
    Top = 6
    object I1: TUniMenuItem
      Caption = 'Duplicar Produ'#231#227'o'
      ImageIndex = 70
      OnClick = I1Click
    end
    object N1: TUniMenuItem
      Caption = '-'
    end
    object EntregadosItenss1: TUniMenuItem
      Caption = 'Impress'#227'o da Produ'#231#227'o'
      ImageIndex = 94
      OnClick = EntregadosItenss1Click
    end
    object N13: TUniMenuItem
      Caption = '-'
    end
    object C1: TUniMenuItem
      Caption = 'Custo da Produ'#231#227'o - Montagem de Pre'#231'o'
      ImageIndex = 121
      OnClick = C1Click
    end
  end
end
