namespace DemoNFseNacionalCSharp
{
    public partial class ChaveAcessoDialog : Form
    {
        public string ChaveAcesso { get; private set; } = string.Empty;

        public ChaveAcessoDialog()
        {
            InitializeComponent();
        }

        private void ChaveAcessoDialog_KeyDown(object sender, KeyEventArgs e)
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

        private void btnOK_Click(object sender, EventArgs e)
        {
            ChaveAcesso = txtChaveAcesso.Text;
            DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }
    }
}
