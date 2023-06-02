declare
a number := 0;
b number := 1;
c number;
i number;
begin
dbms_output.put_line(a);
dbms_output.put_line(b);
  for i in 1..5 loop
    c := a+b;
    a := b;
    b := c;
    dbms_output.put_line(c);    
  end loop;
end;
/