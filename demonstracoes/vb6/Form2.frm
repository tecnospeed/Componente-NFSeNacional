VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form2
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Demonstração NFSe Nacional"
   ClientHeight    =   10560
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   10965
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   10560
   ScaleWidth      =   10965
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog cdlArquivo
      Left            =   10320
      Top             =   0
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin TabDlg.SSTab SSTab1
      Height          =   5895
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10965
      _ExtentX        =   19341
      _ExtentY        =   10398
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Autorizações e consultas"
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "fraSoftwareHouse"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "fraPrestador"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "fraOperacoes"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      TabCaption(1)   =   "Impressão"
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "fraConfigImpressao"
      Tab(1).Control(1)=   "fraOperacoesImpressao"
      Tab(1).ControlCount=   2
      Begin VB.Frame fraSoftwareHouse
         Caption         =   "Software House"
         Height          =   975
         Left            =   120
         TabIndex        =   1
         Top             =   600
         Width           =   5295
         Begin VB.TextBox edtCNPJSoftwareHouse
            Height          =   315
            Left            =   120
            TabIndex        =   3
            Top             =   480
            Width           =   2415
         End
         Begin VB.TextBox edtTokenSoftwareHouse
            Height          =   315
            Left            =   2640
            TabIndex        =   5
            Top             =   480
            Width           =   2535
         End
         Begin VB.Label lblCNPJSH
            Caption         =   "CNPJ Software House"
            Height          =   225
            Left            =   120
            TabIndex        =   2
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label lblTokenSH
            Caption         =   "Token Software House"
            Height          =   225
            Left            =   2640
            TabIndex        =   4
            Top             =   240
            Width           =   2535
         End
      End
      Begin VB.Frame fraPrestador
         Caption         =   "Dados do Prestador"
         Height          =   4095
         Left            =   120
         TabIndex        =   7
         Top             =   1680
         Width           =   5295
         Begin VB.TextBox edtCNPJ
            BackColor       =   &H8000000F&
            Height          =   315
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   9
            Top             =   540
            Width           =   2775
         End
         Begin VB.TextBox edtInscMunicipal
            BackColor       =   &H8000000F&
            Height          =   315
            Left            =   120
            Locked          =   -1  'True
            TabIndex        =   11
            Top             =   1200
            Width           =   2775
         End
         Begin VB.OptionButton optProducao
            Caption         =   "Produção"
            Enabled         =   0   'False
            Height          =   255
            Left            =   3240
            TabIndex        =   13
            Top             =   540
            Width           =   1815
         End
         Begin VB.OptionButton optHomologacao
            Caption         =   "Homologação"
            Enabled         =   0   'False
            Height          =   255
            Left            =   3240
            TabIndex        =   14
            Top             =   840
            Width           =   1815
         End
         Begin VB.TextBox edtChaveAcesso
            Height          =   315
            Left            =   120
            TabIndex        =   16
            Top             =   1860
            Width           =   5055
         End
         Begin VB.CommandButton btnAtualizarArquivos
            Caption         =   "&Atualizar Arquivos"
            Height          =   495
            Left            =   120
            TabIndex        =   17
            Top             =   2400
            Width           =   2415
         End
         Begin VB.Label lblCNPJ
            Caption         =   "CNPJ do prestador"
            Height          =   225
            Left            =   120
            TabIndex        =   8
            Top             =   300
            Width           =   2775
         End
         Begin VB.Label lblIM
            Caption         =   "Inscrição Municipal"
            Height          =   225
            Left            =   120
            TabIndex        =   10
            Top             =   960
            Width           =   2775
         End
         Begin VB.Label lblAmbienteIni
            Caption         =   "Ambiente"
            Height          =   225
            Left            =   3240
            TabIndex        =   12
            Top             =   300
            Width           =   1935
         End
         Begin VB.Label lblChave
            Caption         =   "Chave de acesso da NFS-e"
            Height          =   225
            Left            =   120
            TabIndex        =   15
            Top             =   1620
            Width           =   5055
         End
         Begin VB.Label lblAmbiente
            Caption         =   ""
            BeginProperty Font
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00808080&
            Height          =   375
            Left            =   120
            TabIndex        =   18
            Top             =   3120
            Width           =   5055
         End
      End
      Begin VB.Frame fraOperacoes
         Caption         =   "Operações"
         Height          =   5175
         Left            =   5520
         TabIndex        =   19
         Top             =   600
         Width           =   5295
         Begin VB.ComboBox cbNomeCertificado
            Height          =   315
            Left            =   120
            TabIndex        =   21
            Top             =   480
            Width           =   5055
         End
         Begin VB.CommandButton btnConfigurarIni
            Caption         =   "&1. Configurar Arquivo INI"
            Height          =   495
            Left            =   120
            TabIndex        =   22
            Top             =   960
            Width           =   2415
         End
         Begin VB.CommandButton btnLoadConfig
            Caption         =   "&2. Load Config"
            Height          =   495
            Left            =   2760
            TabIndex        =   23
            Top             =   960
            Width           =   2415
         End
         Begin VB.CommandButton btnEnviar
            Caption         =   "&3. Enviar DPS"
            Height          =   495
            Left            =   120
            TabIndex        =   24
            Top             =   1560
            Width           =   2415
         End
         Begin VB.CommandButton btnConsultarNFSe
            Caption         =   "&4. Consultar NFS-e"
            Height          =   495
            Left            =   2760
            TabIndex        =   25
            Top             =   1560
            Width           =   2415
         End
         Begin VB.CommandButton btnCancelarNFSe
            Caption         =   "&5. Cancelar NFS-e"
            Height          =   495
            Left            =   120
            TabIndex        =   26
            Top             =   2160
            Width           =   2415
         End
         Begin VB.CommandButton btnConsultarEventos
            Caption         =   "&6. Consultar Eventos"
            Height          =   495
            Left            =   2760
            TabIndex        =   27
            Top             =   2160
            Width           =   2415
         End
         Begin VB.CommandButton btnEnviarManifestacao
            Caption         =   "&7. Enviar Manifestação"
            Height          =   495
            Left            =   120
            TabIndex        =   28
            Top             =   2760
            Width           =   2415
         End
         Begin VB.CommandButton btnMunicipiosConveniados
            Caption         =   "&8. Municípios Conveniados"
            Height          =   495
            Left            =   2760
            TabIndex        =   29
            Top             =   2760
            Width           =   2415
         End
         Begin VB.CommandButton btnConsultarDPS
            Caption         =   "&9. Consultar por DPS"
            Height          =   495
            Left            =   120
            TabIndex        =   30
            Top             =   3360
            Width           =   2415
         End
         Begin VB.CommandButton btnDistribuicaoDFe
            Caption         =   "1&0. Distribuição DFe"
            Height          =   495
            Left            =   2760
            TabIndex        =   31
            Top             =   3360
            Width           =   2415
         End
         Begin VB.CommandButton btnAbrirTx2Exemplo
            Caption         =   "Abrir &TX2 de exemplo"
            Height          =   495
            Left            =   120
            TabIndex        =   32
            Top             =   3960
            Width           =   2415
         End
         Begin VB.CommandButton btnAjuda
            Caption         =   "A&juda"
            Height          =   495
            Left            =   2760
            TabIndex        =   33
            Top             =   3960
            Width           =   2415
         End
         Begin VB.Label lblCertificado
            Caption         =   "Certificado"
            Height          =   225
            Left            =   120
            TabIndex        =   20
            Top             =   240
            Width           =   2415
         End
         Begin VB.Label lblVersao
            Caption         =   "Versão:"
            BeginProperty Font
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   225
            Left            =   120
            TabIndex        =   34
            Top             =   4680
            Width           =   5055
         End
      End
      Begin VB.Frame fraConfigImpressao
         Caption         =   "Configurações de impressão"
         Height          =   1575
         Left            =   -74880
         TabIndex        =   35
         Top             =   600
         Width           =   10695
         Begin VB.TextBox edtLogoEmitente
            Height          =   315
            Left            =   120
            TabIndex        =   37
            Top             =   480
            Width           =   9375
         End
         Begin VB.CommandButton btnLogoEmitente
            Caption         =   "..."
            Height          =   315
            Left            =   9600
            TabIndex        =   38
            Top             =   480
            Width           =   975
         End
         Begin VB.TextBox edtCamposCustomizados
            Height          =   315
            Left            =   120
            TabIndex        =   40
            Top             =   1080
            Width           =   9375
         End
         Begin VB.CommandButton btnCamposCustomizados
            Caption         =   "..."
            Height          =   315
            Left            =   9600
            TabIndex        =   41
            Top             =   1080
            Width           =   975
         End
         Begin VB.Label lblLogo
            Caption         =   "Logotipo do emitente"
            Height          =   225
            Left            =   120
            TabIndex        =   36
            Top             =   240
            Width           =   9375
         End
         Begin VB.Label lblCamposCustomizados
            Caption         =   "Arquivo de campos customizados"
            Height          =   225
            Left            =   120
            TabIndex        =   39
            Top             =   840
            Width           =   9375
         End
      End
      Begin VB.Frame fraOperacoesImpressao
         Caption         =   "Operações"
         Height          =   1335
         Left            =   -74880
         TabIndex        =   42
         Top             =   2280
         Width           =   10695
         Begin VB.CommandButton btnVisualizar
            Caption         =   "&Visualizar"
            Height          =   495
            Left            =   120
            TabIndex        =   43
            Top             =   360
            Width           =   2415
         End
         Begin VB.CommandButton btnImprimir
            Caption         =   "&Imprimir"
            Height          =   495
            Left            =   2760
            TabIndex        =   44
            Top             =   360
            Width           =   2415
         End
         Begin VB.CommandButton btnExportarPDF
            Caption         =   "E&xportar PDF"
            Height          =   495
            Left            =   5400
            TabIndex        =   45
            Top             =   360
            Width           =   2415
         End
         Begin VB.CommandButton btnEditarImpressao
            Caption         =   "&Editar Documento"
            Height          =   495
            Left            =   8040
            TabIndex        =   46
            Top             =   360
            Width           =   2415
         End
         Begin VB.CheckBox chkEnviarEmail
            Caption         =   "Enviar PDF por e-mail ao exportar"
            Height          =   255
            Left            =   120
            TabIndex        =   47
            Top             =   960
            Width           =   10335
         End
      End
   End
   Begin TabDlg.SSTab SSTab2
      Height          =   4575
      Left            =   0
      TabIndex        =   49
      Top             =   5940
      Width           =   10965
      _ExtentX        =   19341
      _ExtentY        =   8070
      _Version        =   393216
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      TabCaption(0)   =   "XML Retorno"
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "mmRetorno"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "XML NFS-e (Impressão)"
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "mmXMLImpressao"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "JSON"
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "mmJSON"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "CSV"
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "mmCSV"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "Retorno Tipado"
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "mmTipado"
      Tab(4).ControlCount=   1
      Begin RichTextLib.RichTextBox mmRetorno
         Height          =   3855
         Left            =   120
         TabIndex        =   50
         Top             =   600
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   6800
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
      End
      Begin RichTextLib.RichTextBox mmXMLImpressao
         Height          =   3855
         Left            =   -74880
         TabIndex        =   51
         Top             =   600
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   6800
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
      End
      Begin RichTextLib.RichTextBox mmJSON
         Height          =   3855
         Left            =   -74880
         TabIndex        =   52
         Top             =   600
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   6800
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
      End
      Begin RichTextLib.RichTextBox mmCSV
         Height          =   3855
         Left            =   -74880
         TabIndex        =   53
         Top             =   600
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   6800
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
      End
      Begin RichTextLib.RichTextBox mmTipado
         Height          =   3855
         Left            =   -74880
         TabIndex        =   54
         Top             =   600
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   6800
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Const ABA_RETORNO_XML As Integer = 0
Private Const ABA_TIPADO As Integer = 4

