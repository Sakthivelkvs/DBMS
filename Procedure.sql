create table Customers(customer_id int,first_name varchar(20),country varchar(20));
use stu_details;
DELIMITER //
CREATE PROCEDURE us_customers ()
BEGIN
SELECT customer_id, first_name
FROM Customers
WHERE country= 'USA';
END //
DELIMITER ;
insert into Customers values(1,'archana','newzealand');
insert into Customers values(2,'narshina','singapore');
insert into Customers values(3,'anu','USA');
CALL us_customers();
