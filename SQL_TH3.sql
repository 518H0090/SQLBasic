CREATE DATABASE DB_TH3
ON
(
	NAME = DB_TH3,
	FILENAME = 'D:\DATA\DB_TH3.mdf',
	SIZE = 10mb,
	MAXSIZE = 50mb,
	FILEGROWTH = 5mb
)
LOG ON
(
	NAME = DB_TH3_log,
	FILENAME = 'D:\DATA\DB_TH3_log.ldf',
	SIZE = 10mb,
	MAXSIZE = 50mb,
	FILEGROWTH = 5mb
)

GO

USE DB_TH3;

GO

CREATE TABLE Student 
(
	Id int,
	Name nvarchar(50),
	Age int,
	DateOfBirth date,
	Gender bit
)

--Thay đổi trong bản
--Alter table add
ALTER TABLE Student 
add [Address] nvarchar(50)

ALTER TABLE Student 
add Province nvarchar(50),District nvarchar(50)

--modify column
ALTER TABLE Student 
ALTER COLUMN Address nvarchar(255)

--Drop column
ALTER TABLE Student
DROP COLUMN Address 

--Rename Column
sp_rename 'Student.Province','Province1', 'Column'
