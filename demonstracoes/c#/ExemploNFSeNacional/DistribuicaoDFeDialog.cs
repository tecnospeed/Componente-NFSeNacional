using NFSeNacionalX;

namespace DemoNFseNacionalCSharp
{
    public partial class DistribuicaoDFeDialog : Form
    {
        public TipoConsultaDFe _tipoConsultaDFe { get; private set; } = TipoConsultaDFe.tDFePorChave;
        public string _chaveOrNsu { get; private set; } = string.Empty;

        public DistribuicaoDFeDialog()
        {
            InitializeComponent();
        }

        private void DistribuicaoDFeDialog_KeyDown(object sender, KeyEventArgs e)
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
            if (rdbPorChave.Checked)
                _tipoConsultaDFe = TipoConsultaDFe.tDFePorChave;
            else if (rdbPorNSU.Checked)
                _tipoConsultaDFe = TipoConsultaDFe.tDFePorNSU;
            else if (rdbPorLoteNSU.Checked)
                _tipoConsultaDFe = TipoConsultaDFe.tDFePorLoteNSU;
            else
                _tipoConsultaDFe = TipoConsultaDFe.tDFePorChave;

            _chaveOrNsu = txtChaveOrNsu.Text;
            
            DialogResult = DialogResult.OK;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }
    }
}
