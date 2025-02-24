use Maravnthe;
create table student (
    id int primary key,
    name varchar(50),
    age int
);
insert into student  (id, name , age ) value (1,"Rakesh",18);
insert into student  (id, name , age ) value (2,"Madl",19);
insert into student  (id, name , age ) value (3,"Moti",20);
insert into student  (id, name , age ) value (4,"Poori",21);
insert into student  (id, name , age ) value (5,"Poori",20);
insert into student  (id, name , age ) value (6,"Madl",18);
select * from student;
-- in this line we have to delete the data is less than 30 age and also we grouping the same name.
select name, sum(age) as total from student group by name having sum(age)>30;
select * from student where age =18;
select * from student order by age asc;
select * from student order by age desc;
select * from student limit 3;
select id from student where age>25 limit 4;
select * from student where  name = "rohan"  order by age limit 3;


SHOW TABLES;












