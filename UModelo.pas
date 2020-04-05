unit UModelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFModelo = class(TForm)
    PanelTooBar: TPanel;
    DBNavigator1: TDBNavigator;
    StatusBar1: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModelo: TFModelo;

implementation

{$R *.dfm}

end.
