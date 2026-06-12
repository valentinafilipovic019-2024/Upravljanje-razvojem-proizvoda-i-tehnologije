unit UnitGlMeni;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm3 = class(TForm)
    Image10: TImage;
    Image11: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Pretrazi: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  Form3: TForm3;

implementation

uses
  UnitMeniSc, UnitPrijava;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form2.Show;
  Self.Hide
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  if Pretrazi.Text = '' then
    Pretrazi.Text := '';
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
  Application.CreateForm(TForm4, Form4);
  Form4.Show;
  Self.Hide;
end;

end.
