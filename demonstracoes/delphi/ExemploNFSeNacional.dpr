program ExemploNFSeNacional;

uses
  Forms,
  UExemploNFSeNacional in 'UExemploNFSeNacional.pas' {frmExemplo},
  UManifestacao in 'UManifestacao.pas' {FrmManifestacao},
  UDistribuicaoDFe in 'UDistribuicaoDFe.pas' {FrmDistribuicaoDFe};

begin
  Application.Initialize;
  Application.CreateForm(TfrmExemplo, frmExemplo);
  //Application.CreateForm(TFrmManifestacao, FrmManifestacao);
  //Application.CreateForm(TFrmDistribuicaoDFe, FrmDistribuicaoDFe);
  Application.Run;
end.

