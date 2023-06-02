declare
a number;
b number;
c number := 1;
begin
  for a in 1..5 loop
    for b in 1..a loop
      dbms_output.put(c||' ');
      c:= c+1;
    end loop;
      dbms_output.put_line('');
  end loop;
end;