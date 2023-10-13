unit UManifestacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmManifestacao = class(TForm)
    chkPrestador: TCheckBox;
    chkTomador: TCheckBox;
    chkIntermediario: TCheckBox;
    chkAutorizacao: TCheckBox;
    chkRejeicao: TCheckBox;
    edtCodigo: TEdit;
    edtMotivo: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmManifestacao: TFrmManifestacao;

implementation

{$R *.dfm}

procedure TFrmManifestacao.btn1Click(Sender: TObject);
begin
  ModalResult := mrOk;
  CloseModal;
end;

procedure TFrmManifestacao.btn2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
  CloseModal;
end;

end.
