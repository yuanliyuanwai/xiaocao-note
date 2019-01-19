create or replace type home_type as object (
  street varchar2(50), 
  city varchar2(20),
  state varchar2(20),
  zipcode varchar2(6),
  owner varchar2(10));
  
create table homes of home_type;


insert into homes values('前进一路', '深圳', '广东', '518000', '小草');

select * from homes;

create table person(id number(6) primary key, name varchar2(10), addr ref home_type);

insert into person select 1, '小杰', ref(p) from homes p where p.owner='小草';

select p.addr.zipcode from person p;
