declare
  TYPE ename_table_type is TABLE OF emp.ename%TYPE
  INDEX BY BINARY_INTEGER;
  ename_table ename_table_type;
begin
  select ename into ename_table(-1) from emp
  where empno = 7788;
  dbms_output.put_line('¹ÍÔ±Ãû£º' || ename_table(-1));
end;
