VERSION 5.00
Begin VB.Form Form3
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Enviar Manifestação"
   ClientHeight    =   4335
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5175
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4335
   ScaleWidth      =   5175
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame fraAutor
      Caption         =   "Quem manifesta"
      Height          =   1335
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2415
      Begin VB.OptionButton optPrestador
         Caption         =   "Prestador"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   300
         Value           =   -1  'True
         Width           =   2175
      End
      Begin VB.OptionButton optTomador
         Caption         =   "Tomador"
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   2175
      End
      Begin VB.OptionButton optIntermediario
         Caption         =   "Intermediário"
         Height          =   255
         Left            =   120
         TabIndex        =   3
         Top             =   900
         Width           =   2175
      End
   End
   Begin VB.Frame fraTipo
      Caption         =   "Manifestação"
      Height          =   1335
      Left            =   2640
      TabIndex        =   4
      Top             =   120
      Width           =   2415
      Begin VB.OptionButton optConfirmacao
         Caption         =   "Confirmação"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   300
         Value           =   -1  'True
         Width           =   2175
      End
      Begin VB.OptionButton optRejeicao
         Caption         =   "Rejeição"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   600
         Width           =   2175
      End
   End
   Begin VB.TextBox edtCodigoMotivo
      Height          =   315
      Left            =   120
      TabIndex        =   8
      Top             =   1800
      Width           =   975
   End
   Begin VB.TextBox edtDescricaoMotivo
      Height          =   735
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   10
      Top             =   2520
      Width           =   4935
   End
   Begin VB.CommandButton btnEnviar
      Caption         =   "&Enviar"
      Default         =   -1  'True
      Height          =   495
      Left            =   1560
      TabIndex        =   11
      Top             =   3600
      Width           =   1695
   End
   Begin VB.CommandButton btnCancelar
      Cancel          =   -1  'True
      Caption         =   "&Cancelar"
      Height          =   495
      Left            =   3360
      TabIndex        =   12
      Top             =   3600
      Width           =   1695
   End
   Begin VB.Label lblCodigoMotivo
      Caption         =   "Código do motivo"
      Height          =   225
      Left            =   120
      TabIndex        =   7
      Top             =   1560
      Width           =   4935
   End
   Begin VB.Label lblDescricaoMotivo
      Caption         =   "Descrição do motivo"
      Height          =   225
      Left            =   120
      TabIndex        =   9
      Top             =   2280
      Width           =   4935
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Confirmado As Boolean
Public TipoManifestacao As Long
Public CodigoMotivo As String
Public DescricaoMotivo As String

Private Sub Form_Load()
    Confirmado = False
    AtualizarCamposRejeicao
End Sub

Private Sub optConfirmacao_Click()
    AtualizarCamposRejeicao
End Sub

Private Sub optRejeicao_Click()
    AtualizarCamposRejeicao
End Sub

Private Sub AtualizarCamposRejeicao()
    lblCodigoMotivo.Enabled = optRejeicao.Value
    edtCodigoMotivo.Enabled = optRejeicao.Value
    lblDescricaoMotivo.Enabled = optRejeicao.Value
    edtDescricaoMotivo.Enabled = optRejeicao.Value
End Sub

Private Sub btnEnviar_Click()
    ' Confirmação 1/3/5 e rejeição 2/4/6
    If optTomador.Value Then
        TipoManifestacao = 3
    ElseIf optIntermediario.Value Then
        TipoManifestacao = 5
    Else
        TipoManifestacao = 1
    End If

    If optRejeicao.Value Then
        TipoManifestacao = TipoManifestacao + 1
        CodigoMotivo = Trim$(edtCodigoMotivo.Text)
        DescricaoMotivo = Trim$(edtDescricaoMotivo.Text)

        If CodigoMotivo = "" Then
            MsgBox "Informe o código do motivo.", vbExclamation
            Exit Sub
        End If
        If CodigoMotivo = "9" And DescricaoMotivo = "" Then
            MsgBox "Código 9 exige a descrição do motivo.", vbExclamation
            Exit Sub
        End If
    Else
        CodigoMotivo = ""
        DescricaoMotivo = ""
    End If

    Confirmado = True
    Me.Hide
End Sub

Private Sub btnCancelar_Click()
    Confirmado = False
    Me.Hide
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    If UnloadMode = vbFormControlMenu Then
        Cancel = True
        btnCancelar_Click
    End If
End Sub
