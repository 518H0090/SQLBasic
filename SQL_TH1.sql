-- create database
-- store in MSSQL/Data
create database [DB_first];

--drop database
drop database [DB_first];

--Edit database name
alter database [DB_first] modify name = [DB_TrungHieu];

--access to database
use DB_TrungHieu;

--create database with options
use master
go
create database Diffirentdata
ON
(
	NAME = Diffirentdata,
	FILENAME = 'D:\DATA\Diffirentdata.mdf',
	SIZE = 10mb,
	MAXSIZE = 50mb,
	FILEGROWTH = 5mb
)
LOG ON
(
	NAME = Diffirentdata_log,
	FILENAME = 'D:\DATA\Diffirentdata_log.ldf',
	SIZE = 10mb,
	MAXSIZE = 50mb,
	FILEGROWTH = 5mb
);

