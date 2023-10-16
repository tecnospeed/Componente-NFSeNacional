unit uExemploNFSeNacional;

interface

 {$DEFINE full_dev}

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StrUtils, ComCtrls, StdCtrls,
  ExtCtrls, CheckLst, Grids, DBGrids, OleCtrls, SHDocVw,
  NFSeNacionalX_TLB, spdNFSeNacional, UManifestacao, UDistribuicaoDFe;

type
  TfrmExemplo = class(TForm)
    OpnDlgTx2: TOpenDialog;
    pcMensagens: TPageControl;
    tsXML: TTabSheet;
    tsXMLFormatado: TTabSheet;
    mmXMLEnvio: TMemo;
    mmXML: TMemo;
    svDlgExportar: TSaveDialog;
    OpnDlgLogoTipo: TOpenDialog;
    tsJSON: TTabSheet;
    mmJson: TMemo;
    tsFormatado: TTabSheet;
    mmTipado: TMemo;
    pcDados: TPageControl;
    tsNFSe: TTabSheet;
    grpOperacoesNFSe: TGroupBox;
    lbl1: TLabel;
    lblAmbiente: TLabel;
    btnConfigArquivoINI: TButton;
    btnLoadConfig: TButton;
    btnEnviar: TButton;
    btnConsultarNFSe: TButton;
    btnEnviarManifestacao: TButton;
    cbListaCertificados: TComboBox;
    btnConsultarEventos: TButton;
    grpConfigNFSe: TGroupBox;
    edtCNPJ: TLabeledEdit;
    edtInscMunicipal: TLabeledEdit;
    btnAtualizaArquivos: TButton;
    btnEmail: TButton;
    chkSubstituicao: TCheckBox;
    edtCNPJSoftwareHouse: TLabeledEdit;
    edtTokenSoftwareHouse: TLabeledEdit;
    tsConfiguraImpressao: TTabSheet;
    grpConfiguracoes: TGroupBox;
    lbl2: TLabel;
    edtLogoEmitente: TEdit;
    btnLogoTipoEmitente: TButton;
    grpOperacaoImpressao: TGroupBox;
    btnEditarDocumento: TButton;
    btnImprimir: TButton;
    btnExportar: TButton;
    btnVisualizar: TButton;
    edtChaveAcesso: TLabeledEdit;
    btnCancelarNFSe: TButton;
    btnConsultarMunicipios: TButton;
    btnDistribuicaoDFe: TButton;
    edt1: TLabeledEdit;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure cbListaCertificadosDropDown(Sender: TObject);
    procedure mmXMLEnvioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmXMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmJsonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmTipadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure btnConfigArquivoINIClick(Sender: TObject);
    procedure btnLoadConfigClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnConsultarNotaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAtualizaArquivosClick(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure btnConsultarEventosClick(Sender: TObject);
    procedure btnEnviarManifestacaoClick(Sender: TObject);
    procedure btnConsultarMunicipiosClick(Sender: TObject);
    procedure btnDistribuicaoDFeClick(Sender: TObject);
    procedure btnEditarDocumentoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnLogoTipoEmitenteClick(Sender: TObject);

  private
    fLogEnvio: string;
    NFSe: TspdNFSeNacional;
    procedure CheckConfig;
    procedure OnLog(const aNome, aID, aFileName: string);
    procedure getRetornoTipado;
    procedure getRetornoJson;
    procedure getRetornoCSV;
  public
    { Public declarations }
  end;

var
  frmExemplo: TfrmExemplo;

implementation

{$R *.dfm}

uses
  ShellApi;

const
  EXEMPLO_INI_FILE = 'Exemplo.ini';
  CONSULTARNOTASTOMADAS_NOMECIDADE = 'ConsultarNotasTomadas_NomeCidade';
  CONSULTARNOTASTOMADAS_DOCUMENTOTOMADOR = 'ConsultarNotasTomadas_DocumentoTomador';
  CONSULTARNOTASTOMADAS_IMTOMADOR = 'ConsultarNotasTomadas_IMTomador';
  CONSULTARNOTASTOMADAS_DOCUMENTOPRESTADOR = 'ConsultarNotasTomadas_DocumentoPrestador';
  CONSULTARNOTASTOMADAS_IMPRESTADOR = 'ConsultarNotasTomadas_IMPrestador';
  CONSULTARNOTASTOMADAS_DATAINICIAL = 'ConsultarNotasTomadas_DataInicial';
  CONSULTARNOTASTOMADAS_DATAFINAL = 'ConsultarNotasTomadas_DataFinal';
  CONSULTARNOTASTOMADAS_PAGINA = 'ConsultarNotasTomadas_Pagina';

procedure TfrmExemplo.FormCreate(Sender: TObject);
begin
  NFSe := TspdNFSeNacional.Create(nil);
end;

procedure TfrmExemplo.FormDestroy(Sender: TObject);
begin
  NFSe.Free;
end;

procedure TfrmExemplo.FormShow(Sender: TObject);
begin
  frmExemplo.Caption := 'TecnoSpeed NFSe Nacional - Versão: ' + NFSe.Versao;
  pcDados.TabIndex := 0;
  edtLogoEmitente.Text := ExtractFilePath(Application.ExeName) + 'LogoEmit.jpg';
  edtCNPJSoftwareHouse.Text := '';
  edtTokenSoftwareHouse.Text := '';
end;

procedure TFrmExemplo.CheckConfig;
begin
  if Trim(NFSe.CNPJ) = EmptyStr then
    raise Exception.Create('Favor configurar o componente antes de prosseguir!');
end;

procedure TfrmExemplo.mmJsonKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmJson.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmTipadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmTipado.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmXMLEnvioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmXMLEnvio.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.mmXMLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  C: string;
begin
  if ssCtrl in Shift then
  begin
    C := LowerCase(Char(Key));
    if C = 'a' then
    begin
      mmXML.SelectAll;
    end;
  end;
end;

procedure TfrmExemplo.btnConfigArquivoINIClick(Sender: TObject);
var
  _ExecuteFile: string;
  _NomeCertificado: string;
  _CurrentDir: string;
  _IniFile: TIniFile;
begin
  (Sender as TWinControl).Enabled := False;
  try
    if cbListaCertificados.Text <> '' then
    begin
      _NomeCertificado := Trim(cbListaCertificados.Text);

      _CurrentDir := ExtractFilePath(ParamStr(0));
      SetCurrentDir(_CurrentDir);
      _IniFile := TIniFile.Create(_CurrentDir + 'nfseNacionalConfig.ini');
      try
        _IniFile.WriteString('NFSENACIONAL', 'NomeCertificado', _NomeCertificado);
      finally
        _IniFile.Free;
      end;
    end;
    _ExecuteFile := ExtractFilePath(ParamStr(0)) + 'nfseNacionalConfig.ini';
    ShellExecute(Application.Handle, nil, Pchar(_ExecuteFile), nil, nil, SW_SHOWNORMAL);
  finally
    (Sender as TWinControl).Enabled := True;
  end;
end;

{Exemplo de configuração do componente NFSe}
procedure TfrmExemplo.btnLoadConfigClick(Sender: TObject);
begin
  NFSe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text,edtTokenSoftwareHouse.Text);
  NFSe.DiagnosticMode := False;
  NFSe.LoadConfig;

  edtCNPJ.Text := NFSe.CNPJ;
  edtInscMunicipal.Text := NFSe.InscricaoMunicipal;
  cbListaCertificados.Text := NFSe.NomeCertificado;
  lblAmbiente.Visible := (NFSe.Ambiente = akProducao);
