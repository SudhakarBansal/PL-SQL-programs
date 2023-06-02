declare
n number := &n;
a number := 1;
i number;
begin
  for i in 1..n loop
    a := a * i;
  end loop;
  dbms_output.put_line(a);
end;
/