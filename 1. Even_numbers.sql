declare
a number := 2;
begin
while a<=10
loop
dbms_output.put_line(a);
a := a + 2;
end loop;  
end;