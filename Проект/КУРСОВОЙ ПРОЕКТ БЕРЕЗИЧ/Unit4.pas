unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, mmsystem, IniFiles,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage,SHDocVw, Vcl.Menus, ShellAPI;

type
  TForm4 = class(TForm)
    CheckBox1: TCheckBox;
    Image1: TImage;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Ini: TIniFile;

implementation

{$R *.dfm}

uses Unit2;

procedure TForm4.Button1Click(Sender: TObject); //при постановке флажка в том или ином пункте сохран€ютс€ настройки
begin
 Ini:= TIniFile.create(Extractfilepath(Paramstr(0))+'config.ini');
Ini.WriteBool('Settings','Sound', checkbox1.checked); //измена настроек в config.ini
if form4.checkbox1.checked then
begin
  SndPlaySound('нажатие кнопки.wav', SND_ASYNC);//звук при нажатии на кнопки
begin
  Ini:= TIniFile.create(Extractfilepath(Paramstr(0))+'config.ini');
Ini.WriteBool('Settings','Sound2', checkbox2.checked);
if form4.checkbox2.checked then
begin
  SndPlaySound('mainmenu.wav', SND_ASYNC);
end;
end;
end;
end;


procedure TForm4.Button2Click(Sender: TObject);
begin
WinExec('Help\Help.chm', SW_MAXIMIZE);
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
Ini:= TIniFile.create(Extractfilepath(Paramstr(0))+'config.ini');
checkbox1.checked:=Ini.ReadBool('Settings','Sound', checkbox1.checked);
begin
Ini:= TIniFile.create(Extractfilepath(Paramstr(0))+'config.ini');
checkbox2.checked:=Ini.ReadBool('Settings','Sound2', checkbox2.checked);
end;
end;

procedure TForm4.Image1Click(Sender: TObject);
begin
Ini:= TIniFile.create(Extractfilepath(Paramstr(0))+'config.ini');
Ini.WriteBool('Settings','Sound', checkbox1.checked);
if form4.checkbox1.checked then
begin
  SndPlaySound('нажатие кнопки.wav', SND_ASYNC);
begin
form4.close;
  begin
Ini:= TIniFile.create(Extractfilepath(Paramstr(0))+'config.ini');
Ini.WriteBool('Settings','Sound2', checkbox2.checked);
if form4.checkbox2.checked then
begin
SndPlaySound('mainmenu.wav', SND_ASYNC);
end;
end;
end;
end;
end;

procedure TForm4.N1Click(Sender: TObject);
begin
ShellExecute(0,Pchar('Open'),PChar('Help.chm'),nil,nil,SW_SHOW);
end;

end.
