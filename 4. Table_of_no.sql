declare
n number := &n;
i number := 1;
begin
  while i <=10
  loop
    dbms_output.put_line(n ||' X '||i||' = '||(n * i));
    i := i+1;
  end loop;
end;