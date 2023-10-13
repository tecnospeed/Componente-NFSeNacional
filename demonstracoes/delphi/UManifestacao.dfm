object FrmManifestacao: TFrmManifestacao
  Left = 0
  Top = 0
  Caption = 'Manifesta'#231#227'o'
  ClientHeight = 217
  ClientWidth = 358
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 84
    Width = 90
    Height = 13
    Caption = 'C'#243'digo Rejei'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 128
    Width = 91
    Height = 13
    Caption = 'Motivo Rejei'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object chkPrestador: TCheckBox
    Left = 8
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Prestador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object chkTomador: TCheckBox
    Left = 8
    Top = 31
    Width = 97
    Height = 17
    Caption = 'Tomador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object chkIntermediario: TCheckBox
    Left = 8
    Top = 54
    Width = 97
    Height = 17
    Caption = 'Intermedi'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object chkAutorizacao: TCheckBox
    Left = 176
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Autoriza'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object chkRejeicao: TCheckBox
    Left = 176
    Top = 31
    Width = 97
    Height = 17
    Caption = 'Rejei'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object edtCodigo: TEdit
    Left = 8
    Top = 103
    Width = 170
    Height = 21
    TabOrder = 5
    Text = '9'
  end
  object edtMotivo: TEdit
    Left = 8
    Top = 144
    Width = 342
    Height = 21
    TabOrder = 6
    Text = 'Teste de rejeicao'
  end
  object btn1: TButton
    Left = 8
    Top = 171
    Width = 170
    Height = 33
    Caption = 'Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 171
    Width = 166
    Height = 33
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn2Click
  end
end