'------------------------------------------------------------------------------
' Formulário
'------------------------------------------------------------------------------

Private Sub Form_Load()
    ArqINI = App.Path & "\nfseNacionalConfig.ini"

    On Error GoTo Erro
    Set spdNFSeNacional = New NFSeNacionalX.spdNFSeNacionalX
    lblVersao.Caption = "Versão: " & spdNFSeNacional.Versao

    ' ListarCertificados exige a Software House configurada.
    If ConfigurarSoftwareHouse() Then PreencherCertificados
    Exit Sub

Erro:
    MostrarErro "Iniciar componente"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set spdNFSeNacional = Nothing
End Sub

'------------------------------------------------------------------------------
' Configuração
'------------------------------------------------------------------------------

Private Function ConfigurarSoftwareHouse() As Boolean
    Dim CNPJSoftwareHouse As String

    CNPJSoftwareHouse = SomenteNumeros(edtCNPJSoftwareHouse.Text)
    ConfigurarSoftwareHouse = (CNPJSoftwareHouse <> "")
    If ConfigurarSoftwareHouse Then
        spdNFSeNacional.ConfigurarSoftwareHouse CNPJSoftwareHouse, Trim$(edtTokenSoftwareHouse.Text)
    End If
End Function

Private Sub PreencherCertificados()
    Dim Certificados() As String
    Dim Atual As String
    Dim i As Long

    Atual = cbNomeCertificado.Text
    cbNomeCertificado.Clear

    Certificados = Split(spdNFSeNacional.ListarCertificados, "|")
    For i = LBound(Certificados) To UBound(Certificados)
        If Trim$(Certificados(i)) <> "" Then cbNomeCertificado.AddItem Certificados(i)
    Next

    cbNomeCertificado.Text = Atual
