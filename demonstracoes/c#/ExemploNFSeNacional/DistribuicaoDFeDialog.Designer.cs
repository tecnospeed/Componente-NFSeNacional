namespace DemoNFseNacionalCSharp
{
    partial class DistribuicaoDFeDialog
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
            lblChaveOrNsu = new Label();
            btnOk = new Button();
            btnCancel = new Button();
            txtChaveOrNsu = new TextBox();
            panel2 = new Panel();
            grpTipoConsultaDFe = new GroupBox();
            rdbPorChave = new RadioButton();
            rdbPorNSU = new RadioButton();
            rdbPorLoteNSU = new RadioButton();
            panel2.SuspendLayout();
            grpTipoConsultaDFe.SuspendLayout();
            SuspendLayout();
            // 
            // lblChaveOrNsu
            // 
            lblChaveOrNsu.AutoSize = true;
            lblChaveOrNsu.Location = new Point(23, 76);
            lblChaveOrNsu.Name = "lblChaveOrNsu";
            lblChaveOrNsu.Size = new Size(83, 15);
            lblChaveOrNsu.TabIndex = 0;
            lblChaveOrNsu.Text = "Chave ou NSU";
            // 
            // btnOk
            // 
            btnOk.Location = new Point(220, 15);
            btnOk.Name = "btnOk";
            btnOk.Size = new Size(75, 23);
            btnOk.TabIndex = 1;
            btnOk.Text = "OK";
            btnOk.UseVisualStyleBackColor = true;
            btnOk.Click += btnOK_Click;
            // 
            // btnCancel
            // 
            btnCancel.Location = new Point(301, 15);
            btnCancel.Name = "btnCancel";
            btnCancel.Size = new Size(75, 23);
            btnCancel.TabIndex = 2;
            btnCancel.Text = "Cancelar";
            btnCancel.UseVisualStyleBackColor = true;
            btnCancel.Click += btnCancel_Click;
            // 
            // txtChaveOrNsu
            // 
            txtChaveOrNsu.Location = new Point(23, 94);
            txtChaveOrNsu.Name = "txtChaveOrNsu";
            txtChaveOrNsu.Size = new Size(329, 23);
            txtChaveOrNsu.TabIndex = 0;
            // 
            // panel2
            // 
            panel2.BackColor = SystemColors.Control;
            panel2.Controls.Add(btnOk);
            panel2.Controls.Add(btnCancel);
            panel2.Dock = DockStyle.Bottom;
            panel2.Location = new Point(0, 141);
            panel2.Name = "panel2";
            panel2.Size = new Size(388, 50);
            panel2.TabIndex = 24;
            // 
            // grpTipoConsultaDFe
            // 
            grpTipoConsultaDFe.Controls.Add(rdbPorLoteNSU);
            grpTipoConsultaDFe.Controls.Add(rdbPorNSU);
            grpTipoConsultaDFe.Controls.Add(rdbPorChave);
            grpTipoConsultaDFe.Location = new Point(23, 12);
            grpTipoConsultaDFe.Name = "grpTipoConsultaDFe";
            grpTipoConsultaDFe.Size = new Size(329, 52);
            grpTipoConsultaDFe.TabIndex = 25;
            grpTipoConsultaDFe.TabStop = false;
            grpTipoConsultaDFe.Text = "Tipo Consulta DFe";
            // 
            // rdbPorChave
            // 
            rdbPorChave.AutoSize = true;
            rdbPorChave.Checked = true;
            rdbPorChave.Location = new Point(17, 22);
            rdbPorChave.Name = "rdbPorChave";
            rdbPorChave.Size = new Size(79, 19);
            rdbPorChave.TabIndex = 0;
            rdbPorChave.TabStop = true;
            rdbPorChave.Text = "Por Chave";
            rdbPorChave.UseVisualStyleBackColor = true;
            // 
            // rdbPorNSU
            // 
            rdbPorNSU.AutoSize = true;
            rdbPorNSU.Location = new Point(115, 22);
            rdbPorNSU.Name = "rdbPorNSU";
            rdbPorNSU.Size = new Size(69, 19);
            rdbPorNSU.TabIndex = 1;
            rdbPorNSU.Text = "Por NSU";
            rdbPorNSU.UseVisualStyleBackColor = true;
            // 
            // rdbPorLoteNSU
            // 
            rdbPorLoteNSU.AutoSize = true;
            rdbPorLoteNSU.Location = new Point(204, 22);
            rdbPorLoteNSU.Name = "rdbPorLoteNSU";
            rdbPorLoteNSU.Size = new Size(95, 19);
            rdbPorLoteNSU.TabIndex = 2;
            rdbPorLoteNSU.Text = "Por Lote NSU";
            rdbPorLoteNSU.UseVisualStyleBackColor = true;
            // 
            // DistribuicaoDFeDialog
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.Window;
            ClientSize = new Size(388, 191);
            Controls.Add(grpTipoConsultaDFe);
            Controls.Add(panel2);
            Controls.Add(txtChaveOrNsu);
            Controls.Add(lblChaveOrNsu);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            KeyPreview = true;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "DistribuicaoDFeDialog";
            ShowInTaskbar = false;
            StartPosition = FormStartPosition.CenterParent;
            Text = "Consultar Distribuição DFe";
            KeyDown += DistribuicaoDFeDialog_KeyDown;
            panel2.ResumeLayout(false);
            grpTipoConsultaDFe.ResumeLayout(false);
            grpTipoConsultaDFe.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblChaveOrNsu;
        private Button btnOk;
        private Button btnCancel;
        private TextBox txtChaveOrNsu;
        private Panel panel2;
        private GroupBox grpTipoConsultaDFe;
        private RadioButton rdbPorLoteNSU;
        private RadioButton rdbPorNSU;
        private RadioButton rdbPorChave;
    }
}