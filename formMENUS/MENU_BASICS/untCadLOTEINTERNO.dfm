inherited frmcadLOTEINTERNO: TfrmcadLOTEINTERNO
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseButtons: TUniContainerPanel
      ScrollHeight = 610
      ScrollWidth = 37
      inherited paGC: TUniContainerPanel
        inherited btnSaveReg: TUniBitBtn
          Caption = 'V'
        end
      end
    end
    inherited pgBaseCadControl: TUniPageControl
      ActivePage = tabRegister
      inherited tabSearch: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 975
        ExplicitHeight = 582
        inherited paBaseRegSearch: TUniContainerPanel
          ExplicitHeight = 582
          inherited paSearchFilters: TUniPanel
            ExplicitHeight = 582
            inherited UniScrollBox1: TUniScrollBox
              ExplicitHeight = 582
              ScrollHeight = 337
              ScrollWidth = 262
              inherited paSearchBtn: TUniContainerPanel
                Top = 301
                ExplicitTop = 301
              end
              inherited UniContainerPanel3: TUniContainerPanel
                Top = 230
                Visible = True
                ExplicitTop = 230
                inherited UniComboBoxtipo: TUniComboBox
                  Items.Strings = (
                    'Produto Acabado'
                    'Sementes'
                    'Insumos'
                    'Sacaria')
                end
                inherited UniLabeltipoordemfiltro: TUniLabel
                  Width = 30
                  Caption = 'Filtro'
                  ExplicitWidth = 30
                end
              end
            end
          end
          inherited dbgSearchCRUD: TUniDBGrid
            OnMouseDown = dbgSearchCRUDMouseDown
            Columns = <
              item
                FieldName = 'opcao'
                Title.Caption = ' '
                Width = 30
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'TIPO'
                Title.Caption = ' '
                Width = 80
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'BARRACAO'
                Title.Caption = 'BARRAC'#195'O'
                Width = 100
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'POSICAO'
                Title.Caption = 'POSI'#199#195'O'
                Width = 100
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'LOTE'
                Title.Caption = 'LOTE'
                Width = 80
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'DESCRICAO'
                Title.Caption = 'DESCRICAO'
                Width = 300
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'DISPONIVEL'
                Title.Caption = 'DISPONIVEL'
                Width = 90
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'TOTALPONTOS'
                Title.Caption = 'PONTOS'
                Width = 100
                Font.Name = 'Calibri'
              end>
          end
        end
      end
      inherited tabRegister: TUniTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 975
        ExplicitHeight = 582
        inherited paBaseRegData1: TUniContainerPanel
          ExplicitHeight = 582
          ScrollHeight = 582
          ScrollWidth = 975
          inherited UniPageControlcadastros: TUniPageControl
            inherited UniTabSheetCRUD: TUniTabSheet
              ExplicitLeft = 4
              ExplicitTop = 24
              ExplicitWidth = 967
              ExplicitHeight = 554
              inherited UniScrollBox2: TUniScrollBox
                ScrollHeight = 328
                ScrollWidth = 860
                object rcBlock10: TUniContainerPanel
                  Tag = 1
                  Left = 3
                  Top = 3
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 0
                  DesignSize = (
                    150
                    48)
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
                    TabOrder = 1
                  end
                  object edCodigo: TUniDBEdit
                    Left = 1
                    Top = 18
                    Width = 147
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
                  Left = 196
                  Top = 3
                  Width = 47
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-1]]'
                  ParentColor = False
                  TabOrder = 1
                  object UniDBCheckBox1: TUniDBCheckBox
                    Left = 19
                    Top = 25
                    Width = 14
                    Height = 17
                    Hint = ''
                    DataField = 'ATIVO'
                    DataSource = dscrud
                    ValueChecked = 'T'
                    ValueUnchecked = 'F'
                    Caption = ''
                    TabOrder = 1
                    ParentColor = False
                    Color = clBtnFace
                  end
                  object UniLabel4: TUniLabel
                    Left = 8
                    Top = 0
                    Width = 27
                    Height = 15
                    Hint = ''
                    Caption = 'Ativo'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock30: TUniContainerPanel
                  Tag = 1
                  Left = 382
                  Top = 3
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 2
                  DesignSize = (
                    150
                    48)
                  object UniLabel5: TUniLabel
                    Left = 0
                    Top = 0
                    Width = 44
                    Height = 15
                    Hint = ''
                    Caption = 'Posi'#231#227'o'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBEdit1: TUniDBEdit
                    Left = 2
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'POSICAO'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                  end
                end
                object rcBlock40: TUniContainerPanel
                  Tag = 1
                  Left = 558
                  Top = 2
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-5]]'
                  ParentColor = False
                  TabOrder = 3
                  DesignSize = (
                    150
                    48)
                  object UniDBComboBoxbarracao: TUniDBComboBox
                    Tag = 1
                    Left = 4
                    Top = 19
                    Width = 142
                    Height = 29
                    Hint = ''
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'BARRACAO'
                    DataSource = dscrud
                    Style = csDropDownList
                    Items.Strings = (
                      'Contabil'
                      'Financeiro'
                      'Administrativo'
                      'Laboratorio')
                    TabOrder = 1
                    IconItems = <>
                  end
                  object UniLabel6: TUniLabel
                    Left = 0
                    Top = 0
                    Width = 51
                    Height = 15
                    Hint = ''
                    Caption = 'Barrac'#227'o'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock50: TUniContainerPanel
                  Left = 3
                  Top = 59
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 4
                  DesignSize = (
                    150
                    48)
                  object UniButtonDbEditcodPRODUTO: TUniButtonDbEdit
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'PRODUTO'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                    Color = clInfoBk
                    OnExit = UniButtonDbEditcodPRODUTOExit
                    OnButtonClick = UniButtonDbEditcodPRODUTOButtonClick
                    IconCls = 'search'
                  end
                  object UniLabel10: TUniLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 44
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Produto'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock60: TUniContainerPanel
                  Left = 196
                  Top = 59
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-8]]'
                  ParentColor = False
                  TabOrder = 5
                  DesignSize = (
                    150
                    48)
                  object UniDBEdit2: TUniDBEdit
                    Left = 2
                    Top = 18
                    Width = 145
                    Height = 29
                    Hint = '[[valid:blank=Nome]]'
                    DataField = 'DESCRICAO'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                    ReadOnly = True
                  end
                  object UniLabel11: TUniLabel
                    AlignWithMargins = True
                    Left = 2
                    Top = 0
                    Width = 119
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Descri'#231#227'o do Produto'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock70: TUniContainerPanel
                  Tag = 1
                  Left = 3
                  Top = 118
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 6
                  DesignSize = (
                    150
                    48)
                  object UniLabel7: TUniLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 22
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Lote'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBEdit3: TUniDBEdit
                    Tag = 1
                    Left = 3
                    Top = 17
                    Width = 145
                    Height = 29
                    Hint = '[[valid:blank=Nome]]'
                    DataField = 'LOTE'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                  end
                end
                object rcBlock80: TUniContainerPanel
                  Tag = 1
                  Left = 196
                  Top = 118
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-2]]'
                  ParentColor = False
                  TabOrder = 7
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 2
                    Top = 17
                    Width = 145
                    Height = 29
                    Hint = ''
                    DataField = 'PUREZA'
                    DataSource = dscrud
                    Alignment = taCenter
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel25: TUniLabel
                    AlignWithMargins = True
                    Left = 2
                    Top = 0
                    Width = 49
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = '% Pureza'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock90: TUniContainerPanel
                  Tag = 1
                  Left = 372
                  Top = 118
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-2]]'
                  ParentColor = False
                  TabOrder = 8
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 3
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'GERMINACAO'
                    DataSource = dscrud
                    Alignment = taCenter
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel8: TUniLabel
                    AlignWithMargins = True
                    Left = 2
                    Top = 0
                    Width = 79
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = '% Germina'#231#227'o'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock100: TUniContainerPanel
                  Tag = 1
                  Left = 542
                  Top = 118
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-2]]'
                  ParentColor = False
                  TabOrder = 9
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 3
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'TETRAZOLIO'
                    DataSource = dscrud
                    Alignment = taCenter
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel9: TUniLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 66
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = '% Tetraz'#243'lio'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock110: TUniContainerPanel
                  Tag = 1
                  Left = 710
                  Top = 118
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 10
                  DesignSize = (
                    150
                    48)
                  object UniDBEdit4: TUniDBEdit
                    Left = 2
                    Top = 17
                    Width = 145
                    Height = 29
                    Hint = '[[valid:blank=Nome]]'
                    DataField = 'SAFRAVALIDA'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                  end
                  object UniLabel12: TUniLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 0
                    Width = 67
                    Height = 15
                    Hint = ''
                    Margins.Top = 1
                    Margins.Bottom = 2
                    Caption = 'Safra V'#225'lida'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock120: TUniContainerPanel
                  Tag = 1
                  Left = 3
                  Top = 172
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 11
                  DesignSize = (
                    150
                    48)
                  object UniLabel13: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 42
                    Height = 15
                    Hint = ''
                    Caption = 'Peso SC'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 1
                    Top = 17
                    Width = 146
                    Height = 29
                    Hint = ''
                    DataField = 'PESOEMBALAGEM'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                end
                object rcBlock130: TUniContainerPanel
                  Tag = 1
                  Left = 196
                  Top = 172
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 12
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 2
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'DISPONIVEL'
                    DataSource = dscrud
                    Alignment = taCenter
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    ReadOnly = True
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel14: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 48
                    Height = 15
                    Hint = ''
                    Caption = 'Saldo KG'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock140: TUniContainerPanel
                  Tag = 1
                  Left = 372
                  Top = 172
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 13
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 3
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'TOTALPONTOS'
                    DataSource = dscrud
                    Alignment = taCenter
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    ReadOnly = True
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel15: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 72
                    Height = 15
                    Hint = ''
                    Caption = 'Saldo Pontos'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock150: TUniContainerPanel
                  Left = 3
                  Top = 226
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-6]]'
                  ParentColor = False
                  TabOrder = 14
                  DesignSize = (
                    150
                    48)
                  object UniDBComboBox2: TUniDBComboBox
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 142
                    Height = 29
                    Hint = ''
                    Anchors = [akLeft, akTop, akRight]
                    DataField = 'TIPO'
                    DataSource = dscrud
                    Style = csDropDownList
                    Items.Strings = (
                      'Produto Acabado'
                      'Sementes'
                      'Insumos'
                      'Sacaria')
                    TabOrder = 1
                    IconItems = <>
                  end
                  object UniLabel16: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 24
                    Height = 15
                    Hint = ''
                    Caption = 'Tipo'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock160: TUniContainerPanel
                  Left = 196
                  Top = 226
                  Width = 326
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-6]]'
                  ParentColor = False
                  TabOrder = 15
                  DesignSize = (
                    326
                    48)
                  object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 179
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'CUSTO_UNITARIO'
                    DataSource = dscrud
                    Alignment = taCenter
                    Anchors = [akLeft, akTop, akRight]
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 1
                    DecimalPrecision = 4
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel17: TUniLabel
                    Left = 179
                    Top = 1
                    Width = 69
                    Height = 15
                    Hint = ''
                    Caption = 'Custo por Kg'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                  object UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 170
                    Height = 29
                    Hint = ''
                    DataField = 'CUSTO_PONTO'
                    DataSource = dscrud
                    Alignment = taCenter
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    Font.Style = [fsBold, fsItalic]
                    TabOrder = 3
                    DecimalPrecision = 4
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel18: TUniLabel
                    Left = 3
                    Top = 1
                    Width = 88
                    Height = 15
                    Hint = ''
                    Caption = 'Custo por Ponto'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 4
                  end
                end
                object rcBlock170: TUniContainerPanel
                  Left = 3
                  Top = 280
                  Width = 150
                  Height = 48
                  Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
                  ParentColor = False
                  TabOrder = 16
                  DesignSize = (
                    150
                    48)
                  object UniLabel19: TUniLabel
                    Left = 5
                    Top = 2
                    Width = 65
                    Height = 15
                    Hint = ''
                    Caption = 'C'#243'digo - "P"'
                    ParentFont = False
                    Font.Color = clBlue
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBEdit5: TUniDBEdit
                    Left = 3
                    Top = 17
                    Width = 145
                    Height = 29
                    Hint = ''
                    DataField = 'CODIGOP'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    ReadOnly = True
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
      'SELECT * FROM LOTEINTERNO')
    object FDQryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQryFiltroLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 60
    end
    object FDQryFiltroPOSICAO: TStringField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
      Size = 10
    end
    object FDQryFiltroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQryFiltroDISPONIVEL: TFMTBCDField
      FieldName = 'DISPONIVEL'
      Origin = 'DISPONIVEL'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroTOTALPONTOS: TFMTBCDField
      FieldName = 'TOTALPONTOS'
      Origin = 'TOTALPONTOS'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroBARRACAO: TStringField
      FieldName = 'BARRACAO'
      Origin = 'BARRACAO'
      Size = 60
    end
    object FDQryFiltroopcao: TStringField
      FieldKind = fkCalculated
      FieldName = 'opcao'
      OnGetText = FDQryFiltroopcaoGetText
      Size = 1
      Calculated = True
    end
    object FDQryFiltroTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      OnGetText = FDQryFiltroTIPOGetText
      Size = 15
    end
    object FDQryFiltroPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
  end
  inherited FDQryCad: TFDQuery
    UpdateOptions.UpdateTableName = 'LOTEINTERNO'
    SQL.Strings = (
      'SELECT * FROM LOTEINTERNO WHERE CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object popMenuOptions: TUniPopupMenu
    Images = dm_rc.imgl20
    Left = 570
    Top = 8
    object G1: TUniMenuItem
      Caption = 'Ficha T'#233'cnica - Controle de Estoque'
      ImageIndex = 62
      OnClick = G1Click
    end
    object N1: TUniMenuItem
      Caption = '-'
    end
    object R1: TUniMenuItem
      Caption = 'Recalcula Lote Interno'
      ImageIndex = 55
      OnClick = R1Click
    end
  end
end
