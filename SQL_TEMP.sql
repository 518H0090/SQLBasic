CREATE TABLE #sample_temp
(
	ID int,
	[Name] nvarchar(50)
)

insert into #sample_temp values(1,N'Trung Hiếu');

select * from #sample_temp;

CREATE TABLE ##global_sample_temp
(
	ID int,
	[Name] nvarchar(50)
)
