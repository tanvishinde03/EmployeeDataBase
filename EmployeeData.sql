CREATE DATABASE EmployeeDB_Table

 CREATE TABLE EmployeeData_Table
(
EmployeeId INT PRIMARY KEY,
EmployeeName varchar(225),
EmployeeSalary INT,
DepartmentID INT
);

Select * FROM EmployeeData_Table

INSERT INTO EmployeeData_Table
(EmployeeName,EmployeeSalary,DepartmentID)
VALUES
('TanviShinde',90000,101),
('ArjunKapoor',40000,102),
('AdityaKapoor',80000,103),
('RanbirKapoor',90000,104),
('JaySingh',45000,105);

ALTER TABLE EmployeeData_Table ADD Gender CHAR(1)

UPDATE EmployeeData_Table SET Gender = 'F' WHERE EmployeeName = 'TanviShinde'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'ArjunKapoor'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'AdityaKapoor'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'RanbirKapoor'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'JaySingh'

 CREATE TABLE Department_Details
	(
DepartmentID INT PRIMARY KEY,
DepartmentName varchar(225),
StartDate Date
);

Select * FROM Department_Details

INSERT INTO Department_Details
(DepartmentID,DepartmentName,StartDate)
VALUES
(101,'IT','2023-03-23'),
(102,'HR','2023-02-22'),
(103,'Sales','2023-01-14'),
(104,'Marketing','2023-04-11'),
(105,'MBA','2023-05-19');


 CREATE TABLE EmployeePersonal_Details
(
EmployeeName varchar(225),
EmployeeState varchar(225),
StartDate Date,
EmployeeAge INT
);

SELECT * FROM EmployeePersonal_Details

INSERT INTO EmployeePersonal_Details
(EmployeeName,EmployeeState,StartDate,EmployeeAge)
VALUES
('TanviShinde','MH','2023-03-23',23),
('ArjunKapoor','MH','2023-02-22',35),
('AdityaKapoor','MP','2023-01-14',29),
('RanbirKapoor','GJ','2023-04-11',40),
('JaySingh','MP','2023-05-19',24);

SELECT Avg (EmployeeSalary) FROM EmployeeData_Table
SELECT Max (EmployeeSalary) FROM EmployeeData_Table
SELECT Min (EmployeeSalary) FROM EmployeeData_Table
SELECT Sum (EmployeeSalary) FROM EmployeeData_Table
SELECT Count (EmployeeSalary) FROM EmployeeData_Table
  
  SELECT Avg (EmployeeAge) FROM EmployeePersonal_Details

  SELECT Upper (EmployeeName) FROM EmployeeData_Table
  SELECT Lower (EmployeeName) FROM EmployeePersonal_Details
  SELECT Upper (EmployeeName) FROM EmployeePersonal_Details
   SELECT REPLACE (EmployeeState,'GJ','MP') FROM EmployeePersonal_Details

SELECT EmployeeData_Table.EmployeeId,EmployeeName,EmployeeName,Gender,Department_Details.DepartmentID,DepartmentName,StartDate FROM EmployeeData_Table,Department_Details WHERE  EmployeeData_Table.DepartmentID = Department_Details.DepartmentID;
 SELECT EmployeeData_Table.DepartmentID,Department_Details.DepartmentID,DepartmentName,EmployeePersonal_Details.EmployeeName,EmployeeState,EmployeeAge FROM EmployeeData_Table INNER JOIN Department_Details ON EmployeeData_Table.DepartmentID = Department_Details.DepartmentID INNER JOIN EmployeePersonal_Details ON EmployeePersonal_Details.StartDate = Department_Details.StartDate;

   ALTER TABLE EmployeePersonal_Details DROP COLUMN EmployeeAge;      

   ALTER TABLE Department_Details ADD Location CHAR(10)

   UPDATE Department_Details SET Location = 'A' WHERE DepartmentName = 'IT'
   UPDATE Department_Details SET Location = 'B' WHERE DepartmentName = 'HR'
   UPDATE Department_Details SET Location = 'C' WHERE DepartmentName = 'SALES'
   UPDATE Department_Details SET Location = 'C' WHERE DepartmentName = 'Marketing'
   UPDATE Department_Details SET Location = 'D' WHERE DepartmentName = 'MBA'

   ALTER TABLE EmployeeData_Table DROP COLUMN Location;      

   SELECT SUBSTRING('TanviShinde', 2, 10) AS SubstringResult;

    SELECT LEN('RiaRaut') FROM EmployeeData_Table;

	 CREATE TABLE Salary_Table
(
EmployeeName varchar(225),
EmployeeSalary INT,
DepartmentID INT,
City varchar(110)
);
 SELECT * FROM Salary_Table;
 
 INSERT INTO EmployeeData_Table
(EmployeeName,EmployeeSalary,DepartmentID)
VALUES
('AjayTiwari',67000,106),
('JanviKapoor',20000,107),
('SanketShinde',10000,108),
('DigvijayKate',50000,109),
('PradeepGupta',24000,201),
('RiaRaut',12000,202),
('AaliaBhatt',40000,203);

UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'AjayTiwari'
UPDATE EmployeeData_Table SET Gender = 'F' WHERE EmployeeName = 'JanviKapoor'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'SanketShinde'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'DigvijayKate'
UPDATE EmployeeData_Table SET Gender = 'M' WHERE EmployeeName = 'PradeepGupta'
UPDATE EmployeeData_Table SET Gender = 'F' WHERE EmployeeName = 'RiaRaut'
UPDATE EmployeeData_Table SET Gender = 'F' WHERE EmployeeName = 'AaliaBhatt'

UPDATE EmployeePersonal_Details SET StartDate = '2023-02-03' WHERE EmployeeName ='Ajay Tiwari';

