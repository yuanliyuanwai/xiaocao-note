create or replace function get_sal(no Number) return number is
  salary number(6, 2);
begin
  select sal into salary from emp where empno = no;
  return(salary);
end get_sal;
/
