declare
Name EMP.ENAME%type;
salary EMP.SAL%type;
Dep DEPT.DNAME%type;
cursor A is select ENAME,SAL,DNAME from EMP, DEPT where EMP.DEPTNO = DEPT.DEPTNO
order by SAL DESC;
begin
  open A;
  loop
    fetch A into Name, salary, Dep;
    dbms_output.put_line('Name : '|| Name);
    dbms_output.put_line('job : '|| salary);
    dbms_output.put_line('Department : '|| Dep);
    dbms_output.put_line('********************************');
    exit when A%ROWCOUNT = 10 OR A%NOTFOUND;
  end loop;
  close A;
end;
/
