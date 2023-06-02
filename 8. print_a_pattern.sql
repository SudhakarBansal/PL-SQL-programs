declare
a number;
b number;
begin
  for a in 1..5 loop
    for b in 1..a loop
      dbms_output.put(b||' ');
    end loop;
      dbms_output.put_line('');
  end loop;
end;