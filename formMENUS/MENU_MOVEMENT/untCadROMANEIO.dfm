inherited frmcadROMANEIO: TfrmcadROMANEIO
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseTop: TUniContainerPanel
      inherited labTitleForm: TUniLabel
        Width = 15
        ExplicitWidth = 15
      end
    end
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
          Height = 582
          ExplicitHeight = 582
          inherited paSearchFilters: TUniPanel
            Height = 582
            ExplicitHeight = 582
            inherited UniScrollBox1: TUniScrollBox
              Height = 582
              ExplicitHeight = 582
              ScrollHeight = 270
              ScrollWidth = 262
            end
          end
          inherited dbgSearchCRUD: TUniDBGrid
            Height = 582
            Columns = <
              item
                FieldName = 'CODIGO'
                Title.Caption = 'CODIGO'
                Width = 50
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'EMISSAO'
                Title.Caption = 'EMISSAO'
                Width = 100
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'NOME'
                Title.Caption = 'NOME'
                Width = 200
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'VALORFRETE'
                Title.Caption = 'VLR FRETE'
                Width = 100
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'PAGO'
                Title.Caption = 'VLR PAGO'
                Width = 100
                Font.Name = 'Calibri'
              end>
          end
        end
      end
      inherited tabRegister: TUniTabSheet
        ExplicitTop = 24
        ExplicitHeight = 582
        inherited paBaseRegData1: TUniContainerPanel
          Height = 582
          ExplicitHeight = 582
          ScrollHeight = 582
          ScrollWidth = 975
          inherited UniPageControlcadastros: TUniPageControl
            inherited UniTabSheetCRUD: TUniTabSheet
              inherited UniScrollBox2: TUniScrollBox
                ScrollHeight = 529
                ScrollWidth = 860
                object rcBlock10: TUniContainerPanel
                  Tag = 1
                  Left = 3
                  Top = 3
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-2]]'
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
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object edCodigo: TUniDBEdit
                    Left = 3
                    Top = 18
                    Width = 142
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
                  Hint = '[[cols:xs-12 sm-12 md-2]]'
                  ParentColor = False
                  TabOrder = 1
                  object UniLabel7: TUniLabel
                    Left = 8
                    Top = 0
                    Width = 27
                    Height = 15
                    Hint = ''
                    Caption = 'Ativo'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
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
                    TabOrder = 2
                    ParentColor = False
                    Color = clBtnFace
                  end
                end
                object rcBlock30: TUniContainerPanel
                  Tag = 1
                  Left = 372
                  Top = 3
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-2]]'
                  ParentColor = False
                  TabOrder = 2
                  DesignSize = (
                    150
                    48)
                  object UniLabel6: TUniLabel
                    Left = 2
                    Top = 0
                    Width = 50
                    Height = 15
                    Hint = ''
                    Caption = 'Cadastro'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBDateTimePicker2: TUniDBDateTimePicker
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
                  Left = 542
                  Top = 3
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 3
                  DesignSize = (
                    150
                    48)
                  object UniLabel15: TUniLabel
                    Left = 3
                    Top = 0
                    Width = 86
                    Height = 15
                    Hint = ''
                    Caption = 'Transportadora'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniButtonDbEditCEPP: TUniButtonDbEdit
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 145
                    Height = 29
                    Hint = ''
                    DataField = 'MOTORISTA'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    Color = clInfoBk
                    OnExit = UniButtonDbEditCEPPExit
                    OnButtonClick = UniButtonDbEditCEPPButtonClick
                    IconCls = 'search'
                  end
                end
                object rcBlock50: TUniContainerPanel
                  Tag = 1
                  Left = 710
                  Top = 3
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-3]]'
                  ParentColor = False
                  TabOrder = 4
                  DesignSize = (
                    150
                    48)
                  object UniDBEdit5: TUniDBEdit
                    Tag = 1
                    Left = 3
                    Top = 18
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'NOME'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                  end
                  object UniLabel4: TUniLabel
                    Left = 3
                    Top = 0
                    Width = 120
                    Height = 15
                    Hint = ''
                    Caption = 'Nome Transportadora'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock60: TUniContainerPanel
                  Tag = 1
                  Left = 3
                  Top = 61
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 5
                  DesignSize = (
                    150
                    48)
                  object UniDBEdit1: TUniDBEdit
                    Tag = 1
                    Left = 3
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'PLACA'
                    DataSource = dscrud
                    CharCase = ecUpperCase
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                  end
                  object UniLabel5: TUniLabel
                    Left = 2
                    Top = 0
                    Width = 31
                    Height = 15
                    Hint = ''
                    Caption = 'Placa'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock70: TUniContainerPanel
                  Tag = 1
                  Left = 196
                  Top = 61
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 6
                  DesignSize = (
                    150
                    48)
                  object UniDBFormattedNumberEditvlrprodutos: TUniDBFormattedNumberEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'VALORFRETE'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 1
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                  object UniLabel8: TUniLabel
                    Left = 2
                    Top = 0
                    Width = 59
                    Height = 15
                    Hint = ''
                    Caption = 'Valor Frete'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 2
                  end
                end
                object rcBlock80: TUniContainerPanel
                  Tag = 1
                  Left = 382
                  Top = 61
                  Width = 150
                  Height = 48
                  Hint = '[[cols:xs-12 sm-12 md-4]]'
                  ParentColor = False
                  TabOrder = 7
                  DesignSize = (
                    150
                    48)
                  object UniLabel9: TUniLabel
                    Left = 2
                    Top = 0
                    Width = 59
                    Height = 15
                    Hint = ''
                    Caption = 'Valor Pago'
                    ParentFont = False
                    Font.Height = -13
                    Font.Name = 'Calibri'
                    TabOrder = 1
                  end
                  object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
                    AlignWithMargins = True
                    Left = 2
                    Top = 17
                    Width = 144
                    Height = 29
                    Hint = ''
                    DataField = 'PAGO'
                    DataSource = dscrud
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    DecimalSeparator = ','
                    ThousandSeparator = '.'
                  end
                end
                object rcBlock90: TUniContainerPanel
                  Left = 3
                  Top = 115
                  Width = 857
                  Height = 414
                  Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
                  ParentColor = False
                  TabOrder = 8
                  object UniDBGridbeneficiamento: TUniDBGrid
                    Left = 0
                    Top = 0
                    Width = 857
                    Height = 414
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
                    OnCellClick = UniDBGridbeneficiamentoCellClick
                    Columns = <
                      item
                        FieldName = 'busca'
                        Title.Caption = ' '
                        Width = 30
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                        Alignment = taCenter
                      end
                      item
                        FieldName = 'PESSOA'
                        Title.Caption = 'PESSOA'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'NOME'
                        Title.Caption = 'NOME'
                        Width = 200
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'NUMERO'
                        Title.Caption = 'NUMERO'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'SERIE'
                        Title.Caption = 'SERIE'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'SEQUENCIA'
                        Title.Caption = 'SEQ'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'PRODUTO'
                        Title.Caption = 'PRODUTO'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'DESCRICAO'
                        Title.Caption = 'DESCRICAO'
                        Width = 200
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'QUANTIDADE'
                        Title.Caption = 'QTDE'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
                      end
                      item
                        FieldName = 'SACOS'
                        Title.Caption = 'SACOS'
                        Width = 74
                        Font.Color = clBlack
                        Font.Name = 'Calibri'
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
      'SELECT * FROM ROMANEIO')
  end
  inherited FDQryCad: TFDQuery
    UpdateOptions.UpdateTableName = 'ROMANEIO'
    SQL.Strings = (
      'SELECT * FROM ROMANEIO WHERE CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited FDQryCaddetails: TFDQuery
    SQL.Strings = (
      '')
  end
  inherited tbdetalhes: TFDMemTable
    object tbdetalhesPESSOA: TIntegerField
      FieldName = 'PESSOA'
    end
    object tbdetalhesNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object tbdetalhesSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
    end
    object tbdetalhesPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
    end
    object tbdetalhesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object tbdetalhesQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object tbdetalhesSACOS: TFloatField
      FieldName = 'SACOS'
    end
    object tbdetalhesbusca: TStringField
      FieldName = 'busca'
      OnGetText = tbdetalhesbuscaGetText
      Size = 1
    end
    object tbdetalhesexclui: TStringField
      FieldName = 'exclui'
      OnGetText = tbdetalhesexcluiGetText
      Size = 1
    end
    object tbdetalhesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object tbdetalhesEMBALAGENS: TIntegerField
      FieldName = 'EMBALAGENS'
    end
    object tbdetalhesDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
    end
    object tbdetalhesSERIE: TStringField
      FieldName = 'SERIE'
    end
  end
  object UniPopupMenu: TUniPopupMenu
    Images = dm_rc.imgl20
    Left = 781
    Top = 8
    object R1: TUniMenuItem
      Caption = 'Impress'#227'o do Recibo'
      ImageIndex = 36
      OnClick = R1Click
    end
    object N1: TUniMenuItem
      Caption = '-'
    end
    object F1: TUniMenuItem
      Caption = 'Folha de Requerimento'
      ImageIndex = 109
      OnClick = F1Click
    end
  end
end
