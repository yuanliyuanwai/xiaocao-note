-- ʹ��rollup���������ͳ�ƽ��������ͳ�Ƴ�һ���������й��ֵ�ƽ�������Լ�����
-- �˵�ƽ������
select deptno, job, avg(sal) from emp group by rollup(deptno, job);
-- ʹ��cube��������������ͳ�ƽ��������ͳ��һ���������й��ֵ�ƽ�������Լ�һ���������в���
-- ��ƽ�������Լ������˵�ƽ������
select deptno, job, avg(sal) from emp group by cube(deptno, job);

-- grouping��������ͳ�ƽ���Ƿ�ʹ���˸���,0����ʹ�ã�1����δʹ��
select deptno, job, avg(sal), grouping(deptno), grouping(job) from emp group by cube(deptno, job);

-- grouping sets�������򵥺ϲ������ѯ�Ľ��
select deptno, avg(sal) from emp group by deptno;
select job, avg(sal) from emp group by job;
select deptno, job, avg(sal) from emp group by grouping sets(deptno, job);



