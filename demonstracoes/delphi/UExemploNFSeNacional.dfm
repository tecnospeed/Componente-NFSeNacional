object frmExemplo: TfrmExemplo
  Left = 481
  Top = 118
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  ClientHeight = 561
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcMensagens: TPageControl
    Left = 0
    Top = 258
    Width = 647
    Height = 303
    ActivePage = tsXML
    Align = alClient
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object tsXML: TTabSheet
      Caption = 'XML envio, somente para impress'#227'o'
      DesignSize = (
        639
        275)
      object mmXMLEnvio: TMemo
        Left = 3
        Top = 11
        Width = 643
        Height = 261
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmXMLEnvioKeyDown
      end
    end
    object tsXMLFormatado: TTabSheet
      Caption = 'XML'
      ImageIndex = 1
      DesignSize = (
        639
        275)
      object mmXML: TMemo
        Left = 2
        Top = 2
        Width = 643
        Height = 283
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmXMLKeyDown
      end
    end
    object tsJSON: TTabSheet
      Caption = 'JSON'
      ImageIndex = 2
      DesignSize = (
        639
        275)
      object mmJson: TMemo
        Left = 2
        Top = 2
        Width = 643
        Height = 283
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmJsonKeyDown
      end
    end
    object tsFormatado: TTabSheet
      Caption = 'Campos Formatados'
      DesignSize = (
        639
        275)
      object mmTipado: TMemo
        Left = 2
        Top = 2
        Width = 643
        Height = 283
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WordWrap = False
        OnKeyDown = mmTipadoKeyDown
      end
    end
  end
  object pcDados: TPageControl
    Left = 0
    Top = 0
    Width = 647
    Height = 258
    ActivePage = tsNFSe
    Align = alTop
    TabOrder = 1
    object tsNFSe: TTabSheet
      Caption = 'Testando autoriza'#231#227'o e consultas'
      object grpOperacoesNFSe: TGroupBox
        Left = 192
        Top = 34
        Width = 427
        Height = 194
        Caption = 'Opera'#231#245'es'
        TabOrder = 0
        object lbl1: TLabel
          Left = 7
          Top = 13
          Width = 53
          Height = 13
          Caption = 'Certificado:'
        end
        object lblAmbiente: TLabel
          Left = 294
          Top = 6
          Width = 120
          Height = 13
          Caption = 'Amb. de PRODU'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object btnConfigArquivoINI: TButton
          Left = 6
          Top = 50
          Width = 199
          Height = 30
          Caption = '&1. Configurar Arquivo INI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btnConfigArquivoINIClick
        end
        object btnLoadConfig: TButton
          Left = 6
          Top = 81
          Width = 199
          Height = 30
          Caption = '&2. LoadConfig'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnLoadConfigClick
        end
        object btnEnviar: TButton
          Left = 6
          Top = 112
          Width = 199
          Height = 30
          Caption = '&3. Enviar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnEnviarClick
        end
        object btnConsultarNFSe: TButton
          Left = 208
          Top = 50
          Width = 200
          Height = 30
          Caption = '&5. Consultar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnConsultarNotaClick
        end
        object btnEnviarManifestacao: TButton
          Left = 6
          Top = 143
          Width = 199
          Height = 30
          Caption = '&4. Enviar Manifesta'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnEnviarManifestacaoClick
        end
        object cbListaCertificados: TComboBox
          Left = 6
          Top = 26
          Width = 403
          Height = 21
          DropDownCount = 10
          TabOrder = 5
          OnDropDown = cbListaCertificadosDropDown
        end
        object btnConsultarEventos: TButton
          Left = 208
          Top = 81
          Width = 200
          Height = 30
          Caption = '&6. Consultar Eventos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = btnConsultarEventosClick
        end
        object btnCancelarNFSe: TButton
          Left = 208
          Top = 112
          Width = 200
          Height = 30
          Caption = '&7. Cancelar NFSe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnClick = btnCancelarClick
        end
        object btnDistribuicaoDFe: TButton
          Left = 208
          Top = 143
          Width = 200
          Height = 30
          Caption = '&8. Distribui'#231#227'o DFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = btnDistribuicaoDFeClick
        end
      end
      object grpConfigNFSe: TGroupBox
        Left = 0
        Top = 0
        Width = 191
        Height = 230
        Align = alLeft
        Caption = 'Configura'#231#245'es'
        TabOrder = 1
        object edtCNPJ: TLabeledEdit
          Left = 7
          Top = 69
          Width = 179
          Height = 21
          EditLabel.Width = 30
          EditLabel.Height = 13
          EditLabel.Caption = 'CNPJ:'
          TabOrder = 0
        end
        object edtInscMunicipal: TLabeledEdit
          Left = 6
          Top = 107
          Width = 179
          Height = 21
          EditLabel.Width = 94
          EditLabel.Height = 13
          EditLabel.Caption = 'Inscri'#231#227'o Municipal:'
          TabOrder = 1
        end
        object btnAtualizaArquivos: TButton
          Left = 6
          Top = 173
          Width = 102
          Height = 25
          Caption = 'Atualizar Arquivos'
          TabOrder = 2
          OnClick = btnAtualizaArquivosClick
        end
        object btnEmail: TButton
          Left = 109
          Top = 173
          Width = 76
          Height = 25
          Caption = 'Enviar Email'
          TabOrder = 3
          OnClick = btnEmailClick
        end
        object chkSubstituicao: TCheckBox
          Left = 88
          Top = -232
          Width = 97
          Height = 17
          Caption = 'chkSubstituicao'
          TabOrder = 4
        end
        object edtChaveAcesso: TLabeledEdit
          Left = 6
          Top = 146
          Width = 179
          Height = 21
          EditLabel.Width = 72
          EditLabel.Height = 13
          EditLabel.Caption = 'Chave Acesso:'
          TabOrder = 5
        end
        object chkOCX: TCheckBox
          Left = 144
          Top = 8
          Width = 41
          Height = 17
          Caption = 'OCX'
          TabOrder = 6
        end
        object btnConsultarMunicipios: TButton
          Left = 7
          Top = 201
          Width = 179
          Height = 24
          Caption = 'Consultar Munic'#237'pios'
          TabOrder = 7
          OnClick = btnConsultarMunicipiosClick
        end
        object edt1: TLabeledEdit
          Left = 6
          Top = 31
          Width = 179
          Height = 21
          EditLabel.Width = 36
          EditLabel.Height = 13
          EditLabel.Caption = 'Cidade:'
          TabOrder = 8
        end
      end
      object edtCNPJSoftwareHouse: TLabeledEdit
        Left = 199
        Top = 16
        Width = 186
        Height = 21
        EditLabel.Width = 109
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ SoftwareHouse: '
        TabOrder = 2
      end
      object edtTokenSoftwareHouse: TLabeledEdit
        Left = 391
        Top = 16
        Width = 227
        Height = 21
        EditLabel.Width = 113
        EditLabel.Height = 13
        EditLabel.Caption = 'Token SoftwareHouse: '
        TabOrder = 3
      end
    end
    object tsConfiguraImpressao: TTabSheet
      Caption = 'Testando impress'#227'o'
      ImageIndex = 2
      object grpConfiguracoes: TGroupBox
        Left = 0
        Top = 0
        Width = 639
        Height = 230
        Align = alClient
        Caption = 'Configura'#231#245'es '
        TabOrder = 0
        object lbl2: TLabel
          Left = 8
          Top = 19
          Width = 88
          Height = 13
          Caption = 'Logotipo Emitente:'
          FocusControl = edtLogoEmitente
        end
        object edtLogoEmitente: TEdit
          Left = 8
          Top = 35
          Width = 553
          Height = 21
          TabOrder = 0
        end
        object btnLogoTipoEmitente: TButton
          Left = 565
          Top = 35
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 1
          OnClick = btnLogoTipoEmitenteClick
        end
        object grpOperacaoImpressao: TGroupBox
          Left = 3
          Top = 60
          Width = 254
          Height = 101
          TabOrder = 2
          object btnEditarDocumento: TButton
            Left = 131
            Top = 12
            Width = 112
            Height = 25
            Caption = '&Editar Documento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = btnEditarDocumentoClick
          end
          object btnImprimir: TButton
            Left = 3
            Top = 12
            Width = 112
            Height = 25
            Caption = '&Imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = btnImprimirClick
          end
          object btnExportar: TButton
            Left = 3
            Top = 43
            Width = 111
            Height = 26
            Caption = 'E&xportar para PDF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btnExportarClick
          end
          object btnVisualizar: TButton
            Left = 131
            Top = 45
            Width = 112
            Height = 26
            Caption = '&Visualizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnVisualizarClick
          end
        end
      end
    end
  end
  object OpnDlgTx2: TOpenDialog
    Filter = 'Arquivos Tx2|*.tx2'
    Left = 555
    Top = 4
  end
  object svDlgExportar: TSaveDialog
    DefaultExt = 'pdf'
    Filter = 'Arquivos pdf|*.pdf'
    Left = 495
    Top = 4
  end
  object OpnDlgLogoTipo: TOpenDialog
    DefaultExt = 'jpg'
    Filter = 'Imagens JPEG (*.jpg)|*.jpg'
    Options = [ofHideReadOnly, ofNoChangeDir, ofFileMustExist, ofEnableSizing]
    Left = 584
    Top = 4
  end
end
