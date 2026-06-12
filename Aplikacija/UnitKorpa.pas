unit UnitKorpa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TForm6 = class(TForm)
    Image13: TImage;
    SpeedButton1: TSpeedButton;

    procedure SpeedButton1Click(Sender: TObject);
  private
  public
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses
  UnitPlacanje;



procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
          Application.CreateForm(TForm7, Form7);

  Form7.Show;
  Self.Hide;
end;

end.
