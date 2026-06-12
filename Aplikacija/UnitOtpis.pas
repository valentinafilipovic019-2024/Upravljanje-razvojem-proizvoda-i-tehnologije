unit UnitOtpis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm18 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
  Form18: TForm18;

implementation

{$R *.dfm}

uses
  Unit13, UnitGlMeni;

procedure TForm18.Button1Click(Sender: TObject);
var
  Poruka: string;
begin
  Poruka := 'Potvrda unosa:' + #13#10 + #13#10 +
            'Proizvod: ' + Trim(Edit1.Text) + #13#10 +
            'Razlog: ' + Trim(Edit2.Text) + #13#10 +
            'Količina: ' + Trim(Edit3.Text);

  MessageDlg(Poruka, mtInformation, [mbOK], 0);
end;

procedure TForm18.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm13, Form13);
  Form13.Show;
  Self.Hide;
end;

procedure TForm18.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

end.
