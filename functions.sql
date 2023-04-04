create database college;
use college;
create table section(s_id int,s_name varchar(20),strength int);
insert into section values(1,"computer Science",20);
insert into section values(2,"Science",45);
insert into section values(3,"Maths",25);
DELIMITER //
CREATE FUNCTION totalStrength()

RETURNS INT
DETERMINISTIC
BEGIN
 DECLARE total INT;
 SET  total = 0;
 SELECT SUM(strength) INTO total FROM section;
 RETURN total;
 
 
 END ;
 
 //
 DELIMITER ;
 SELECT totalStrength();