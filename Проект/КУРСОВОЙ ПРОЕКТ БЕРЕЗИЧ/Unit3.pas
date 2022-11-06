unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.MPlayer, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, mmsystem, Vcl.StdCtrls, ShellAPI, Vcl.Menus,
  Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    o: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit4, Unit5;

procedure TForm3.Button1Click(Sender: TObject);  //��� ������� ������� �� ������� �����
begin
Form3.hide;
Form2.show;
if form4.checkbox1.checked then
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image1Click(Sender: TObject); //��� ������� ������� �� ����� � ������� ���������� � ���� � ������ �����
begin
Form5.show;
Form3.close;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������ �����.htm');
Form5.Image1.Picture.LoadFromFile ('������ ����� ����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image2Click(Sender: TObject);   //��� ������� ������� �� ����� � ������� ���������� � ���� � ����� ������� �������
begin
Form3.close;
Form5.show;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� ������� �������.htm');
Form5.Image1.Picture.LoadFromFile ('����� ������� ������� ����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image3Click(Sender: TObject);//��� ������� ������� �� ����� � ������� ���������� � ���� � ������ ����������
begin
Form3.close;
Form5.show;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������ ����������.htm');
Form5.Image1.Picture.LoadFromFile ('������ ���������� ����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image5Click(Sender: TObject); //��� ������� ������� �� ����� � ������� ���������� � ���� � ����� �����������
begin
form5.show;
form3.close;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� �����������.htm');
Form5.Image1.Picture.LoadFromFile('����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
begin
end;
end;

procedure TForm3.Image6Click(Sender: TObject);//��� ������� ������� �� ����� � ������� ���������� � ���� � ������-�����
begin
form3.close;
form5.show;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������-�����.htm');
Form5.Image1.Picture.LoadFromFile ('������-�����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image7Click(Sender: TObject);//��� ������� ������� �� ����� � ������� ���������� � ���� � ����� ������� ���������
begin
Form3.close;
Form5.show;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� ������� ���������.htm');
Form5.Image1.Picture.LoadFromFile ('����� ������� ��������� ����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image8Click(Sender: TObject); //��� ������� ������� �� ����� � ������� ���������� � ���� � ����� �����
begin
form5.show;
form3.close;
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� �����.htm');
Form5.Image1.Picture.LoadFromFile ('����� ����� ����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm3.Image9Click(Sender: TObject); //������� �� ������� ����
begin
Form3.hide;
Form2.show;
if form4.checkbox1.checked then
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);//���� ������� ������
end;
end;


procedure TForm3.N1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'Help3.chm', nil,nil, SW_NORMAL);
end;

procedure TForm3.N2Click(Sender: TObject);
begin
close;
end;

end.
