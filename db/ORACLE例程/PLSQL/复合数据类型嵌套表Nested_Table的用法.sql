create or replace type emp_type as object (
  name varchar2(10), salary number(6, 2),
  hiredate date);
  
create or replace type emp_array is table of emp_type;

--当使用嵌套表作为表列时，必须要为其制定专门的存储表
create table dempartment(
  deptno number(2),
  dname varchar2(10),
  employee emp_array) nested table employee store as employee;
