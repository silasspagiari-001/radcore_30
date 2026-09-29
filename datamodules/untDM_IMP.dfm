object dm_imp: Tdm_imp
  OldCreateOrder = False
  Height = 379
  Width = 626
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 13
    Top = 8
  end
  object frxDBDatasetTitulos: TfrxDBDataset
    UserName = 'frxDBDatasetTitulos'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 13
    Top = 40
  end
  object frxReport: TfrxReport
    Tag = 1
    Version = '6.4.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39355.365383206000000000
    ReportOptions.LastChange = 45992.349524502320000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 47
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 299.582870000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 0.559060000000000000
          Top = 189.976500000000000000
          Width = 716.220850790000000000
          Height = 105.826840000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 144.622140000000000000
          Width = 716.220850790000000000
          Height = 41.574830000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 1.559060000000000000
          Top = 43.574830000000000000
          Width = 716.220850790000000000
          Height = 98.267780000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 194.740260000000000000
          Width = 336.378108980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 2.543290000000000000
          Top = 213.637910000000000000
          Width = 336.378108980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLINOM]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 148.401670000000000000
          Width = 74.078725510000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Seq. Pedido')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 171.858380000000000000
          Width = 74.078725510000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SAINUM]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 170.858380000000000000
          Width = 74.078725510000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SAIDTE]')
          ParentFont = False
          VAlign = vaBottom
        end
        object PictureLogo: TfrxPictureView
          AllowVectorExport = True
          Left = 5.881880000000000000
          Top = 46.574830000000000000
          Width = 185.196725910000000000
          Height = 90.708720000000000000
          Center = True
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 66.252010000000000000
          Width = 68.031478980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 275.685220000000000000
          Top = 66.031540000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPFAN]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 85.708720000000000000
          Width = 68.031478980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 85.708720000000000000
          Width = 438.425480000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPEND]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 103.047310000000000000
          Width = 68.031478980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 275.905690000000000000
          Top = 103.047310000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPBAR]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 200.094620000000000000
          Top = 120.165430000000000000
          Width = 68.031478980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 274.905690000000000000
          Top = 120.165430000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPMUN]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 103.047310000000000000
          Width = 34.015708980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 453.882190000000000000
          Top = 103.047310000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPCEP]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 532.236550000000000000
          Top = 103.047310000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 596.488560000000000000
          Top = 103.047310000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPTEL]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 464.205010000000000000
          Top = 120.165430000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Email:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 509.559370000000000000
          Top = 120.165430000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          Clipped = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[EMPEMAIL]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 170.858380000000000000
          Width = 217.700865510000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLIFUN]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 148.401670000000000000
          Width = 74.078725510000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Emiss'#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 148.401670000000000000
          Width = 217.700865510000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 245.874150000000000000
          Width = 109.606308980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cpf/Cnpj')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 264.771800000000000000
          Width = 109.606308980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLICNP]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 231.110390000000000000
          Top = 245.874150000000000000
          Width = 109.606308980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 231.110390000000000000
          Top = 264.771800000000000000
          Width = 109.606308980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLITLR]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 342.937230000000000000
          Top = 248.874150000000000000
          Width = 185.196908980000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 342.937230000000000000
          Top = 263.771800000000000000
          Width = 185.196908980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLIMUR]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 531.693260000000000000
          Top = 244.874150000000000000
          Width = 52.913358980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Uf')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 531.693260000000000000
          Top = 263.771800000000000000
          Width = 52.913358980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLIUFR]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 342.937230000000000000
          Top = 194.740260000000000000
          Width = 238.110328980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 342.937230000000000000
          Top = 211.637910000000000000
          Width = 238.110328980000000000
          Height = 30.236240000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLIEDR]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 194.740260000000000000
          Width = 128.503958980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 213.637910000000000000
          Width = 128.503958980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLIBAR]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 245.874150000000000000
          Width = 109.606308980000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Insc/Estadual')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 264.771800000000000000
          Width = 109.606308980000000000
          Height = 11.338590000000000000
          Clipped = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CLIIES]')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 2.779530000000000000
          Top = 3.779530000000000000
          Width = 714.331170000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTROLE DE ETIQUETAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        Stretched = True
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Width = 49.889749130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."PRODUTO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 52.574830000000000000
          Width = 326.929082600000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBDataset."DESCRICAO"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 647.740570000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."PESO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 568.929500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."QUANTIDADE"]')
          ParentFont = False
        end
        object frxDBDatasetPedido_OrcamentoQUANTIDADESACO: TfrxMemoView
          AllowVectorExport = True
          Left = 490.779840000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset."QUANTIDADESACO"]')
          ParentFont = False
        end
        object frxDBDatasetPedido_OrcamentoLOTESEMENTE: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset."LOTE"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 377.953000000000000000
        Width = 718.110700000000000000
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 49.889749130000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'dig')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 51.574830000000000000
          Top = 11.338590000000000000
          Width = 326.929082600000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          Memo.UTF8W = (
            'Descri'#231#227'o ')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 568.929500000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Kg')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 647.740570000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Peso')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 490.779840000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Qte Sacos')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 11.338590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Lote(s)')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.677180000000000000
        Top = 706.772110000000000000
        Width = 718.110700000000000000
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Top = 7.779530000000020000
          Width = 714.331170000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            ' [Page#]')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 2.361780000000000000
          Top = 7.559059999999930000
          Width = 75.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 81.629560000000000000
          Top = 7.661409999999930000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 173.858380000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 396.094844570000000000
          Top = 3.779530000000020000
          Width = 91.464525430000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Totais :')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 490.779840000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset."QUANTIDADESACO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 568.929500000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset."QUANTIDADE">,MasterData1)]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 90.708720000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'TRANSPORTADORA :')
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 268.346630000000000000
          Top = 90.708720000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[NOME_TRANSPORTADORA]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 151.181200000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade de Saco(s):')
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 151.181200000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Visto Motorista:')
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 151.181200000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 151.181200000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[VOLUME] Volumes(s)')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 80
    Top = 8
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 14
    Top = 72
  end
  object frxDBDatasetLevantamento: TfrxDBDataset
    UserName = 'frxDBDatasetLevantamento'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 117
    Top = 8
  end
  object frxDBDatasetdetalhes: TfrxDBDataset
    UserName = 'frxDBDatasetdetalhes'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 149
    Top = 8
  end
end
