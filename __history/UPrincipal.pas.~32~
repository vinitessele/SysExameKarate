unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Aluno1: TMenuItem;
    tecnicas1: TMenuItem;
    Faixas1: TMenuItem;
    Realizacao1: TMenuItem;
    Image1: TImage;
    Grupo1: TMenuItem;
    FaixasxTcnicas1: TMenuItem;
    Exame1: TMenuItem;
    ConfiguraoBancoDados1: TMenuItem;
    Academia1: TMenuItem;
    Impresso1: TMenuItem;
    FichadeExameporaluno1: TMenuItem;
    Resumosomentemdias1: TMenuItem;
    FichaemBranco1: TMenuItem;
    ExamedeFaixa1: TMenuItem;
    procedure Aluno1Click(Sender: TObject);
    procedure tecnicas1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Faixas1Click(Sender: TObject);
    procedure FaixasxTcnicas1Click(Sender: TObject);
    procedure Exame1Click(Sender: TObject);
    procedure ConfiguraoBancoDados1Click(Sender: TObject);
    procedure Academia1Click(Sender: TObject);
    procedure ExamedeFaixa1Click(Sender: TObject);
    procedure Resumosomentemdias1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

uses UDM, UAluno, UTecnica, UGrupo, UFaixa, UFaixaTecnica, UExame, UExameFaixa,
  UConfiguracao, UAcademia, UPesquisa, UResumo;

procedure TFPrincipal.Academia1Click(Sender: TObject);
begin
  FAcademia.ShowModal;
end;

procedure TFPrincipal.Aluno1Click(Sender: TObject);
begin
  FAluno.ShowModal;
end;

procedure TFPrincipal.ConfiguraoBancoDados1Click(Sender: TObject);
begin
  FConfiguracao.ShowModal;
end;

procedure TFPrincipal.Exame1Click(Sender: TObject);
begin
  FCadExame.ShowModal;
end;

procedure TFPrincipal.ExamedeFaixa1Click(Sender: TObject);
begin
  FExame.ShowModal;
end;

procedure TFPrincipal.Faixas1Click(Sender: TObject);
begin
  FFaixa.ShowModal;
end;

procedure TFPrincipal.FaixasxTcnicas1Click(Sender: TObject);
begin
  FFaixaTecnica.ShowModal;
end;

procedure TFPrincipal.Grupo1Click(Sender: TObject);
begin
  FGrupo.ShowModal;
end;

procedure TFPrincipal.Resumosomentemdias1Click(Sender: TObject);
begin
  FResumo.ShowModal;
end;

procedure TFPrincipal.tecnicas1Click(Sender: TObject);
begin
  FTecnicas.ShowModal;
end;

end.
