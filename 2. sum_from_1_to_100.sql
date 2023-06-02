declare
n number := 1;
s number := 0;
begin
while n <= 100
  loop
    s := s+n;
    n := n+1;
  end loop;
  dbms_output.put_line(s);
end;