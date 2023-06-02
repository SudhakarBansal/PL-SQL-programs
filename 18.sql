declare
eno number := &eno;
erc EMP%Rowtype;
begin
  select * into erc from EMP where eno = EMPNO;
  dbms_output.put_line('employee no : '|| erc.EMPNO);
  dbms_output.put_line('Name : '|| erc.ENAME);
  dbms_output.put_line('salary : '|| erc.SAL);
  dbms_output.put_line('job : '|| erc.JOB);
  dbms_output.put_line('manager : '|| erc.MGR);
  dbms_output.put_line('hiredate : '|| erc.HIREDATE);
  dbms_output.put_line('commission : '|| erc.COMM);
  exception
    when no_data_found then
    dbms_output.put_line('NO record...')  ;
end;
/