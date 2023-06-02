declare
n number := &n;
m number := n;
s number := 0;
a number := 0;
begin
while n <> 0
  loop
    a := mod(n,10);
    s := s+a;
    n := trunc(n/10);
  end loop;
  dbms_output.put_line('Sum of digits of '||m ||' is '||s);
end;
/