end;

procedure TfrmExemplo.btnEnviarClick(Sender: TObject);
begin
  CheckConfig;
  if (NFSe.Ambiente = akProducao) and (Application.MessageBox('O componente está configurado '
    + 'para enviar em ambiente de produção, deseja continuar?', 'Atenção!', MB_YESNO + MB_ICONWARNING) = IDNO) then
    exit;
  if OpnDlgTx2.Execute then
  begin
    mmXMLEnvio.Text := NFSe.Enviar(OpnDlgTx2.FileName);

    getRetornoTipado;
    getRetornoJson;
    getRetornoCSV;
  end;
end;

procedure TfrmExemplo.btnEnviarManifestacaoClick(Sender: TObject);
var
  _FormDados: TFrmManifestacao;
  _tpManifestacao: Integer;
  _Codigo, _Motivo: string;

  procedure GetParamsManifestacao(var aTipoManifestacao: Integer; var aCodigo, aMotivo: string);
  begin
    aCodigo := EmptyStr;
    aMotivo := EmptyStr;

    if _FormDados.chkAutorizacao.Checked then
    begin
      aTipoManifestacao := 1;
      if _FormDados.chkTomador.Checked then
        aTipoManifestacao := 3
      else if _FormDados.chkIntermediario.Checked then
        aTipoManifestacao := 5;
    end
    else
    begin
      aTipoManifestacao := 2;
      if _FormDados.chkTomador.Checked then
        aTipoManifestacao := 4
      else if _FormDados.chkIntermediario.Checked then
        aTipoManifestacao := 6;

      aCodigo := _FormDados.edtCodigo.Text;
      aMotivo := _FormDados.edtMotivo.Text;
    end;
  end;

