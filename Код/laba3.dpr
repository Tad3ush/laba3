program laba3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  f1, f2, x, curr, Sum, Eps: real;
  i, j, k: integer;

begin
  write(#201);
  for i := 1 to 7 do  Write(#205);
  Write(#203);
  for i := 1 to 9 do  Write(#205);
  Write(#203);
  for i := 1 to 15 do  Write(#205);
  Write(#203);
  for i := 1 to 15 do  Write(#205);
  Write(#203);
  for i := 1 to 15 do  Write(#205);
  Writeln(#187);
  Writeln(#186,'   x   ',#186,'  f1(x)  ',#186,'   e=0.0001    ',#186,'   e=0.00001   ',#186,'  e=0.000001   ',#186);
  Write(#186,'       ',#186,'         ');
  Write(#204);
  for i := 1 to 9 do  Write(#205);
  Write(#203);
  for i := 1 to 5 do  Write(#205);
  Write(#206);
  for i := 1 to 9 do  Write(#205);
  Write(#203);
  for i := 1 to 5 do  Write(#205);
  Write(#206);
  for i := 1 to 9 do  Write(#205);
  Write(#203);
  for i := 1 to 5 do  Write(#205);
  Writeln(#185);
  Writeln(#186,'       ',#186,'         ',#186,'  f2(x)  ',#186,'  N  ',#186,'  f2(x)  ',#186,'  N  ',#186,'  f2(x)  ',#186,'  N  ',#186);
  x := -0.6;
  for j := 1 to 20 do
    begin
      Write(#204);
      for i := 1 to 7 do Write(#205);
      Write(#206);
      for i := 1 to 9 do Write(#205);
      Write(#206);
      for i := 1 to 9 do Write(#205);
      Write(#206);
      for i := 1 to 5 do Write(#205);
      Write(#206);
      for i := 1 to 9 do Write(#205);
      Write(#206);
      for i := 1 to 5 do Write(#205);
      Write(#206);
      for i := 1 to 9 do Write(#205);
      Write(#206);
      for i := 1 to 5 do Write(#205);
      Writeln(#185);
      f1 := Sin((Pi * x) / 2) / Cos((Pi * x) / 2);
      Write(#186,' ',x:0:2,' ');
      if x > 0 then write(' ');
      Write(#186,f1:0:6);
      if f1 > 0 then write(' ');
      Write(#186);
      Sum := 0;
      k := 0;
      repeat
        k := k + 1;
        Eps := 0.0001;
        curr := 1 / (sqr(2 * k - 1) - sqr(x));
        Sum := Sum + curr;
      until abs(curr) < Eps;
      f2 := 4 * x / Pi * Sum;
      Write(f2:0:6);
      if f2 > 0 then write(' ');
      Write(#186,' ', k,'  ',#186);
      repeat
        k := k + 1;
        Eps := 0.00001;
        curr := 1 / (sqr(2 * k - 1) - sqr(x));
        Sum := Sum + curr;
      until abs(curr) < Eps;
      f2 := 4 * x / Pi * Sum;
      Write(f2:0:6);
      if f2 > 0 then write(' ');
      Write(#186,' ', k,' ',#186);
      repeat
        k := k + 1;
        Eps := 0.000001;
        curr := 1 / (sqr(2 * k - 1) - sqr(x));
        Sum := Sum + curr;
      until abs(curr) < Eps;
      f2 := 4 * x / Pi * Sum;
      Write(f2:0:6);
      if f2 > 0 then write(' ');
      Writeln(#186,' ', k,' ',#186);
      x := x + 0.05;
    end;
  write(#200);
  for i := 1 to 7 do  Write(#205);
  Write(#202);
  for i := 1 to 9 do  Write(#205);
  Write(#202);
  for i := 1 to 9 do  Write(#205);
  Write(#202);
  for i := 1 to 5 do  Write(#205);
  Write(#202);
  for i := 1 to 9 do  Write(#205);
  Write(#202);
  for i := 1 to 5 do  Write(#205);
  Write(#202);
  for i := 1 to 9 do  Write(#205);
  Write(#202);
  for i := 1 to 5 do  Write(#205);
  Write(#188);
  readln;
end.
