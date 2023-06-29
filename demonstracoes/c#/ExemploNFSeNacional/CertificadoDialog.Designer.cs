namespace DemoNFseNacionalCSharp
{
    partial class CertificadoDialog
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
            btnProcurarCertificado = new Button();
            txtSenhaCertificado = new TextBox();
            label3 = new Label();
            txtCaminhoCertificado = new TextBox();
            btnCancel = new Button();
            btnOk = new Button();
            panel2 = new Panel();
            label2 = new Label();
            panel2.SuspendLayout();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(12, 18);
            label1.Name = "label1";
            label1.Size = new Size(306, 15);
            label1.TabIndex = 2;
            label1.Text = "Selecione o certificado que será utilizado para assinatura:";
            // 
            // btnProcurarCertificado
            // 
            btnProcurarCertificado.Location = new Point(343, 60);
            btnProcurarCertificado.Name = "btnProcurarCertificado";
            btnProcurarCertificado.Size = new Size(75, 23);
            btnProcurarCertificado.TabIndex = 2;
            btnProcurarCertificado.Text = "Procurar...";
            btnProcurarCertificado.UseVisualStyleBackColor = true;
            btnProcurarCertificado.Click += btnProcurarCertificado_Click;
            // 
            // txtSenhaCertificado
            // 
            txtSenhaCertificado.BackColor = SystemColors.Window;
            txtSenhaCertificado.Location = new Point(27, 108);
            txtSenhaCertificado.Name = "txtSenhaCertificado";
            txtSenhaCertificado.PasswordChar = '●';
            txtSenhaCertificado.Size = new Size(391, 23);
            txtSenhaCertificado.TabIndex = 3;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(27, 90);
            label3.Name = "label3";
            label3.Size = new Size(42, 15);
            label3.TabIndex = 17;
            label3.Text = "Senha:";
            // 
            // txtCaminhoCertificado
            // 
            txtCaminhoCertificado.BackColor = SystemColors.Window;
            txtCaminhoCertificado.Location = new Point(27, 60);
            txtCaminhoCertificado.Name = "txtCaminhoCertificado";
            txtCaminhoCertificado.Size = new Size(310, 23);
            txtCaminhoCertificado.TabIndex = 0;
            // 
            // btnCancel
            // 
            btnCancel.Location = new Point(358, 15);
            btnCancel.Name = "btnCancel";
            btnCancel.Size = new Size(75, 23);
            btnCancel.TabIndex = 5;
            btnCancel.Text = "Cancelar";
            btnCancel.UseVisualStyleBackColor = true;
            btnCancel.Click += btnCancel_Click;
            // 
            // btnOk
            // 
            btnOk.Location = new Point(277, 15);
            btnOk.Name = "btnOk";
            btnOk.Size = new Size(75, 23);
            btnOk.TabIndex = 4;
            btnOk.Text = "OK";
            btnOk.UseVisualStyleBackColor = true;
            btnOk.Click += btnOk_Click;
            // 
            // panel2
            // 
            panel2.BackColor = SystemColors.Control;
            panel2.Controls.Add(btnCancel);
            panel2.Controls.Add(btnOk);
            panel2.Dock = DockStyle.Bottom;
            panel2.Location = new Point(0, 155);
            panel2.Name = "panel2";
            panel2.Size = new Size(445, 50);
            panel2.TabIndex = 23;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(27, 42);
            label2.Name = "label2";
            label2.Size = new Size(59, 15);
            label2.TabIndex = 24;
            label2.Text = "Caminho:";
            // 
            // CertificadoDialog
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.Window;
            ClientSize = new Size(445, 205);
            Controls.Add(label2);
            Controls.Add(txtCaminhoCertificado);
            Controls.Add(btnProcurarCertificado);
            Controls.Add(panel2);
            Controls.Add(txtSenhaCertificado);
            Controls.Add(label3);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            KeyPreview = true;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "CertificadoDialog";
            ShowInTaskbar = false;
            StartPosition = FormStartPosition.CenterParent;
            Text = "Configurar Certificado";
            KeyDown += CertificadoDialog_KeyDown;
            panel2.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Label label1;
        private TextBox txtCaminhoCertificado;
        private TextBox txtSenhaCertificado;
        private Label label3;
        private Button btnProcurarCertificado;
        private Button btnCancel;
        private Button btnOk;
        private Panel panel2;
        private Label label2;
    }
}