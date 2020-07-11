unit UFaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TFFaixa = class(TFModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFaixa: TFFaixa;

implementation

{$R *.dfm}

uses UDM;

procedure TFFaixa.FormShow(Sender: TObject);
begin
  inherited;
  dm.FDQFaixa.Active := True;
end;

end.
