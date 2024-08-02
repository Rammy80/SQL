--how to create a database
create database SQL_Hospital
go

--how to create table
create table NURSE
(EmployeeID int not null,
EmployeeFirstName Varchar(50) Null,
EmployeeLastName Varchar(50) Null,
EmployeePosition Varchar(50) Null,
EmployeeRegistered Varchar(50) Null,
EmployeeSSN Varchar(50) Null)

--how to check record or data in a table
Select *
From NURSE

--how to load data to a Table
Insert into NURSE
(
[EmployeeID],[EmployeeFirstName],[EmployeeLastName],[EmployeePosition],[EmployeeRegistered],[EmployeeSSN]
)

Values (101,'Carla','Espinosa','Head Nurse','t','111111110'),
(102,'Laverna','Roberts','Nurse','t','222222220'),
(103,'Paul','Flowers','Nurse','f','333333330')

---how to identify nurse in charge of the department
Select * 
From NURSE
Where EmployeePosition = 'Head Nurse'

Select * 
From NURSE
Where EmployeePosition = 'Nurse'



--how to create table
create table Physician
(EmployeeID int not null,
EmployeeFirstName Varchar(50) Null,
EmployeeLastName Varchar(50) Null,
EmployeePosition Varchar(50) Null,
EmployeeSSN Varchar(50) Null)


--how to check record or data in a table
Select *
From Physician

--how to load data to a Table
Insert into Physician
(
[EmployeeID],[EmployeeFirstName],[EmployeeLastName],[EmployeePosition],[EmployeeSSN]
)

Values (1,'John','Dorian','Staff Internist','111111111'),
(2,'Elliot','Reid','Attending Physician','222222222'),
(3,'Christopher','Turk','Surgical Attending Physician','333333333'),
(4,'Percival','Cox','Senior Attending Physician','444444444'),
(5,'Bob','Kelso','Head Chief of Medicine','55555555'),
(6,'Todd','Quinlan','Surgical Attending Physician','666666666'),
(7,'John','Wen','Surgical Attending Physician','777777777'),
(8,'Keith','Dudemeister','MD Resident','88888888'),
(9,'Molly','Clock','Attending Psychiatrist','99999999')

--how to delete specific record in the table
Delete from Physician
where EmployeeID =1

---how to delete all records
Delete from Physician

---how to clear a table
Truncate Table Physician

--How to rollback deleted record
Begin Tran
Delete from Physician
where EmployeeID =1
RollBack Tran
Commit Tran

--How to  commit rollback to delete specific  deleted record
Begin Tran
Delete from Physician
where EmployeeID =1
--RollBack Tran
Commit Tran


--Different between Delete and Truncate


--Question 8
--how to identify the physician and the department with which he or she is affiliated


Select * 
From Physician
Where EmployeePosition = ''

--Question 8
--how to identify the physician and the department with which he or she is affiliated
 Select * 
From Physician
Where EmployeePosition in ('SurgicalAttending Physician','Senior Attending Physician','Attending Physician')

 Select * 
From Physician
Where EmployeePosition in ('Head Chief of Medicine','Senior Attending Physician','Attending Physician')


--Wild card (to find a pattern e.g name starting with M)
Select * 
From Physician
Where EmployeeFirstName like 'M%'

Select * 
From Physician
Where EmployeeFirstName like '%D'

Select *
From Physician

---how to identify department head 
Select * 
From Physician
Where EmployeePosition = 'Head Chief of Medicine'

---how to identify all department head 
Select * 
From Physician
Where EmployeePosition in ('Head Chief of Medicine','Senior Attending Physician' )

--Question 4
--how to create table
create table Department
(DepartmentID int not null,
DepartmentName Varchar(50) Null,
DepartmentHead Varchar(50) Null)

--how to check record or data in a table
Select *
From Department

--how to load data to a Table
Insert into Department
(
[DepartmentID],[DepartmentName],[DepartmentHead]
)

Values (1,'General Medicine','4'),
(2,'Surgery','7'),
(3,'Psychiatry','9')

--Question 8B
--how to create afflicted table to Department
--how to create table


--Question 9B
---How to create Procedure

create table ProcedureID
(Code int not null,
ProcedureName Varchar(50) Null,
ProcedureCost int not Null)

