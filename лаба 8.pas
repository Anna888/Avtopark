
{1.	Четырехугольник задан своими сторонами a,b,c,d и диагональю r. 
Вычислить площадь четырехугольника с использованием функции нахождения площади треугольника.}


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
  Writeln('введите 4 стороны и диагональ четырехугольника');
  readln(a, b, c, d, r);
   
  s := f(a, b, r)+f(r, c, d);
  writeln(S:4:2);
  readln;
   
end.
//CHANGES PROGRAMM GOOD ENGLISH
//что-то прога ругается
//уже не ругается