begin
  CheckConfig;
  if (NFSe.Ambiente = akProducao) and (Application.MessageBox('O componente está configurado '
    + 'para enviar em ambiente de produção, deseja continuar?', 'Atenção!', MB_YESNO + MB_ICONWARNING) = IDNO) then
    exit;

  _FormDados := TFrmManifestacao.Create(nil);
  try
    (Sender as TWinControl).Enabled := False;

    _FormDados.ShowModal;
    if (_FormDados.ModalResult = mrok) then
    begin
      GetParamsManifestacao(_tpManifestacao, _Codigo, _Motivo);

      mmXMLEnvio.Text := NFSe.EnviarManifestacao(_tpManifestacao, edtChaveAcesso.Text, _Codigo, _Motivo);
    end;
  finally
    (Sender as TWinControl).Enabled := True;
    _FormDados.Free;
  end;
end;

procedure TfrmExemplo.btnEditarDocumentoClick(Sender: TObject);
var
  _CamposCustomizados: string;
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  _CamposCustomizados := OpnDlgTx2.fileName;
  Nfse.EditarImpressao(mmXML.Text, mmXMLEnvio.Text, _CamposCustomizados);
end;

procedure TfrmExemplo.btnImprimirClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  Nfse.Imprimir(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName, '');
end;

procedure TfrmExemplo.btnExportarClick(Sender: TObject);
var
  _CamposCustomizados: string;
begin
  CheckConfig;
  Randomize;
  OpnDlgTx2.Execute;
  svDlgExportar.FileName := 'C:\' + IntToStr(Random(123456)) + '.pdf';
  _CamposCustomizados := OpnDlgTx2.FileName;
  Nfse.ExportarImpressaoParaPDF(mmXML.Text, mmXMLEnvio.Text, _CamposCustomizados, svDlgExportar.FileName);
end;

procedure TfrmExemplo.btnVisualizarClick(Sender: TObject);
begin
  CheckConfig;
  OpnDlgTx2.Execute;
  NFse.LogoTipoEmitente := EmptyStr;
  NFSe.VisualizarImpressao(mmXML.Text, mmXMLEnvio.Text, OpnDlgTx2.FileName);
end;

procedure TfrmExemplo.cbListaCertificadosDropDown(Sender: TObject);
begin
  cbListaCertificados.Clear;
  NFSe.ListarCertificados(cbListaCertificados.Items);
end;

procedure TfrmExemplo.btnLogoTipoEmitenteClick(Sender: TObject);
begin
  OpnDlgLogoTipo.InitialDir := ExtractFileDir(edtLogoEmitente.Text);
  OpnDlgLogoTipo.FileName := ExtractFileName(edtLogoEmitente.Text);
  if OpnDlgLogoTipo.Execute then
    edtLogoEmitente.Text := OpnDlgLogoTipo.FileName;
end;

procedure TfrmExemplo.OnLog(const aNome, aID, aFileName: string);
begin
  fLogEnvio := '';

  if (AnsiContainsText(aNome, 'resposta')) then
    fLogEnvio := aFileName;
  if ((AnsiContainsText(aNome, 'enviar_lote_rps_envio')) or (AnsiContainsText(aNome, 'enviar_lote_sincrono_envio'))) then
    mmXMLEnvio.Text := aFileName;
end;

procedure TfrmExemplo.getRetornoTipado;
var
  i: Integer;
begin
  mmTipado.Clear;
  for i := 0 to NFSe.RetornoWS.Count - 1 do
  begin
    if NFSe.RetornoWS.Items[i].Status = 'EMPROCESSAMENTO' then
    begin
      mmTipado.Lines.Add('Status: EMPROCESSAMENTO');
    end
    else if NFSe.RetornoWS.Items[i].Status = 'ERRO' then
    begin
      mmTipado.Lines.Add('Status: ERRO');
      mmTipado.Lines.Add('Motivo: ' + NFSe.RetornoWS.Items[i].Motivo);
    end
    else
    begin
      mmTipado.Lines.Add('Status: ' + NFSe.RetornoWS.Items[i].Status);
      mmTipado.Lines.Add('CNPJ: ' + NFSe.RetornoWS.Items[i].CNPJ);
      mmTipado.Lines.Add('Inscricao Municipal: ' + NFSe.RetornoWS.Items[i].InscricaoMunicipal);
      mmTipado.Lines.Add('Serie do DPS: ' + NFSe.RetornoWS.Items[i].SerieDps);
      mmTipado.Lines.Add('Número do DPS: ' + NFSe.RetornoWS.Items[i].NumeroDps);
      mmTipado.Lines.Add('Número da NFS-e: ' + NFSe.RetornoWS.Items[i].NumeroNFSe);
      mmTipado.Lines.Add('Data de Emissão: ' + NFSe.RetornoWS.Items[i].DataEmissaoNFSe);
      mmTipado.Lines.Add('Chave Acesso NFSe: ' + NFSe.RetornoWS.Items[i].ChaveAcessoNFSe);
      mmTipado.Lines.Add('Situação: ' + NFSe.RetornoWS.Items[i].Situacao);
      mmTipado.Lines.Add('Data De Cancelamento: ' + NFSe.RetornoWS.Items[i].DataCancelamento);
      mmTipado.Lines.Add('Chave de Cancelamento: ' + NFSe.RetornoWS.Items[i].ChaveCancelamento);
      mmTipado.Lines.Add('Motivo: ' + NFSe.RetornoWS.Items[i].Motivo);
      mmTipado.Lines.Add('XML: ' + NFSe.RetornoWS.Items[i].XmlImpressao);
      mmTipado.Lines.Add('Data de Autorização: ' + NFSe.RetornoWS.Items[i].DataAutorizacao);
      mmTipado.Lines.Add('');
      mmTipado.Lines.Add('================================================');
      mmTipado.Lines.Add('');
      
      //Tratamentos somente para Demo
      mmXML.Text := NFSe.RetornoWS.Items[i].XmlImpressao;
    end;
  end;
