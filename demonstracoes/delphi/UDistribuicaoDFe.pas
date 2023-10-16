unit UDistribuicaoDFe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  NFSeBaseX_TLB, spdNFSeNacional, Vcl.ComCtrls;

type
  TFrmDistribuicaoDFe = class(TForm)
    mmoRetorno: TMemo;
    pnlTopo: TPanel;
    rgDFeTipoNSU: TRadioGroup;
    edtChaveOrNsu: TEdit;
    lblChaveOrNsu: TLabel;
    btnConsultarDFe: TButton;
    btnTratarRetornoDFe: TButton;
    edtDiretorioDestino: TEdit;
    lblDiretorioDestino: TLabel;
    btnDescompactarXmlZip: TButton;
    pgcRetornos: TPageControl;
    tabRetorno: TTabSheet;
    tabRetornoJSON: TTabSheet;
    tabRetornoCSV: TTabSheet;
    tabRetornoTipado: TTabSheet;
    mmoRetJson: TMemo;
    mmoRetCsv: TMemo;
    mmoRetTipado: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure btnConsultarDFeClick(Sender: TObject);
    procedure btnTratarRetornoDFeClick(Sender: TObject);
    procedure btnDescompactarXmlZipClick(Sender: TObject);
  private
    { Private declarations }
    procedure getRetornoTipado;
  public
    { Public declarations }
    NFSe: TspdNFSeNacional;
  end;

var
  FrmDistribuicaoDFe: TFrmDistribuicaoDFe;

implementation

{$R *.dfm}

procedure TFrmDistribuicaoDFe.FormCreate(Sender: TObject);
begin
  NFSe := TspdNFSeNacional.Create(nil);
end;

procedure TFrmDistribuicaoDFe.FormDestroy(Sender: TObject);
begin
  NFSe.Free;
end;

procedure TFrmDistribuicaoDFe.getRetornoTipado;
var
  i: Integer;
begin
  mmoRetTipado.Clear;
  for i := 0 to NFSe.RetornoWS.Count - 1 do
  begin
    if NFSe.RetornoWS.Items[i].Status = 'EMPROCESSAMENTO' then
    begin
      mmoRetTipado.Lines.Add('Status: EMPROCESSAMENTO');
    end
    else if NFSe.RetornoWS.Items[i].Status = 'ERRO' then
    begin
      mmoRetTipado.Lines.Add('Status: ERRO');
      mmoRetTipado.Lines.Add('Motivo: ' + NFSe.RetornoWS.Items[i].Motivo);
    end
    else
    begin
      mmoRetTipado.Lines.Add('Status: ' + NFSe.RetornoWS.Items[i].Status);
      mmoRetTipado.Lines.Add('CNPJ: ' + NFSe.RetornoWS.Items[i].CNPJ);
      mmoRetTipado.Lines.Add('Inscricao Municipal: ' + NFSe.RetornoWS.Items[i].InscricaoMunicipal);
      mmoRetTipado.Lines.Add('Serie do DPS: ' + NFSe.RetornoWS.Items[i].SerieDps);
      mmoRetTipado.Lines.Add('Número do DPS: ' + NFSe.RetornoWS.Items[i].NumeroDps);
      mmoRetTipado.Lines.Add('Número da NFS-e: ' + NFSe.RetornoWS.Items[i].NumeroNFSe);
      mmoRetTipado.Lines.Add('Data de Emissão: ' + NFSe.RetornoWS.Items[i].DataEmissaoNFSe);
      mmoRetTipado.Lines.Add('Chave Acesso NFSe: ' + NFSe.RetornoWS.Items[i].ChaveAcessoNFSe);
      mmoRetTipado.Lines.Add('Situação: ' + NFSe.RetornoWS.Items[i].Situacao);
      mmoRetTipado.Lines.Add('Data De Cancelamento: ' + NFSe.RetornoWS.Items[i].DataCancelamento);
      mmoRetTipado.Lines.Add('Chave de Cancelamento: ' + NFSe.RetornoWS.Items[i].ChaveCancelamento);
      mmoRetTipado.Lines.Add('Motivo: ' + NFSe.RetornoWS.Items[i].Motivo);
      mmoRetTipado.Lines.Add('XML: ' + NFSe.RetornoWS.Items[i].XmlImpressao);
      mmoRetTipado.Lines.Add('Data de Autorização: ' + NFSe.RetornoWS.Items[i].DataAutorizacao);
      mmoRetTipado.Lines.Add('');
      mmoRetTipado.Lines.Add('================================================');
      mmoRetTipado.Lines.Add('');
    end;
  end;
end;

procedure TFrmDistribuicaoDFe.btnConsultarDFeClick(Sender: TObject);

  function getTipoConsultaDFe: TipoConsultaDFe;
  begin
    if rgDFeTipoNSU.ItemIndex = 0 then
      Result := tDFePorChave
    else if rgDFeTipoNSU.ItemIndex = 1 then
      Result := tDFePorNSU
    else
      Result := tDFePorLoteNSU;
  end;

begin
  mmoRetorno.Text := NFSe.ConsultarDistribuicaoDFe(getTipoConsultaDFe, edtChaveOrNsu.Text);
  mmoRetJson.Text := NFSe.RetornoJson;
  mmoRetCsv.Text := NFSe.RetornoCSV;
  getRetornoTipado;
end;

procedure TFrmDistribuicaoDFe.btnDescompactarXmlZipClick(Sender: TObject);
begin
  mmoRetorno.Text := NFSe.DescompactarXmlZip(mmoRetorno.Text);
  mmoRetJson.Text := NFSe.RetornoJson;
  mmoRetCsv.Text := NFSe.RetornoCSV;
  getRetornoTipado;
end;

procedure TFrmDistribuicaoDFe.btnTratarRetornoDFeClick(Sender: TObject);
begin
  NFSe.TratarRetornoConsultaDFe(mmoRetorno.Text, edtDiretorioDestino.Text);
  mmoRetJson.Text := NFSe.RetornoJson;
  mmoRetCsv.Text := NFSe.RetornoCSV;
  getRetornoTipado;
end;

end.