End Sub

Private Sub MostrarAmbiente()
    If spdNFSeNacional.Ambiente = akProducao Then
        optProducao.Value = True
        lblAmbiente.Caption = "PRODUÇÃO"
        lblAmbiente.ForeColor = vbRed
    Else
        optHomologacao.Value = True
        lblAmbiente.Caption = "Homologação"
        lblAmbiente.ForeColor = &HC00000
    End If
End Sub

' Logs em <DiretorioLog>\<CIDADE>_<CNPJ>\.
Private Sub ConfigurarDiretorios()
    Dim Cidade As String

    Cidade = LerIni("NFSENACIONAL", "CIDADE")
    If Cidade = "" Then Cidade = "NACIONAL"

    spdNFSeNacional.DiretorioLog = CaminhoCompleto(LerIni("NFSENACIONAL", "DiretorioLog"), "Log") & _
        Cidade & "_" & spdNFSeNacional.CNPJ & "\"
    spdNFSeNacional.DiretorioLogErro = CaminhoCompleto(LerIni("NFSENACIONAL", "DiretorioLogErro"), "LogErro")
    spdNFSeNacional.DiretorioXmlImpressao = CaminhoCompleto(LerIni("NFSENACIONAL", "DiretorioXmlImpressao"), "XmlImpressao")
