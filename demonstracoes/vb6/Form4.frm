VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form4
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Distribuição DFe"
   ClientHeight    =   9015
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10965
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9015
   ScaleWidth      =   10965
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame fraTipoConsulta
      Caption         =   "Tipo de consulta"
      Height          =   1335
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3975
      Begin VB.OptionButton optPorChave
         Caption         =   "Por chave de acesso"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   300
         Value           =   -1  'True
         Width           =   3735
      End
      Begin VB.OptionButton optPorNSU
         Caption         =   "Por NSU"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   3735
      End
      Begin VB.OptionButton optPorLoteNSU
         Caption         =   "Por lote de NSU"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   900
         Width           =   3735
      End
   End
   Begin VB.TextBox edtChaveOrNsu
      Height          =   315
      Left            =   4320
      TabIndex        =   5
      Top             =   360
      Width           =   4335
   End
   Begin VB.TextBox edtDiretorioDestino
      Height          =   315
      Left            =   4320
      TabIndex        =   7
      Top             =   1080
      Width           =   4335
   End
   Begin VB.CommandButton btnConsultarDFe
      Caption         =   "&Consultar DFe"
      Height          =   375
      Left            =   8880
      TabIndex        =   8
      Top             =   120
      Width           =   1935
   End
   Begin VB.CommandButton btnTratarRetornoDFe
      Caption         =   "&Tratar Retorno"
      Height          =   375
      Left            =   8880
      TabIndex        =   9
      Top             =   600
      Width           =   1935
   End
   Begin VB.CommandButton btnDescompactarXmlZip
      Caption         =   "&Descompactar XML Zip"
      Height          =   375
      Left            =   8880
      TabIndex        =   10
      Top             =   1080
      Width           =   1935
   End
   Begin RichTextLib.RichTextBox txtRetorno
      Height          =   3375
      Left            =   120
      TabIndex        =   12
      Top             =   1800
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   5953
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
   End
   Begin RichTextLib.RichTextBox txtRetJson
      Height          =   3375
      Left            =   5520
      TabIndex        =   14
      Top             =   1800
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   5953
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
   End
   Begin RichTextLib.RichTextBox txtRetCsv
      Height          =   3375
      Left            =   120
      TabIndex        =   16
      Top             =   5520
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   5953
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
   End
   Begin RichTextLib.RichTextBox txtRetTipado
      Height          =   3375
      Left            =   5520
      TabIndex        =   18
      Top             =   5520
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   5953
      _Version        =   393217
      Enabled         =   -1  'True
      ScrollBars      =   2
   End
   Begin VB.Label lblChaveOrNsu
      Caption         =   "Chave de acesso ou NSU"
      Height          =   225
      Left            =   4320
      TabIndex        =   4
      Top             =   120
      Width           =   4335
   End
   Begin VB.Label lblDiretorioDestino
      Caption         =   "Diretório de destino"
      Height          =   225
      Left            =   4320
      TabIndex        =   6
      Top             =   840
      Width           =   4335
   End
   Begin VB.Label lblRetorno
      Caption         =   "Retorno"
      Height          =   225
      Left            =   120
      TabIndex        =   11
      Top             =   1560
      Width           =   5295
   End
   Begin VB.Label lblRetJson
      Caption         =   "Retorno JSON"
      Height          =   225
      Left            =   5520
      TabIndex        =   13
      Top             =   1560
      Width           =   5295
   End
   Begin VB.Label lblRetCsv
      Caption         =   "Retorno CSV"
      Height          =   225
      Left            =   120
      TabIndex        =   15
      Top             =   5280
      Width           =   5295
   End
   Begin VB.Label lblRetTipado
      Caption         =   "Retorno Tipado"
      Height          =   225
      Left            =   5520
      TabIndex        =   17
      Top             =   5280
      Width           =   5295
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
    edtDiretorioDestino.Text = App.Path & "\DFe"
End Sub

Private Function TipoConsulta() As NFSeNacionalX.TipoConsultaDFe
    If optPorChave.Value Then
        TipoConsulta = tDFePorChave
    ElseIf optPorNSU.Value Then
        TipoConsulta = tDFePorNSU
    Else
        TipoConsulta = tDFePorLoteNSU
    End If
End Function

Private Sub MostrarRetornos()
    txtRetJson.Text = spdNFSeNacional.RetornoJson
    txtRetCsv.Text = spdNFSeNacional.RetornoCSV
    txtRetTipado.Text = RetornoTipado()
End Sub

Private Sub btnConsultarDFe_Click()
    If Trim$(edtChaveOrNsu.Text) = "" Then
        MsgBox "Informe a chave ou o NSU.", vbExclamation
        Exit Sub
    End If

    txtRetorno.Text = ""
    txtRetJson.Text = ""
    txtRetCsv.Text = ""
    txtRetTipado.Text = ""

    On Error GoTo Erro
    Screen.MousePointer = vbHourglass
    txtRetorno.Text = spdNFSeNacional.ConsultarDistribuicaoDFe(TipoConsulta(), Trim$(edtChaveOrNsu.Text))
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "ConsultarDistribuicaoDFe"
End Sub

Private Sub btnTratarRetornoDFe_Click()
    Dim Diretorio As String

    If Trim$(txtRetorno.Text) = "" Then
        MsgBox "Retorno vazio.", vbExclamation
        Exit Sub
    End If

    Diretorio = Trim$(edtDiretorioDestino.Text)
    If Diretorio = "" Then
        MsgBox "Informe o diretório de destino.", vbExclamation
        Exit Sub
    End If

    On Error GoTo Erro
    Screen.MousePointer = vbHourglass
    spdNFSeNacional.TratarRetornoConsultaDFe txtRetorno.Text, Diretorio
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "TratarRetornoConsultaDFe"
End Sub

Private Sub btnDescompactarXmlZip_Click()
    If Trim$(txtRetorno.Text) = "" Then
        MsgBox "Retorno vazio.", vbExclamation
        Exit Sub
    End If

    On Error GoTo Erro
    Screen.MousePointer = vbHourglass
    txtRetorno.Text = spdNFSeNacional.DescompactarXmlZip(txtRetorno.Text)
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "DescompactarXmlZip"
End Sub
