unit UnitNabav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm19 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

uses
  Unit13, UnitGlMeni;

procedure TForm19.Button1Click(Sender: TObject);
var
  Poruka: string;
begin
  Poruka := 'Proizvod: ' + Trim(Edit1.Text) + #13#10 +
            'Količina: ' + Trim(Edit2.Text);

  MessageDlg(Poruka, mtInformation, [mbOK], 0);
end;

procedure TForm19.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm13, Form13);
  Form13.Show;
  Self.Hide;
end;

procedure TForm19.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

end.
