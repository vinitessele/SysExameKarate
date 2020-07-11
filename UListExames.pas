unit UListExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFListaExames = class(TForm)
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    btnExcluir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FListaExames: TFListaExames;
  nomealuno: string;

implementation

{$R *.dfm}

uses UDM, UExame;

procedure TFListaExames.btnExcluirClick(Sender: TObject);
var
  sql: string;
begin
  sql := 'delete from exametecnica where exame_id = ' +
    dm.FDQListExameexame_id.AsString;
  dm.FDConnection1.ExecSQL(sql);
  sql := EmptyStr;
  sql := 'delete from exame where exame_id=' + dm.FDQListExameexame_id.AsString;
  dm.FDConnection1.ExecSQL(sql);
  dm.FDConnection1.CommitRetaining;
  ShowMessage('Excluido com sucesso');
  dm.FDQListExame.Close;
  dm.FDQListExame.Open();
end;

procedure TFListaExames.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFListaExames.DBGrid1DblClick(Sender: TObject);
begin
  dm.FDQListTecnicasAlunoNotas.Active := True;
  dm.FDQListTecnicasAlunoNotas.Close;
  dm.FDQListTecnicasAlunoNotas.ParamByName('exame').AsInteger :=
    dm.FDQListExameexame_id.AsInteger;
  dm.FDQListTecnicasAlunoNotas.Open();
  dm.FDQAlunoByNome.Active := True;
  dm.FDQAluno.Active := True;
  dm.FDQAluno.Locate('aluno_id', dm.FDQListExamealuno_id.AsInteger, []);
  nomealuno := dm.FDQAlunoaluno_nome.AsString;
  Close;
end;

procedure TFListaExames.FormShow(Sender: TObject);
begin
  dm.FDQListExame.Active := True;
  dm.FDQListExame.Close;
  dm.FDQListExame.Open();
  nomealuno := EmptyStr;
end;

end.
