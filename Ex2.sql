create database HPE;
use HPE;
create table Emp(
Eid int primary key,
Ename varchar(35),
Eage int,
Esalary int,
Eroll varchar(50)
);

insert into Emp (Eid, Ename, Eage, Esalary, Eroll) values(1, "Pooja", 20, 5000, "developer");
insert into Emp (Eid, Ename, Eage, Esalary, Eroll) values(2, "Prajna", 21, 50000, "developer");
insert into Emp (Eid, Ename, Eage, Esalary, Eroll) values(3, "Ratthu", 20, 60000, "Tester");
insert into Emp (Eid, Ename, Eage, Esalary, Eroll) values(4, "Madl", 25, 60000, "HR");
insert into Emp (Eid, Ename, Eage, Esalary, Eroll) values(5, "Pooja", 22, 50000, "Tester");
insert into Emp (Eid, Ename, Eage, Esalary, Eroll) values(6, "Ratthu", 22, 70000, "CEO");
select * from Emp;
select Ename, sum(Esalary) as total from Emp group by Ename having sum(Esalary)>50000;

