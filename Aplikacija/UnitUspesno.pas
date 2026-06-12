unit UnitUspesno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm8 = class(TForm)
    Image15: TImage;
    procedure Image15Click(Sender: TObject);
  private
    { Private declarations }
  end;

var
  Form8: TForm8;

implementation

uses UnitGlMeni;

{$R *.dfm}

procedure TForm8.Image15Click(Sender: TObject);

begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

end.
