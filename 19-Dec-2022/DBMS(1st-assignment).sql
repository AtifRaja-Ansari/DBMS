USE mydatadb;

#1. Create a table EMP1 with following structure.
create table EMP1(ID int(2) primary key ,
Name varchar(10) not null, Basic float(6,2) ,
Designation varchar(10), Age int(2));

#2.  Change the data type of the field Basic
#from float to integer with required size of the EMP1 table.emp_trainee
alter table EMP1 Modify Basic int(20);

#3 Change the field size of Name column of the EMP1 table from 10 to 15. 
alter table EMP1 Modify Name varchar(15);

#4 Creating new Table with the name EMP_trainee
create table EMP_trainee(ID int(2) primary key ,
Name varchar(10) not null, Basic float(6,2) ,
Designation varchar(10), Age int(2));
alter table EMP_trainee Modify Name varchar(15);

#5insert into EMP1
insert into EMP1 values
(1,'Rohit',6700,'Manager',24),
(2,'Sunil',6200,'Engineer',27),
(3,'Payal',6300,'Engineer',25),
(4,'Kunal',6700,'Trainee',28),
(5,'Sunita',6230,'Trainee',26),
(6,'Bimal',7000,'Trainee',25);

#6. Insert all rows with the designation ‘trainee’ from the EMP1 table to EMP_trainee table
INSERT INTO EMP_trainee (Emp_id,Name,Basic,Designation,Age) select ID,
Name,Basic,Designation,Age FROM EMP1 WHERE Designation = 'Trainee';

#7 Display the structure of both the tables.
select * from emp1,emp_trainee;

#8 Add columns Skills (data type-varchar2 and size-10) and DOJ (data type-date) to the EMP1
alter table emp1 add skills varchar(10)  after name;
alter table emp1 add  doj date after name;
update EMP1 set skills ='java' where ID = 1;
update EMP1 set skills='Python' where ID = 2;
update EMP1 set skills ='C++' where ID = 3;
update EMP1 set skills='C#' where ID = 4;
update EMP1 set skills ='R' where ID = 5;
update EMP1 set skills='SS' where ID = 6;

update EMP1 set doj = '10/10/2000' where ID = 1;
update EMP1 set doj = '15/06/2000' where ID = 2;
update EMP1 set doj = '05/10/2002' where ID = 3;
update EMP1 set doj = '06/12/2021' where ID = 4;
update EMP1 set doj = '06/11/2006' where ID = 5;
update EMP1 set doj = '05/02/2003' where ID = 6;

#9Change the designation of all trainees in EMP_trainee table to ‘Programmer _Trainee’.
update EMP_trainee set designation = 'programmer_trainee';

#10  Update more than one row in one query in EMP1 table
update EMP1 set name ='Rahul' and designation ='ss' where id=1 or id=2;

#11.Change the data type of ID in EMP1 table to varchar2 and increase the data size to 5
alter table EMP1 modify id varchar(5) ;

#12 Display both the tables EMP1 and EMP_trainee
select * from EMP1,EMP_trainee;

#13.Rename the column Age of EMP1 table to Age_in_Years
alter table EMP1 change column age age_in_year int;

#14.Delete the details of all the trainees from the EMP1 table.
delete  from EMP1 where designation='trainee';

#15.Drop the Age column from the EMP_trainee table
alter table EMP_trainee drop column age;

#16.Drop two columns in one query from EMP_trainee table
alter table EMP_trainee drop column basic , drop column designation;

#17.Rename the table EMP to EMP_Mgr_Engr
alter table EMP rename to EMP_Mgr_Engr;

#18.Drop the table EMP_Trainee.
drop table EMP_trainee;

#19.Truncate EMP_Mgr_Engr table
truncate EMPemp1_Mgr_Engr;