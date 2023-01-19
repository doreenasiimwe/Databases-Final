---Number six
---CREATING THE EMPLOYEES TABLE
CREATE TABLE employees(
Id INT NOT NULL PRIMARY KEY,
Name VARCHAR(15),
Age INT,
Address VARCHAR(20));

---INSERTING VALUES
INSERT INTO employees VALUES(1001,'Rohan',26,'Delhi');
INSERT INTO employees VALUES(1002,'Ankit',30,'Gurgaon');
INSERT INTO employees VALUES(1003,'Gaurav',27,'Mumbai');
INSERT INTO employees VALUES(1004,'Raja',32,'Nagpur');

---employee with id as 1004 QUESTION6 A
SELECT Id, Name, Age,Address FROM employees WHERE id = 1004;

--all records of the table B
SELECT * FROM employees;

--records of employees whose name starts with R C
SELECT Name LIKE 'P%',  Id,Age,Address FROM employees ;

--age in ascending order D
SELECT Id, Age,Name FROM employees  ORDER BY ASC(Age);

SELECT Id,Age, Name FROM employees ORDER BY DESC(Age);


QUESTION SIX E
SELECT DISTINCT Address FROM employees;


----number five

CREATE TABLE students (
    Reg_no varchar(50) PRIMARY KEY,
    First_Name varchar(50) NOT NULL,
    Last_Name varchar(50) NOT NULL,
    Course varchar(50) NOT NULL,
    Gender varchar(15) NOT NULL,
    D_O_B varchar(15) NOT NULL 
);


INSERT INTO students(Reg_no,First_Name,Last_Name,Course,Gender,D_O_B )
VALUES ('1/2016','John','Mutuku','DCS','Male','13/6/1990'),
('2/2016','Steve','KipKorir','DCS','Male','13/3/1985'),
('3/2016','Susan','Mutua','CIT','Female','19/11/1986'),
('4/2017','Steve','Kingori','CIT', 'Male','1/3/1978'),
('51/2017','Sonko','Kabale','CIT', 'Male','8/7/1998'),
('5/2017','Sadic','Kayibanda','CIT', 'Male','9/9/1998'),
('6/2017','Simon','Malembe','DBIT', 'Male','12/4/2000'),
('7/2017','Sarah','Joan','DCS', 'Female','10/1/1998'),
('8/2017','Samantha','Karenge','DCS', 'Female','11/9/2000'),
('9/2017','Shamim','Namagembe','DCS', 'Female','1/3/1999'),
('1/2018','Shakirah','Namakula','DCS', 'Female','21/3/1998'),
('2/2018','Shamal','Katushabe','DCS', 'Female','8/8/1999'),
('3/2018','Shirat','Namyalo','DBIT', 'Female','6/3/1998'),
('4/2018','Shinaz','Namiri','DBIT', 'Female','11/5/1998'),
('5/2018','Noman','Niwomugisa','DBIT', 'Male','1/12/1998'),
('1/2019','Nelson','Kaganda','DBIT', 'Male','5/2/1999'),
('2/2019','Nobel','Nganda','DCS', 'Male','13/10/1978'),
('3/2019','Nishan','Mutwana','DCS', 'Male','19/10/1978'),
('4/2019','Steve','Kingori','DCS', 'Male','12/12/1978'),
('5/2019','Allan','Aingori','DCS', 'Male','1/3/1978'),
('1/2020','Oscar','Kansime','DBIT', 'Male','4/10/1978'),
('2/2020','Orion','Okello','DBIT', 'Male','1/10/1979'),
('3/2020','Andrew','Apio','DBIT', 'Male','1/3/1978'),
('4/2020','Andrew','Apolot','DBIT', 'Male','1/3/1978'),
('1/2021','Stanah','Kigonya','CIT', 'Male','9/4/2000'),
('2/2021','Samuel','Kingongo','CIT', 'Male','20/9/1999'),
('3/2021','Adam','Abale','CIT', 'Male','1/1/2000'),
('4/2021','Adong','Sandrah','CIT', 'Female','23/3/2000'),
('5/2021','Samantha','Karunji','CIT', 'Female','1/9/2000');


---regno,lastname,firstname (a)
SELECT Reg_no,Last_Name,First_Name FROM students;

--lastname and firstname as student name(b)
SELECT  Last_Name,First_Name AS Student_Name FROM students;


--QUESTION5(III)

SELECT  Reg_no,Last_Name,First_Name,Course,Gender FROM students WHERE Gender = 'Male' AND Course = 'DCS';

--QUESTION5 IV
SELECT COUNT(Course) FROM students;

--DCS
SELECT COUNT(Course) FROM students WHERE Course = 'DCS';

--CIT
SELECT COUNT(Course) FROM students WHERE Course = 'CIT';

--DBIT

SELECT COUNT(Course) FROM students WHERE Course = 'DBIT';


--QUESWTION5 V
SELECT  Gender, D_O_B FROM students WHERE Gender ='Male' and D_O_B IS BETWEEN 1980 AND 1989;

ALTER TABLE students 
UPDATE 'Steve' TO 'Mwangi';

--QUESTION 5 VII
--REGNO
ALTER TABLE students
DROP Reg_no ;

--DELETINF FIRST NAME
ALTER TABLE students
DROP First_Name;


--DELETING LAST NAME
ALTER TABLE students
DROP Last_Name; 

--DELETING THE COURSE

ALTER TABLE students
DROP Course;

--DELETING GENDER

ALTER TABLE students
DROP Gender;  

DELETING THE DATA OF BIRTH
ALTER TABLE students
DROP D_O_B;

--CHECKING IF THE TABLE IS NOW EMPTY
SELECT * FROM students;

--










