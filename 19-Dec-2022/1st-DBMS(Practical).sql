USE mydatadb;

# Create a table
create table student_details(id int primary key ,
sname varchar(20) not null,sphone bigint(11) not null unique,
semail varchar(30) not null unique,sadd varchar(50),
squalification varchar(10) not null,
sdept varchar(20));

#insert multiple rows
insert into student_details values
(1,'Rano',868778685,'ran@gmail.com','chennai','MCA','it'),
(2,'DEBKANTA',822778685,'deb@gmail.com','kokata','BCA','it'),
(3,'ATIF',811778685,'atif@gmail.com','chennai','MCA','it'),
(4,'PESO',844778685,'peso@gmail.com','chennai','BCA','it'),
(5,'ELSY',879448685,'elsy@gmail.com','chennai','MCA','it');

#insert single row
insert into student_details values
(6,'AVI',879400685,'avi@gmail.com','bihar','BCA','it');

# add new column
alter table student_details ADD age int after sname;

# modify datatype size
alter table student_details Modify squalification varchar(20) not null;

# modify constraint
alter table student_details MODIFY sphone int not null;

# drop column
alter table student_details DROP COLUMN sdept;

#change coloumn name
alter table student_details CHANGE COLUMN age sage int;

#rename table name
alter table student_details RENAME TO Students;

#insert Single row
insert into students values
(7,'AVINASH',23,879400005,'avinash@gmail.com','bihar','MCA');

#delete rows
truncate Students;

#delete whole table
drop table Students;

# DML--- INSERT, UPDATE, DELETE

alter table student_details add fees double after squalification;

#update
update student_details set fees=100050.2 where ID = 1;
update student_details set fees=100050.2 where ID = 2;
update student_details set fees=100050.2 where ID = 3;
update student_details set fees=100050.2 where ID = 4;
update student_details set fees=100050.2 where ID = 5;
update student_details set fees=100050.2 where ID = 6;
update student_details set fees=100050.2 where ID = 7;
update student_details set squalification = 'Btech' where sname = 'AVI'; 

#Deleting one single row
delete from student_details where sname='Peso';

#deleing the whole column
alter table student_details drop column fees;