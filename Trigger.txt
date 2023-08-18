create database Practice;
use Practice;
create  table phonebook(pname varchar(15),mobno int8);
drop table phonebook;
create table del_phonebook(pname varchar(15), mobno int , modify_date date);
desc phonebook;
desc del_phonebook;
insert into phonebook values('Aam',97469933);
insert into phonebook values('Ram',97469342);
insert into phonebook values('Leo',97993343);
insert into phonebook values('Win',97493344);
select * from phonebook;
DELIMITER //
CREATE TRIGGER save_old_mob
AFTER DELETE
ON phonebook
FOR EACH ROW

BEGIN
INSERT INTO del_phonebook (pname,mobno,modify_date)values(old.pname,old.mobno,sysdate());
END;
//
desc phonebook;
desc del_phonebook;
delete from phonebook where pname='Aam';
set sql_safe_updates=0;
select * from del_phonebook;