End Sub

Private Function PrepararOperacao() As Boolean
    PrepararOperacao = False
    If Not ComponenteCarregado() Then Exit Function

    If Trim$(cbNomeCertificado.Text) <> "" Then
        spdNFSeNacional.NomeCertificado = Trim$(cbNomeCertificado.Text)
    End If

    PrepararOperacao = True
End Function

Private Function ChaveInformada() As Boolean
    ChaveInformada = (Trim$(edtChaveAcesso.Text) <> "")
    If Not ChaveInformada Then MsgBox "Informe a chave de acesso.", vbExclamation
End Function

Private Sub btnConfigurarIni_Click()
    On Error GoTo Erro

    If Trim$(cbNomeCertificado.Text) <> "" Then
        GravarIni "NFSENACIONAL", "NomeCertificado", Trim$(cbNomeCertificado.Text)
    End If

    AbrirNoWindows ArqINI
    Exit Sub

Erro:
    MostrarErro "Configurar INI"
End Sub

Private Sub btnLoadConfig_Click()
    On Error GoTo Erro
    If spdNFSeNacional Is Nothing Then Exit Sub

    If Not ConfigurarSoftwareHouse() Then
        MsgBox "Informe o CNPJ da Software House.", vbExclamation
        Exit Sub
    End If

    Screen.MousePointer = vbHourglass
    spdNFSeNacional.DiagnosticMode = False
    spdNFSeNacional.LoadConfig ArqINI
    ConfigurarDiretorios

    edtCNPJ.Text = spdNFSeNacional.CNPJ
    edtInscMunicipal.Text = spdNFSeNacional.InscricaoMunicipal
    If spdNFSeNacional.NomeCertificado <> "" Then cbNomeCertificado.Text = spdNFSeNacional.NomeCertificado
    MostrarAmbiente
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "LoadConfig"
End Sub

