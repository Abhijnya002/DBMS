create database students;
use students;

create table student(
snum int,
sname varchar(30),
major varchar(30),
lvl varchar(30),
age int,
primary key(snum,sname,lvl)
);

create table classe(
cname varchar(30),
meets_at time,
room varchar(30),
fid int,
primary key(cname,fid),
foreign key(fid) references facult(fid)
);

create table enrooled(
snum int,
cname varchar(30),
primary key(snum,cname),
foreign key(snum) references student(snum),
foreign key(cname) references class(cname)
);

create table facult(
fid int,
fname varchar(30),
deptid int,
primary key(fid,fname,deptid)
);

insert into student
values(1,'abhi','cse','jr',16),(2,'anki','ise','sr',18),(3,'asha','cse','fr',18),(4,'ashok','cse','so',17);

insert into clasSE
values ('a',1:10:5,'R120',