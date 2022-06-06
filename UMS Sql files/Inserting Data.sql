USE [Final Final UMS];

INSERT INTO Department(Department_name, HOD)
VALUES ('UBIT', 'Nadeem Mahmood'), ('Pharmacy', 'Iqbal Azhar'), ('Microbiology', 'Tanveer Abbas');




             
INSERT INTO Program (ProgramName,No_of_years,Total_fees,Program_coordinator,Department_Id)
VALUES      ('BSCS',4,400000,'Jawaid',1),
            ('PHARMD',4,250000,'Fatima',2),
            ('Microbiology',4,200000,'Adeel',3);
             


INSERT INTO Lecturer(First_name,Last_name,Gender,Email_address,DOB,Designation,Country,City,Street,Ward_no)
VALUES      ('Ahmed','Amin','Male','ahmedamin456@gmail.com','1984-01-24','Assist. Lecturer','Pakistan','Karachi','Feroz Alam Street',8),
            ('Noman','Malik','Male','nomanabdulmalik426@gmail.com','1980-02-14','Professor','Pakistan','Islamabad','Main Circular Road',5),
            ('Rao','Adeel','Male','raoadeel785@gmail.com','1982-04-04','Professor','Pakistan','Lahore','Old Town',2);
			
INSERT INTO Lecturer(First_name,Last_name,Gender,Email_address,DOB,Designation,Country,City,Street,Ward_no)
VALUES      ('Fatima','Zohra','Female','fatimaz456@gmail.com','1985-02-14','Assist. Lecturer','Pakistan','Karachi','Shahbaz Street',8),
			('Jabeen','Alam','Female','jabeenAAlam456@gmail.com','1982-01-17','Professor','Pakistan','Rawalpindi','Gills Street',5);

INSERT INTO Lecturer(First_name,Last_name,Gender,Email_address,DOB,Designation,Country,City,Street,Ward_no)
VALUES      ('Azhar','Mahmood','Male','mahmoodazhar456@gmail.com','1983-07-19','Assist. Lecturer','Pakistan','Karachi','Khan Street',2),
			('Alam','Jawaid','Male','mahmoodazhar456@gmail.com','1988-06-29','Assist. Lecturer','Pakistan','Karachi','Zahid Street',5);
            


INSERT INTO Lecturer_Works_For_Department(Lecturer_Id,Department_Id)
VALUES (1,1),(2,1),(2,3),(1,3),(3,1);


INSERT INTO Lecturer_Contact_number(Lecturer_Id,Contact_number)
VALUES (1,'12345678'),(2,'52345678'),(3,'14445678'),(4,'18911518'),(5,'62158930'),(6,'02158965'),(7,'12057468');
INSERT INTO Lecturer_Contact_number(Lecturer_Id,Contact_number)
VALUES (4,'34567812'),(5,'62158930'),(6,'02158965'),(7,'12057468');

