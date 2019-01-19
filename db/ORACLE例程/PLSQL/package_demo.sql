create or replace package emp_pkg is
  procedure update_sal(name varchar2, newsal number);
  function annual_income(name varchar2) return number;
end emp_pkg;
/
