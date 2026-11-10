Attribute VB_Name = "Module1"
Option Explicit

Public spdNFSeNacional As NFSeNacionalX.spdNFSeNacionalX

Public ArqINI As String

Public Const LINK_AJUDA As String = "https://atendimento.tecnospeed.com.br/hc/pt-br/articles/12236286816791-Guia-Geral-Componente-NFSe-Nacional"

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" _
    (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpDefault As String, _
     ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long

Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" _
    (ByVal lpAppName As String, ByVal lpKeyName As String, ByVal lpString As String, _
     ByVal lpFileName As String) As Long

Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" _
    (ByVal hwnd As Long, ByVal lpOperation As String, ByVal lpFile As String, _
     ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long

Public Function LerIni(ByVal aSecao As String, ByVal aChave As String) As String
    Dim Buffer As String
    Dim Tamanho As Long

    Buffer = Space$(1024)
    Tamanho = GetPrivateProfileString(aSecao, aChave, "", Buffer, Len(Buffer), ArqINI)
    LerIni = Trim$(Left$(Buffer, Tamanho))
End Function

Public Sub GravarIni(ByVal aSecao As String, ByVal aChave As String, ByVal aValor As String)
    WritePrivateProfileString aSecao, aChave, aValor, ArqINI
End Sub

Public Sub AbrirNoWindows(ByVal aArquivoOuLink As String)
    ShellExecute 0, "open", aArquivoOuLink, vbNullString, vbNullString, vbNormalFocus
End Sub

' Caminho absoluto terminado em "\". Relativo é resolvido pela pasta da demo
' (o componente usaria a pasta do executável, que na IDE é a do VB6.EXE).
Public Function CaminhoCompleto(ByVal aCaminho As String, ByVal aPadrao As String) As String
    If aCaminho = "" Then aCaminho = aPadrao
    If Mid$(aCaminho, 2, 1) <> ":" And Left$(aCaminho, 2) <> "\\" And Left$(aCaminho, 1) <> "%" Then
        If Left$(aCaminho, 1) <> "\" Then aCaminho = "\" & aCaminho
        If Right$(App.Path, 1) = "\" Then aCaminho = Mid$(aCaminho, 2)
        aCaminho = App.Path & aCaminho
    End If
    If Right$(aCaminho, 1) <> "\" Then aCaminho = aCaminho & "\"
    CaminhoCompleto = aCaminho
End Function

Public Function SomenteNumeros(ByVal aTexto As String) As String
    Dim i As Long
    Dim c As String

    For i = 1 To Len(aTexto)
        c = Mid$(aTexto, i, 1)
        If c >= "0" And c <= "9" Then SomenteNumeros = SomenteNumeros & c
    Next
End Function

' Chamar no início do tratador de erro, enquanto o Err ainda está preenchido.
Public Sub MostrarErro(ByVal aOperacao As String)
    Dim Descricao As String

    Descricao = Err.Description
    Screen.MousePointer = vbDefault
    MsgBox Descricao, vbExclamation, aOperacao
End Sub

Public Function ComponenteCarregado() As Boolean
    ComponenteCarregado = False

    If spdNFSeNacional Is Nothing Then
        MsgBox "NFSeNacionalX não instanciado.", vbCritical
        Exit Function
    End If

    If Trim$(spdNFSeNacional.CNPJ) = "" Then
        MsgBox "Favor configurar o componente antes de prosseguir (LoadConfig).", vbExclamation
        Exit Function
    End If

    ComponenteCarregado = True
End Function

Public Function ConfirmarProducao() As Boolean
    If spdNFSeNacional.Ambiente = akProducao Then
        ConfirmarProducao = (MsgBox("O componente está configurado para enviar em ambiente de produção, deseja continuar?", _
            vbYesNo + vbExclamation + vbDefaultButton2, "Atenção!") = vbYes)
    Else
        ConfirmarProducao = True
    End If
End Function

Public Function RetornoTipado() As String
    Dim i As Long
    Dim Texto As String

    For i = 0 To spdNFSeNacional.RetornoWS.Count - 1
        With spdNFSeNacional.RetornoWS.Items(i)
            If .Status = "EMPROCESSAMENTO" Then
                Texto = Texto & "Status: EMPROCESSAMENTO" & vbCrLf
            ElseIf .Status = "ERRO" Then
                Texto = Texto & "Status: ERRO" & vbCrLf
                Texto = Texto & "Motivo: " & .Motivo & vbCrLf
            Else
                Texto = Texto & "Status: " & .Status & vbCrLf
                Texto = Texto & "CNPJ: " & .CNPJ & vbCrLf
                Texto = Texto & "Inscrição Municipal: " & .InscricaoMunicipal & vbCrLf
                Texto = Texto & "Série do DPS: " & .SerieDps & vbCrLf
                Texto = Texto & "Número do DPS: " & .NumeroDps & vbCrLf
                Texto = Texto & "Número da NFS-e: " & .NumeroNFSe & vbCrLf
                Texto = Texto & "Data de Emissão: " & .DataEmissaoNFSe & vbCrLf
                Texto = Texto & "Chave Acesso NFSe: " & .ChaveAcessoNFSe & vbCrLf
                Texto = Texto & "Situação: " & .Situacao & vbCrLf
                Texto = Texto & "Data de Cancelamento: " & .DataCancelamento & vbCrLf
                Texto = Texto & "Chave de Cancelamento: " & .ChaveCancelamento & vbCrLf
                Texto = Texto & "Motivo: " & .Motivo & vbCrLf
                Texto = Texto & "XML: " & .XmlImpressao & vbCrLf
                Texto = Texto & "Data de Autorização: " & .DataAutorizacao & vbCrLf
                Texto = Texto & vbCrLf & String$(48, "=") & vbCrLf & vbCrLf
            End If
        End With
    Next

    RetornoTipado = Texto
End Function