Private Sub cbNomeCertificado_DropDown()
    On Error GoTo Erro
    If spdNFSeNacional Is Nothing Then Exit Sub
    If ConfigurarSoftwareHouse() Then PreencherCertificados
    Exit Sub

Erro:
    MostrarErro "ListarCertificados"
End Sub

Private Sub btnAtualizarArquivos_Click()
    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub

    Screen.MousePointer = vbHourglass
    spdNFSeNacional.AtualizarArquivos
    Screen.MousePointer = vbDefault
    MsgBox "Arquivos atualizados.", vbInformation
    Exit Sub

Erro:
    MostrarErro "AtualizarArquivos"
End Sub

'------------------------------------------------------------------------------
' Operações
'------------------------------------------------------------------------------

Private Sub btnEnviar_Click()
    Dim ArquivoTx2 As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    If Not ConfirmarProducao() Then Exit Sub

    ArquivoTx2 = EscolherArquivo("Selecione o TX2 da DPS", "Arquivo TX2 (*.tx2)|*.tx2|Todos os arquivos (*.*)|*.*", App.Path)
    If ArquivoTx2 = "" Then Exit Sub

    Screen.MousePointer = vbHourglass
    mmRetorno.Text = spdNFSeNacional.Enviar(ArquivoTx2)
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "Enviar"
End Sub

Private Sub btnConsultarNFSe_Click()
    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    If Not ChaveInformada() Then Exit Sub

    Screen.MousePointer = vbHourglass
    mmRetorno.Text = spdNFSeNacional.ConsultarNFSe(Trim$(edtChaveAcesso.Text))
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "ConsultarNFSe"
End Sub

Private Sub btnCancelarNFSe_Click()
    Dim Chave As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    If Not ChaveInformada() Then Exit Sub

    Chave = Trim$(edtChaveAcesso.Text)
    If Not ConfirmarProducao() Then Exit Sub

    Screen.MousePointer = vbHourglass
    mmRetorno.Text = ""
    spdNFSeNacional.CancelarNFSe Chave
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "CancelarNFSe"
End Sub

Private Sub btnConsultarEventos_Click()
    Dim Chave As String
    Dim CodigoEvento As Long
    Dim Sequencia As Long

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub

    Form5.edtChave.Text = Trim$(edtChaveAcesso.Text)
    Form5.Show vbModal, Me
    If Not Form5.Confirmado Then
        Unload Form5
        Exit Sub
    End If

    Chave = Form5.Chave
    CodigoEvento = Form5.CodigoEvento
    Sequencia = Form5.Sequencia
    Unload Form5
    edtChaveAcesso.Text = Chave

    Screen.MousePointer = vbHourglass
    If CodigoEvento = 0 Then
        mmRetorno.Text = spdNFSeNacional.ConsultarEventosNFSe(Chave)
    Else
        mmRetorno.Text = spdNFSeNacional.ConsultarEventoNFSe(Chave, CodigoEvento, Sequencia)
    End If
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "ConsultarEventos"
End Sub

Private Sub btnEnviarManifestacao_Click()
    Dim TipoManifestacao As Long
    Dim CodigoMotivo As String
    Dim DescricaoMotivo As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    If Not ChaveInformada() Then Exit Sub
    If Not ConfirmarProducao() Then Exit Sub

    Form3.Show vbModal, Me
    If Not Form3.Confirmado Then
        Unload Form3
        Exit Sub
    End If

    TipoManifestacao = Form3.TipoManifestacao
    CodigoMotivo = Form3.CodigoMotivo
    DescricaoMotivo = Form3.DescricaoMotivo
    Unload Form3

    Screen.MousePointer = vbHourglass
    mmRetorno.Text = spdNFSeNacional.EnviarManifestacao(TipoManifestacao, Trim$(edtChaveAcesso.Text), _
        CodigoMotivo, DescricaoMotivo)
    SSTab2.Tab = ABA_RETORNO_XML
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "EnviarManifestacao"
End Sub

Private Sub btnMunicipiosConveniados_Click()
    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub

    Screen.MousePointer = vbHourglass
    mmRetorno.Text = spdNFSeNacional.ConsultarMunicipiosConveniados
    SSTab2.Tab = ABA_RETORNO_XML
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "ConsultarMunicipiosConveniados"
End Sub

