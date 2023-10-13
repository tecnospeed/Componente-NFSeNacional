object FrmDistribuicaoDFe: TFrmDistribuicaoDFe
  Left = 0
  Top = 0
  Caption = 'Distribui'#231#227'o DFe'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 102
    Align = alTop
    TabOrder = 0
    object lblChaveOrNsu: TLabel
      Left = 288
      Top = 10
      Width = 69
      Height = 13
      Caption = 'Chave ou NSU'
    end
    object lblDiretorioDestino: TLabel
      Left = 13
      Top = 52
      Width = 80
      Height = 13
      Caption = 'Diretorio Destino'
    end
    object rgDFeTipoNSU: TRadioGroup
      Left = 10
      Top = 3
      Width = 260
      Height = 43
      Caption = 'Tipo Consulta DFe'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Por Chave'
        'Por NSU'
        'Por Lote NSU')
      TabOrder = 0
    end
    object edtChaveOrNsu: TEdit
      Left = 288
      Top = 25
      Width = 312
      Height = 21
      TabOrder = 1
    end
    object btnConsultarDFe: TButton
      Left = 623
      Top = 3
      Width = 144
      Height = 30
      Caption = 'Consultar DFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnConsultarDFeClick
    end
    object btnTratarRetornoDFe: TButton
      Left = 623
      Top = 67
      Width = 144
      Height = 30
      Caption = 'Tratar Retorno DFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnTratarRetornoDFeClick
    end
    object chkOCX: TCheckBox
      Left = 549
      Top = 68
      Width = 41
      Height = 17
      Caption = 'OCX'
      TabOrder = 3
    end
    object edtDiretorioDestino: TEdit
      Left = 10
      Top = 66
      Width = 511
      Height = 21
      TabOrder = 2
      Text = 'RetornoDFe'
    end
    object btnDescompactarXmlZip: TButton
      Left = 623
      Top = 35
      Width = 144
      Height = 30
      Caption = 'Descompactar Xml Zip'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnDescompactarXmlZipClick
    end
  end
  object pgcRetornos: TPageControl
    Left = 0
    Top = 102
    Width = 784
    Height = 459
    ActivePage = tabRetorno
    Align = alClient
    TabOrder = 1
    object tabRetorno: TTabSheet
      Caption = 'Retorno'
      object mmoRetorno: TMemo
        Left = 0
        Top = 0
        Width = 776
        Height = 431
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tabRetornoJSON: TTabSheet
      Caption = 'Retorno JSON'
      ImageIndex = 1
      object mmoRetJson: TMemo
        Left = 0
        Top = 0
        Width = 776
        Height = 431
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tabRetornoCSV: TTabSheet
      Caption = 'Retorno CSV'
      ImageIndex = 2
      object mmoRetCsv: TMemo
        Left = 0
        Top = 0
        Width = 776
        Height = 431
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object tabRetornoTipado: TTabSheet
      Caption = 'Retorno Tipado'
      ImageIndex = 3
      object mmoRetTipado: TMemo
        Left = 0
        Top = 0
        Width = 776
        Height = 431
        Align = alClient
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
  end
end
