unit UnitSsignin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm9 = class(TForm)
    Image1: TImage;

    procedure FormShow(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
  public
  end;

var
  Form9: TForm9;

implementation

uses UnitGlMeni, UnitPrijava;

{$R *.dfm}

procedure TForm9.FormShow(Sender: TObject);
begin
  Self.WindowState := wsNormal;
  Self.BorderStyle := bsNone;
  Self.Width := 400;
  Self.Height := 730;
  Self.Left := (Screen.Width - Self.Width) div 2;
  Self.Top := (Screen.Height - Self.Height) div 2;
end;



procedure TForm9.Image1Click(Sender: TObject);
begin
Application.CreateForm(TForm2, Form2);
Form2.Show;
Self.Hide;
end;

end.
