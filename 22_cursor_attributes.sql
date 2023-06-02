declare
cursor A is select ENAME,SAL from EMP order by SAL DESC;
B A%Rowtype;
begin
  open A;
  dbms_output.put_line('********************************');
  loop
    fetch A into B;
    dbms_output.put_line('Name : '|| B.ENAME);
    dbms_output.put_line('salary : '|| B.SAL);
    dbms_output.put_line('********************************');
    exit when A%NOTFOUND or A%ROWCOUNT = 10;
  end loop;
  close A;
end;
/
