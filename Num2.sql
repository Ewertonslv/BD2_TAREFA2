create sequence s1;
create table t1 (
a int default (next value for s1), 
b int,
primary key (a)
);
 
insert into t1 (b) values (5), (7);
insert into t1 (b) values (8);
 
select * from t1;
