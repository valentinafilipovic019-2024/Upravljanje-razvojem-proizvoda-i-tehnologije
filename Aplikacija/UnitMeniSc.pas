unit UnitMeniSc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  UnitNugat, Unit22, Vcl.Imaging.pngimage;
type
  TForm4 = class(TForm)
    ScrollBox1: TScrollBox;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label5: TLabel;
    Pretraga: TEdit;
    Button1: TButton;
    procedure Image6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
Application.CreateForm(TForm22, Form22);
  Form22.Show;
  Self.Hide;
end;

procedure TForm4.Image6Click(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);
  Form5.Show;
  Self.Hide;
end;



end.
