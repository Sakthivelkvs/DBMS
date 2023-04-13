create database awh1;
use awh1;
create table student(id  int,name varchar(10),address varchar(30),maths int,physics int,cs int,total int);
insert into student values(1,'Ajin','Peruvayal',20,25,30,75);
insert into student values(2,'Sarang','Koduvally',20,26,30,76);
insert into student values(3,'Fathu','Mutta',20,25,32,77);
insert into student values(4,'Hani','Kozhikode',20,25,33,78);
insert into student values(5,'Akash','Palayi',20,25,34,79);
select * from student;
SELECT * FROM student WHERE address = 'Kozhikode' OR address = 'Koduvally';
alter table student add department varchar(20) after name;
select * from student;
SELECT * FROM student ORDER BY total DESC;
SELECT MAX(total) AS highest_total FROM student;
SELECT MIN(maths) as lowest_math_marks FROM student;
SELECT AVG(cs) FROM student;
SELECT SUM(maths) FROM student;
update student set department="MCA" where name="Ajin";
update student set department="Mech" where name="Sarang";
update student set department="Civil" where name="Fathu";
update student set department="EEE" where name="Hani";
update student set department="MCA" where name="Akash";
select * from student;
SELECT * FROM student WHERE department LIKE '%A';
SELECT * FROM student WHERE 'name' LIKE '%A';
insert into student values(3,'Fathu',null,'Mutta',20,25,32,77);
select * from student;
ALTER TABLE STUDENT DROP total;
ALTER TABLE STUDENT ADD total INT;
update  student set total=maths+physics+cs WHERE name ="Ajin";
update  student set total=maths+physics+cs WHERE name ="Sarang";
update  student set total=maths+physics+cs WHERE name ="Fathu";
update  student set total=maths+physics+cs WHERE name ="Hani";
update  student set total=maths+physics+cs WHERE name ="Akash";
select * from student;
ALTER TABLE STUDENT ADD Age INT;
update  student set age=20 WHERE name ="Ajin";
update  student set age=21 WHERE name ="Sarang";
update  student set age=23 WHERE name ="Fathu";
update  student set age=20 WHERE name ="Hani";
update  student set age=21 WHERE name ="Akash";
select * from student;







