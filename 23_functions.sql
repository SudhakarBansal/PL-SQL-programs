CREATE OR REPLACE FUNCTION E_DETAILS(ENO NUMBER) RETURN NUMBER
IS
HDATE EMP.HIREDATE%TYPE;
EXP NUMBER(6,3);
BEGIN
  SELECT HIREDATE INTO HDATE FROM EMP WHERE EMPNO = ENO;
  EXP = MONTHS_BETWEEN(SYSDATE,HDATE)/12;
  RETURN EXP;
END;
/

DECLARE
E NUMBER;
BEGIN
  E := E_DETAILS(7499);
  DBMS_OUTPUT.PUT_LINE('EXPERIENCE IS : '|| E);
END;
/