INSERT INTO Student(Roll_no,First_name,Last_name,Gender,Email_address,DOB,Country,City,Street,Ward_no,Program_Id)
Values (15678942,'Shahbaz','Malik','Male','shahbazmalik763@gmail.com','1998-10-01','Pakistan','Karachi','4th street',4,1),
	   (18181248,'Shaheer','Abbas','Male','shaheerabb784@gmail.com','1997-08-10','Pakistan','Karachi','5th street',4,1),
	   (81165759,'Zohair','Farooqi','Male','zohairfarooqi125@gmail.com','1998-06-15','Pakistan','Lahore','5th street',4,1),
	   (48965618,'Sara','Zaman','Female','sarazaman451@gmail.com','1998-12-11','Pakistan','Karachi','5th street',4,1),
	   (18115885,'Javeria','Imtiaz','Female','javeriaimtiaz681@gmail.com','1999-09-16','Pakistan','Karachi','6th street',4,1),
	   (13468247,'Ibrahim','Abdullah','Male','ibrahimabdullah@gmail.com','1998-06-01','Pakistan','Multan','7th street',4,1),

	   (14156886,'Shahbaz','Malik','Male','shahbazmalik74510@gmail.com','1998-10-01','Pakistan','Karachi','1st street',6,2),
	   (16458468,'Shaheer','Abbas','Male','shaheerabb7849@gmail.com','1997-08-10','Pakistan','Karachi','4th street',6,2),
	   (13025684,'Zohair','Farooqi','Male','zohairfarooqi7810@gmail.com','1998-06-15','Pakistan','Lahore','12th street',6,2),
	   (18145698,'Sara','Zaman','Female','sarazaman4658@gmail.com','1998-12-11','Pakistan','Karachi','11th street',6,2),
	   (18657420,'Javeria','Imtiaz','Female','javeriaimtiaz8745@gmail.com','1999-09-16','Pakistan','Karachi','14th street',6,2),
	   (18478970,'Ibrahim','Abdullah','Male','ibrahimabdullah165@gmail.com','1998-06-01','Pakistan','Multan','7th street',6,2),

	   (14568895,'Shahbaz','Malik','Male','shahbazmalik1250@gmail.com','1998-10-01','Pakistan','Karachi','5th street',2,3),
	   (16548821,'Shaheer','Abbas','Male','shaheerabb13025@gmail.com','1997-08-10','Pakistan','Karachi','6th street',2,3),
	   (16024978,'Zohair','Farooqi','Male','zohairfarooqi12547@gmail.com','1998-06-15','Pakistan','Lahore','9th street',2,3),
	   (16057894,'Sara','Zaman','Female','sarazaman789654@gmail.com','1998-12-11','Pakistan','Karachi','7th street',2,3),
	   (15648498,'Javeria','Imtiaz','Female','javeriaimtiaz74125@gmail.com','1999-09-16','Pakistan','Karachi','14th street',2,3),
	   (18451896,'Ibrahim','Abdullah','Male','ibrahimabdullah7894@gmail.com','1998-06-01','Pakistan','Multan','11th street',2,3);


INSERT INTO Student_Contact_number(Student_Id,Contact_number)
VALUES(1,'15184587625'),(2,'14589642570'),(3,'12015874632'),(4,'10246589563'),(5,'12032024589'),(6,'12584125689'),(7,'15986036987'),(8,'56987512032'),(9,'12578563250'),(10,'12587463250'),(11,'12568452154'),(12,'35425102458'),(13,'12587452102'),(14,'12365214584'),(15,'51245201236'),(16,'12587456231'),(17,'12587452365'),(18,'12547854120');

INSERT INTO Subject(Subject_Code,Subject_name,Credit_hours,Total_preiods)
VALUES('ICS','Introduction To Computer Science',4,80),
	  ('AI','Artificial Intelligence',4,80),
	  ('TCS','Theory Of Computer Science',2,80),
	  ('DBMS','Data Base Management System',3,80),
	  
	  
	  ('PHC','Pharmacology',3,16),
	  ('PHT','Pharmacotherapy',3,16),
	  ('PHG','Pharmacognosy',3,16),	  
	  ('PHT','Pharmaceutical Technology',4,16),
	  
	  ('MM','Microbial Metabolism',4,16),
	  ('DT','DNA Technology',4,16),
	  ('MBIO','Molecular Biology',4,16),
	  ('BMI','Basic Microscopy and Instrumentation',4,16);



INSERT INTO Lecturer_Teaches_Subject(Lecturer_Id,Subject_Id)
VALUES	(1,1),(1,3),(1,4),(2,1),(1,2),(3,5),(3,6),(3,9),(4,6),(4,7),(4,8),(5,3),(5,10),(6,7),(6,8),(6,10),(7,11),(7,12);


INSERT INTO Program_Has_Subject(Program_Id,Subject_Id)
VALUES	(1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(3,9),(3,10),(3,11),(3,12);


--subject,
SELECT * FROM Department;
SELECT * FROM Program;
SELECT * FROM Subject;
SELECT * FROM Lecturer;
SELECT * FROM Lecturer_Works_For_Department;
SELECT * FROM Lecturer_Contact_number;
SELECT * FROM Student;
SELECT * FROM Student_Contact_number;

SELECT * FROM Lecturer_Teaches_Subject;
SELECT * FROM Program_Has_Subject;