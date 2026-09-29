object frmTEMOADITIVO: TfrmTEMOADITIVO
  Left = 0
  Top = 0
  ClientHeight = 420
  ClientWidth = 723
  Caption = 'Termo Aditivo'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  OnCreate = UniFormCreate
  OnDestroy = UniFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object rcBlock10: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 420
    Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object paBaseButtons: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 37
      Height = 420
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
      TabOrder = 1
      ScrollHeight = 420
      ScrollWidth = 37
      object paOF: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 171
        Width = 37
        Height = 89
        Hint = ''
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        ParentColor = False
        Align = alTop
        TabOrder = 3
        object btnCloseForm: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 20
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-sign-out-alt rc-mirror-h | '#13#10'cls' +
            '-ico:font-black'#13#10']]'
          Margins.Left = 2
          Margins.Top = 20
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '<i class="fas fa-sign-out-alt"></i>'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 1
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnCloseFormClick
        end
      end
      object paNAE: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 20
        Width = 37
        Height = 38
        Hint = ''
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        ParentColor = False
        Align = alTop
        TabOrder = 1
        object btnEditReg: TUniBitBtn
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 33
          Height = 32
          Hint = 
            '[['#13#10'cls:ButtonWhite |'#13#10'ico:fas-pencil-alt | '#13#10'cls-ico:font-black' +
            #13#10']]'
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = '<i class="fas fa-pencil-alt"></i>'
          Align = alTop
          ParentFont = False
          Font.Height = -19
          Font.Name = 'Calibri'
          TabOrder = 1
          ScaleButton = False
          LayoutConfig.Padding = '0 2 0 0'
          OnClick = btnEditRegClick
        end
      end
      object paGC: TUniContainerPanel
        AlignWithMargins = True
        Left = 0
        Top = 78
        Width = 37
        Height = 73
        Hint = ''
        Margins.Left = 0
        Margins.Top = 20
        Margins.Right = 0
        Margins.Bottom = 0
        ParentColor = False
        Align = alTop
        TabOrder = 2
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
          Caption = '<i class="fas fa-check"></i>'
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
          Caption = '<i class="fas fa-times"></i>'
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
    object rcBlock20: TUniContainerPanel
      Left = 40
      Top = 20
      Width = 681
      Height = 48
      Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
      ParentColor = False
      TabOrder = 2
      object UniDBCheckBox1: TUniDBCheckBox
        Left = 1
        Top = 16
        Width = 97
        Height = 17
        Hint = ''
        DataField = 'OP_TERMO'
        DataSource = dscrud
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = 'Termo Aditivo'
        TabOrder = 1
        ParentColor = False
        Color = clBtnFace
      end
      object UniDBCheckBox2: TUniDBCheckBox
        Left = 141
        Top = 16
        Width = 97
        Height = 17
        Hint = ''
        DataField = 'OP_CERTIFICADO'
        DataSource = dscrud
        ValueChecked = '1'
        ValueUnchecked = '0'
        Caption = 'Certificado Ativo'
        TabOrder = 2
        ParentColor = False
        Color = clBtnFace
      end
      object UniDBCheckBox3: TUniDBCheckBox
        Left = 285
        Top = 16
        Width = 139
        Height = 17
        Hint = ''
        DataField = 'REEMBALADA'
        DataSource = dscrud
        ValueChecked = 'T'
        ValueUnchecked = 'F'
        Caption = 'Semente Reembalada'
        TabOrder = 3
        ParentColor = False
        Color = clBtnFace
      end
    end
    object rcBlock30: TUniContainerPanel
      Left = 40
      Top = 70
      Width = 302
      Height = 48
      Hint = '[[cols:xs-12 sm-12 md-6]]'
      ParentColor = False
      TabOrder = 3
      DesignSize = (
        302
        48)
      object UniDBEdit3: TUniDBEdit
        Left = 1
        Top = 18
        Width = 297
        Height = 29
        Hint = '[[valid:blank=Nome]]'
        DataField = 'TERMO'
        DataSource = dscrud
        CharCase = ecUpperCase
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object UniLabel15: TUniLabel
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 96
        Height = 15
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 2
        Caption = 'Numero do Termo'
        ParentFont = False
        Font.Height = -13
        Font.Name = 'Calibri'
        TabOrder = 2
      end
    end
    object rcBlock40: TUniContainerPanel
      Left = 345
      Top = 70
      Width = 375
      Height = 48
      Hint = '[[cols:xs-12 sm-12 md-6]]'
      ParentColor = False
      TabOrder = 4
      DesignSize = (
        375
        48)
      object UniDBDateTimePicker2: TUniDBDateTimePicker
        Left = 3
        Top = 18
        Width = 369
        Height = 29
        Hint = ''
        DataField = 'TERMO_DATA'
        DataSource = dscrud
        DateTime = 44561.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
            '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
            '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
            ':"  /  /   "}); '#13#10'}')
      end
      object UniLabel22: TUniLabel
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 79
        Height = 15
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 2
        Caption = 'Data do Termo'
        ParentFont = False
        Font.Height = -13
        Font.Name = 'Calibri'
        TabOrder = 2
      end
    end
    object UniContainerPanel2: TUniContainerPanel
      Left = 40
      Top = 122
      Width = 302
      Height = 48
      Hint = '[[cols:xs-12 sm-12 md-6]]'
      ParentColor = False
      TabOrder = 5
      DesignSize = (
        302
        48)
      object UniDBEdit1: TUniDBEdit
        Left = 1
        Top = 18
        Width = 297
        Height = 29
        Hint = '[[valid:blank=Nome]]'
        DataField = 'CERTIFICADO'
        DataSource = dscrud
        CharCase = ecUpperCase
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object UniLabel1: TUniLabel
        AlignWithMargins = True
        Left = 1
        Top = 1
        Width = 122
        Height = 15
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 2
        Caption = 'Numero do Certificado'
        ParentFont = False
        Font.Height = -13
        Font.Name = 'Calibri'
        TabOrder = 2
      end
    end
    object UniContainerPanel3: TUniContainerPanel
      Left = 345
      Top = 122
      Width = 375
      Height = 48
      Hint = '[[cols:xs-12 sm-12 md-6]]'
      ParentColor = False
      TabOrder = 6
      DesignSize = (
        375
        48)
      object UniDBDateTimePicker1: TUniDBDateTimePicker
        Left = 3
        Top = 18
        Width = 369
        Height = 29
        Hint = ''
        DataField = 'CERTIFICADO_DATA'
        DataSource = dscrud
        DateTime = 44561.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
            '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
            '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
            ':"  /  /   "}); '#13#10'}')
      end
      object UniLabel2: TUniLabel
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 108
        Height = 15
        Hint = ''
        Margins.Top = 1
        Margins.Bottom = 2
        Caption = 'Data do  Certificado'
        ParentFont = False
        Font.Height = -13
        Font.Name = 'Calibri'
        TabOrder = 2
      end
    end
  end
  object dsfiltro: TDataSource
    AutoEdit = False
    DataSet = FDQryFiltro
    Left = 95
    Top = 327
  end
  object FDQryFiltro: TFDQuery
    CachedUpdates = True
    Connection = mm.SQLConn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailCascade, evDetailServerCascade]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    SQL.Strings = (
      'SELECT * FROM SEMENTES')
    Left = 63
    Top = 326
    object FDQryFiltroopcoes: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'opcoes'
      Calculated = True
    end
    object FDQryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQryFiltroCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 3
    end
    object FDQryFiltroLOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 50
    end
    object FDQryFiltroBOLETIM: TStringField
      FieldName = 'BOLETIM'
      Origin = 'BOLETIM'
      Size = 15
    end
    object FDQryFiltroTERMO: TStringField
      FieldName = 'TERMO'
      Origin = 'TERMO'
      Size = 15
    end
    object FDQryFiltroCULTIVAR: TStringField
      FieldName = 'CULTIVAR'
      Origin = 'CULTIVAR'
      Size = 30
    end
    object FDQryFiltroTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 15
    end
    object FDQryFiltroPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
    end
    object FDQryFiltroDISPONIVEL: TFMTBCDField
      FieldName = 'DISPONIVEL'
      Origin = 'DISPONIVEL'
      Precision = 18
      Size = 2
    end
  end
  object dscrud: TDataSource
    AutoEdit = False
    DataSet = FDQryCad
    Left = 127
    Top = 326
  end
  object FDQryCad: TFDQuery
    Connection = mm.SQLConn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailCascade, evDetailServerCascade]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    UpdateOptions.UpdateTableName = 'SEMENTES'
    SQL.Strings = (
      'SELECT * FROM SEMENTES WHERE CODIGO = :CODIGO')
    Left = 159
    Top = 326
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
