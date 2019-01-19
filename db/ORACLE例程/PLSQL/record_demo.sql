declare 
  TYPE emp_record_type is record(
    name emp.ename%TYPE,
    salary emp.sal%TYPE,
    title emp.job%TYPE);
  emp_record emp_record_type;
begin
  select ename, sal, job into emp_record
  from emp where empno=7788;
  dbms_output.put_line('¹ÍÔ±Ãû£º' || emp_record.name);
end;
