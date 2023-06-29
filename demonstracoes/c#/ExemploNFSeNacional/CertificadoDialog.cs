namespace DemoNFseNacionalCSharp
{
    public partial class CertificadoDialog : Form
    {
        public string Caminho { get; private set; } = string.Empty;
        public string Senha { get; private set; } = string.Empty;

        public CertificadoDialog(string? caminho, string? senha)
        {
            InitializeComponent();
            txtCaminhoCertificado.Text = caminho;
            txtSenhaCertificado.Text = senha;
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            Caminho = txtCaminhoCertificado.Text;
            Senha = txtSenhaCertificado.Text;
            DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private void btnProcurarCertificado_Click(object sender, EventArgs e)
        {
            using OpenFileDialog openFileDialog = new();
            openFileDialog.Filter = "Arquivos de certificado (*.pfx)|*.pfx";
            if (openFileDialog.ShowDialog() == DialogResult.OK)
            {
                txtCaminhoCertificado.Text = openFileDialog.FileName;
            }
        }

        private void CertificadoDialog_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Escape)
            {
                btnCancel.PerformClick();
            }
            if (e.KeyCode == Keys.Enter)
            {
                btnOk.PerformClick();
            }
        }
    }
}
