VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Demonstração NFSe Nacional "
   ClientHeight    =   12030
   ClientLeft      =   5445
   ClientTop       =   1815
   ClientWidth     =   10965
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1057.124
   ScaleMode       =   0  'User
   ScaleWidth      =   10965
   Begin TabDlg.SSTab SSTab1 
      Height          =   5895
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      _ExtentX        =   19288
      _ExtentY        =   10398
      _Version        =   393216
      Tabs            =   2
      Tab             =   1
      TabHeight       =   520
      TabCaption(0)   =   "Autorizações e consultas"
      TabPicture(0)   =   "Form2.frx":29A62
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "edtVersao"
      Tab(0).Control(1)=   "aVersao"
      Tab(0).Control(2)=   "cdCarregarTX2"
      Tab(0).Control(3)=   "Frame1"
      Tab(0).Control(4)=   "Frame2"
      Tab(0).Control(5)=   "Frame7"
      Tab(0).Control(6)=   "Ajuda2(1)"
      Tab(0).Control(7)=   "ProgressBar1"
      Tab(0).ControlCount=   8
      TabCaption(1)   =   "Testando Impressão"
      TabPicture(1)   =   "Form2.frx":29A7E
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "ObservacaoImpressao"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Frame3"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Ajuda(0)"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).ControlCount=   3
      Begin ComctlLib.ProgressBar ProgressBar1 
         Height          =   375
         Left            =   -75000
         TabIndex        =   45
         Top             =   12000
         Width           =   10575
         _ExtentX        =   18653
         _ExtentY        =   661
         _Version        =   327682
         Appearance      =   1
      End
      Begin VB.CommandButton Ajuda2 
         Caption         =   "Ajuda?"
         Height          =   315
         Index           =   1
         Left            =   -65280
         MaskColor       =   &H00000000&
         TabIndex        =   44
         Top             =   0
         Width           =   1215
      End
      Begin VB.CommandButton Ajuda 
         Caption         =   "Ajuda?"
         Height          =   315
         Index           =   0
         Left            =   9720
         MaskColor       =   &H00000000&
         TabIndex        =   43
         Top             =   0
         Width           =   1215
      End
      Begin VB.Frame Frame7 
         Caption         =   "Configurar SoftwareHouse"
         Height          =   1095
         Left            =   -74880
         TabIndex        =   30
         Top             =   480
         Width           =   5295
         Begin VB.TextBox edtTokenSH 
            Enabled         =   0   'False
            Height          =   285
            Left            =   2640
            TabIndex        =   32
            Text            =   "00000000000000"
            Top             =   600
            Width           =   2535
         End
         Begin VB.TextBox edtCNPJSoftwarehouse 
            Height          =   285
            Left            =   120
            TabIndex        =   31
            Text            =   "00000000000000"
            Top             =   600
            Width           =   2415
         End
         Begin VB.Label Label6 
            Caption         =   "Token SoftwareHouse"
            Height          =   255
            Left            =   2640
            TabIndex        =   34
            Top             =   360
            Width           =   2055
         End
         Begin VB.Label Label5 
            Caption         =   "CNPJ SoftwareHouse"
            Height          =   255
            Left            =   120
            TabIndex        =   33
            Top             =   360
            Width           =   1695
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Configurações"
         Height          =   3015
         Left            =   120
         TabIndex        =   24
         Top             =   480
         Width           =   4935
         Begin VB.Frame Frame4 
            Height          =   1695
            Left            =   120
            TabIndex        =   25
            Top             =   600
            Width           =   4575
            Begin VB.CheckBox cbEnviarEmail 
               Caption         =   "Enviar por Email"
               Height          =   255
               Left            =   120
               TabIndex        =   29
               Top             =   1320
               Width           =   2055
            End
            Begin VB.CommandButton edtVisualizar 
               Caption         =   "Visualizar"
               Height          =   375
               Left            =   2520
               TabIndex        =   28
               Top             =   240
               Width           =   1935
            End
            Begin VB.CommandButton edtExportarPDF 
               Caption         =   "Exportar PDF"
               Height          =   375
               Left            =   1320
               TabIndex        =   27
               Top             =   840
               Width           =   1935
            End
            Begin VB.CommandButton btnImprimir 
               Caption         =   "&Imprimir"
               Height          =   375
               Left            =   120
               TabIndex        =   26
               Top             =   240
               Width           =   1935
            End
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Operações"
         Height          =   5055
         Left            =   -69480
         TabIndex        =   12
         Top             =   480
         Width           =   5175
         Begin VB.CommandButton BtnCidadesConveniadas 
            Caption         =   "&8.Listar Cidades Conveniadas"
            Height          =   495
            Left            =   2640
            TabIndex        =   22
            Top             =   3120
            Width           =   2415
         End
         Begin VB.CommandButton BtnGerarTx2 
            Caption         =   "&8.Gerar TX2 de Exemplo"
            Height          =   495
            Left            =   1320
            TabIndex        =   21
            Top             =   4080
            Width           =   2400
         End
         Begin VB.CommandButton btnEnviarRPS 
            Caption         =   "&3. Enviar DPS"
            Height          =   495
            Left            =   120
            TabIndex        =   20
            Top             =   1680
            Width           =   2400
         End
         Begin VB.CommandButton btnLoadConfig 
            Caption         =   "&2. Load Config"
            Height          =   495
            Left            =   2640
            TabIndex        =   19
            Top             =   960
            Width           =   2400
         End
         Begin VB.CommandButton Command1 
            Caption         =   "&1.Configurar Arquivo INI"
            Height          =   495
            Left            =   120
            TabIndex        =   18
            Top             =   960
            Width           =   2400
         End
         Begin VB.CommandButton btnCancelarNFSe 
            Caption         =   "&5. Cancelar Nota"
            Height          =   495
            Left            =   120
            TabIndex        =   17
            Top             =   2400
            Width           =   2400
         End
         Begin VB.CommandButton btnConsultarNota 
            Caption         =   "&4. Consultar Nota"
            Height          =   495
            Left            =   2640
            TabIndex        =   16
            Top             =   1680
            Width           =   2400
         End
         Begin VB.ComboBox cbNomeCertificado 
            Height          =   315
            Left            =   120
            TabIndex        =   15
            Top             =   480
            Width           =   4935
         End
         Begin VB.CommandButton btnEnviarManifestacao 
            Caption         =   "&7. Enviar Manifestação"
            Height          =   495
            Left            =   120
            TabIndex        =   14
            Top             =   3120
            Width           =   2400
         End
         Begin VB.CommandButton btnConsultarEventos 
            Caption         =   "&6. Consultar Eventos"
            Height          =   495
            Left            =   2640
            TabIndex        =   13
            Top             =   2400
            Width           =   2400
         End
         Begin VB.Label Label7 
            Caption         =   "Certificado"
            Height          =   255
            Left            =   120
            TabIndex        =   23
            Top             =   240
            Width           =   2415
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Dados do Prestador"
         Height          =   3975
         Left            =   -74880
         TabIndex        =   1
         Top             =   1560
         Width           =   5295
         Begin VB.OptionButton rdHomologacao 
            Caption         =   "Homologação"
            Enabled         =   0   'False
            Height          =   495
            Left            =   3240
            TabIndex        =   7
            Top             =   1080
            Width           =   1455
         End
         Begin VB.OptionButton rdProducao 
            Caption         =   "Produção"
            Enabled         =   0   'False
            Height          =   375
            Left            =   3240
            TabIndex        =   6
            Top             =   720
            Width           =   1695
         End
         Begin VB.CommandButton btnArquivosCidades 
            Caption         =   "Atualizar Arquivos"
            Height          =   495
            Left            =   120
            TabIndex        =   5
            Top             =   2280
            Width           =   2295
         End
         Begin VB.TextBox edtInscMunicipal 
            Height          =   285
            Left            =   120
            TabIndex        =   4
            Top             =   1200
            Width           =   2775
         End
         Begin VB.TextBox edtCNPJ 
            Height          =   285
            Left            =   120
            TabIndex        =   3
            Top             =   600
            Width           =   2775
         End
         Begin VB.TextBox edtChaveDPS 
            Height          =   285
            Left            =   120
            TabIndex        =   2
            Top             =   1800
            Width           =   2775
         End
         Begin VB.Label lblAmbiente 
            Caption         =   "Ambiente de Produção"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   300
            Left            =   120
            TabIndex        =   11
            Top             =   3000
            Width           =   2895
         End
         Begin VB.Label Label3 
            Caption         =   "Inscrição Municipal"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   10
            Top             =   960
            Width           =   2775
         End
         Begin VB.Label Label2 
            Caption         =   "CNPJ"
            Height          =   255
            Left            =   120
            TabIndex        =   9
            Top             =   360
            Width           =   855
         End
         Begin VB.Label Label3 
            Caption         =   "Chave de Acesso da DPS"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   8
            Top             =   1560
            Width           =   2775
         End
      End
      Begin MSComDlg.CommonDialog cdCarregarTX2 
         Left            =   -63000
         Top             =   5880
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.Label aVersao 
         BackStyle       =   0  'Transparent
         Caption         =   "Versão: "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -67200
         TabIndex        =   47
         Top             =   120
         Width           =   1935
      End
      Begin VB.Label edtVersao 
         Caption         =   "Versão "
         Height          =   375
         Left            =   -67200
         TabIndex        =   46
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label ObservacaoImpressao 
         Caption         =   $"Form2.frx":29A9A
         ForeColor       =   &H000000C0&
         Height          =   975
         Left            =   120
         TabIndex        =   42
         Top             =   3840
         Width           =   4335
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   6135
      Left            =   0
      TabIndex        =   35
      Top             =   5880
      WhatsThisHelpID =   1
      Width           =   10935
      _ExtentX        =   19288
      _ExtentY        =   10821
      _Version        =   393216
      Tab             =   2
      TabHeight       =   520
      TabCaption(0)   =   "XML Retorno/Impressão"
      TabPicture(0)   =   "Form2.frx":29B5E
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "mmXMLEnvio"
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Retorno JSON"
      TabPicture(1)   =   "Form2.frx":29B7A
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "mmJSON"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Retorno Tipado"
      TabPicture(2)   =   "Form2.frx":29B96
      Tab(2).ControlEnabled=   -1  'True
      Tab(2).Control(0)=   "mmTipado"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).ControlCount=   1
      Begin RichTextLib.RichTextBox mmXMLEnvio 
         Height          =   5655
         Left            =   -74880
         TabIndex        =   41
         Top             =   360
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   9975
         _Version        =   393217
         Enabled         =   -1  'True
         ScrollBars      =   2
         TextRTF         =   $"Form2.frx":29BB2
      End
      Begin RichTextLib.RichTextBox mmXML 
         Height          =   5775
         Index           =   0
         Left            =   -75000
         TabIndex        =   37
         Top             =   315
         Width           =   10935
         _ExtentX        =   19288
         _ExtentY        =   10186
         _Version        =   393217
         TextRTF         =   $"Form2.frx":29C34
      End
      Begin RichTextLib.RichTextBox mmTipado 
         Height          =   5655
         Left            =   120
         TabIndex        =   36
         Top             =   360
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   9975
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"Form2.frx":29CB6
      End
      Begin RichTextLib.RichTextBox mmJSON 
         Height          =   5655
         Left            =   -74880
         TabIndex        =   38
         Top             =   345
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   9975
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"Form2.frx":29D38
      End
      Begin RichTextLib.RichTextBox mmXML 
         Height          =   5415
         Index           =   2
         Left            =   -74880
         TabIndex        =   40
         Top             =   360
         Width           =   10695
         _ExtentX        =   18865
         _ExtentY        =   9551
         _Version        =   393217
         TextRTF         =   $"Form2.frx":29DBA
      End
   End
   Begin RichTextLib.RichTextBox RichTextBox1 
      Height          =   5415
      Left            =   0
      TabIndex        =   39
      Top             =   0
      Width           =   10695
      _ExtentX        =   18865
      _ExtentY        =   9551
      _Version        =   393217
      TextRTF         =   $"Form2.frx":29E3C
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim spdNFSeNacional As NFSeNacionalX.spdNFSeNacionalX
    Dim ArqINI As String
    
    'Função para ler arquivos INI usando API windows.
    Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal padrao As String, ByVal variavel As String, ByVal tam As Long, ByVal arquivo As String) As Long
    'Função para gravar arquivos INI usando API windows.
    Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal Secao As String, ByVal parametro As Any, ByVal valor As Any, ByVal arquivo As String) As Long
    
    Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long
    
    ' Função para ler o arquivo Ini.
    Function get_ini(seção$, chave$) As String
        arquiv$ = ArqINI
        Returns$ = Space$(280)
        x% = GetPrivateProfileString(ByVal seção$, ByVal chave$, _
        "", Returns$, Len(Returns$), ByVal arquiv$)
        get_ini = Left$(Returns$, x%)
    End Function
     
    ' Função para escrever no arquivo Ini.
    Function write_ini(ByVal section$, ByVal chv$, ByVal variavel$) As String
        arquiv$ = ArqINI
        iRet = WritePrivateProfileString(ByVal section$, ByVal chv$, ByVal variavel$, ByVal arquiv$)
    End Function
    Public Function DadosPreenchidos() As Boolean
        Dim Cidade_, CNPJ_ As String
        
        CNPJ_ = Trim(spdNFSeNacional.CNPJ)
        
        DadosPreenchidos = (CNPJ_ <> "")
        
        If DadosPreenchidos = False Then
            MsgBox "Carregue o componente antes de prosseguir, verifique a propriedade CNPJ, caso preenchida, execute o LoadConfig!", vbExclamation
        End If
        
    End Function
    Public Function ChecarAmbiente() As Boolean
    ' Função para sinalizar o ambiente que está sendo usado.
       If spdNFSeNacional.Ambiente = akProducao Then
        rdProducao.Value = True
        lblAmbiente.Caption = "Ambiente de Produção"
        lblAmbiente.ForeColor = &HFF&
        write_ini "NFSE", "Ambiente", "1"
       Else
        rdHomologacao.Value = True
        lblAmbiente.Caption = "Ambiente de Homologação"
        lblAmbiente.ForeColor = &HC00000
        write_ini "NFSE", "Ambiente", "2"
       End If
    End Function
    
    Private Sub IncluirLinha(ByVal MemoAux As RichTextBox, ByVal pTexto As String)
        MemoAux.Text = MemoAux.Text & (pTexto) & vbCrLf
    End Sub
    
    Private Sub RetornoV2Json()
        mmJSON.Text = ""
        mmJSON.Text = spdNFSeNacional.RetornoJson
    End Sub
    
    Private Sub GravarRetorno()
        mmXMLEnvio.Text = spdNFSeNacional.RetornoWS.Items(i).XmlImpressao
    End Sub
    
    Private Sub ChaveCancelamento()
        edtChaveCancelamento.Text = spdNFSeNacional.RetornoWS.Items(i).ChaveCancelamento
    End Sub
    
    
    Private Sub RetornoV2Tipado()
        Dim vTotal As Integer
        
        SSTab2.TabIndex = 3
                
        mmTipado.Text = ""
        
        vTotal = spdNFSeNacional.RetornoWS.Count
        
        For i = 0 To vTotal - 1
           IncluirLinha mmTipado, "Status: " + spdNFSeNacional.RetornoWS.Items(i).Status
           
           If (spdNFSeNacional.RetornoWS.Items(i).Status = "EMPROCESSAMENTO") Then
              IncluirLinha mmTipado, "Protocolo: " + spdNFSeNacional.RetornoWS.Items(i).Protocolo
              If (spdNFSeNacional.RetornoWS.Items(i).Protocolo <> "") Then
                 edtNumProtocolo.Text = spdNFSeNacional.RetornoWS.Items(i).Protocolo
              End If
           ElseIf (spdNFSeNacional.RetornoWS.Items(i).Status = "ERRO") Then
              IncluirLinha mmTipado, "Motivo: " + spdNFSeNacional.RetornoWS.Items(i).Motivo
           Else
              IncluirLinha mmTipado, "Chave Acesso NFSe: " + spdNFSeNacional.RetornoWS.Items(i).ChaveAcessoNFSe
              IncluirLinha mmTipado, "CNPJ: " + spdNFSeNacional.RetornoWS.Items(i).CNPJ
              IncluirLinha mmTipado, "Inscricao Municipal: " + spdNFSeNacional.RetornoWS.Items(i).InscricaoMunicipal
              IncluirLinha mmTipado, "Serie do RPS: " + spdNFSeNacional.RetornoWS.Items(i).SerieDps
              IncluirLinha mmTipado, "Número do RPS: " + spdNFSeNacional.RetornoWS.Items(i).NumeroDps
              IncluirLinha mmTipado, "Número da NFS-e: " + spdNFSeNacional.RetornoWS.Items(i).NumeroNFSe
              IncluirLinha mmTipado, "Data de Emissão: " + spdNFSeNacional.RetornoWS.Items(i).DataEmissaoNFSe
              IncluirLinha mmTipado, "Situação: " + spdNFSeNacional.RetornoWS.Items(i).Situacao
              IncluirLinha mmTipado, "Data De Cancelamento: " + spdNFSeNacional.RetornoWS.Items(i).DataCancelamento
              IncluirLinha mmTipado, "Chave de Cancelamento: " + spdNFSeNacional.RetornoWS.Items(i).ChaveCancelamento
              IncluirLinha mmTipado, "Motivo: " + spdNFSeNacional.RetornoWS.Items(i).Motivo
              IncluirLinha mmTipado, "XML: " + spdNFSeNacional.RetornoWS.Items(i).XmlImpressao
              IncluirLinha mmTipado, "Data de Autorização: " + spdNFSeNacional.RetornoWS.Items(i).DataAutorizacao
              IncluirLinha mmTipado, ""
              IncluirLinha mmTipado, "================================================"
              IncluirLinha mmTipado, ""
              
              edtChaveDPS.Text = spdNFSeNacional.RetornoWS.Items(i).ChaveAcessoNFSe
              mmXMLEnvio.Text = spdNFSeNacional.RetornoWS.Items(i).XmlImpressao
              
              
            End If
        Next
        
    End Sub
    
    Private Sub Ajuda_Click(Index As Integer)
        Dim link As String
        link = "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/12236286816791-Guia-Geral-Componente-NFSe-Nacional"
        
        ShellExecute 0, "open", link, vbNullString, vbNullString, vbNormalFocus
    End Sub

    Private Sub Ajuda2_Click(Index As Integer)
    
        Dim link As String
        link = "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/12236286816791-Guia-Geral-Componente-NFSe-Nacional"
        
        ShellExecute 0, "open", link, vbNullString, vbNullString, vbNormalFocus
    
    End Sub

    Private Sub BtnCancelarNFSe_Click()
        
       Dim ChaveCancelamento As String
       
       ChaveCancelamento = edtChaveDPS.Text
       
       spdNFSeNacional.CancelarNFSe ChaveCancelamento
       
       RetornoV2Tipado
       RetornoV2Json
       GravarRetorno
       
    End Sub
    
    Private Sub btnConsultarEventos_Click()
        
        If Not DadosPreenchidos() Then
        Exit Sub
        End If
        
        spdNFSeNacional.ConsultarEventosNFSe edtChaveDPS.Text
        
        RetornoV2Tipado
        RetornoV2Json
        GravarRetorno
    
    End Sub

    Private Sub btnConsultarNota_Click()
    
        If Not DadosPreenchidos() Then
        Exit Sub
        End If
        
        spdNFSeNacional.ConsultarNFse edtChaveDPS.Text
        RetornoV2Tipado
        RetornoV2Json
        GravarRetorno
        
    End Sub
    
    Private Sub BtnEnviarManifestacao_Click()
            
        If Not DadosPreenchidos() Then
        Exit Sub
        End If
        
        Dim frm2 As New Form3
        
        frm2.Show
        
    End Sub

    Private Sub btnEnviarRPS_Click()
        Dim XML_ As String
        
        If Not DadosPreenchidos() Then
        Exit Sub
        End If
        
        If spdNFSeNacional.Ambiente = akProducao Then
        MsgBox ("Atenção! O ambiente está em produção, para prosseguir a emissão, pressione OK.")
        End If
            
        cdCarregarTX2.DialogTitle = "Abrir arquivo TX2"
        cdCarregarTX2.Filter = "TX2 (*.tx2) | *.tx2"
        cdCarregarTX2.InitDir = App.Path
        cdCarregarTX2.ShowOpen
        
        XML_ = (cdCarregarTX2.FileName)
        spdNFSeNacional.NomeCertificado = cbNomeCertificado.Text
        ChecarAmbiente

        
        If XML_ <> "" Then
          spdNFSeNacional.Enviar (XML_)
          RetornoV2Tipado
          RetornoV2Json
        End If
    End Sub
    
    
    Private Sub btnLoadConfig_Click()
      edtCNPJSoftwarehouse.Text = ""
      edtTokenSH.Text = ""
      
      spdNFSeNacional.ConfigurarSoftwareHouse edtCNPJSoftwarehouse.Text, edtTokenSH.Text
      spdNFSeNacional.LoadConfig (ArqINI)
      edtCNPJ.Text = spdNFSeNacional.CNPJ
      edtInscMunicipal.Text = spdNFSeNacional.InscricaoMunicipal
        
      ChecarAmbiente
    End Sub
    
    


    Private Sub cbEnviarEmail_Click()
    If cbEnviarEmail.Value = True Then
        spdNFSeNacional.EnviarEmail (Anexos)
    End If
    End Sub

    Private Sub cbNomeCertificado_DropDown()
        'Utiliza Método do Componente para Listar Certificados instalado no SO
        vetor_ = Split(spdNFSeNacional.ListarCertificados, "|")
        cbNomeCertificado.Clear
        
        For i = LBound(vetor_) To UBound(vetor_)
            cbNomeCertificado.AddItem vetor_(i)
        Next
        
    End Sub
    
    Private Sub Command1_Click()
    
        If (Trim(cbNomeCertificado.Text) <> "") Then
            write_ini "NFSE", "NomeCertificado", cbNomeCertificado.Text
        End If
            
        ShellExecute hwnd, "open", (ArqINI), "", "", 1
    End Sub
    
    Private Sub BtnCidadesConveniadas_Click()
        'Método utilizado para listar as cidades conveniadas.
        
        If Not DadosPreenchidos() Then
        Exit Sub
        End If
        
        mmTipado.Text = spdNFSeNacional.ConsultarMunicipiosConveniados
        mmXMLEnvio.Text = spdNFSeNacional.ConsultarMunicipiosConveniados
        
    End Sub
    
    Private Sub Command2_Click()
    
        Dim link As String
        link = "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/12236286816791-Guia-Geral-Componente-NFSe-Nacional"
        
        ShellExecute 0, "open", link, vbNullString, vbNullString, vbNormalFocus
    
    End Sub

    Private Sub edtExportarPDF_Click()
        Dim vTX2Aux, XML_ As String
       
        DadosPreenchidos
        XML_ = mmXMLEnvio.Text
        
        spdNFSeNacional.ExportarImpressaoParaPDF XML_, "", "", ""
    End Sub
    

    Private Sub edtLogotipoEmitente_Change()
    
    End Sub

    Private Sub edtVersao_Click()
        edtVersao = spdNFSeNacional.Versao()
    End Sub

    Private Sub edtVisualizar_Click()
       Dim XML_ As String

        DadosPreenchidos
        XML_ = mmXMLEnvio.Text
        spdNFSeNacional.VisualizarImpressao XML_, "", ""
        
    End Sub
    
    Private Sub btnImprimir_Click()
        Dim XML_ As String
       
        DadosPreenchidos
        XML_ = mmXMLEnvio.Text
        
        spdNFSeNacional.Imprimir XML_, "", "", ""
        
    End Sub
    
    Private Sub Form_Load()
    
        
       Set spdNFSeNacional = New NFSeNacionalX.spdNFSeNacionalX
       spdNFSeNacional.ConfigurarSoftwareHouse edtCNPJSoftwarehouse.Text, edtTokenSH.Text
       ArqINI = App.Path + "\nfseNacionalConfig.ini"
       ChecarAmbiente
       aVersao = "Versão: " & spdNFSeNacional.Versao()
       vetor_ = Split(spdNFSeNacional.ListarCertificados, "|")
       cbNomeCertificado.Clear
        
       For i = LBound(vetor_) To UBound(vetor_)
           cbNomeCertificado.AddItem vetor_(i)
       Next
       
       cbNomeCertificado.ListIndex = 0
       
    End Sub
    
    Private Sub btnArquivosCidades_Click()
            
        If Not DadosPreenchidos() Then
        Exit Sub
        End If
        
        On Error GoTo erro
    
        spdNFSeNacional.AtualizarArquivos
    

    
        MsgBox "Arquivos Atualizados com sucesso!"
        Exit Sub
    
