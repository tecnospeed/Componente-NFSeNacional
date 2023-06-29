namespace DemoNFseNacionalCSharp
{
    partial class ManifestacaoDialog
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            btnOk = new Button();
            btnCancel = new Button();
            txtChaveAcesso = new TextBox();
            panel2 = new Panel();
            label2 = new Label();
            txtCodigoMotivo = new TextBox();
            label3 = new Label();
            txtDescricaoMotivo = new TextBox();
            label4 = new Label();
            cmbTipoManifestacao = new ComboBox();
            panel2.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(12, 62);
            label1.Name = "label1";
            label1.Size = new Size(110, 15);
            label1.TabIndex = 0;
            label1.Text = "Chave Acesso NFSe";
            // 
            // btnOk
            // 
            btnOk.Location = new Point(277, 15);
            btnOk.Name = "btnOk";
            btnOk.Size = new Size(75, 23);
            btnOk.TabIndex = 5;
            btnOk.Text = "OK";
            btnOk.UseVisualStyleBackColor = true;
            btnOk.Click += buttonOK_Click;
            // 
            // btnCancel
            // 
            btnCancel.Location = new Point(358, 15);
            btnCancel.Name = "btnCancel";
            btnCancel.Size = new Size(75, 23);
            btnCancel.TabIndex = 6;
            btnCancel.Text = "Cancelar";
            btnCancel.UseVisualStyleBackColor = true;
            btnCancel.Click += buttonCancel_Click;
            // 
            // txtChaveAcesso
            // 
            txtChaveAcesso.Location = new Point(12, 80);
            txtChaveAcesso.Name = "txtChaveAcesso";
            txtChaveAcesso.Size = new Size(421, 23);
            txtChaveAcesso.TabIndex = 1;
            // 
            // panel2
            // 
            panel2.BackColor = SystemColors.Control;
            panel2.Controls.Add(btnOk);
            panel2.Controls.Add(btnCancel);
            panel2.Dock = DockStyle.Bottom;
            panel2.Location = new Point(0, 207);
            panel2.Name = "panel2";
            panel2.Size = new Size(445, 50);
            panel2.TabIndex = 24;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(12, 18);
            label2.Name = "label2";
            label2.Size = new Size(104, 15);
            label2.TabIndex = 26;
            label2.Text = "Tipo Manifestação";
            // 
            // txtCodigoMotivo
            // 
            txtCodigoMotivo.Location = new Point(12, 124);
            txtCodigoMotivo.Name = "txtCodigoMotivo";
            txtCodigoMotivo.Size = new Size(421, 23);
            txtCodigoMotivo.TabIndex = 2;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(12, 106);
            label3.Name = "label3";
            label3.Size = new Size(87, 15);
            label3.TabIndex = 28;
            label3.Text = "Codigo Motivo";
            // 
            // txtDescricaoMotivo
            // 
            txtDescricaoMotivo.Location = new Point(12, 168);
            txtDescricaoMotivo.Name = "txtDescricaoMotivo";
            txtDescricaoMotivo.Size = new Size(421, 23);
            txtDescricaoMotivo.TabIndex = 3;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(12, 150);
            label4.Name = "label4";
            label4.Size = new Size(99, 15);
            label4.TabIndex = 30;
            label4.Text = "Descrição motivo";
            // 
            // cmbTipoManifestacao
            // 
            cmbTipoManifestacao.DropDownStyle = ComboBoxStyle.DropDownList;
            cmbTipoManifestacao.FormattingEnabled = true;
            cmbTipoManifestacao.Location = new Point(12, 36);
            cmbTipoManifestacao.Name = "cmbTipoManifestacao";
            cmbTipoManifestacao.Size = new Size(421, 23);
            cmbTipoManifestacao.TabIndex = 0;
            // 
            // ManifestacaoDialog
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.Window;
            ClientSize = new Size(445, 257);
            Controls.Add(cmbTipoManifestacao);
            Controls.Add(txtDescricaoMotivo);
            Controls.Add(label4);
            Controls.Add(txtCodigoMotivo);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(panel2);
            Controls.Add(txtChaveAcesso);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            KeyPreview = true;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "ManifestacaoDialog";
            ShowInTaskbar = false;
            StartPosition = FormStartPosition.CenterParent;
            Text = "Enviar Manifestação";
            KeyDown += ManifestacaoDialog_KeyDown;
            panel2.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Button btnOk;
        private Button btnCancel;
        private TextBox txtChaveAcesso;
        private Panel panel2;
        private Label label2;
        private TextBox txtCodigoMotivo;
        private Label label3;
        private TextBox txtDescricaoMotivo;
        private Label label4;
        private ComboBox cmbTipoManifestacao;
    }
}