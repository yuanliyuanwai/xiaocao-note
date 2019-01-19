-- �����ѿ����˻�����ָ����������
select a.dname, b.ename from dept a, emp b;

select a.dname, b.ename from dept a, emp b where a.deptno = b.deptno and a.deptno = 10;
-- Ĭ����������inner join����join
select a.dname, b.ename from dept a inner join emp b on a.deptno = b.deptno and a.deptno = 10;

-- ��������left outer join����left join
-- ����ߵı�Ϊ������ȡ����֮�⻹������ߵı���������������
select a.dname, b.ename from dept a left join emp b on a.deptno = b.deptno and a.deptno = 10;

-- ��������right outer join ����right join
-- ���ұߵı�Ϊ������ȡ����֮�⻹�����ұߵı���������������
select a.dname, b.ename from dept a right join emp b on a.deptno = b.deptno and a.deptno = 10;

-- ��ȫ������full outer join����full join
-- ����ȡ�����⻹������ߺ��ұߵ����в����������ļ�¼
select a.dname, b.ename from dept a full outer join emp b on a.deptno = b.deptno and a.deptno = 10;
