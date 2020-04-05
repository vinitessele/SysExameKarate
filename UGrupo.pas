unit UGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFGrupo = class(TFModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGrupo: TFGrupo;

implementation

{$R *.dfm}

uses UDM;

procedure TFGrupo.FormShow(Sender: TObject);
begin
  inherited;
  dm.FDQGrupo.Active := True;
  dm.FDQGrupo.Close;
  dm.FDQGrupo.Open();
end;

end.
