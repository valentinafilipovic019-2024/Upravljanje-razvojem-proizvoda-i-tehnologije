unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite;

type
  TForm1 = class(TForm)
    Dobrodosli: TImage;
    MainMenu1: TMainMenu;
    Fajl1: TMenuItem;
    Proizvodi1: TMenuItem;
    Proizvodi2: TMenuItem;
    Razvoj1: TMenuItem;
    Izvestaji1: TMenuItem;
    dalje: TLabel;
    Label2: TLabel;
    Konekcija: TFDConnection;
    Upit: TFDQuery;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    procedure FormCreate(Sender: TObject);
    procedure Proizvodi1Click(Sender: TObject);
    procedure Proizvodi2Click(Sender: TObject);
    procedure Razvoj1Click(Sender: TObject);
    procedure Izvestaji1Click(Sender: TObject);
    procedure daljeClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitGlMeni, UnitMeniSc, UnitNugat, UnitKorpa, UnitPlacanje, UnitUspesno, UnitSsignin, UnitPrijava;

procedure TForm1.daljeClick(Sender: TObject);
begin
Application.CreateForm(TForm9, Form9);
  Form9.Show;
  Self.Hide;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Konekcija.Params.Clear;
  Konekcija.Params.Add('DriverID=SQLite');
  Konekcija.Params.Add('Database=baza_poslasticarnica.db');

  try
    Konekcija.Connected := True;
  except
    on E: Exception do
      ShowMessage('Greška sa bazom: ' + E.Message);
  end;

  Dobrodosli.Visible := True;
  Label2.Visible := True;
  dalje.Visible := True;
end;

procedure TForm1.Proizvodi1Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
end;

procedure TForm1.Proizvodi2Click(Sender: TObject);
begin
Application.CreateForm(TForm4, Form4);
  Form4.Show;
end;

procedure TForm1.Razvoj1Click(Sender: TObject);
begin
Application.CreateForm(TForm5, Form5);
  Form5.Show;
end;

procedure TForm1.Izvestaji1Click(Sender: TObject);
begin
Application.CreateForm(TForm6, Form6);
  Form6.Show;
end;

end.
