-- PL/SQL�쳣����
declare
  e_integrity exception;
  -- ���Զ����쳣��oracle�Ĵ����������
  -- Ĭ���쳣
  pragma exception_init(e_integrity, -2291);
  e_no_employee exception;
begin
  update emp set deptno = &dno where empno = &eno;
  if sql%notfound then
    raise e_no_employee;
  end if;
exception
  when e_integrity then
    dbms_output.put_line('�ò��Ų�����!');
  when e_no_employee then
     dbms_output.put_line('�ù�Ա������!');
end;

-- raise_application_error(error_code, error_message)���÷�
-- raise_application_errorֻ���ڴ洢���̣������Ͱ���ʹ��
create or replace procedure raise_demo
  (eno number, commosion number)
is
  v_comm emp.comm%type;
begin
  select comm into v_comm from emp where empno = eno;
  if v_comm  is null then 
    raise_application_error(-20001, '�ù�Ա�޲���');
  end if;
end;
