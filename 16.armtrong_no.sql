declare
n number := &n;
m number := n;
s number := 0;
a number := 0;
begin
while n <> 0
  loop
    a := mod(n,10);
    s := (a*a*a) + s;
    n := trunc(n/10);
  end loop;
  if s = m then
  dbms_output.put_line('Yes');
  else
  dbms_output.put_line('NO');
  end if;
end;
/