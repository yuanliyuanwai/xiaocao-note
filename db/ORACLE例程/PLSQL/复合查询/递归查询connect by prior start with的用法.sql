-- oracle递归查询 connect by prior start with的用法

create table tb_org (
  orgid varchar2(50) not null,
  orgname varchar2(100),
  orgparent varchar2(50));
  
  
insert into tb_org(orgid, orgname, orgparent) values('gd', '广东', null);
insert into tb_org(orgid, orgname, orgparent) values('sz', '深圳', 'gd');
insert into tb_org(orgid, orgname, orgparent) values('ns', '南山', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('fd', '福田', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('ba', '宝安', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('lh', '罗湖', 'sz');
insert into tb_org(orgid, orgname, orgparent) values('lhhcz', '罗湖火车站', 'lh');
insert into tb_org(orgid, orgname, orgparent) values('lhgc', '罗湖广场', 'lh');

select * from tb_org;

-- 子取父
select * from tb_org connect by prior orgparent = orgid start with orgid = 'lh';
-- 变形
select distinct * from tb_org connect by prior orgparent = orgid start with orgparent = 'lh';


--父取子
-- 不包括父
select * from tb_org connect by prior orgid = orgparent start with orgparent = 'gd';
--包括父
select * from tb_org connect by prior orgid = orgparent start with orgid = 'gd';
