# Componente NFSe Nacional — Demo VB6

Demonstração de uso do **Componente NFSe Nacional** (ActiveX) no Microsoft Visual Basic 6.

Projeto: `DemoNFSeNacional.vbp`

## O que a demo faz

- Carrega a configuração do componente (`nfseNacionalConfig.ini`) e configura a Software House.
- Lista os certificados instalados.
- Gera/abre um TX2 de exemplo (`Tx2PadraoNacional.tx2`) e envia a DPS.
- Consulta e cancela NFS-e pela chave de acesso, e consulta os eventos da NFS-e.
- Consulta a NFS-e pelo número e série da DPS (**9. Consultar por DPS**).
- Distribuição DFe (**10. Distribuição DFe**): consulta por chave de acesso, por NSU ou
  por lote de NSU, trata o retorno (grava os XMLs num diretório) e descompacta o XML
  zipado. Mostra o retorno, o JSON, o CSV e o retorno tipado.
- Envia manifestação (Prestador, Tomador ou Intermediário — autorização ou rejeição).
- Consulta os municípios conveniados e atualiza os arquivos do componente.
- Visualiza, imprime e exporta a impressão para PDF.

## Antes de abrir o projeto

1. Instale o Componente NFSe Nacional (o instalador registra as DLLs/OCX).
2. Se precisar registrar à mão, num prompt **como administrador**, na pasta do componente:

   ```bat
   C:\Windows\SysWOW64\regsvr32.exe NFSeBaseX.ocx
   C:\Windows\SysWOW64\regsvr32.exe NFSeNacionalX.dll
   ```

   O VB6 é 32 bits: use sempre o `regsvr32` da pasta `SysWOW64`.
3. Os controles usados nos formulários são os padrão do VB6 (SP6): `TABCTL32.OCX`,
   `RICHTX32.OCX` e `COMDLG32.OCX`.

## Referências do projeto

| Referência | Arquivo | GUID / versão |
|---|---|---|
| NFSeBaseX Library | `NFSeBaseX.ocx` | `{9021D753-C43F-4DE0-AA10-27A067F6FAFE}` 1.0 |
| NFSeNacionalX Library | `NFSeNacionalX.dll` | `{94B9E0D4-C288-470E-BC08-112C397103A5}` 1.0 |

O VB6 encontra as bibliotecas pelo GUID registrado no Windows. Se aparecer
"MISSING" em **Project → References**, registre de novo as DLLs (passo 2).

## Como usar

1. Abra `DemoNFSeNacional.vbp` e rode (F5).
2. Informe o CNPJ e o Token da Software House e clique em **2. Load Config**.
   A demo não traz CNPJ, token nem senha: preencha com os seus dados. Sem o token, o
   pacote TecnoAccount recusa as operações com o webservice.
3. Escolha o certificado. O ambiente vem do `Ambiente` do INI (1 = produção, 2 = homologação).
4. Ajuste o `nfseNacionalConfig.ini` (botão **1. Configurar Arquivo INI**) com o CNPJ e a
   Inscrição Municipal do prestador.
5. Para **Consultar por DPS**, preencha também a `CIDADE` do prestador no
   `nfseNacionalConfig.ini` e rode o **2. Load Config** de novo: o componente usa a
   cidade para achar o município da DPS.
6. **Distribuição DFe** abre numa janela própria e usa o componente já carregado
   (passo 2). Em **Tratar Retorno**, informe a pasta onde os XMLs devem ser gravados.

## Observações

- Os logs de comunicação ficam em `Log\<CIDADE>_<CNPJ>\`, na pasta da demo
  (`NACIONAL_<CNPJ>` se a `CIDADE` estiver vazia).
- Os arquivos do VB6 (`.frm`, `.bas`, `.vbp`) ficam em CRLF e ANSI, e o `.frx`
  é binário. O `.gitattributes` desta pasta impede o git de convertê-los — sem
  isso o VB6 mostra "Errors during load" ao abrir o projeto.
- Guia geral do componente:
  https://atendimento.tecnospeed.com.br/hc/pt-br/articles/12236286816791-Guia-Geral-Componente-NFSe-Nacional
