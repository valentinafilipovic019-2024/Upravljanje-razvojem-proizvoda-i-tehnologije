unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, UnitGlMeni;

type
  TForm21 = class(TForm)
    Image1: TImage;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ListBoxPorudzbine: TListBox;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
  public
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

procedure TForm21.Button1Click(Sender: TObject);
var
  SveZajedno: string;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (ComboBox2.ItemIndex = -1) then
  begin
    ShowMessage('Morate popuniti sva polja i izabrati stavku iz liste!');
    Exit;
  end;

  SveZajedno := 'Izabrano: ' + ComboBox2.Text + #13#10 +
                'Količina: ' + Edit1.Text + 'kg/kom' + #13#10 +
                'Razlog: ' + Edit2.Text;

  ShowMessage(SveZajedno);
end;

procedure TForm21.ComboBox1Change(Sender: TObject);
begin

  ListBoxPorudzbine.Clear;

  if ComboBox1.Text = 'Katarina Nikolic' then
  begin
    ListBoxPorudzbine.Items.Add('Nugat torta (1 kg)');
    ListBoxPorudzbine.Items.Add('Ruske kape (10 kom)');
    ListBoxPorudzbine.Items.Add('Ukupno: 1300 din');
  end
  else if ComboBox1.Text = 'Luka Aleksic' then
  begin
    ListBoxPorudzbine.Items.Add('Makaronsi (1 set)');
    ListBoxPorudzbine.Items.Add('Ferrero torta (1 kg)');
    ListBoxPorudzbine.Items.Add('Ukupno: 1450 din');
  end
  else if ComboBox1.Text = 'Pedja Milosavljevic' then
  begin
    ListBoxPorudzbine.Items.Add('Makaronsi (1 set)');
    ListBoxPorudzbine.Items.Add('Torta sa lesnicima (5 kg)');
    ListBoxPorudzbine.Items.Add('Ukupno: 2500 din');
  end
  else if ComboBox1.Text = 'Kristina Ristic' then
  begin
    ListBoxPorudzbine.Items.Add('Cookies (1 set)');
    ListBoxPorudzbine.Items.Add('Nugat torta (1 kg)');
    ListBoxPorudzbine.Items.Add('Ukupno: 1750 din');
  end
  else if ComboBox1.Text = 'Lazar Stojkovic' then
  begin
    ListBoxPorudzbine.Items.Add('Makaronsi (1 set)');
    ListBoxPorudzbine.Items.Add('Torta sa jagodama (1 kg)');
    ListBoxPorudzbine.Items.Add('Ukupno: 2450 din');
  end
  else if ComboBox1.Text = 'Mihajlo Todorovic' then
  begin
    ListBoxPorudzbine.Items.Add('Cookies (1 set)');
    ListBoxPorudzbine.Items.Add('Mozart torta (1 kg)');
    ListBoxPorudzbine.Items.Add('Ukupno: 1850 din');
  end
  else
  begin
    ListBoxPorudzbine.Items.Add('Nema istorije');
  end;
end;


procedure TForm21.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
Form3.Show;
Self.Hide;
end;

end.
