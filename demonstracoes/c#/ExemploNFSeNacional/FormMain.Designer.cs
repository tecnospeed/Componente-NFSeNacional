namespace DemoNFseNacionalCSharp
{
    partial class FormMain
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMain));
            txtCnpjSh = new TextBox();
            txtTokenSh = new TextBox();
            btnLoadConfig = new Button();
            txtCnpj = new TextBox();
            groupBox1 = new GroupBox();
            btnMunicipiosConveniados = new Button();
            btnEnviarEmail = new Button();
            btnAtualizarArquivos = new Button();
            label1 = new Label();
            label2 = new Label();
            btnConfigIni = new Button();
            label4 = new Label();
            txtInscricaoMunicipal = new TextBox();
            label3 = new Label();
            lblAmbiente = new Label();
            gpbOperacoes = new GroupBox();
            btnDistribuicaoDFe = new Button();
            btnCancelar = new Button();
            btnConsultarEventos = new Button();
            btnConsultar = new Button();
            btnEnviarManifestacao = new Button();
            btnEnviar = new Button();
            label5 = new Label();
            txtCertificado = new TextBox();
            tbcRetornos = new TabControl();
            tpXmlEnvio = new TabPage();
            rtbXmlEnvio = new RichTextBox();
            tpRetornoXml = new TabPage();
            rtbRetornoXml = new RichTextBox();
            tpRetornoCsv = new TabPage();
            rtbRetornoCsv = new RichTextBox();
            tpRetornoJson = new TabPage();
            rtbRetornoJson = new RichTextBox();
            tpRetornoTipado = new TabPage();
            rtbRetornoTipado = new RichTextBox();
            tbcComandos = new TabControl();
            tabPage3 = new TabPage();
            gpbPrestador = new GroupBox();
            btnConfigurarCertificado = new Button();
            tabPage4 = new TabPage();
            groupBox2 = new GroupBox();
            btnExportarPdf = new Button();
            btnEditarImpressao = new Button();
            btnVisualizarImpressao = new Button();
            btnImprimir = new Button();
            groupBox1.SuspendLayout();
            gpbOperacoes.SuspendLayout();
            tbcRetornos.SuspendLayout();
            tpXmlEnvio.SuspendLayout();
            tpRetornoXml.SuspendLayout();
            tpRetornoCsv.SuspendLayout();
            tpRetornoJson.SuspendLayout();
            tpRetornoTipado.SuspendLayout();
            tbcComandos.SuspendLayout();
            tabPage3.SuspendLayout();
            gpbPrestador.SuspendLayout();
            tabPage4.SuspendLayout();
            groupBox2.SuspendLayout();
            SuspendLayout();
            // 
            // txtCnpjSh
            // 
            txtCnpjSh.Location = new Point(6, 41);
            txtCnpjSh.Name = "txtCnpjSh";
            txtCnpjSh.Size = new Size(180, 23);
            txtCnpjSh.TabIndex = 1;
            // 
            // txtTokenSh
            // 
            txtTokenSh.Location = new Point(6, 85);
            txtTokenSh.Name = "txtTokenSh";
            txtTokenSh.PasswordChar = '●';
            txtTokenSh.Size = new Size(180, 23);
            txtTokenSh.TabIndex = 2;
            // 
            // btnLoadConfig
            // 
            btnLoadConfig.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnLoadConfig.Location = new Point(6, 60);
            btnLoadConfig.Name = "btnLoadConfig";
            btnLoadConfig.Size = new Size(180, 23);
            btnLoadConfig.TabIndex = 8;
            btnLoadConfig.Text = "&2. Carregar Config";
            btnLoadConfig.UseVisualStyleBackColor = true;
            btnLoadConfig.Click += btnLoadConfig_Click;
            // 
            // txtCnpj
            // 
            txtCnpj.Location = new Point(6, 41);
            txtCnpj.Name = "txtCnpj";
            txtCnpj.Size = new Size(180, 23);
            txtCnpj.TabIndex = 3;
            // 
            // groupBox1
            // 
            groupBox1.Controls.Add(btnMunicipiosConveniados);
            groupBox1.Controls.Add(btnEnviarEmail);
            groupBox1.Controls.Add(btnAtualizarArquivos);
            groupBox1.Controls.Add(txtCnpjSh);
            groupBox1.Controls.Add(label1);
            groupBox1.Controls.Add(txtTokenSh);
            groupBox1.Controls.Add(label2);
            groupBox1.Location = new Point(6, 6);
            groupBox1.Name = "groupBox1";
            groupBox1.Size = new Size(192, 289);
            groupBox1.TabIndex = 5;
            groupBox1.TabStop = false;
            groupBox1.Text = "Configurações";
            // 
            // btnMunicipiosConveniados
            // 
            btnMunicipiosConveniados.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            btnMunicipiosConveniados.Location = new Point(6, 252);
            btnMunicipiosConveniados.Name = "btnMunicipiosConveniados";
            btnMunicipiosConveniados.Size = new Size(180, 23);
            btnMunicipiosConveniados.TabIndex = 17;
            btnMunicipiosConveniados.Text = "Consultar Municípios";
            btnMunicipiosConveniados.UseVisualStyleBackColor = true;
            btnMunicipiosConveniados.Click += btnMunicipiosConveniados_Click;
            // 
            // btnEnviarEmail
            // 
            btnEnviarEmail.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            btnEnviarEmail.Location = new Point(6, 194);
            btnEnviarEmail.Name = "btnEnviarEmail";
            btnEnviarEmail.Size = new Size(180, 23);
            btnEnviarEmail.TabIndex = 15;
            btnEnviarEmail.Text = "Enviar Email";
            btnEnviarEmail.UseVisualStyleBackColor = true;
            btnEnviarEmail.Click += btnEnviarEmail_Click;
            // 
            // btnAtualizarArquivos
            // 
            btnAtualizarArquivos.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            btnAtualizarArquivos.Location = new Point(6, 223);
            btnAtualizarArquivos.Name = "btnAtualizarArquivos";
            btnAtualizarArquivos.Size = new Size(180, 23);
            btnAtualizarArquivos.TabIndex = 16;
            btnAtualizarArquivos.Text = "Atualizar Arquivos";
            btnAtualizarArquivos.UseVisualStyleBackColor = true;
            btnAtualizarArquivos.Click += btnAtualizarArquivos_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(6, 23);
            label1.Name = "label1";
            label1.Size = new Size(123, 15);
            label1.TabIndex = 3;
            label1.Text = "CNPJ Software House:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(6, 67);
            label2.Name = "label2";
            label2.Size = new Size(127, 15);
            label2.TabIndex = 4;
            label2.Text = "Token Software House:";
            // 
            // btnConfigIni
            // 
            btnConfigIni.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnConfigIni.Location = new Point(6, 31);
            btnConfigIni.Name = "btnConfigIni";
            btnConfigIni.Size = new Size(180, 23);
            btnConfigIni.TabIndex = 7;
            btnConfigIni.Text = "&1. Configurar Arquivo INI";
            btnConfigIni.UseVisualStyleBackColor = true;
            btnConfigIni.Click += btnConfigIni_Click;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(208, 23);
            label4.Name = "label4";
            label4.Size = new Size(113, 15);
            label4.TabIndex = 8;
            label4.Text = "Inscrição Municipal:";
            // 
            // txtInscricaoMunicipal
            // 
            txtInscricaoMunicipal.Location = new Point(208, 41);
            txtInscricaoMunicipal.Name = "txtInscricaoMunicipal";
            txtInscricaoMunicipal.Size = new Size(180, 23);
            txtInscricaoMunicipal.TabIndex = 4;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(6, 23);
            label3.Name = "label3";
            label3.Size = new Size(37, 15);
            label3.TabIndex = 5;
            label3.Text = "CNPJ:";
            // 
            // lblAmbiente
            // 
            lblAmbiente.AutoSize = true;
            lblAmbiente.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            lblAmbiente.ForeColor = Color.FromArgb(192, 0, 0);
            lblAmbiente.Location = new Point(240, 10);
            lblAmbiente.Name = "lblAmbiente";
            lblAmbiente.Size = new Size(148, 15);
            lblAmbiente.TabIndex = 4;
            lblAmbiente.Text = "Ambiente de PRODUÇÃO";
            lblAmbiente.Visible = false;
            // 
            // gpbOperacoes
            // 
            gpbOperacoes.Controls.Add(btnDistribuicaoDFe);
            gpbOperacoes.Controls.Add(btnLoadConfig);
            gpbOperacoes.Controls.Add(btnConfigIni);
            gpbOperacoes.Controls.Add(lblAmbiente);
            gpbOperacoes.Controls.Add(btnCancelar);
            gpbOperacoes.Controls.Add(btnConsultarEventos);
            gpbOperacoes.Controls.Add(btnConsultar);
            gpbOperacoes.Controls.Add(btnEnviarManifestacao);
            gpbOperacoes.Controls.Add(btnEnviar);
            gpbOperacoes.Location = new Point(204, 140);
            gpbOperacoes.Name = "gpbOperacoes";
            gpbOperacoes.Size = new Size(394, 155);
            gpbOperacoes.TabIndex = 6;
            gpbOperacoes.TabStop = false;
            gpbOperacoes.Text = "Operações";
            // 
            // btnDistribuicaoDFe
            // 
            btnDistribuicaoDFe.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnDistribuicaoDFe.Location = new Point(208, 118);
            btnDistribuicaoDFe.Name = "btnDistribuicaoDFe";
            btnDistribuicaoDFe.Size = new Size(180, 23);
            btnDistribuicaoDFe.TabIndex = 15;
            btnDistribuicaoDFe.Text = "&8- Distribuição DFe";
            btnDistribuicaoDFe.UseVisualStyleBackColor = true;
            btnDistribuicaoDFe.Click += btnDistribuicaoDFe_Click;
            // 
            // btnCancelar
            // 
            btnCancelar.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnCancelar.Location = new Point(208, 89);
            btnCancelar.Name = "btnCancelar";
            btnCancelar.Size = new Size(180, 23);
            btnCancelar.TabIndex = 14;
            btnCancelar.Text = "&7. Cancelar NFSe";
            btnCancelar.UseVisualStyleBackColor = true;
            btnCancelar.Click += btnCancelar_Click;
            // 
            // btnConsultarEventos
            // 
            btnConsultarEventos.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnConsultarEventos.Location = new Point(208, 60);
            btnConsultarEventos.Name = "btnConsultarEventos";
            btnConsultarEventos.Size = new Size(180, 23);
            btnConsultarEventos.TabIndex = 13;
            btnConsultarEventos.Text = "&6. Consultar Eventos";
            btnConsultarEventos.UseVisualStyleBackColor = true;
            btnConsultarEventos.Click += btnConsultarEventos_Click;
            // 
            // btnConsultar
            // 
            btnConsultar.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnConsultar.Location = new Point(208, 31);
            btnConsultar.Name = "btnConsultar";
            btnConsultar.Size = new Size(180, 23);
            btnConsultar.TabIndex = 12;
            btnConsultar.Text = "&5. Consultar NFSe";
            btnConsultar.UseVisualStyleBackColor = true;
            btnConsultar.Click += btnConsultar_Click;
            // 
            // btnEnviarManifestacao
            // 
            btnEnviarManifestacao.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnEnviarManifestacao.Location = new Point(6, 118);
            btnEnviarManifestacao.Name = "btnEnviarManifestacao";
            btnEnviarManifestacao.Size = new Size(180, 23);
            btnEnviarManifestacao.TabIndex = 10;
            btnEnviarManifestacao.Text = "&4. Enviar Manifestação";
            btnEnviarManifestacao.UseVisualStyleBackColor = true;
            btnEnviarManifestacao.Click += btnEnviarManifestacao_Click;
            // 
            // btnEnviar
            // 
            btnEnviar.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnEnviar.Location = new Point(6, 89);
            btnEnviar.Name = "btnEnviar";
            btnEnviar.Size = new Size(180, 23);
            btnEnviar.TabIndex = 9;
            btnEnviar.Text = "&3. Enviar DPS";
            btnEnviar.UseVisualStyleBackColor = true;
            btnEnviar.Click += btnEnviar_Click;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(6, 67);
            label5.Name = "label5";
            label5.Size = new Size(68, 15);
            label5.TabIndex = 10;
            label5.Text = "Certificado:";
            // 
            // txtCertificado
            // 
            txtCertificado.BackColor = SystemColors.Window;
            txtCertificado.Location = new Point(6, 85);
            txtCertificado.Name = "txtCertificado";
            txtCertificado.ReadOnly = true;
            txtCertificado.Size = new Size(301, 23);
            txtCertificado.TabIndex = 5;
            // 
            // tbcRetornos
            // 
            tbcRetornos.Controls.Add(tpXmlEnvio);
            tbcRetornos.Controls.Add(tpRetornoXml);
            tbcRetornos.Controls.Add(tpRetornoCsv);
            tbcRetornos.Controls.Add(tpRetornoJson);
            tbcRetornos.Controls.Add(tpRetornoTipado);
            tbcRetornos.Dock = DockStyle.Bottom;
            tbcRetornos.Location = new Point(0, 334);
            tbcRetornos.Name = "tbcRetornos";
            tbcRetornos.SelectedIndex = 0;
            tbcRetornos.Size = new Size(612, 308);
            tbcRetornos.TabIndex = 7;
            tbcRetornos.TabStop = false;
            // 
            // tpXmlEnvio
            // 
            tpXmlEnvio.Controls.Add(rtbXmlEnvio);
            tpXmlEnvio.Location = new Point(4, 24);
            tpXmlEnvio.Name = "tpXmlEnvio";
            tpXmlEnvio.Padding = new Padding(3);
            tpXmlEnvio.Size = new Size(604, 280);
            tpXmlEnvio.TabIndex = 4;
            tpXmlEnvio.Text = "XML Envio";
            tpXmlEnvio.UseVisualStyleBackColor = true;
            // 
            // rtbXmlEnvio
            // 
            rtbXmlEnvio.BackColor = SystemColors.Window;
            rtbXmlEnvio.BorderStyle = BorderStyle.None;
            rtbXmlEnvio.Dock = DockStyle.Fill;
            rtbXmlEnvio.Location = new Point(3, 3);
            rtbXmlEnvio.Name = "rtbXmlEnvio";
            rtbXmlEnvio.Size = new Size(598, 274);
            rtbXmlEnvio.TabIndex = 24;
            rtbXmlEnvio.TabStop = false;
            rtbXmlEnvio.Text = "";
            // 
            // tpRetornoXml
            // 
            tpRetornoXml.Controls.Add(rtbRetornoXml);
            tpRetornoXml.Location = new Point(4, 24);
            tpRetornoXml.Name = "tpRetornoXml";
            tpRetornoXml.Size = new Size(604, 280);
            tpRetornoXml.TabIndex = 3;
            tpRetornoXml.Text = "Retorno XML";
            tpRetornoXml.UseVisualStyleBackColor = true;
            // 
            // rtbRetornoXml
            // 
            rtbRetornoXml.BackColor = SystemColors.Window;
            rtbRetornoXml.BorderStyle = BorderStyle.None;
            rtbRetornoXml.Dock = DockStyle.Fill;
            rtbRetornoXml.Location = new Point(0, 0);
            rtbRetornoXml.Name = "rtbRetornoXml";
            rtbRetornoXml.Size = new Size(604, 280);
            rtbRetornoXml.TabIndex = 25;
            rtbRetornoXml.TabStop = false;
            rtbRetornoXml.Text = "";
            // 
            // tpRetornoCsv
            // 
            tpRetornoCsv.Controls.Add(rtbRetornoCsv);
            tpRetornoCsv.Location = new Point(4, 24);
            tpRetornoCsv.Name = "tpRetornoCsv";
            tpRetornoCsv.Padding = new Padding(3);
            tpRetornoCsv.Size = new Size(604, 280);
            tpRetornoCsv.TabIndex = 0;
            tpRetornoCsv.Text = "Retorno CSV";
            tpRetornoCsv.UseVisualStyleBackColor = true;
            // 
            // rtbRetornoCsv
            // 
            rtbRetornoCsv.BackColor = SystemColors.Window;
            rtbRetornoCsv.BorderStyle = BorderStyle.None;
            rtbRetornoCsv.Dock = DockStyle.Fill;
            rtbRetornoCsv.Location = new Point(3, 3);
            rtbRetornoCsv.Name = "rtbRetornoCsv";
            rtbRetornoCsv.Size = new Size(598, 274);
            rtbRetornoCsv.TabIndex = 26;
            rtbRetornoCsv.TabStop = false;
            rtbRetornoCsv.Text = "";
            // 
            // tpRetornoJson
            // 
            tpRetornoJson.Controls.Add(rtbRetornoJson);
            tpRetornoJson.Location = new Point(4, 24);
            tpRetornoJson.Name = "tpRetornoJson";
            tpRetornoJson.Padding = new Padding(3);
            tpRetornoJson.Size = new Size(604, 280);
            tpRetornoJson.TabIndex = 1;
            tpRetornoJson.Text = "Retorno JSON";
            tpRetornoJson.UseVisualStyleBackColor = true;
            // 
            // rtbRetornoJson
            // 
            rtbRetornoJson.BackColor = SystemColors.Window;
            rtbRetornoJson.BorderStyle = BorderStyle.None;
            rtbRetornoJson.Dock = DockStyle.Fill;
            rtbRetornoJson.Location = new Point(3, 3);
            rtbRetornoJson.Name = "rtbRetornoJson";
            rtbRetornoJson.Size = new Size(598, 274);
            rtbRetornoJson.TabIndex = 27;
            rtbRetornoJson.TabStop = false;
            rtbRetornoJson.Text = "";
            // 
            // tpRetornoTipado
            // 
            tpRetornoTipado.Controls.Add(rtbRetornoTipado);
            tpRetornoTipado.Location = new Point(4, 24);
            tpRetornoTipado.Name = "tpRetornoTipado";
            tpRetornoTipado.Size = new Size(604, 280);
            tpRetornoTipado.TabIndex = 2;
            tpRetornoTipado.Text = "Retorno Tipado";
            tpRetornoTipado.UseVisualStyleBackColor = true;
            // 
            // rtbRetornoTipado
            // 
            rtbRetornoTipado.BackColor = SystemColors.Window;
            rtbRetornoTipado.BorderStyle = BorderStyle.None;
            rtbRetornoTipado.Dock = DockStyle.Fill;
            rtbRetornoTipado.Location = new Point(0, 0);
            rtbRetornoTipado.Name = "rtbRetornoTipado";
            rtbRetornoTipado.Size = new Size(604, 280);
            rtbRetornoTipado.TabIndex = 28;
            rtbRetornoTipado.TabStop = false;
            rtbRetornoTipado.Text = "";
            // 
            // tbcComandos
            // 
            tbcComandos.Controls.Add(tabPage3);
            tbcComandos.Controls.Add(tabPage4);
            tbcComandos.Dock = DockStyle.Top;
            tbcComandos.Location = new Point(0, 0);
            tbcComandos.Name = "tbcComandos";
            tbcComandos.SelectedIndex = 0;
            tbcComandos.Size = new Size(612, 328);
            tbcComandos.TabIndex = 8;
            tbcComandos.TabStop = false;
            tbcComandos.SelectedIndexChanged += tbcComandos_SelectedIndexChanged;
            // 
            // tabPage3
            // 
            tabPage3.Controls.Add(gpbPrestador);
            tabPage3.Controls.Add(groupBox1);
            tabPage3.Controls.Add(gpbOperacoes);
            tabPage3.Location = new Point(4, 24);
            tabPage3.Name = "tabPage3";
            tabPage3.Padding = new Padding(3);
            tabPage3.Size = new Size(604, 300);
            tabPage3.TabIndex = 0;
            tabPage3.Text = "Configurar, enviar e consultar";
            tabPage3.UseVisualStyleBackColor = true;
            // 
            // gpbPrestador
            // 
            gpbPrestador.Controls.Add(btnConfigurarCertificado);
            gpbPrestador.Controls.Add(txtCertificado);
            gpbPrestador.Controls.Add(label4);
            gpbPrestador.Controls.Add(label5);
            gpbPrestador.Controls.Add(txtInscricaoMunicipal);
            gpbPrestador.Controls.Add(txtCnpj);
            gpbPrestador.Controls.Add(label3);
            gpbPrestador.Location = new Point(204, 6);
            gpbPrestador.Name = "gpbPrestador";
            gpbPrestador.Size = new Size(394, 128);
            gpbPrestador.TabIndex = 7;
            gpbPrestador.TabStop = false;
            gpbPrestador.Text = "Prestador";
            // 
            // btnConfigurarCertificado
            // 
            btnConfigurarCertificado.Location = new Point(313, 85);
            btnConfigurarCertificado.Name = "btnConfigurarCertificado";
            btnConfigurarCertificado.Size = new Size(75, 23);
            btnConfigurarCertificado.TabIndex = 6;
            btnConfigurarCertificado.Text = "Configurar";
            btnConfigurarCertificado.UseVisualStyleBackColor = true;
            btnConfigurarCertificado.Click += btnConfigurarCertificado_Click;
            // 
            // tabPage4
            // 
            tabPage4.Controls.Add(groupBox2);
            tabPage4.Location = new Point(4, 24);
            tabPage4.Name = "tabPage4";
            tabPage4.Padding = new Padding(3);
            tabPage4.Size = new Size(604, 300);
            tabPage4.TabIndex = 1;
            tabPage4.Text = "Imprimir";
            tabPage4.UseVisualStyleBackColor = true;
            // 
            // groupBox2
            // 
            groupBox2.Controls.Add(btnExportarPdf);
            groupBox2.Controls.Add(btnEditarImpressao);
            groupBox2.Controls.Add(btnVisualizarImpressao);
            groupBox2.Controls.Add(btnImprimir);
            groupBox2.Location = new Point(6, 6);
            groupBox2.Name = "groupBox2";
            groupBox2.Size = new Size(590, 288);
            groupBox2.TabIndex = 0;
            groupBox2.TabStop = false;
            groupBox2.Text = "Configurações";
            // 
            // btnExportarPdf
            // 
            btnExportarPdf.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnExportarPdf.Location = new Point(6, 60);
            btnExportarPdf.Name = "btnExportarPdf";
            btnExportarPdf.Size = new Size(180, 23);
            btnExportarPdf.TabIndex = 22;
            btnExportarPdf.Text = "E&xportar para PDF";
            btnExportarPdf.UseVisualStyleBackColor = true;
            btnExportarPdf.Click += btnExportarPdf_Click;
            // 
            // btnEditarImpressao
            // 
            btnEditarImpressao.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnEditarImpressao.Location = new Point(192, 31);
            btnEditarImpressao.Name = "btnEditarImpressao";
            btnEditarImpressao.Size = new Size(180, 23);
            btnEditarImpressao.TabIndex = 21;
            btnEditarImpressao.Text = "&Editar Documento";
            btnEditarImpressao.UseVisualStyleBackColor = true;
            btnEditarImpressao.Click += btnEditarImpressao_Click;
            // 
            // btnVisualizarImpressao
            // 
            btnVisualizarImpressao.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnVisualizarImpressao.Location = new Point(192, 60);
            btnVisualizarImpressao.Name = "btnVisualizarImpressao";
            btnVisualizarImpressao.Size = new Size(180, 23);
            btnVisualizarImpressao.TabIndex = 23;
            btnVisualizarImpressao.Text = "&Visualizar";
            btnVisualizarImpressao.UseVisualStyleBackColor = true;
            btnVisualizarImpressao.Click += btnVisualizarImpressao_Click;
            // 
            // btnImprimir
            // 
            btnImprimir.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point);
            btnImprimir.Location = new Point(6, 31);
            btnImprimir.Name = "btnImprimir";
            btnImprimir.Size = new Size(180, 23);
            btnImprimir.TabIndex = 20;
            btnImprimir.Text = "&Imprimir";
            btnImprimir.UseVisualStyleBackColor = true;
            btnImprimir.Click += btnImprimir_Click;
            // 
            // FormMain
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(612, 642);
            Controls.Add(tbcComandos);
            Controls.Add(tbcRetornos);
            Icon = (Icon)resources.GetObject("$this.Icon");
            MaximizeBox = false;
            Name = "FormMain";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Demo NFSe Nacional";
            groupBox1.ResumeLayout(false);
            groupBox1.PerformLayout();
            gpbOperacoes.ResumeLayout(false);
            gpbOperacoes.PerformLayout();
            tbcRetornos.ResumeLayout(false);
            tpXmlEnvio.ResumeLayout(false);
            tpRetornoXml.ResumeLayout(false);
            tpRetornoCsv.ResumeLayout(false);
            tpRetornoJson.ResumeLayout(false);
            tpRetornoTipado.ResumeLayout(false);
            tbcComandos.ResumeLayout(false);
            tabPage3.ResumeLayout(false);
            gpbPrestador.ResumeLayout(false);
            gpbPrestador.PerformLayout();
            tabPage4.ResumeLayout(false);
            groupBox2.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion
        private TextBox txtCnpjSh;
        private TextBox txtTokenSh;
        private Button btnLoadConfig;
        private TextBox txtCnpj;
        private GroupBox groupBox1;
        private Label label2;
        private Label label1;
        private Label label3;
        private GroupBox gpbOperacoes;
        private Label lblAmbiente;
        private Button btnAtualizarArquivos;
        private Button btnEnviar;
        private Button btnEnviarManifestacao;
        private Button btnConsultar;
        private Button btnConsultarEventos;
        private Button btnCancelar;
        private TabControl tbcRetornos;
        private TabPage tpRetornoCsv;
        private TabPage tpRetornoJson;
        private RichTextBox rtbRetornoCsv;
        private TabControl tbcComandos;
        private TabPage tabPage3;
        private Label label4;
        private TextBox txtInscricaoMunicipal;
        private Button btnConfigIni;
        private Label label5;
        private TextBox txtCertificado;
        private RichTextBox rtbRetornoJson;
        private TabPage tpRetornoTipado;
        private RichTextBox rtbRetornoTipado;
        private TabPage tpRetornoXml;
        private RichTextBox rtbRetornoXml;
        private Button btnConfigurarCertificado;
        private GroupBox gpbPrestador;
        private Button btnEnviarEmail;
        private Button btnMunicipiosConveniados;
        private TabPage tabPage4;
        private GroupBox groupBox2;
        private Button btnImprimir;
        private TabPage tpXmlEnvio;
        private RichTextBox rtbXmlEnvio;
        private Button btnExportarPdf;
        private Button btnEditarImpressao;
        private Button btnVisualizarImpressao;
        private Button btnDistribuicaoDFe;
    }
}