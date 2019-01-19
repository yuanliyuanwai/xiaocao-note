create or replace trigger update_cascade
  after update on dept  
  for each row
begin
  update emp set deptno=:new.deptno where deptno = :old.deptno;
end;
/
