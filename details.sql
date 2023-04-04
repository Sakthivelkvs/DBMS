create database details2;
use details2;
create table student(id  int,name varchar(10),address varchar(30),maths int,physics int,cs int,total int);

insert into student values(1,'Ajin','Peruvayal',20,25,30,75);
insert into student values(2,'Sarang','Koduvally',20,26,30,76);
insert into student values(3,'Fathu','Mutta',20,25,32,77);
insert into student values(4,'Hani','Kozhikode',20,25,33,78);
insert into student values(5,'Akash','Palayi',20,25,34,79);
select * from student;
delete from student where name = 'Akash';
insert into student values(5,'Akash','Palayi',20,25,34,79);
select * from student;