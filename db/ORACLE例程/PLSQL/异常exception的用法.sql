-- PL/SQL异常处理
declare
  e_integrity exception;
  -- 将自定义异常与oracle的错误关联起来
  -- 默认异常
  pragma exception_init(e_integrity, -2291);
  e_no_employee exception;
begin
  update emp set deptno = &dno where empno = &eno;
  if sql%notfound then
    raise e_no_employee;
  end if;
exception
  when e_integrity then
    dbms_output.put_line('该部门不存在!');
  when e_no_employee then
     dbms_output.put_line('该雇员不存在!');
end;

-- raise_application_error(error_code, error_message)的用法
-- raise_application_error只能在存储过程，函数和包中使用
create or replace procedure raise_demo
  (eno number, commosion number)
is
  v_comm emp.comm%type;
begin
  select comm into v_comm from emp where empno = eno;
  if v_comm  is null then 
    raise_application_error(-20001, '该雇员无补助');
  end if;
end;
