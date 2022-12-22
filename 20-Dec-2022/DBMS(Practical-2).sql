USE mydatadb;
create table Employee(
id int primary key,Ename varchar(20) not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50),Edept varchar(20) not null,
Esalary double);
#drop table Employee;
#insert multiple row
insert into Employee value
(1,'Bishnupriya',4567231490,'Mumbai','IT',10000.5);
insert into Employee value
(2,'Suchitra',7869453210,'Kolkata','IT',20000.5),
(3,'Shifa',876931490,'Pune','A/C',15000.80),
(4,'Nisha',768594590,'Mumbai','MGR',35000.50),
(5,'Ellina',8765495490,'Kolkata','A/C',10000.50);
select * from Employee where Edept = 'IT';
# and both condition should be true
select * from Employee where Eaddr ='Kolkata' and Esalary = '10000.50';
# or any one condition should be true
select * from Employee where Eaddr = 'Mumbai' and Esalary = '35000.50';
#not
select * from Employee where Edept != 'IT';
#In
select * from Employee where Eaddr in('Mumbai','Pune');
#starts with
select * from Employee where Ename like 'E%';
#Ends with
select * from Employee where Ename like '%a';
#In between
select * from Employee where Ename like '%f%';
#starts and ends with
select * from Employee where Ename like 'N%a';
#missing letter
select * from Employee where Eaddr like 'Pu_e';
select * from Employee where Edept like 'M_R';
select id,Ename,Ephone,Eaddr from Employee;
select * from Employee where id =5;
select * from Employee where Ename='Nisha';
#Distinct (separate)
select distinct id from Employee;
alter table Employee add Comm_pact int after Esalary;
update Employee set Comm_pact = 20 where id = 1;
update Employee set Comm_pact = 15 where id = 2;
update Employee set Comm_pact = 10 where id = 3;
update Employee set Comm_pact = 15 where id = 4;
update Employee set Comm_pact = 25 where id = 5;
#as (add)
select Ename,Esalary,Esalary + 300 as 'Increased_Salary' from Employee;
select Ename,Esalary,Esalary,Comm_pact + 100 as 'Annual_Compensation' from Employee;
select Comm_pact from Employee;
#greater than
select id,Esalary from Employee where Esalary>1500;
#between
select Ename, Esalary from Employee where Esalary between 2000 and 5000;
select * from Employee Where  Esalary = 10000.5 or 20000.5 or Esalary = 35000.50;
select * from Employee where id = 1 or id =5 or id = 3;
# not equal
select * from Employee where Esalary != 15000.8;
select * from Employee where Ename ='Shifa';
select * from employee where id = 5 and Esalary<15000;
#update Employee set id = 9 and Esalary<20000 and >10000;
select Ename, id from Employee where Esalary>15000 and Eaddr ='Kolkata';