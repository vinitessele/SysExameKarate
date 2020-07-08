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
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListaExames: TFListaExames;

implementation

{$R *.dfm}

uses UDM;

procedure TFListaExames.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFListaExames.FormShow(Sender: TObject);
begin
  dm.FDQListExame.Active := True;
  dm.FDQListExame.Close;
  dm.FDQListExame.Open();
end;

end.
