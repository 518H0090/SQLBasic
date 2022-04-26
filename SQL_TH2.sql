use master

GO

CREATE DATABASE DB_TH2
ON
(
	NAME = DB_TH2,
	FILENAME = "D:\DATA\DB_TH2.mdf",
	SIZE = 10mb,
	MAXSIZE = 50mb,
	FILEGROWTH = 5mb
)
LOG ON 
(
	NAME = DB_TH2_log,
	FILENAME = "D:\DATA\DB_TH2_log.ldf",
	SIZE = 10mb,
	MAXSIZE = 50mb,
	FILEGROWTH = 5mb
)

GO
USE DB_TH2;
GO

--create table
CREATE TABLE [Student]
(
	Id int,
	[Name] nvarchar(255),
	Age int,
	BirthDay date,
	Gender BIT
)

--drop table
drop table [Student]

--insert value
INSERT INTO [Student](Id,Name,Age,BirthDay,Gender) values (1,'Nguyen van A',20,'1990-04-20',1);
INSERT INTO [Student](Id,Name,Age,BirthDay,Gender) values (2,'Nguyen van B',21,'1990-05-22',0);
INSERT INTO [Student](Id,Name,Age,BirthDay,Gender) values (3,'Nguyen van C',19,'1990-06-25',1);

--select value
SELECT * FROM [Student]

--delete data from table with condition
DELETE FROM Student WHERE Age > 20;

SELECT * FROM [Student];

--delete all data from table - chỉ xóa các dòng dữ liệu thôi - không xóa index
DELETE FROM Student 

SELECT * FROM [Student];

--truncate table - xóa luôn các số tự tăng , index dữ liệu - dùng để reset index
TRUNCATE TABLE Student;

SELECT * FROM [Student];

--Rename table 
sp_rename 'Student','Student2'

--copy table
-- Dùng select thì sẽ tạo mới bảng
SELECT * INTO Student1 FROM Student2

/*
tạo mới bảng và thêm dữ liệu từ bảng có sẵn
SELECT * INTO TABLE_NEED_VALUE FROM TABLE_HAVE_VALUE

nếu có bảng mà chỉ cần thêm dữ liệu từ bảng có sẵn thì dùng
INSERT INTO TABLE_NEED_VALUE
SELECT * FROM TABLE_HAVE_VALUE
*/