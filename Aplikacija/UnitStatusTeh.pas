unit UnitStatusTeh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm14 = class(TForm)
    Image1: TImage;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);

  private
  public
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses
  Unit12, UnitGlMeni;

procedure TForm14.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm12, Form12);
  Form12.Show;
  Self.Hide;
end;



end.
