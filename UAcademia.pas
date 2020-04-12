unit UAcademia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtDlgs, Vcl.imaging.jpeg;

type
  TFAcademia = class(TFModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    OpenPictureDialog1: TOpenPictureDialog;
    btnlogo: TBitBtn;
    DBImage1: TDBImage;
    procedure btnlogoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcademia: TFAcademia;

implementation

{$R *.dfm}

uses UDM;

procedure TFAcademia.btnlogoClick(Sender: TObject);
var
  picture: TPicture;
begin
  inherited;
  If OpenPictureDialog1.Execute Then
  begin
    DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DBImage1.Stretch:=True;
  end;
end;

procedure TFAcademia.FormShow(Sender: TObject);
begin
  inherited;
dm.FDQAcademia.Active:=True;
dm.FDQAcademia.Close;
dm.FDQAcademia.Open();
end;

end.
