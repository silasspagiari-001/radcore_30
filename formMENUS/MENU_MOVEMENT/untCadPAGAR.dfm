inherited frmcadPAGAR: TfrmcadPAGAR
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseButtons: TUniContainerPanel
      AlignWithMargins = False
      Left = 0
      Top = 40
      Height = 610
      ExplicitLeft = 0
      ExplicitTop = 40
      ExplicitHeight = 610
      ScrollHeight = 610
      ScrollWidth = 37
    end
    inherited pgBaseCadControl: TUniPageControl
      AlignWithMargins = False
      Left = 37
      Top = 40
      Width = 983
      Height = 610
      ExplicitLeft = 37
      ExplicitTop = 40
      ExplicitWidth = 983
      ExplicitHeight = 610
      inherited tabSearch: TUniTabSheet
        ExplicitTop = 24
        ExplicitWidth = 975
        ExplicitHeight = 582
        inherited paBaseRegSearch: TUniContainerPanel
          Width = 975
          Height = 582
          ExplicitWidth = 975
          ExplicitHeight = 582
          inherited paSearchFilters: TUniPanel
            Height = 582
            ExplicitHeight = 582
            inherited UniScrollBox1: TUniScrollBox
              Height = 582
              ExplicitHeight = 582
              ScrollHeight = 510
              ScrollWidth = 262
            end
          end
          inherited dbgSearchCRUD: TUniDBGrid
            Width = 709
            Height = 582
            OnMouseDown = dbgSearchCRUDMouseDown
            OnCellClick = dbgSearchCRUDCellClick
            Columns = <
              item
                FieldName = 'KEY'
                Title.Caption = ' '
                Width = 30
                Font.Name = 'Calibri'
                Alignment = taCenter
              end
              item
                FieldName = 'SITUACAO'
                Title.Caption = 'Situa'#231#227'o'
                Width = 74
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'CODIGO'
                Title.Caption = 'CODIGO'
                Width = 74
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'NUMERO'
                Title.Caption = 'Numero'
                Width = 74
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'SERIE'
                Title.Caption = 'Ser.'
                Width = 25
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'SEQUENCIA'
                Title.Caption = 'Seq.'
                Width = 30
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'PESSOA'
                Title.Caption = 'Pessoa'
                Width = 74
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'NOME'
                Title.Caption = 'Nome'
                Width = 300
                Font.Name = 'Calibri'
                ReadOnly = True
              end
              item
                FieldName = 'EMISSAO'
                Title.Caption = 'Emiss'#227'o'
                Width = 75
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'VENCIMENTO'
                Title.Caption = 'Vencimento'
                Width = 75
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'PAGAMENTO'
                Title.Caption = 'Pagamento'
                Width = 75
                Font.Name = 'Calibri'
              end
              item
                FieldName = 'VALORATUAL'
                Title.Caption = 'Valor Atual'
                Width = 100
                Font.Name = 'Calibri'
              end>
          end
        end
      end
      inherited tabRegister: TUniTabSheet
        ExplicitTop = 24
        ExplicitWidth = 975
        ExplicitHeight = 582
        inherited paBaseRegData1: TUniContainerPanel
          Width = 975
          Height = 582
          ExplicitWidth = 975
          ExplicitHeight = 582
          ScrollHeight = 601
          ScrollWidth = 975
          ScrollY = 19
          inherited rcBlock10: TUniContainerPanel
            Top = -8
            ExplicitTop = -8
            inherited edCodigo: TUniDBEdit
              AlignWithMargins = True
              Width = 140
              ExplicitWidth = 140
            end
          end
          inherited rcBlock20: TUniContainerPanel
            Top = -8
            ExplicitTop = -8
            inherited rcDBComboBox50: TUniDBComboBox
              AlignWithMargins = True
              Width = 144
              Items.Strings = (
                'NFE'
                'PED'
                'NOC'
                'CAR'
                'DUP'
                'CHE')
              ExplicitWidth = 144
            end
          end
          inherited rcBlock30: TUniContainerPanel
            Top = -8
            ExplicitTop = -8
            inherited UniDBEditsequencia: TUniDBEdit
              AlignWithMargins = True
              Width = 87
              ExplicitWidth = 87
            end
          end
          inherited rcBlock40: TUniContainerPanel
            Top = 89
            ExplicitTop = 89
            inherited UniButtonDbEdit1: TUniButtonDbEdit
              AlignWithMargins = True
              Anchors = [akLeft, akTop, akRight]
            end
          end
          inherited rcBlock50: TUniContainerPanel
            Top = 89
            ExplicitTop = 89
          end
          inherited rcBlock60: TUniContainerPanel
            Top = 89
            ExplicitTop = 89
          end
          inherited rcBlock70: TUniContainerPanel
            Top = 88
            ExplicitTop = 88
          end
          inherited rcBlock230: TUniContainerPanel
            Top = 174
            ExplicitTop = 174
          end
          inherited rcBlock240: TUniContainerPanel
            Top = 174
            ExplicitTop = 174
            inherited UniLabel17: TUniLabel
              Left = 106
              ExplicitLeft = 106
            end
          end
          inherited rcBlock250: TUniContainerPanel
            Top = 174
            ExplicitTop = 174
          end
          inherited rcBlock260: TUniContainerPanel
            Top = 173
            ExplicitTop = 173
            inherited UniDBEdit6: TUniDBEdit
              AlignWithMargins = True
              Width = 96
              ExplicitWidth = 96
            end
          end
          inherited rcBlock270: TUniContainerPanel
            Top = 249
            Width = 199
            ExplicitTop = 249
            ExplicitWidth = 199
            inherited UniDBDateTimePicker1: TUniDBDateTimePicker
              AlignWithMargins = True
              Width = 193
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 193
            end
          end
          inherited rcBlock280: TUniContainerPanel
            Left = 212
            Top = 249
            Width = 200
            ExplicitLeft = 212
            ExplicitTop = 249
            ExplicitWidth = 200
            inherited UniDBDateTimePicker2: TUniDBDateTimePicker
              AlignWithMargins = True
              Width = 192
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 192
            end
          end
          inherited rcBlock290: TUniContainerPanel
            AlignWithMargins = True
            Left = 418
            Top = 249
            Width = 204
            Anchors = [akLeft, akTop, akRight]
            ExplicitLeft = 418
            ExplicitTop = 249
            ExplicitWidth = 204
            inherited UniDBDateTimePicker3: TUniDBDateTimePicker
              AlignWithMargins = True
              Width = 199
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 199
            end
          end
          inherited rcBlock300: TUniContainerPanel
            Left = 626
            Top = 248
            Width = 200
            ExplicitLeft = 626
            ExplicitTop = 248
            ExplicitWidth = 200
            inherited UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
              AlignWithMargins = True
              Width = 195
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 195
            end
          end
          inherited rcBlock310: TUniContainerPanel
            Top = 313
            Width = 199
            ExplicitTop = 313
            ExplicitWidth = 199
            inherited UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              AlignWithMargins = True
              Width = 106
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 106
            end
          end
          inherited rcBlock320: TUniContainerPanel
            Left = 212
            Top = 313
            Width = 198
            ExplicitLeft = 212
            ExplicitTop = 313
            ExplicitWidth = 198
          end
          inherited rcBlock330: TUniContainerPanel
            Left = 416
            Top = 313
            Width = 202
            ExplicitLeft = 416
            ExplicitTop = 313
            ExplicitWidth = 202
            inherited UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
              AlignWithMargins = True
            end
            inherited UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit
              AlignWithMargins = True
              Width = 86
              Anchors = [akLeft, akTop, akRight]
              ExplicitWidth = 86
            end
          end
          inherited rcBlock340: TUniContainerPanel
            Left = 626
            Top = 312
            Width = 200
            ExplicitLeft = 626
            ExplicitTop = 312
            ExplicitWidth = 200
            inherited UniDBEdit2: TUniDBEdit
              AlignWithMargins = True
              Left = 2
              Width = 195
              ExplicitLeft = 2
              ExplicitWidth = 195
            end
            inherited UniLabel26: TUniLabel
              Left = 2
              ExplicitLeft = 2
            end
          end
          object rcBlock350: TUniContainerPanel
            Left = 3
            Top = 367
            Width = 910
            Height = 25
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clSkyBlue
            TabOrder = 20
            DesignSize = (
              910
              25)
            object UniLabel39: TUniLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 251
              Height = 19
              Hint = '[[cols:12 | round:all]]'
              Margins.Left = 6
              Margins.Top = 6
              Margins.Right = 6
              Margins.Bottom = 6
              AutoSize = False
              Caption = 'OBSERVA'#199#195'O'
              Anchors = [akLeft, akTop, akRight]
              ParentFont = False
              Font.Color = clGray
              Font.Height = -15
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object rcBlock360: TUniContainerPanel
            Left = 3
            Top = 404
            Width = 910
            Height = 98
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            TabOrder = 21
            object UniDBMemoobs: TUniDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 904
              Height = 92
              Hint = ''
              DataField = 'OBSERVACOES'
              DataSource = dscrud
              Align = alClient
              TabOrder = 1
            end
          end
          object rcBlock370: TUniContainerPanel
            Left = 5
            Top = 508
            Width = 908
            Height = 57
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            TabOrder = 22
            DesignSize = (
              908
              57)
            object UniDBEdit1: TUniDBEdit
              Left = 3
              Top = 17
              Width = 902
              Height = 29
              Hint = ''
              DataField = 'CODIGOBARRAS'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              Color = clInfoBk
            end
            object UniLabel28: TUniLabel
              Left = 3
              Top = 0
              Width = 149
              Height = 15
              Hint = ''
              Caption = 'Codigo de Barras do Boleto'
              Anchors = [akLeft, akTop, akRight]
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
  inherited FDQryFiltro: TFDQuery
    SQL.Strings = (
      'select * from PAGAR')
    object FDQryFiltroVALORORIGINAL: TFMTBCDField
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroVALORPAGO: TFMTBCDField
      FieldName = 'VALORPAGO'
      Origin = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object FDQryFiltroDOCUMENTO: TIntegerField
      FieldName = 'DOCUMENTO'
      Origin = 'DOCUMENTO'
    end
    object FDQryFiltroKEY: TStringField
      FieldName = 'KEY'
      Origin = '"KEY"'
      Required = True
      OnGetText = FDQryFiltroKEYGetText
      Size = 38
    end
    object FDQryFiltroOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 300
    end
    object FDQryFiltroCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
    end
  end
  inherited FDQryCad: TFDQuery
    UpdateOptions.UpdateTableName = 'PAGAR'
    SQL.Strings = (
      'SELECT * FROM PAGAR WHERE CODIGO = :CODIGO')
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object UniPopupMenuopcoes: TUniPopupMenu
    Images = dm_rc.imgl20
    Left = 879
    Top = 6
    object L1: TUniMenuItem
      Caption = 'Log dos Titulos'
      ImageIndex = 27
      OnClick = L1Click
    end
  end
end