Insert into ProcedureID
(
[Code],[ProcedureName],[ProcedureCost]
)

Values (1,'Reverse Rhinodoplasty','1500'),
(2,'Obtuse Pyloric Recombobulation','3750'),
(3,'Folded Demiophtalmectomy','4500'),
(4,'Complete Walletectomy','10000'),
(5,'Obfuscated Dermogastrotomy','4899'),
(6,'Rebersible Pancreomyoplasty','5600'),
(7,'Follicular Demiectomy','25')

Select *
From ProcedureID




--how to create table
create table Appointment
(AppointmentID int not null,
Patient int not Null,
PrepNurse int not Null,
Physician int Null,
Start_dt_time DateTime Null,
End_dt_time DateTime Null,
ExaminationRoom Varchar(50) Null)


Drop table Appointment




--how to check record or data in a table
Select *
From Appointment

---how to clear a table
Truncate Table Physician

--how to load data to a Table
Insert into Appointment
(
[AppointmentID],[Patient],[PrepNurse],[Physician],Start_dt_time, End_dt_time,ExaminationRoom
)

Values (13216584,'100000001','101',1,'2008-04-24','2008-04-24','A'),
(26548913,'100000002','101',2,'2008-04-24','2008-04-24','A'),
(36549879,'100000001','102',1,'2008-04-25', '2008-04-25','B'),
(46849589,'100000004','103',4,'2008-04-25','2008-04-25','A'),
(59871321,'100000004','102',4,'2008-04-26','2008-04-25','C'),
(69879231,'100000003','103',4,'2008-04-26','2008-04-26','C'),
(76983231,'100000001','103',2,'2008-04-26','2008-04-26','C'),
(86213939,'100000004','102',3,'2008-04-27','2008-04-27' ,'A'),
(93216548,'100000002','101',9,'2008-04-27','2008-04-27 ','B')




--how to create Room
create table Room
(RoomNumber int not null,
RoomType Varchar (50) Null,
BlockFloor int not null,
BlockCode Int not null,
Unavailable Varchar(50) Null
)


--how to check record or data in a table
Select *
From Room

Select *
From Trained_in


--how to load data to a Table
Insert into Room
(
[RoomNumber],[RoomType],[BlockFloor],[BlockCode],[Unavailable]
)

Values (101,'Single','1','1','F'),
(102,'Single','1','1','F'),
(103,'Single','1','1','F'),
(111,'Single','1','2','F'),
(112,'Single','1','2','F'),
(113,'Single','1','2','F'),
(121,'Single','1','3','F'),
(122,'Single','1','3','F'),
(123,'Single','1','3','F'),
(201,'Single','2','1','F'),
(202,'Single','2','1','F'),
(203,'Single','2','1','F'),
(211,'Single','2','2','T'),
(212,'Single','2','2','F'),
(213,'Single','2','2','F'),
(221,'Single','2','3','F'),
(222,'Single','2','3','F'),
(223,'Single','2','3','F'),
(301,'Single','3','1','F'),
(302,'Single','3','1','T'),
(303,'Single','3','2','F'),
(311,'Single','3','2','F'),
(312,'Single','3','2','F'),
(313,'Single','3','2','F'),
(321,'Single','3','3','T'),
(322,'Single','3','3','F'),
(323,'Single','3','3','F'),
(401,'Single','4','1','F'),
(402,'Single','4','1','T'),
(403,'Single','4','1','F'),
(411,'Single','4','2','F'),
(412,'Single','4','2','F'),
(413,'Single','4','2','F'),
(421,'Single','4','3','T'),
(422,'Single','4','3','F'),
(423,'Single','4','3','F')

---how to locate floor and block with room# 212 
Select * 
From Room
Where RoomNumber = '212'

create table Room
(RoomNumber int not null,
RoomType Varchar (50) Null,
BlockFloor int not null,
BlockCode Int not null,
Unavailable Varchar(50) Null
)

Select COUNT (*) as '212'
from Room 

--How to count the number of available rooms.
Select COUNT (*) as Available
From Room
Where Unavailable = 'F' 



--Question 7
---count the number of unavailable rooms
--find how many records in a table
Select COUNT (*) as Unavailable
From Room
Where Unavailable = 't' 

--Create Table for Trained_in

