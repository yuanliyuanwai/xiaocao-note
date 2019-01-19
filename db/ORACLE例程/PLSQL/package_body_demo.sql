create or replace package body emp_pkg is
  procedure update_sal(name varchar2, newsal number) is
  begin
    update emp set sal = newsal where lower(ename) = lower(name);
  end;
  
  function annual_income(name varchar2) return number is
  annual_salary number(7, 2);
  begin
    select sal*12 + nvl(comm, 0) into annual_salary from emp
    where lower(ename) = lower(name);
    return annual_salary;
  end;
end emp_pkg;
/
