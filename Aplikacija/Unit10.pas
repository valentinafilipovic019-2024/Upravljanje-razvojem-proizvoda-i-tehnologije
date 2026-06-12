unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm10 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
  public
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses
  Unit11, UnitGlMeni, UnitPrijava;

procedure TForm10.Image1Click(Sender: TObject);
begin
Application.CreateForm(TForm11, Form11);
  Form11.Show;
  Self.Hide;
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm2, Form2);
  Form2.Show;
  Self.Hide;
end;

end.
