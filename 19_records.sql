declare
type pks is record
(
    eno EMP.EMPNO%type,
    ename EMP.ENAME%type,
    esal EMP.SAL%type
);
p1 pks;
begin
  select EMPNO,ENAME,SAL into p1 from EMP where EMPNO = &eno;
  dbms_output.put_line('employee no : '|| p1.eno);
  dbms_output.put_line('Name : '|| p1.ename);
  dbms_output.put_line('salary : '|| p1.esal ); 
  exception
    when no_data_found then
    dbms_output.put_line('NO RECORD...');
end;
/