declare 
  v_ename emp.ename%TYPE;
  v_sal emp.sal%TYPE;
  c_tax_rate constant number(3,2) := 0.03;
  v_tax_sal number(6,2);
begin
  select ename, sal into v_ename, v_sal from emp where empno = &no;
  v_tax_sal := v_sal * c_tax_rate;
  dbms_output.put_line('��Ա����' || v_ename);
  dbms_output.put_line('��Ա���ʣ�' || v_sal);
  dbms_output.put_line('����˰��' || v_tax_sal);
end;
