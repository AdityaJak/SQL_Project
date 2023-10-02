DELETE FROM PERSON WHERE SSN ='176843';
DELETE FROM PERSON WHERE SSN ='761290';
SELECT * FROM PERSON_DEL_LOG;

INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (176843, 'John','2134765682', 'Boston, MA', 1357, 1765, 123456); 
SELECT * FROM PERSON;

INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (182838, 'Anna','2134765682', 'Boston, MA', 1212, 1279, 123456); 
SELECT * FROM PERSON;

UPDATE CLAIM
SET Paid_Date = '2022-03-11'
WHERE CID = 2;
SELECT * FROM CLAIM;

UPDATE CLAIM
SET Paid_Date = '2022-02-11'
WHERE CID = 3;
SELECT * FROM CLAIM;

INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (163986, 194321, '2022-09-03', 'Cancer', '1');
SELECT * FROM VISIT;

INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (761290, 156432, '2022-07-02', 'Cancer', '0');
SELECT * FROM VISIT;