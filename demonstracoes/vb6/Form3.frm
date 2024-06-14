VERSION 5.00
Begin VB.Form Form3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Enviar Manifestação"
   ClientHeight    =   4455
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   4725
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton SairManifestacao 
      Caption         =   "Cancelar"
      Height          =   495
      Left            =   2640
      TabIndex        =   10
      Top             =   3720
      Width           =   1455
   End
   Begin VB.CommandButton EnviarManifestacao 
      Caption         =   "Enviar"
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   3720
      Width           =   1575
   End
   Begin VB.TextBox MotivoRejeicao 
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Top             =   3000
      Width           =   3975
   End
   Begin VB.TextBox CodRejeicao 
      Height          =   285
      Left            =   120
      TabIndex        =   6
      Top             =   2160
      Width           =   615
   End
   Begin VB.CheckBox CheckRejeicao 
      Caption         =   "Rejeição"
      Height          =   375
      Left            =   2880
      TabIndex        =   4
      Top             =   600
      Width           =   1335
   End
   Begin VB.CheckBox CheckAutorizacao 
      Caption         =   "Autorização"
      Height          =   255
      Left            =   2880
      TabIndex        =   3
      Top             =   120
      Width           =   1455
   End
   Begin VB.CheckBox CheckIntermediario 
      Caption         =   "Intermediário"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   1200
      Width           =   1335
   End
   Begin VB.CheckBox CheckTomador 
      Caption         =   "Tomador"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   975
   End
   Begin VB.CheckBox CheckPrestador 
      Caption         =   "Prestador"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "Caso o código seja =9, informe o motivo:"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2640
      Width           =   3135
   End
   Begin VB.Label Label1 
      Caption         =   "Em caso de rejeição, informe o código:"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   3135
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
' Define variáveis globais para armazenar os valores necessários
Dim aTipoManifestacao As Integer
Dim aChaveAcesso, aCodigoMotivo, aDescricaoMotivo, aManifestacao As String




Private Sub CheckAutorizacao_Click()
    If CheckAutorizacao.Value = 1 Then
        CheckRejeicao.Value = 0
        CheckRejeicao.Enabled = False
        CodRejeicao.Enabled = False
        MotivoRejeicao.Enabled = False
    Else
        CheckRejeicao.Enabled = True
    End If
End Sub

Private Sub CheckRejeicao_Click()
    If CheckRejeicao.Value = 1 Then
        CheckAutorizacao.Value = 0
        CheckAutorizacao.Enabled = False
        CodRejeicao.Enabled = True
        If CodRejeicao.Text = "9" Then
            MotivoRejeicao.Enabled = True
        Else
            MotivoRejeicao.Enabled = False
        End If
    Else
        CheckAutorizacao.Enabled = True
        CodRejeicao.Enabled = False
        MotivoRejeicao.Enabled = False
    End If
End Sub

Private Sub CheckPrestador_Click()
    If CheckPrestador.Value = 1 Then
        CheckTomador.Value = 0
        CheckIntermediario.Value = 0
    End If
End Sub

Private Sub CheckTomador_Click()
    If CheckTomador.Value = 1 Then
        CheckPrestador.Value = 0
        CheckIntermediario.Value = 0
    End If
End Sub

Private Sub CheckIntermediario_Click()
    If CheckIntermediario.Value = 1 Then
        CheckPrestador.Value = 0
        CheckTomador.Value = 0
    End If
End Sub

Private Sub CodRejeicao_Change()
    aCodigoMotivo = CodRejeicao.Text
    If aCodigoMotivo = "9" Then
        MotivoRejeicao.Enabled = True
    Else
        MotivoRejeicao.Enabled = False
        MotivoRejeicao.Text = ""
    End If
End Sub

Private Sub MotivoRejeicao_Change()
    If aCodigoMotivo = "9" Then
        aDescricaoMotivo = MotivoRejeicao.Text
    Else
        aDescricaoMotivo = ""
    End If
End Sub

Private Sub CarregaChaveAcesso()

    aChaveAcesso = Form2.edtChaveDPS.Text
    
    If Trim(aChaveAcesso) = "" Then
        MsgBox "Por favor, preencha o campo Chave de Acesso da NFSe na tela anterior", vbExclamation
        Exit Sub
    End If

End Sub

Private Sub EnviarManifestacao_Click()
    
    CarregaChaveAcesso
    
    ' Determina o tipo de manifestação
    If CheckPrestador.Value = 1 Then
        If CheckAutorizacao.Value = 1 Then
            aTipoManifestacao = 1 ' Prestador - Confirmação
        ElseIf CheckRejeicao.Value = 1 Then
            aTipoManifestacao = 2 ' Prestador - Rejeição
        End If
    ElseIf CheckTomador.Value = 1 Then
        If CheckAutorizacao.Value = 1 Then
            aTipoManifestacao = 3 ' Tomador - Confirmação
        ElseIf CheckRejeicao.Value = 1 Then
            aTipoManifestacao = 4 ' Tomador - Rejeição
        End If
    ElseIf CheckIntermediario.Value = 1 Then
        If CheckAutorizacao.Value = 1 Then
            aTipoManifestacao = 5 ' Intermediário - Confirmação
        ElseIf CheckRejeicao.Value = 1 Then
            aTipoManifestacao = 6 ' Intermediário - Rejeição
        End If
    End If
    

    ' Obtém o código do motivo
    aCodigoMotivo = CodRejeicao.Text

    ' Obtém a descrição do motivo (se aplicável)
    If aCodigoMotivo = "9" Then
        aDescricaoMotivo = MotivoRejeicao.Text
    Else
        aDescricaoMotivo = ""
    End If

    ' Chama o método para enviar a manifestação
    
    Form2.mmXMLEnvio.Text = spdNFSeNacional.EnviarManifestacao(aTipoManifestacao, aChaveAcesso, aCodigoMotivo, aDescricaoMotivo)
    

    MsgBox "Manifestação enviada com sucesso!"
End Sub

Private Sub SairManifestacao_Click()
    Unload Me
End Sub