erro:
        MsgBox "Erro ao atualizar arquivos: " & Err.Description
        
    End Sub

    
    Private Sub rdHomologacao_Click()
        rdHomologacao.Value = True
        lblAmbiente.Caption = "Ambiente de Homologação"
        lblAmbiente.ForeColor = &HC00000
        write_ini "NFSE", "Ambiente", "2"
    End Sub
    
    Private Sub rdProducao_Click()
        lblAmbiente.Caption = "Ambiente de Produção"
        lblAmbiente.ForeColor = &HFF&
        write_ini "NFSE", "Ambiente", "1"
    End Sub
    
    Private Sub BtnGerarTx2_Click()
    
        Dim tx2Content As String
        Dim filePath As String
        Dim fileNum As Integer
        Dim fileContent As String
    
        filePath = App.Path & "\Tx2PadraoNacional.tx2"
        
        If Dir(filePath) = "" Then
            MsgBox "Arquivo TX2 não encontrado. Por favor, acesse a opção 'Ajuda' para obter o arquivo de exemplo. ", vbExclamation
            Exit Sub
        End If
        
        fileNum = FreeFile()
        Open filePath For Input As fileNum
        
        fileContent = Input$(LOF(fileNum), fileNum)
        Close fileNum
        
        mmTipado.Text = fileContent
        mmXMLEnvio.Text = fileContent
    
    End Sub

                 
                 

