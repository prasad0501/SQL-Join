use University
----cartesian  Product
--------Every Value From one Table Duplicate with all Values From another table
select Personal_Name,DeptName from
Student,Department
-----------cross join
select Personal_Name,DeptName from
Student cross join Department
------------------------------------------
------Equi Join
------ The Matched Values from two tables with same keys
select Personal_Name,DeptName from
Student,Department where Department.Dept_Id= Student.Dept_Id
-----------Using alias
------ The Matched Values from two tables with same keys
select Personal_Name,DeptName from
Student x,Department y where y.Dept_Id= x.Dept_Id
---------- inner join      on
------ The Matched Values from two tables with same keys
select Personal_Name,DeptName from
Student x inner join Department y on y.Dept_Id= x.Dept_Id
------------------------------------------
--------------Outer Join
--------Left Outer Join
--------All Records From Left Table Even if it is null
select Personal_Name,DeptName from
Student x left outer join Department y on y.Dept_Id= x.Dept_Id
--------Right Join
--------All Records From Right Table Even if it is null
select Personal_Name,DeptName from
Student x Right outer join Department y on y.Dept_Id= x.Dept_Id
-------Full Outer Join
--------All Records From All Tables With All Value
select Personal_Name,DeptName from
Student x full outer join Department y on y.Dept_Id= x.Dept_Id
------------------------------------------
--------Self Join

Create database Join_EX
go 
use Join_EX
create table Employees(EID int identity primary key,EName nvarchar (50),SuperID int)
insert into Employees (EName,SuperID) values ('Ahmed',null),('Ali',1),('Omar',1),('Kalid',2)
alter table employees
add constraint FK_Emp Foreign Key (SuperID) References Employees(EID);

Select x.EName as Employee , y.EName  as Overseer from Employees x inner join Employees y on y.EID=x.SuperID

Select x.EName,y.* from Employees x, Employees y Where y.EID=x.SuperID

------------------------------------------
-------- Join multiple tables
select St_name,Crs_name,grade
from student s , stud_course SC , Course C
Where S.st_id=SC.id and C.Crs_Id=sc.crs_Id

-------- inner join multiple tables
select St_name,Crs_name,grade
from student s inner join stud_course SC 
on S.st_id=SC.id 
inner join
Course C
on C.Crs_Id=sc.crs_Id









