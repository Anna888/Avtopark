
{1.	��������������� ����� ������ ��������� a,b,c,d � ���������� r. 
��������� ������� ���������������� � �������������� ������� ���������� ������� ������������.}


uses
  crt;

var
  a, b, c, d, r,  S: real;

function f(x, y, z: real): real;
var
  p: real;
begin
  p := (x + y + z) / 2;
  result := Sqrt(p * (p - x) * (p - y) * (p - z));
end;

begin
  Writeln('������� 4 ������� � ��������� ����������������');
  readln(a, b, c, d, r);
   
  s := f(a, b, r)+f(r, c, d);
  writeln(S:4:2);
  readln;
   
end.
//CHANGES PROGRAMM GOOD ENGLISH
//���-�� ����� ��������
//��� �� ��������