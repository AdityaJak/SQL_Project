/*Adithya_jakkaraju*/
delimiter //
CREATE TRIGGER Store_DEL_LOG 
BEFORE DELETE ON PERSON FOR EACH ROW
INSERT INTO PERSON_DEL_LOG
values(old.SSN, old.Name, user(), current_time());
// delimiter ; 

delimiter //
CREATE TRIGGER before_insert_PERSON
BEFORE INSERT ON PERSON FOR EACH ROW
BEGIN
	DECLARE error_msg VARCHAR(255);
    DECLARE compare tinyint;
    SELECT count(PHI.PID) into compare
    FROM PERSON P, EMP_INSURER EMI,PHY_INSURER PHI
    WHERE new.PID = PHI.PID AND new.EmpId = EMI.EmpId AND new.InsurerId = PHI.InsurerId AND PHI.InsurerId = EMI.InsurerId;
    IF compare < 1 THEN
	SET error_msg = ('Cant insert into the table PERSON');
    SIGNAL SQLSTATE '45000'   
    SET MESSAGE_TEXT = error_msg;  
    END IF;  
END;
// delimiter ;

delimiter //
CREATE TRIGGER before_update_CLAIM  
BEFORE UPDATE  
ON CLAIM FOR EACH ROW  
BEGIN  
    DECLARE error_msg VARCHAR(255);  
    SET error_msg = ('The paid_date cant be before the file_date');  
    IF new.Paid_date < old.File_date THEN  
    SIGNAL SQLSTATE '45000'   
    SET MESSAGE_TEXT = error_msg;  
    END IF;  
END;
// delimiter ;

delimiter //
CREATE TRIGGER limit_no_of_visits
BEFORE INSERT ON VISIT FOR EACH ROW
BEGIN
    DECLARE last_date DATE;
	SELECT max(Date_) INTO last_date
	FROM VISIT 
	WHERE new.SSN = SSN AND PCP_or_not = 1;
	IF datediff(new.Date_,last_date)<30 THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Cant visit before 30 days of previous visit';
    END IF;  
END;
// delimiter ;