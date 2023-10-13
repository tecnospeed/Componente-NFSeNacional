using NFSeNacionalX;
using System.Diagnostics;


namespace DemoNFseNacionalCSharp
{
    public partial class FormMain : Form
    {
        spdNFSeNacionalX nfseNacional;

        public FormMain()
        {
            InitializeComponent();
            SetVisibleTabs();

            nfseNacional = new();
            Text = $"Tecnospeed NFSe Nacional - Versão: {nfseNacional.Versao}";
        }

        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            nfseNacional.ConfigurarSoftwareHouse(txtCnpjSh.Text, txtTokenSh.Text);
            nfseNacional.LoadConfig("");

            txtCnpj.Text = nfseNacional.CNPJ;
            txtInscricaoMunicipal.Text = nfseNacional.InscricaoMunicipal;
            txtCertificado.Text = Path.GetFileName(nfseNacional.CaminhoCertificado);
            lblAmbiente.Visible = nfseNacional.Ambiente == Ambiente.akProducao;
        }

        private void btnAtualizarArquivos_Click(object sender, EventArgs e)
        {
            nfseNacional.AtualizarArquivos();
            MessageBox.Show("Arquivos atualizados com sucesso!", "Sucesso!");
        }

        private bool CheckEnv()
        {
            return nfseNacional.Ambiente == Ambiente.akProducao &&
                            MessageBox.Show("O componente está configurado para enviar em ambiente de produção, deseja continuar?", "Atenção!",
                                MessageBoxButtons.YesNo, MessageBoxIcon.Warning) == DialogResult.No;
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            if (CheckEnv())
                return;

            using OpenFileDialog openFileDialogTx2 = new();
            openFileDialogTx2.Filter = "Arquivos de integração TX2 (*.tx2)|*.tx2";
            if (openFileDialogTx2.ShowDialog() == DialogResult.OK)
            {
                string tx2Path = openFileDialogTx2.FileName;
                rtbRetornoXml.Text = nfseNacional.Enviar(tx2Path);

                rtbXmlEnvio.Text = File.ReadAllText(nfseNacional.UltimoLogEnvio);
                GetRetorno();
            }
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            using ChaveAcessoDialog dialog = new();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                rtbRetornoXml.Text = nfseNacional.ConsultarNFSe(dialog.ChaveAcesso);
                GetRetorno();
            }
        }

        private void btnConsultarEventos_Click(object sender, EventArgs e)
        {
            using ChaveAcessoDialog dialog = new();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                ClearFields();
                rtbRetornoXml.Text = nfseNacional.ConsultarEventosNFSe(dialog.ChaveAcesso);
                GetRetorno();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            using ChaveAcessoDialog dialog = new();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                nfseNacional.CancelarNFSe(dialog.ChaveAcesso);
                GetRetorno();
            }
        }

        private void btnEnviarManifestacao_Click(object sender, EventArgs e)
        {
            using ManifestacaoDialog dialog = new();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                if (CheckEnv())
                    return;

                ClearFields();
                rtbRetornoXml.Text = nfseNacional.EnviarManifestacao(dialog.TipoManifestacao, dialog.ChaveAcesso,
                    dialog.CodigoMotivo, dialog.DescricaoMotivo);
            }
        }

        private void btnConfigurarCertificado_Click(object sender, EventArgs e)
        {
            using CertificadoDialog dialog = new(nfseNacional.CaminhoCertificado, nfseNacional.SenhaCertificado);
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                nfseNacional.CaminhoCertificado = dialog.Caminho;
                nfseNacional.SenhaCertificado = dialog.Senha;
                nfseNacional.SaveConfig("");

                txtCertificado.Text = Path.GetFileName(nfseNacional.CaminhoCertificado);
            }
        }

        private void btnConfigIni_Click(object sender, EventArgs e)
        {
            string configFilePath = Application.StartupPath + "\\nfseNacionalConfig.ini";
            ProcessStartInfo startInfo = new(configFilePath)
            {
                UseShellExecute = true
            };
            Process.Start(startInfo);
        }


        private void GetRetorno()
        {
            rtbRetornoTipado.Clear();
            for (int i = 0; i < nfseNacional.RetornoWS?.Count(); i++)
            {
                if (nfseNacional.RetornoWS.Items(i).Status == "ERRO")
                {
                    rtbRetornoTipado.AppendText($"Status: {nfseNacional.RetornoWS.Items(i).Status}\n");
                    rtbRetornoTipado.AppendText($"Motivo: {nfseNacional.RetornoWS.Items(i).Motivo}\n");
                }
                else
                {
                    rtbRetornoTipado.AppendText($"Status: {nfseNacional.RetornoWS.Items(i).Status}\n");
                    rtbRetornoTipado.AppendText($"CNPJ: {nfseNacional.RetornoWS.Items(i).CNPJ}\n");
                    rtbRetornoTipado.AppendText($"Inscrição Municipal: {nfseNacional.RetornoWS.Items(i).InscricaoMunicipal} \n");
                    rtbRetornoTipado.AppendText($"Série do DPS: {nfseNacional.RetornoWS.Items(i).SerieDps}\n");
                    rtbRetornoTipado.AppendText($"Número do DPS: {nfseNacional.RetornoWS.Items(i).NumeroDps}\n");
                    rtbRetornoTipado.AppendText($"Número da NFSe: {nfseNacional.RetornoWS.Items(i).NumeroNFSe}\n");
                    rtbRetornoTipado.AppendText($"Data de Emissão: {nfseNacional.RetornoWS.Items(i).DataEmissaoNFSe}\n");
                    rtbRetornoTipado.AppendText($"Chave Acesso NFSe: {nfseNacional.RetornoWS.Items(i).ChaveAcessoNFSe}\n");
                    rtbRetornoTipado.AppendText($"Situação: {nfseNacional.RetornoWS.Items(i).Situacao}\n");
                    rtbRetornoTipado.AppendText($"Data De Cancelamento: {nfseNacional.RetornoWS.Items(i).DataCancelamento}\n");
                    rtbRetornoTipado.AppendText($"Chave de Cancelamento: {nfseNacional.RetornoWS.Items(i).ChaveCancelamento}\n");
                    rtbRetornoTipado.AppendText($"Motivo: {nfseNacional.RetornoWS.Items(i).Motivo}\n");
                    rtbRetornoTipado.AppendText($"XML: {nfseNacional.RetornoWS.Items(i).XmlImpressao}\n");
                    rtbRetornoTipado.AppendText($"Data de Autorização: {nfseNacional.RetornoWS.Items(i).DataAutorizacao}\n");
                    rtbRetornoTipado.AppendText("================================================\n\n");
                }
            }
            rtbRetornoCsv.Text = nfseNacional.RetornoCSV();
            rtbRetornoJson.Text = nfseNacional.RetornoJson();
            tbcRetornos.SelectedTab = tpRetornoTipado; ;
        }

        private void ClearFields()
        {
            rtbRetornoXml.Clear();
            rtbRetornoCsv.Clear();
            rtbRetornoTipado.Clear();
            rtbRetornoJson.Clear();
            rtbXmlEnvio.Clear();
            tbcRetornos.SelectedTab = tpRetornoXml;
        }

        private void btnMunicipiosConveniados_Click(object sender, EventArgs e)
        {
            ClearFields();
            rtbRetornoXml.Text = nfseNacional.ConsultarMunicipiosConveniados();
        }

        private void btnEnviarEmail_Click(object sender, EventArgs e)
        {
            nfseNacional.EnviarEmail(tpRetornoXml.Text);
        }

        private void tbcComandos_SelectedIndexChanged(object sender, EventArgs e)
        {
            SetVisibleTabs();
        }

        private void SetVisibleTabs()
        {
            tbcRetornos.TabPages.Clear();
            if (tbcComandos.SelectedIndex == 0)
            {
                tbcRetornos.TabPages.AddRange(new[] { tpRetornoXml, tpRetornoCsv, tpRetornoJson, tpRetornoTipado });
            }
            else
            {
                tbcRetornos.TabPages.AddRange(new[] { tpXmlEnvio, tpRetornoXml });
            }
        }

        private static string GetTx2File()
        {
            using OpenFileDialog openFileDialogTx2 = new();
            openFileDialogTx2.Filter = "Arquivos de integração TX2 (*.tx2)|*.tx2";
            openFileDialogTx2.ShowDialog();
            return openFileDialogTx2.FileName;
        }

        private void btnImprimir_Click(object sender, EventArgs e)
        {
            string tx2Path = GetTx2File();
            nfseNacional.Imprimir(rtbRetornoXml.Text, rtbXmlEnvio.Text, tx2Path, "");
        }

        private void btnVisualizarImpressao_Click(object sender, EventArgs e)
        {
            string tx2Path = GetTx2File();
            nfseNacional.VisualizarImpressao(rtbRetornoXml.Text, rtbXmlEnvio.Text, tx2Path);
        }

        private void btnEditarImpressao_Click(object sender, EventArgs e)
        {
            string tx2Path = GetTx2File();
            nfseNacional.EditarImpressao(rtbRetornoXml.Text, rtbXmlEnvio.Text, tx2Path);
        }

        private void btnExportarPdf_Click(object sender, EventArgs e)
        {
            using SaveFileDialog saveFileDialog = new();
            saveFileDialog.Filter = "Arquivos PDF (*.pdf)|*.pdf";
            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                string filePath = saveFileDialog.FileName;
                string tx2Path = GetTx2File();
                nfseNacional.ExportarImpressaoParaPDF(rtbRetornoXml.Text, rtbXmlEnvio.Text, tx2Path, filePath);
            }
        }

        private void btnDistribuicaoDFe_Click(object sender, EventArgs e)
        {
            using DistribuicaoDFeDialog dialog = new();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                this.Cursor = Cursors.WaitCursor;
                try
                {
                    ClearFields();
                    rtbRetornoXml.Text = nfseNacional.ConsultarDistribuicaoDFe(dialog._tipoConsultaDFe, dialog._chaveOrNsu);
                    GetRetorno();
                }
                finally
                {
                    this.Cursor = Cursors.Default;
                }
            }
        }
    }
}