unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
  public
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

uses
  Unit12, UnitGlMeni, Unit10;

procedure TForm11.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm12, Form12);
  Form12.Show;
  Self.Hide;
end;

procedure TForm11.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

procedure TForm11.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TForm10, Form10);
  Form10.Show;
  Self.Hide;
end;

end.