--how to create Trained_in
create table Trained_in
(Physician int not null,
Treatment int not Null,
CertificationDate DATE  null,
CerticationExpires DATE  null,
)

---to drop Table
Drop Table Trained_in

Insert into Trained_in
(
[Physician],[Treatment],[CertificationDate],[CerticationExpires]
)

Values (3,'1','2008-01-01','2008-12-31'),
(3,'2','2008-01-01','2008-12-31'),
(3,'5','2008-01-01','2008-12-31'),
(3,'6','2008-01-01','2008-12-31'),
(3,'7','2008-01-01','2008-12-31'),
(6,'2','2008-01-01','2008-12-31'),
(6,'5','2007-01-01','2007-12-31'),
(6,'6','2008-01-01','2008-12-31'),
(7,'1','2008-01-01','2008-12-31'),
(7,'2','2008-01-01','2008-12-31'),
(7,'3','2008-01-01','2008-12-31'),
(7,'4','2008-01-01','2008-12-31'),
(7,'5','2008-01-01','2008-12-31'),
(7,'6','2008-01-01','2008-12-31'),
(7,'7','2008-01-01','2008-12-31'),
(8,'8',null,'2008-12-31')

Truncate Table Trained_in

Select * 
From Trained_in

--To update a Table
Update Trained_in
Set CertificationDate = '2008-01-01'
where Physician =8


--To update data into a table

UPDATE Trained_in
SET Physician =4, 
Treatment =2
WHERE
Physician = 9



UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;

--to join multiple tables
Select * from Physician
Select * from Trained_in
Select * from Appointment

--show patients who have appointment with Physician /physician Position 

Select* from Physician as P
Inner join Trained_in as T
On P.EmployeeID = T.Physician
Inner Join Appointment as A
on P.EmployeeID =A.Physician

Select A.Patient,
P.EmployeeFirstName,
P.EmployeeLastName,
P.EmployeePosition
from Physician as P
Inner join Trained_in as T
On P.EmployeeID = T.Physician
Inner Join Appointment as A
on P.EmployeeID =A.Physician


Select A.Patient,
P.EmployeeFirstName,
P.EmployeeLastName,
P.EmployeePosition
from Physician as P
left join Trained_in as T
On P.EmployeeID = T.Physician
Left Join Appointment as A
on P.EmployeeID =A.Physician


--how to create Room
create table Room
(RoomNumber int not null,
RoomType Varchar (50) Null,
BlockFloor int not null,
BlockCode Int not null,
Unavailable Varchar(50) Null
)



CREATE TABLE products (
product_id INT PRIMARY KEY,
category VARCHAR(255),
name VARCHAR(255)
);
INSERT INTO products (product_id, category, name)
VALUES
(1,'Electronics','Laptop'),
(2, NULL, 'Tablet'),
(3, NULL,'Smartphone'),
(4, 'Clothing', 'T-Shirt'),
(5, NULL, 'Jeans'),
(6, NULL, 'Sneakers');

SELECT *
FROM products



SELECT *
FROM products
WHERE product_id =1

SELECT *
FROM products
WHERE category ='electronics'


SELECT *
FROM products
WHERE name = 'laptop'


---counting the number of table
Select COUNT (*) as TotalProduct
From products 


Select COUNT (*) as 'Total Product'
From products 


SELECT *
FROM products
WHERE product_id =6

--using max as a command
SELECT MAX (product_id)
FROM products

--to get max # in a data
--outer query or outside query
SELECT *
FROM products
WHERE product_id =(
--inner query or sub query
SELECT MAX (product_id)
FROM products
)


--to get min # in a data

SELECT *
FROM products
WHERE product_id =(
--inner query or sub query
SELECT Min (product_id)
FROM products)

--to get average# in a data
SELECT *
FROM products
WHERE product_id =(
--inner query or sub query
SELECT AVG (product_id)
FROM products)

--to get SUM# in a data
SELECT *
FROM products
WHERE product_id =(
--inner query or sub query
SELECT SUM (product_id)
FROM products
)

--TO GET SUM TOTAL OF THE TABLE.
SELECT SUM (product_id)
FROM products


SELECT *
FROM products
WHERE product_id <>(
SELECT SUM (product_id)
FROM products
)




