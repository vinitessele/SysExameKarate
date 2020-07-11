unit UFaixaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFFaixaTecnica = class(TFModelo)
    ComboBox1: TComboBox;
    Label1: TLabel;
    Image2: TImage;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    DataSource2: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    procedure CarregarListaTecnicas;
    procedure CarregarFaixaTecnica;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFaixaTecnica: TFFaixaTecnica;

implementation

{$R *.dfm}

uses UDM;

procedure TFFaixaTecnica.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  DM.fdqfaixatecnica.Append;
  DM.FDQfaixatecnicafaixa_id.AsInteger := DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQfaixatecnicatecnica_id.AsInteger :=
    DM.FDQListTecnicatecnica_id.AsInteger;
  DM.fdqfaixatecnica.Post;
  DM.FDConnection1.CommitRetaining;
  ShowMessage('Salvo com sucesso!');
  // CarregarListaTecnicas;
  CarregarFaixaTecnica
end;

procedure TFFaixaTecnica.DBGrid2DblClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  ShowMessage(DM.FDQListaTecnicaFaixatecnica_descricao.asstring);

  sql := 'delete from faixatecnica where faixatecnica_id=' +
    DM.FDQListaTecnicaFaixafaixatecnica_id.asstring;
  DM.FDConnection1.ExecSQL(sql);
  DM.FDConnection1.CommitRetaining;
  CarregarFaixaTecnica;
  CarregarListaTecnicas;
end;

procedure TFFaixaTecnica.CarregarListaTecnicas;
begin
  DM.FDQListTecnica.Active := True;
  DM.FDQListTecnica.Close;
  DM.FDQListTecnica.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnica.Open;
end;

procedure TFFaixaTecnica.ComboBox1Change(Sender: TObject);
begin
  inherited;
  CarregarFaixaTecnica;
  CarregarListaTecnicas;
end;

procedure TFFaixaTecnica.FormShow(Sender: TObject);
begin
  inherited;
  DM.fdqfaixatecnica.Active := True;
  CarregarListaTecnicas;
  CarregarFaixaTecnica
end;

procedure TFFaixaTecnica.CarregarFaixaTecnica;
begin
  DM.FDQListaTecnicaFaixa.Active := True;
  DM.FDQListaTecnicaFaixa.Close;
  DM.FDQListaTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListaTecnicaFaixa.Open();
end;

end.