' O componente usa a CIDADE do nfseNacionalConfig.ini para achar o município.
Private Sub btnConsultarDPS_Click()
    Dim NumeroDps As String
    Dim SerieDps As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub

    NumeroDps = Trim$(InputBox("Número da DPS:", "Consultar NFS-e por DPS"))
    If NumeroDps = "" Then Exit Sub

    SerieDps = Trim$(InputBox("Série da DPS:", "Consultar NFS-e por DPS"))
    If SerieDps = "" Then Exit Sub

    Screen.MousePointer = vbHourglass
    mmRetorno.Text = spdNFSeNacional.ConsultarNFSePorDps(NumeroDps, SerieDps)
    MostrarRetornos
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "ConsultarNFSePorDps"
End Sub

Private Sub btnDistribuicaoDFe_Click()
    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    If Not ConfirmarProducao() Then Exit Sub

    Form4.Show vbModal, Me
    Exit Sub

Erro:
    MostrarErro "Distribuição DFe"
End Sub

Private Sub btnAbrirTx2Exemplo_Click()
    Dim Arquivo As String

    On Error GoTo Erro
    Arquivo = App.Path & "\Tx2PadraoNacional.tx2"
    If Dir$(Arquivo) = "" Then
        MsgBox "Arquivo não encontrado: " & Arquivo, vbExclamation
        Exit Sub
    End If

    Shell "notepad.exe """ & Arquivo & """", vbNormalFocus
    Exit Sub

Erro:
    MostrarErro "TX2 de exemplo"
End Sub

Private Sub btnAjuda_Click()
    AbrirNoWindows LINK_AJUDA
End Sub

'------------------------------------------------------------------------------
' Retornos
'------------------------------------------------------------------------------

Private Sub MostrarRetornos()
    Dim i As Long

    mmJSON.Text = spdNFSeNacional.RetornoJson
    mmCSV.Text = spdNFSeNacional.RetornoCSV
    mmTipado.Text = RetornoTipado()

    For i = 0 To spdNFSeNacional.RetornoWS.Count - 1
        With spdNFSeNacional.RetornoWS.Items(i)
            If .XmlImpressao <> "" Then mmXMLImpressao.Text = .XmlImpressao
            If .ChaveAcessoNFSe <> "" Then edtChaveAcesso.Text = .ChaveAcessoNFSe
        End With
    Next

    SSTab2.Tab = ABA_TIPADO
End Sub

'------------------------------------------------------------------------------
' Impressão
'------------------------------------------------------------------------------

Private Function XmlParaImpressao() As String
    XmlParaImpressao = Trim$(mmXMLImpressao.Text)
    If XmlParaImpressao = "" Then MsgBox "XML da NFS-e vazio.", vbExclamation
End Function

Private Sub AplicarLogotipo()
    ' Vazio mantém o logotipo configurado no INI.
    If Trim$(edtLogoEmitente.Text) <> "" Then spdNFSeNacional.LogoTipoEmitente = Trim$(edtLogoEmitente.Text)
End Sub

Private Sub btnLogoEmitente_Click()
    Dim Arquivo As String

    On Error GoTo Erro
    Arquivo = EscolherArquivo("Logotipo do emitente", _
        "Imagens (*.jpg;*.jpeg;*.bmp;*.png)|*.jpg;*.jpeg;*.bmp;*.png|Todos os arquivos (*.*)|*.*", App.Path)
    If Arquivo <> "" Then edtLogoEmitente.Text = Arquivo
    Exit Sub

Erro:
    MostrarErro "Logotipo"
End Sub

Private Sub btnCamposCustomizados_Click()
    Dim Arquivo As String

    On Error GoTo Erro
    Arquivo = EscolherArquivo("Arquivo de campos customizados", _
        "Arquivo INI (*.ini)|*.ini|Todos os arquivos (*.*)|*.*", App.Path)
    If Arquivo <> "" Then edtCamposCustomizados.Text = Arquivo
    Exit Sub

Erro:
    MostrarErro "Campos customizados"
End Sub

Private Sub btnVisualizar_Click()
    Dim Xml As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    Xml = XmlParaImpressao()
    If Xml = "" Then Exit Sub

    AplicarLogotipo
    spdNFSeNacional.VisualizarImpressao Xml, "", Trim$(edtCamposCustomizados.Text)
    Exit Sub

Erro:
    MostrarErro "VisualizarImpressao"
End Sub

Private Sub btnImprimir_Click()
    Dim Xml As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    Xml = XmlParaImpressao()
    If Xml = "" Then Exit Sub

    AplicarLogotipo
    spdNFSeNacional.Imprimir Xml, "", Trim$(edtCamposCustomizados.Text), ""
    Exit Sub

Erro:
    MostrarErro "Imprimir"
End Sub

Private Sub btnEditarImpressao_Click()
    Dim Xml As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    Xml = XmlParaImpressao()
    If Xml = "" Then Exit Sub

    AplicarLogotipo
    spdNFSeNacional.EditarImpressao Xml, "", Trim$(edtCamposCustomizados.Text)
    Exit Sub

Erro:
    MostrarErro "EditarImpressao"
End Sub

Private Sub btnExportarPDF_Click()
    Dim Xml As String
    Dim ArquivoPdf As String

    On Error GoTo Erro
    If Not PrepararOperacao() Then Exit Sub
    Xml = XmlParaImpressao()
    If Xml = "" Then Exit Sub

    ArquivoPdf = EscolherArquivoParaSalvar("Exportar PDF", "Arquivo PDF (*.pdf)|*.pdf", "pdf", _
        IIf(Trim$(edtChaveAcesso.Text) <> "", Trim$(edtChaveAcesso.Text), "NFSe") & ".pdf")
    If ArquivoPdf = "" Then Exit Sub

    Screen.MousePointer = vbHourglass
    AplicarLogotipo
    spdNFSeNacional.ExportarImpressaoParaPDF Xml, "", Trim$(edtCamposCustomizados.Text), ArquivoPdf

    If chkEnviarEmail.Value = vbChecked Then
        If Not spdNFSeNacional.EnviarEmail(ArquivoPdf) Then
            Screen.MousePointer = vbDefault
            MsgBox "EnviarEmail retornou False.", vbExclamation
        End If
    End If
    Screen.MousePointer = vbDefault
    Exit Sub

Erro:
    MostrarErro "ExportarImpressaoParaPDF"
End Sub

'------------------------------------------------------------------------------
' Diálogos de arquivo
'------------------------------------------------------------------------------

Private Function EscolherArquivo(ByVal aTitulo As String, ByVal aFiltro As String, ByVal aPasta As String) As String
    cdlArquivo.DialogTitle = aTitulo
    cdlArquivo.Filter = aFiltro
    cdlArquivo.FilterIndex = 1
    cdlArquivo.InitDir = aPasta
    cdlArquivo.FileName = ""
    cdlArquivo.Flags = cdlOFNFileMustExist Or cdlOFNPathMustExist Or cdlOFNHideReadOnly
    cdlArquivo.ShowOpen
    EscolherArquivo = cdlArquivo.FileName
End Function

Private Function EscolherArquivoParaSalvar(ByVal aTitulo As String, ByVal aFiltro As String, _
    ByVal aExtensao As String, ByVal aNomeSugerido As String) As String
    Dim NumeroErro As Long
    Dim DescricaoErro As String

    cdlArquivo.DialogTitle = aTitulo
    cdlArquivo.Filter = aFiltro
    cdlArquivo.FilterIndex = 1
    cdlArquivo.InitDir = App.Path
    cdlArquivo.DefaultExt = aExtensao
    cdlArquivo.FileName = aNomeSugerido
    cdlArquivo.Flags = cdlOFNOverwritePrompt Or cdlOFNPathMustExist Or cdlOFNHideReadOnly
    cdlArquivo.CancelError = True

    On Error GoTo Cancelado
    cdlArquivo.ShowSave
    EscolherArquivoParaSalvar = cdlArquivo.FileName
    cdlArquivo.CancelError = False
    cdlArquivo.DefaultExt = ""
    Exit Function

Cancelado:
    NumeroErro = Err.Number
    DescricaoErro = Err.Description
    cdlArquivo.CancelError = False
    cdlArquivo.DefaultExt = ""
    EscolherArquivoParaSalvar = ""
    If NumeroErro <> cdlCancel Then Err.Raise NumeroErro, , DescricaoErro
End Function
