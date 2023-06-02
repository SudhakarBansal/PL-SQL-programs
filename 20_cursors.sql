declare
dno number := &dno;
cursor A is select * from EMP where DEPTNO = dno;
B A%Rowtype;
begin
open A;
loop
  fetch A into B;
  Exit when A%NOTFOUND;
  dbms_output.put_line('employee no : '|| B.EMPNO);
  dbms_output.put_line('Name : '|| B.ENAME);
  dbms_output.put_line('salary : '|| B.SAL);
  dbms_output.put_line('job : '|| B.JOB);
  dbms_output.put_line('manager : '|| B.MGR);
  dbms_output.put_line('hiredate : '|| B.HIREDATE);
end loop;
close A;
end;
/