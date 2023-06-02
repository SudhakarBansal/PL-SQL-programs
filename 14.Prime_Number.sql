declare
n number := &n;
i number := 2;
c number := 0;
begin
  while (i <= n/2)
  loop
    if mod(n,i) = 0 then
      dbms_output.put_line('Not a Prime...');
      dbms_output.put_line('No. is divisble by '||i);
      c := 1;
      exit;
    end if;
    i := i+1;
  end loop;
  if c = 0 then
  dbms_output.put_line('Prime Number...');
  end if;
end;