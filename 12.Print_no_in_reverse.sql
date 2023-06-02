declare
n number := &n;
b number := n;
r number := 0;
a number := 0;
begin
  while n <> 0
  loop
    a := mod(n,10);
    r := (r*10)+a;
    n := trunc(n/10);
  end loop;
  dbms_output.put_line('Revrse of number ' ||b||' is '||r);
end;