create database Hotel;
show databases;
use Hotel;
create table Menu(
	Sno int primary key,
    Dname varchar(30),
    Qt varchar(10),
    price int 
) ;
insert into Menu values (1,"Briyani","1 plate",250);
insert into Menu values (2,"Curd Rice","1 plate",70);
insert into Menu values (3,"Kabab","1 plate",150);
insert into Menu values (4,"Porota","1 plate",100),(5,"Ice cream","1",50);
select * from Menu;
update Menu set Dname = "Mutton Cury" where Sno = 2;
delete from Menu where Sno =4 ;
update Menu set price = 300 where Sno =2 ;
select count(*) from Menu;
update Menu set Qt = "2 Plate " where Sno = 1;
update Menu set Qt = "2 Plate " where Sno = 2;
update Menu set Qt = "2 Plate " where Sno = 3;
update Menu set Qt = "2 Plate " where Sno = 4;
update Menu set Qt = "2 Plate " where Sno = 5;
update Menu set Qt = "3 Plate " where Sno = 1 ;
update Menu set Dname = 'Fried Rice' where Sno = 1;









