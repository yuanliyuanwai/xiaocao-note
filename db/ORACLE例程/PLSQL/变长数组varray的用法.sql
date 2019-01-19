create type article_type as object (
  title varchar2(30), pubdate date);
 

create type article_array is varray(20) of article_type;

-- 嵌套表列需要存储在专门的存储表中，而varray数据则与其它列数据一起存放在表段中
create table author (
  id number(6),
  name varchar2(10),
  article article_array);
