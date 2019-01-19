-- 使用rollup产生横向的统计结果，可以统计出一个部门所有工种的平均工资以及所有
-- 人的平均工资
select deptno, job, avg(sal) from emp group by rollup(deptno, job);
-- 使用cube产生横向和纵向的统计结果，可以统计一个部门所有工种的平均工资以及一个工种所有部门
-- 的平均工资以及所有人的平均工资
select deptno, job, avg(sal) from emp group by cube(deptno, job);

-- grouping用来标明统计结果是否使用了该列,0代表使用，1代表未使用
select deptno, job, avg(sal), grouping(deptno), grouping(job) from emp group by cube(deptno, job);

-- grouping sets是用来简单合并分组查询的结果
select deptno, avg(sal) from emp group by deptno;
select job, avg(sal) from emp group by job;
select deptno, job, avg(sal) from emp group by grouping sets(deptno, job);



