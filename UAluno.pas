unit UAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFAluno = class(TFModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAluno: TFAluno;

implementation

{$R *.dfm}

end.
