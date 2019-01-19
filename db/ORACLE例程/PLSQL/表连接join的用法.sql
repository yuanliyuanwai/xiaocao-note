-- 产生笛卡尔乘积，不指定连接条件
select a.dname, b.ename from dept a, emp b;

select a.dname, b.ename from dept a, emp b where a.deptno = b.deptno and a.deptno = 10;
-- 默认是内连接inner join或者join
select a.dname, b.ename from dept a inner join emp b on a.deptno = b.deptno and a.deptno = 10;

-- 左外连接left outer join或者left join
-- 以左边的表为主除了取交集之外还包括左边的表不满足条件的数据
select a.dname, b.ename from dept a left join emp b on a.deptno = b.deptno and a.deptno = 10;

-- 右外连接right outer join 或者right join
-- 以右边的表为主除了取交集之外还包括右边的表不满足条件的数据
select a.dname, b.ename from dept a right join emp b on a.deptno = b.deptno and a.deptno = 10;

-- 完全外连接full outer join或者full join
-- 除了取交集外还包含左边和右边的所有不满足条件的记录
select a.dname, b.ename from dept a full outer join emp b on a.deptno = b.deptno and a.deptno = 10;
