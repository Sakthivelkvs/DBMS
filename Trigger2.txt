DELIMITER //
CREATE TRIGGER save_new_mob
AFTER UPDATE
ON phonebook
FOR EACH ROW

BEGIN
INSERT INTO del_phonebook (pname,mobno,modify_date)values(old.pname,old.mobno,sysdate());
END;
//
desc phonebook;
desc del_phonebook;
update phonebook set pname="Gopi" where pname="Win";
set sql_safe_updates=0;
select * from del_phonebook;