USE mydatadb;
#Creating a table Department
create table Department(
D_Id int primary key,
D_Emp_Name varchar(20) not null,
D_Emp_PhNo bigint(11) not null,
D_Emp_Add varchar(50),
D_Loc varchar(50),
D_Emp_Salary double);

#inserting multiple row- values to its Entities
insert into Department value
(1,'Nil',7869453210,'Kolkata','Pune',20500.50),
(2,'Avi',876931490,'Meghalaya','Agartala',10050.60),
(3,'Peso',768594590,'Meghalaya','Shillong',50020.60),
(4,'Nisha',8765495490,'Kolkata','Delhi',70000.52),
(5,'Shifa',8765495490,'Kolkata','Chennai',80000.00);

#inserting a single row values to its Entities
insert into Department value
(6,'Misbah',7869453210,'Kolkata','Sikkim',28000.5);

#Altering  the entities(Changing name, datatype size,adding new column )
alter table Department  change column D_loc Office_loc varchar(50);
alter table Department Modify D_Emp_Salary int(10) not null;
alter table Department add D_Name varchar(20) After D_Id;

#Deleating the rows where the D_Id is 5 and the D_Salary are less the 25000
delete from department where D_Id=5 or D_Emp_Salary<25000;

#Updating the department name and office location
update Department set D_Name='Tech' where D_Id = 3 or 6;
update Department set D_Name='Maintanence',Office_loc='Shillong' where D_Id = 4;

# Drop(To Dleat one One or multiple column)
alter table department drop column D_Emp_Salary;

#Truncate (empty the whole table)
truncate table Department;