end;

procedure TfrmExemplo.getRetornoCSV;
begin
  mmXMLEnvio.Clear;
  mmXMLEnvio.Text := NFSe.RetornoCSV;
end;

procedure TfrmExemplo.getRetornoJson;
begin
  mmJson.Clear;
  mmJson.Lines.Add(NFSe.RetornoJson);
end;

procedure TfrmExemplo.btnConsultarMunicipiosClick(Sender: TObject);
begin
  CheckConfig;
  mmXML.Text := NFSe.ConsultarMunicipiosConveniados;
end;

procedure TfrmExemplo.btnConsultarEventosClick(Sender: TObject);
var
  _XmlEventons: string;
begin
  CheckConfig;

  _XmlEventons := NFSe.ConsultarEventosNFSe(edtChaveAcesso.Text);
  getRetornoTipado;
  getRetornoJson;
  getRetornoCSV;

  mmXML.Text := _XmlEventons;
end;

procedure TfrmExemplo.btnConsultarNotaClick(Sender: TObject);
begin
  CheckConfig;

  mmXML.Text := NFSe.ConsultarNFSe(edtChaveAcesso.Text);
  getRetornoTipado;
  getRetornoJson;
  getRetornoCSV;
end;

procedure TfrmExemplo.btnCancelarClick(Sender: TObject);
begin
  NFSe.CancelarNFSe(edtChaveAcesso.Text);
  getRetornoTipado;
  getRetornoJson;
  getRetornoCSV;
end;

procedure TfrmExemplo.btnEmailClick(Sender: TObject);
var
  _Email: TStringList;
begin
  _Email := TStringList.Create;
  try
    _Email.Add('teste email');

    NFSe.EmailSettings.ServidorSmtp := 'smtp.gmail.com';
    NFSe.EmailSettings.EmailRemetente := 'EmailRemetente';
    NFSe.EmailSettings.Assunto := 'EmailAssunto';
    NFSe.EmailSettings.Mensagem := 'EmailMensagem';
    NFSe.EmailSettings.Usuario := 'EmailUsuario';
    NFSe.EmailSettings.Senha := 'EmailSenha';
    NFSe.EmailSettings.EmailDestinatario := 'EmailDestinatario';
    NFSe.EmailSettings.TimeOut := 30000;
    NFSe.EmailSettings.Autenticacao := True;
    NFSe.EmailSettings.Porta := 587;
    NFSe.EmailSettings.UseSecureBlackBox := True;
    NFSe.EnviarEmail(_Email);
  finally
    _Email.Free;
  end;
end;

procedure TfrmExemplo.btnAtualizaArquivosClick(Sender: TObject);
begin
  NFSe.AtualizarArquivos;
end;

procedure TfrmExemplo.btnDistribuicaoDFeClick(Sender: TObject);
var
  _frmDistribuicaoDFe: TFrmDistribuicaoDFe;
begin
  CheckConfig;
  if (NFSe.Ambiente = akProducao) and (Application.MessageBox('O componente está configurado '
    + 'para enviar em ambiente de produção, deseja continuar?', 'Atenção!', MB_YESNO + MB_ICONWARNING) = IDNO) then
    exit;

  _frmDistribuicaoDFe := TFrmDistribuicaoDFe.Create(nil);
  try
    (Sender as TWinControl).Enabled := False;

    _frmDistribuicaoDFe.NFSe.ConfigurarSoftwareHouse(edtCNPJSoftwareHouse.Text, edtTokenSoftwareHouse.Text);
    _frmDistribuicaoDFe.NFSe.DiagnosticMode := False;
    _frmDistribuicaoDFe.NFSe.LoadConfig;

    _frmDistribuicaoDFe.ShowModal;
  finally
    (Sender as TWinControl).Enabled := True;
    _frmDistribuicaoDFe.Free;
  end;
end;

end.

