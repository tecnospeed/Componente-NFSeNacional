using System.Diagnostics;

namespace DemoNFseNacionalCSharp
{
    public partial class ManifestacaoDialog : Form
    {
        public int TipoManifestacao { get; set; }
        public string ChaveAcesso { get; private set; } = string.Empty;
        public string CodigoMotivo { get; set; } = string.Empty;
        public string DescricaoMotivo { get; set; } = string.Empty;

        readonly Dictionary<int, string> TiposManifestacao = new()
        {
            { 1, "1 - Manifestação Confirmação do Prestador" },
            { 2, "2 - Manifestação Rejeição do Prestador" },
            { 3, "3 - Manifestação Confirmação do Tomador" },
            { 4, "4 - Manifestação Rejeição do Tomador" },
            { 5, "5 - Manifestação Confirmação do Intermediário" },
            { 6, "6 - Manifestação Rejeição do Intermediário" },
        };

        public ManifestacaoDialog()
        {
            InitializeComponent();
            cmbTipoManifestacao.DataSource = new BindingSource(TiposManifestacao, null);
            cmbTipoManifestacao.DisplayMember = "Value";
        }

        private void buttonOK_Click(object sender, EventArgs e)
        {
            TipoManifestacao = ((KeyValuePair<int, string>)cmbTipoManifestacao.SelectedItem).Key;
            ChaveAcesso = txtChaveAcesso.Text;
            CodigoMotivo = txtCodigoMotivo.Text;
            DescricaoMotivo = txtDescricaoMotivo.Text;
            DialogResult = DialogResult.OK;
        }

        private void buttonCancel_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }

        private void ManifestacaoDialog_KeyDown(object sender, KeyEventArgs e)
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
