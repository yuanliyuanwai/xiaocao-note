-- oracle�ݹ��ѯ connect by prior start with���÷�

create table tb_org (
  orgid varchar2(50) not null,
  orgname varchar2(100),
  orgparent varchar2(50));
  
  
insert into tb_org(orgid, orgname, orgparent) values('gd', '�㶫', null);
insert into tb_org(orgid, orgname, orgparent) values('sz', '����', 'gd');
insert into tb_org(orgid, orgname, orgparent) values('ns', '��ɽ', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('fd', '����', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('ba', '����', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('lh', '�޺�', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('lhhcz', '�޺���վ', 'lh');
insert into tb_org(orgid, orgname, orgparent) values('lhgc', '�޺��㳡', 'lh');

select * from tb_org;

-- ��ȡ��
select * from tb_org connect by prior orgparent = orgid start with orgid = 'lh';
-- ����
select distinct * from tb_org connect by prior orgparent = orgid start with orgparent = 'lh';


--��ȡ��
-- ��������
select * from tb_org connect by prior orgid = orgparent start with orgparent = 'gd';
--������
select * from tb_org connect by prior orgid = orgparent start with orgid = 'gd';
