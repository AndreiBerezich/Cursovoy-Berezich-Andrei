unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Menus, ShellAPI,mmsystem;

type
  TForm5 = class(TForm)
    WebBrowser1: TWebBrowser;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    aa: TMemo;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit3, Unit4, Unit2;

procedure TForm5.Button1Click(Sender: TObject); //�������� �� �����
begin
Form5.hide;
Form3.show;

end;

procedure TForm5.Button2Click(Sender: TObject); //����� ���������� � ����� �����
begin
WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� �����.htm');
end;

procedure TForm5.Button3Click(Sender: TObject);//����� ���������� � ���� � ����� �����������
begin
WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� �����������.htm');
end;

procedure TForm5.FormCreate(Sender: TObject); //����� ���������� � ���� � ������ �����
begin
WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������ �����.htm');
Form5.Image1.Picture.LoadFromFile ('������ ����� ����.jpg');
end;

procedure TForm5.Image10Click(Sender: TObject);//����� ���������� � ���� � ����� ������� ���������
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� ������� ���������.htm');
Form5.Image1.Picture.LoadFromFile ('����� ������� ��������� ����.jpg');
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image11Click(Sender: TObject);//������� �� ������� ����
begin
form5.close;
form2.show;
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image12Click(Sender: TObject);  //������� �� �����
begin
form5.close;
form3.show;
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;

end;

procedure TForm5.Image3Click(Sender: TObject); //����� ���������� � ���� � ������ �����
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������ �����.htm');
Form5.Image1.Picture.LoadFromFile ('������ ����� ����.jpg');
if form4.checkbox1.checked then    //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image4Click(Sender: TObject); //����� ���������� � ���� � ����� �����
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� �����.htm');
Form5.Image1.Picture.LoadFromFile ('����� ����� ����.jpg');
if form4.checkbox1.checked then    //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image5Click(Sender: TObject);//����� ���������� � ���� � ����� �����������
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� �����������.htm');
Form5.Image1.Picture.LoadFromFile('����.jpg');
if form4.checkbox1.checked then    //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image6Click(Sender: TObject); //����� ���������� � ���� � ������-�����
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������-�����.htm');
Form5.Image1.Picture.LoadFromFile ('������-�����.jpg');
if form4.checkbox1.checked then    //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image8Click(Sender: TObject);//����� ���������� � ���� � ������ ����������
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'������ ����������.htm');
Form5.Image1.Picture.LoadFromFile ('������ ���������� ����.jpg');
if form4.checkbox1.checked then    //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.Image9Click(Sender: TObject); //����� ���������� � ���� � ����� ������� �������
begin
Form5.WebBrowser1.Navigate(extractfilepath(paramstr(0))+'����� ������� �������.htm');
Form5.Image1.Picture.LoadFromFile ('����� ������� ������� ����.jpg');
if form4.checkbox1.checked then    //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm5.N1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'Help3.chm', nil,nil, SW_NORMAL);
end;

procedure TForm5.N2Click(Sender: TObject);
begin
close;
end;

end.
