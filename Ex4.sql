create database Maravnthe;
use Maravnthe;
create table Student(
id int primary key,
name varchar(25)
);

create table course(
cid int primary key,
cname varchar(35),
sid int,
-- connceting one table to another table using foreign key.
foreign key (sid) references Student(id)
);

insert into Student(id, name) values (1,"Prajna"), (2,"Pooja"), (3,"Madl"), (4,"Poori");
insert into course(cid, cname, sid) values (101,"BCA",1), (102,"BTECH",2), (103,"BCA",3), (104,"BBA",4);
select * from Student;
select * from course;
-- types of join left,right,inner join. it is used combining table
select Student.name,course.cname from Student inner join course on Student.id=course.sid;
select Student.name,course.cname from Student left join course on Student.id=course.sid;
select Student.name,course.cname from Student right join course on Student.id=course.sid;
-- 
select student.name from student left join course on student.id=course.sid where course.cid is null;
-- display the most femilar course in table
select cname, count(cname) as total from course group by cname order by total desc limit 1; 
select course.cname, count(student.id) as total from  student inner join course on student.id = course.sid group by course.cname;

show databases;
