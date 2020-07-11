unit UFinalizaExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFFinalizar = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFinalizar: TFFinalizar;

implementation

{$R *.dfm}

uses UDM, UPrincipal;

procedure TFFinalizar.DBGrid1DblClick(Sender: TObject);
var
  sql: string;

begin
  if dm.FDQFinalizaExamefinalizado.AsString = 'F' then
  begin
    sql := 'update exame set finalizado = '''' where exame_id =' +
      dm.FDQFinalizaExameexame_id.AsString;
  end
  else
  begin
    sql := 'update exame set finalizado =''F'' where exame_id =' +
      dm.FDQFinalizaExameexame_id.AsString;
  end;

  dm.FDConnection1.ExecSQL(sql);
  dm.FDConnection1.CommitRetaining;

  dm.FDQExame.Close;
  dm.FDQExame.Open();
  dm.FDQFinalizaExame.Close;
  dm.FDQFinalizaExame.Open();
end;

procedure TFFinalizar.FormShow(Sender: TObject);
begin
  dm.FDQExame.Active := True;
  dm.FDQFinalizaExame.Active := True;
end;

end.
