create type article_type as object (
  title varchar2(30), pubdate date);
 

create type article_array is varray(20) of article_type;

-- Ƕ�ױ�����Ҫ�洢��ר�ŵĴ洢���У���varray������������������һ�����ڱ����
create table author (
  id number(6),
  name varchar2(10),
  article article_array);
