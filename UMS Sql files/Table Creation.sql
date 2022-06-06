USE [Final Final UMS];


--DEPARTMENT TABLE--
CREATE TABLE Department (
	Department_ID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Department_name VARCHAR(100) NOT NULL,
	HOD VARCHAR(100),
);

--PROGRAM TABLE--
CREATE TABLE Program (
    Program_Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    ProgramName VARCHAR(100) NOT NULL,
    No_of_years DECIMAL(3, 2) NOT NULL,
    Total_fees DECIMAL(10, 2) NOT NULL,
    Program_coordinator VARCHAR(100) NOT NULL,
    Department_Id int NOT NULL,
    FOREIGN KEY (Department_Id) REFERENCES Department(Department_Id)
);

--LECTURER--
CREATE TABLE Lecturer (
    Lecturer_Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    First_name VARCHAR(100) NOT NULL,
    Last_name VARCHAR(100) NOT NULL,
    Gender VARCHAR(15) NOT NULL,
    Email_address VARCHAR(320) NOT NULL,
    DOB DATE NOT NULL,
    Designation VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Street VARCHAR(100) NOT NULL,
    Ward_no int NOT NULL
);


--LECTURER WORKS FOR DEPARTMENT--
CREATE TABLE Lecturer_Works_For_Department (
    Lecturer_Id int NOT NULL,
    Department_Id int NOT NULL,
    PRIMARY KEY (Lecturer_Id, Department_Id),
    FOREIGN KEY (Lecturer_Id) REFERENCES Lecturer(Lecturer_Id),
    FOREIGN KEY (Department_Id) REFERENCES Department(Department_Id)
);

--LECTURER CONTACT NUMBER--
CREATE TABLE Lecturer_Contact_number (
    Lecturer_Id int NOT NULL,
    Contact_number VARCHAR(15) NOT NULL,
    PRIMARY KEY (Lecturer_Id, Contact_number),
    FOREIGN KEY (Lecturer_Id) REFERENCES Lecturer(Lecturer_Id)
);


--STUDENT TABLE--
CREATE TABLE Student (
    Student_Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Roll_no int NOT NULL,
    First_name VARCHAR(100) NOT NULL,
    Last_name VARCHAR(100) NOT NULL,
    Gender VARCHAR(15) NOT NULL,
    Email_address VARCHAR(320) NOT NULL,
    DOB DATE NOT NULL,
    Country VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Street VARCHAR(100) NOT NULL,
    Ward_no int NOT NULL,
    Program_Id int NOT NULL,
    FOREIGN KEY (Program_Id) REFERENCES Program(Program_Id)
 );

--STUDENT_CONTACT_NUMBER--
CREATE TABLE Student_Contact_number (
    Student_Id int NOT NULL,
    Contact_number VARCHAR(15) NOT NULL,
    PRIMARY KEY (Student_Id, Contact_number),
    FOREIGN KEY (Student_Id) REFERENCES Student(Student_Id)
 );

--SUBJECT TABLE--
CREATE TABLE [Subject] (
    Subject_Id    int NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Subject_Code  VARCHAR(100) NOT NULL,
    Subject_name  VARCHAR(100) NOT NULL,
    Credit_hours  int NOT NULL,
    Total_Preiods int NOT NULL
);

--LECTURER TEACHES SUBJECT--
CREATE TABLE Lecturer_Teaches_Subject (
     Lecturer_Id int NOT NULL,Subject_Id int NOT NULL,
     PRIMARY KEY (Lecturer_Id, Subject_Id),
     FOREIGN KEY (Lecturer_Id) REFERENCES Lecturer(Lecturer_Id),
     FOREIGN KEY (Subject_Id) REFERENCES Subject(Subject_Id)
); 

--PROGRAM HAS SUBJECT--
CREATE TABLE Program_Has_Subject (
     Program_Id int NOT NULL,Subject_Id int NOT NULL,
     PRIMARY KEY (Program_Id, Subject_Id),
     FOREIGN KEY (Program_Id) REFERENCES Program(Program_Id),
     FOREIGN KEY (Subject_Id) REFERENCES Subject(Subject_Id)
);

