DROP TABLE GHC_Department CASCADE CONSTRAINTS;
DROP TABLE GHC_Faculty CASCADE CONSTRAINTS;
DROP TABLE GHC_Expertise CASCADE CONSTRAINTS;
DROP TABLE GHC_Course CASCADE CONSTRAINTS;

rem set date format
alter session set NLS_DATE_FORMAT='Mon DD,YYYY';

SET ECHO ON
SET FEEDBACK ON

CREATE TABLE GHC_Department
(
    Dept# number(3),
    Dept_Name VARCHAR2(20) NOT NULL,
        CONSTRAINT GHC_Department_pk PRIMARY KEY (Dept#),
        CONSTRAINT GHC_Department_uk UNIQUE (Dept_Name)
);

CREATE TABLE GHC_Faculty
(
    Faculty_ID NUMBER(4),
    Firstname VARCHAR2(20) NOT NULL,
    Surname VARCHAR2(20) NOT NULL,
    Date_Hired DATE NOT NULL,
    Date_Fired DATE,
    Is_Active NUMBER(1) NOT NULL,
    Dept# NUMBER(3),
        CONSTRAINT GHC_Faculty_Faculty_ID_pk PRIMARY KEY (Faculty_ID),
        CONSTRAINT GHC_Faculty_Depat#_fk FOREIGN KEY (Dept#)
            REFERENCES GHC_Department (Dept#),
        CONSTRAINT GHC_Faculty_Is_Active_ck CHECK (Is_Active IN (0,1))
);

CREATE TABLE GHC_Course
(
    Course_Code CHAR(7),
    Course_Title VARCHAR2(30) NOT NULL,
    Credits NUMBER(1) NOT NULL,
        CONSTRAINT GHC_Course_Course_Code_pk PRIMARY KEY (Course_Code),
        CONSTRAINT GHC_Course_Credits_ck CHECK (Credits BETWEEN 1 AND 9)
);

CREATE TABLE GHC_Expertise
(
    Faculty_ID NUMBER(4),
    Course_Code CHAR(7),
        CONSTRAINT GHC_Expertise_pk PRIMARY KEY (Faculty_ID, Course_Code),
        CONSTRAINT GHC_Expertise_Faculty_ID_fk FOREIGN KEY (Faculty_ID)
            REFERENCES GHC_Faculty (Faculty_ID),
        CONSTRAINT GHC_Expertise_Course_Code_fk FOREIGN KEY (Course_Code)
            REFERENCES GHC_Course (Course_Code)
);

-- P1
INSERT INTO GHC_Department
VALUES(100, 'Astrophysics');

-- P2
INSERT INTO GHC_Faculty
VALUES(1001,'Danny', 'Faulkner', 'Jan 1, 2022', NULL, 1, 100);

-- P3
INSERT INTO GHC_Course
VALUES('APHY202', 'The Solar System', 5);
INSERT INTO GHC_Course
VALUES('APHY203', 'Nebula', 5);
INSERT INTO GHC_Course
VALUES('APHY204', 'Global Clusters', 5);

INSERT INTO GHC_Expertise
VALUES(1001, 'APHY202');
INSERT INTO GHC_Expertise
VALUES(1001, 'APHY203');
INSERT INTO GHC_Expertise
VALUES(1001, 'APHY204');

-- P4
INSERT INTO GHC_Course
VALUES('APHY302', 'Nebula', 5);

DELETE FROM GHC_Expertise WHERE Course_Code = 'APHY203'; 
DELETE FROM GHC_Course WHERE Course_Code = 'APHY203';

-- P5
DELETE FROM GHC_Expertise WHERE Faculty_ID = 1001;

COMMIT;