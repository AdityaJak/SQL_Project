/*Adithya_jakkaraju*/
INSERT INTO PHYSICIAN(PID, Name, Speciality, Address, Phone) values (123456, 'Dan', 'Cardiology', 'Boston, MA', '9581568732');
INSERT INTO PHYSICIAN(PID, Name, Speciality, Address, Phone) values (156432, 'Scarlet', 'ENT', 'Boston, MA', '6174560324');
INSERT INTO PHYSICIAN(PID, Name, Speciality, Address, Phone) values (194321, 'Michael', 'Radiology', 'Boston, MA', '8327390421');
INSERT INTO PHYSICIAN(PID, Name, Speciality, Address, Phone) values (175494, 'Anna', 'Opthomology', 'Boston, MA', '7831479812');
INSERT INTO PHYSICIAN(PID, Name, Speciality, Address, Phone) values (136543, 'Rodney', 'Surgery', 'Boston, MA', '6817340321');

INSERT INTO EMPLOYER(EmpId, Name, Address, Phone) values (1357, 'CVS', 'Boston, MA', '9593482167');
INSERT INTO EMPLOYER(EmpId, Name, Address, Phone) values (1867, 'Fortis', 'Boston, MA', '8150386492');
INSERT INTO EMPLOYER(EmpId, Name, Address, Phone) values (1212, 'Columbia', 'Boston, MA', '7832108321');

INSERT INTO INSURER(InsurerId, Name, Address, Phone) values (1765, 'Robert', 'Boston, MA', '7981653832');
INSERT INTO INSURER(InsurerId, Name, Address, Phone) values (1279, 'Ethan', 'Boston, MA', '6781430923');
INSERT INTO INSURER(InsurerId, Name, Address, Phone) values (1921, 'Hunt', 'Boston, MA', '8210459826');

INSERT INTO HOSPITAL(HospitalId, Name, Address, Phone) values (167, 'Zinte', 'Boston, MA', '9321056894');
INSERT INTO HOSPITAL(HospitalId, Name, Address, Phone) values (190, 'Maxma', 'Boston, MA', '8672561943');
INSERT INTO HOSPITAL(HospitalId, Name, Address, Phone) values (135, 'CVS', 'Boston, MA', '1743205693');

INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (176843, 'John','2134765682', 'Boston, MA', 1357, 1765, 123456);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (761290, 'Mike','6218964589', 'Boston, MA', 1867, 1279, 156432);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (163986, 'Terry','7836581982', 'Boston, MA', 1212, 1921, 194321);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (165903, 'Julia','7921675487', 'Boston, MA', 1357, 1765, 175494);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (129847, 'Oscar','8946570254', 'Boston, MA', 1867, 1279, 136543);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (380457, 'Emma','6890153479', 'Boston, MA', 1212, 1921, 123456);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (478653, 'Daniel','1783409582', 'Boston, MA', 1357, 1765, 136543);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (985165, 'Sarah','8548673245', 'Boston, MA', 1867, 1279, 194321);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (218956, 'Johnny','6985437612', 'Boston, MA', 1212, 1765, 175494);
INSERT INTO PERSON(SSN, Name, Phone, Address, EmpId, InsurerId, PID) values (146897, 'Rachel','9375493215', 'Boston, MA', 1357, 1921, 136543);

INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (176843, 123456, '2022-03-01', 'Cancer', '0');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (761290, 156432, '2022-07-02', 'Cancer', '0');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (163986, 194321, '2022-09-03', 'Cancer', '1');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (165903, 175494, '2022-11-04', 'Cancer', '0');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (129847, 136543, '2022-01-15', 'Cancer', '1');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (380457, 123456, '2022-02-26', 'Cancer', '0');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (478653, 136543, '2022-04-07', 'Cancer', '0');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (985165, 194321, '2022-05-08', 'Cancer', '1');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (218956, 175494, '2022-06-11', 'Cancer', '0');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (146897, 136543, '2022-08-19', 'Cancer', '1');
INSERT INTO VISIT(SSN, PID, Date_, Diagnosis, PCP_or_not) values (176843, 123456, '2022-10-21', 'Cancer', '0');

INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (1, 1000, '2022-01-21', '2022-02-21', 176843, 123456, '2022-03-01', 1765);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (2, 1000, '2022-02-11', '2022-03-12', 761290, 156432, '2022-07-02', 1279);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (3, 1000, '2022-03-01', '2022-04-11', 163986, 194321, '2022-09-03', 1921);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (4, 1000, '2022-04-05', '2022-05-06', 165903, 175494, '2022-11-04', 1765);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (5, 1000, '2022-05-14', '2022-06-15', 129847, 136543, '2022-01-15', 1279);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (6, 1000, '2022-06-30', '2022-07-30', 380457, 123456, '2022-02-26', 1921);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (7, 1000, '2022-07-17', '2022-08-18', 478653, 136543, '2022-04-07', 1765);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (8, 1000, '2022-08-09', '2022-09-10', 985165, 194321, '2022-05-08', 1279);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (9, 1000, '2022-09-18', '2022-10-19', 218956, 175494, '2022-06-11', 1765);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (10, 1000, '2022-10-01', '2022-11-03', 146897, 136543, '2022-08-19', 1921);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (11, 1000, '2022-11-16', '2022-12-17', 176843, 123456, '2022-10-21', 1765);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (12, 1000, '2022-12-12', '2022-01-13', 761290, 156432, '2022-03-01', 1279);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (13, 1000, '2022-01-11', '2022-02-12', 163986, 194321, '2022-07-02', 1921);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (14, 1000, '2022-02-15', '2022-03-16', 165903, 175494, '2022-09-03', 1765);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (15, 1000, '2022-03-20', '2022-04-21', 129847, 136543, '2022-11-04', 1279);
INSERT INTO CLAIM(CID, Amount, File_date, Paid_date, SSN, PID, Date_, InsurerId) values (16, 1000, '2022-04-01', '2022-05-02', 380457, 123456, '2022-01-15', 1921);

INSERT INTO EMP_INSURER(EmpId, InsurerId) values (1357, 1765);
INSERT INTO EMP_INSURER(EmpId, InsurerId) values (1357, 1279);

INSERT INTO PHY_INSURER(PId, InsurerId) values (156432, 1279);
INSERT INTO PHY_INSURER(PId, InsurerId) values (156432, 1921);

INSERT INTO AFFILIATION(PId, HospitalId) values (156432, 167);
INSERT INTO AFFILIATION(PId, HospitalId) values (156432, 190);