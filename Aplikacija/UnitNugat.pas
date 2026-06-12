unit UnitNugat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  UnitKorpa, Vcl.Imaging.pngimage;

type
  TForm5 = class(TForm)
    Image12: TImage;
    procedure Image12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Image12Click(Sender: TObject);
begin
Application.CreateForm(TForm6, Form6);
  Form6.Show;
  Self.Hide;
end;

end.
