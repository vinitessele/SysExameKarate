unit UConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.ExtCtrls, IniFiles, System.IOUtils, Vcl.Buttons;

type
  TFConfiguracao = class(TFModelo)
    Label1: TLabel;
    Label2: TLabel;
    EditServidor: TEdit;
    EditCaminho: TEdit;
    btnConfirma: TBitBtn;
    procedure btnConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracao: TFConfiguracao;

implementation

{$R *.dfm}

procedure TFConfiguracao.btnConfirmaClick(Sender: TObject);
var
  ArqIni: TIniFile;
begin
  inherited;
  ArqIni := TIniFile.Create(extractFilePath(ParamStr(0)) + 'Conf.ini');
  try
    ArqIni.WriteString('SERVIDOR', 'Servidor', EditServidor.Text);
    ArqIni.WriteString('SERVIDOR', 'Database', EditCaminho.Text);

  finally
    ArqIni.Free;
  end;
end;

end.
