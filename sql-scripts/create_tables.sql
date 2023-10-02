/*Adithya_jakkaraju*/
CREATE DATABASE HealthInsurance;
USE HealthInsurance;

CREATE TABLE PHYSICIAN (
  PID int NOT NULL,
  Name varchar(25) NOT NULL,
  Speciality varchar(25) NOT NULL,
  Address varchar(50) NOT NULL,
  Phone varchar(10) NOT NULL,
  PRIMARY KEY (PID)
);

CREATE TABLE EMPLOYER (
  EmpId int NOT NULL,
  Name varchar(25) NOT NULL,
  Address varchar(50) NOT NULL,
  Phone varchar(10) NOT NULL,
  PRIMARY KEY (EmpId)
);

CREATE TABLE INSURER (
  InsurerId int NOT NULL,
  Name varchar(25) NOT NULL,
  Address varchar(50) NOT NULL,
  Phone varchar(10) NOT NULL,
  PRIMARY KEY (InsurerId)
);

CREATE TABLE HOSPITAL (
  HospitalId int NOT NULL,
  Name varchar(25) NOT NULL,
  Address varchar(50) NOT NULL,
  Phone varchar(10) NOT NULL,
  PRIMARY KEY (HospitalId)
);

CREATE TABLE PERSON (
  SSN INT NOT NULL,
  Name VARCHAR(45) NOT NULL,
  Phone VARCHAR(45) NOT NULL,
  Address VARCHAR(45) NOT NULL,
  EmpId INT NOT NULL,
  InsurerId INT NOT NULL,
  PID INT NOT NULL,
  PRIMARY KEY (SSN),
  foreign key(EmpId) references EMPLOYER(EmpId)
  on update cascade
  on delete cascade,
  foreign key(InsurerId) references INSURER(InsurerId)
  on update cascade
  on delete cascade,
  foreign key(PID) references PHYSICIAN(PID)
  on update cascade
  on delete cascade
);

CREATE TABLE VISIT (
  SSN INT NOT NULL,
  PID INT NOT NULL,
  Date_ DATE NOT NULL,
  Diagnosis VARCHAR(45) NOT NULL,
  PCP_or_not Boolean NOT NULL,
  PRIMARY KEY (Date_),
  foreign key (SSN) references PERSON(SSN)
  on update cascade
  on delete cascade,
  foreign key (PID) references PHYSICIAN(PID)
  on update cascade
  on delete cascade
);

CREATE TABLE CLAIM (
  CID INT NOT NULL,
  Amount INT NOT NULL,
  File_date DATE NOT NULL,
  Paid_date DATE NOT NULL,
  SSN INT NOT NULL,
  PID INT NOT NULL,
  Date_ DATE NOT NULL,
  InsurerId INT NOT NULL,
  PRIMARY KEY (CID),
  foreign key (SSN) references PERSON(SSN)
  on update cascade
  on delete cascade,
  foreign key (PID) references PHYSICIAN(PID)
  on update cascade
  on delete cascade,
  foreign key(Date_) references VISIT(Date_)
  on update cascade
  on delete cascade,
  foreign key(InsurerId) references INSURER(InsurerId)
  on update cascade
  on delete cascade
);

CREATE TABLE EMP_INSURER (
  EmpId INT NOT NULL,
  InsurerId INT NOT NULL,
  foreign key(EmpId) references EMPLOYER(EmpId)
  on update cascade
  on delete cascade,
  foreign key(InsurerId) references INSURER(InsurerId)
  on update cascade
  on delete cascade
);

CREATE TABLE PHY_INSURER (
  PID INT NOT NULL,
  InsurerId int NOT NULL,
  foreign key(PID) references PHYSICIAN(PID)
  on update cascade
  on delete cascade,
  foreign key(InsurerId) references INSURER(InsurerId)
  on update cascade
  on delete cascade
);

CREATE TABLE AFFILIATION (
  PID INT NOT NULL,
  HospitalId Int NOT NULL,
  foreign key(PID) references PHYSICIAN(PID)
  on update cascade
  on delete cascade,
  foreign key(HospitalId) references HOSPITAL(HospitalId)
  on update cascade
  on delete cascade
);

CREATE TABLE PERSON_DEL_LOG (
  SSN_DEL int NOT NULL,
  Name_DEL varchar(25) NOT NULL,
  Username_DEL varchar(25) NOT NULL,
  Time_DEL time NOT NULL
);
