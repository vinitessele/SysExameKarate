unit UPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TFPesquisa = class(TForm)
    GroupBox1: TGroupBox;
    EditPesquisa: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    procedure EditPesquisaChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPesquisa: TFPesquisa;

implementation

{$R *.dfm}

uses UDM;

procedure TFPesquisa.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TFPesquisa.EditPesquisaChange(Sender: TObject);
begin
  dm.FDQAlunoByNome.Active := True;
  dm.FDQAlunoByNome.Close;
  dm.FDQAlunoByNome.ParamByName('aluno').AsString :=
    '%' + EditPesquisa.Text + '%';
  dm.FDQAlunoByNome.Open();
end;

end.
