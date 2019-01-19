create or replace type home_type as object (
  street varchar2(50), 
  city varchar2(20),
  state varchar2(20),
  zipcode varchar2(6),
  owner varchar2(10));
  
create table homes of home_type;


insert into homes values('ǰ��һ·', '����', '�㶫', '518000', 'С��');

select * from homes;

create table person(id number(6) primary key, name varchar2(10), addr ref home_type);

insert into person select 1, 'С��', ref(p) from homes p where p.owner='С��';

select p.addr.zipcode from person p;
