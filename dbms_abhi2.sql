create database bank;
use bank;
create table branchs(
branch_name varchar(30),
branchcity varchar(30),
assets int,
primary key(branch_name)
);
 
 select * from branchs;
 create table bankAccount(
 Accno int,
branch_name varchar(30),
balance int,
primary key(Accno),
foreign key(branch_name) references branchs(branch_name)
);
insert into bankAccount
  values(1,'SBI_chamrajpet',2000),(2,'SBI_residencyRoad',5000),(3,'SBI_shivajiRoad',6000),(4,'SBI_parlimentRoad',9000),(5,'SBI_jantarmantar',8000),(6,'SBI_shivajiRoad',4000),(8,'SBI_residencyRoad',4000),(9,'SBI_parlimentRoad',3000),(10,'SBI_residencyRoad',5000),(11,'SBI_jantarmantar',2000);
  select * from bankAccount;

 create table bankCustomer(
customer_name varchar(30),
customer_street varchar(30),
customer_city varchar(30),
primary key(customer_name)
);

insert into bankCustomer
  values('avinash','bull_temple','banglore'),('dinesh','bannergatta','banglore'),('mohan','national_clg','banglore'),('nikil','akbar_road','delhi'),('ravi','prithviraj_road','delhi');
  select * from bankCustomer;


create table depositer(
customer_name varchar(30),
Accno int,
primary key(Accno,customer_name),
foreign key(customer_name) references bankCustomer(customer_name),
foreign key(Accno) references bankAccount(Accno)
);

insert into depositer
  values('avinash',1),('dinesh',2),('nikil',4),('ravi',5),('avinash',8),('nikil',9),('dinesh',10),('nikil',11);
  select * from depositer;
  
  
  
  create table loan(
loan_no int,
branch_name varchar(30),
amount int,
primary key(branch_name),
foreign key(branch_name) references branchs(branch_name)
);

insert into loan
  values(1,'SBI_chamrajpet',1000),(2,'SBI_residencyRoad',2000),(3,'SBI_shivajiRoad',3000),(4,'SBI_parlimentRoad',4000),(5,'SBI_jantarmantar',5000);
  select * from loan;