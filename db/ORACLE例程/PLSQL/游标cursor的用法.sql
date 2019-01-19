--�α�

-- ��ʾ�α� 
declare
  cursor emp_cursor is select ename, sal from emp where deptno = 10;
  v_ename emp.ename%type;
  v_sal emp.sal%type;
begin
  open emp_cursor;
  loop
    fetch emp_cursor into v_ename, v_sal;
    exit when emp_cursor%notfound;
    dbms_output.put_line(v_ename || ':' || v_sal);
  end loop;
  close emp_cursor;
end;

-- �������α�
-- �α����ֻ��ָ�����Ͳ���ָ������
declare
  cursor emp_cursor(no number) is select ename from emp where deptno = no;
  v_ename emp.ename%type;
begin
  open emp_cursor(10);
  loop
    fetch emp_cursor into v_ename;
    exit when emp_cursor%notfound;
    dbms_output.put_line(v_ename);
  end loop;
  close emp_cursor;
end;

-- �α�forѭ��
-- ��ʹ���α�forѭ��ʱ�����ݿ�������Ĵ��α���ȡ���ݲ��ر��α�
declare
  cursor emp_cursor is select ename, sal from emp;
  type emp_record_type is record(ename emp.ename%type,
  sal emp.sal%type);
  emp_record emp_record_type;
begin
  for emp_record in emp_cursor loop
    dbms_output.put_line('��' || emp_cursor%rowcount || '����Ա��' || emp_record.ename);
  end loop;
end;

-- �α�forѭ����ֱ��ʹ���Ӳ�ѯ
declare
  type emp_record_type is record(ename emp.ename%type,
  sal emp.sal%type);
  emp_record emp_record_type;
begin
  for emp_record in (select ename, sal from emp) loop
    dbms_output.put_line(emp_record.ename);
  end loop;
end;

-- �α�����
declare
  type emp_cursor_type is ref cursor;
  emp_cursor emp_cursor_type;
  emp_record emp%rowtype;
begin
  open emp_cursor for select * from emp where deptno = 10;
  loop
   fetch emp_cursor into emp_record;
   exit when emp_cursor%notfound; 
   dbms_output.put_line('��' || emp_cursor%rowcount || '����Ա��' || emp_record.ename); 
  end loop;
  close emp_cursor;
end;




