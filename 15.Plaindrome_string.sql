declare
s varchar2(10) := '&s';
c varchar2(20);
l varchar2(10);
begin
for i in reverse 1..length(s) loop
  c := substr(s,i,1);
  l := l||c;   
  end loop;
  if s = l then
    dbms_output.put_line('Yes !');
  else
    dbms_output.put_line('No !');    
  end if;
end;
/