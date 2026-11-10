VERSION 5.00
Begin VB.Form Form5
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Consultar Eventos da NFS-e"
   ClientHeight    =   2535
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   6015
   LinkTopic       =   "Form5"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2535
   ScaleWidth      =   6015
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox edtChave
      Height          =   315
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Width           =   5775
   End
   Begin VB.ComboBox cbTipoEvento
      Height          =   315
      Left            =   120
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   1080
      Width           =   4455
   End
   Begin VB.TextBox edtSequencia
      Height          =   315
      Left            =   4680
      TabIndex        =   5
      Text            =   "1"
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton btnConsultar
      Caption         =   "&Consultar"
      Default         =   -1  'True
      Height          =   495
      Left            =   2400
      TabIndex        =   6
      Top             =   1800
      Width           =   1695
   End
   Begin VB.CommandButton btnCancelar
      Cancel          =   -1  'True
      Caption         =   "C&ancelar"
      Height          =   495
      Left            =   4200
      TabIndex        =   7
      Top             =   1800
      Width           =   1695
   End
   Begin VB.Label lblChave
      Caption         =   "Chave de acesso da NFS-e"
      Height          =   225
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5775
   End
   Begin VB.Label lblTipoEvento
      Caption         =   "Evento"
      Height          =   225
      Left            =   120
      TabIndex        =   2
      Top             =   840
      Width           =   4455
   End
   Begin VB.Label lblSequencia
      Caption         =   "Sequência"
      Height          =   225
      Left            =   4680
      TabIndex        =   4
      Top             =   840
      Width           =   1215
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Public Confirmado As Boolean
Public Chave As String
Public CodigoEvento As Long
Public Sequencia As Long

Private Sub Form_Load()
    Confirmado = False

    cbTipoEvento.Clear
    AdicionarEvento "Todos os eventos da NFS-e", 0
    AdicionarEvento "101101 - Cancelamento", eCancelamento
    AdicionarEvento "105102 - Cancelamento por substituição", eCancelamentoSubstituicao
    AdicionarEvento "101103 - Solicitação de análise fiscal para cancelamento", eSolicAnaliseFiscalCancelamento
    AdicionarEvento "105104 - Cancelamento deferido por análise fiscal", eCancelamentoDeferidoPorAnalise
    AdicionarEvento "105105 - Cancelamento indeferido por análise fiscal", eCancelamentoIndeferidoPorAnalise
    AdicionarEvento "202201 - Confirmação do prestador", eConfirmacaoPrestador
    AdicionarEvento "203202 - Confirmação do tomador", eConfirmacaoTomador
    AdicionarEvento "204203 - Confirmação do intermediário", eConfirmacaoIntermediario
    AdicionarEvento "205204 - Confirmação tácita", eConfirmacaoTacita
    AdicionarEvento "202205 - Rejeição do prestador", eRejeicaoPrestador
    AdicionarEvento "203206 - Rejeição do tomador", eRejeicaoTomador
    AdicionarEvento "204207 - Rejeição do intermediário", eRejeicaoIntermediario
    AdicionarEvento "205208 - Anulação da rejeição", eAnulacaoRejeicao
    AdicionarEvento "305101 - Cancelamento por ofício", eCancelamentoPorOficio
    AdicionarEvento "305102 - Bloqueio por ofício", eBloqueioPorOficio
    AdicionarEvento "305103 - Desbloqueio por ofício", eDesbloqueioPorOficio
    cbTipoEvento.ListIndex = 0
End Sub

Private Sub AdicionarEvento(ByVal aDescricao As String, ByVal aCodigo As Long)
    cbTipoEvento.AddItem aDescricao
    cbTipoEvento.ItemData(cbTipoEvento.NewIndex) = aCodigo
End Sub

Private Sub cbTipoEvento_Click()
    lblSequencia.Enabled = (cbTipoEvento.ListIndex > 0)
    edtSequencia.Enabled = (cbTipoEvento.ListIndex > 0)
End Sub

Private Sub btnConsultar_Click()
    Chave = Trim$(edtChave.Text)
    If Chave = "" Then
        MsgBox "Informe a chave de acesso.", vbExclamation
        Exit Sub
    End If

    CodigoEvento = cbTipoEvento.ItemData(cbTipoEvento.ListIndex)
    Sequencia = 0

    If CodigoEvento <> 0 Then
        If Trim$(edtSequencia.Text) = "" Or Len(Trim$(edtSequencia.Text)) > 9 Or _
            SomenteNumeros(edtSequencia.Text) <> Trim$(edtSequencia.Text) Then
            MsgBox "Sequência inválida.", vbExclamation
            Exit Sub
        End If
        Sequencia = CLng(edtSequencia.Text)
        If Sequencia < 1 Then
            MsgBox "Sequência inválida.", vbExclamation
            Exit Sub
        End If
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
