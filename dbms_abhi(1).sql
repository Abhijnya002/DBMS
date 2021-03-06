CREATE DATABASE INSURANCE;
use insurance;
create table persons(
     driver_id varchar(30),
     name varchar(30),
     address varchar(30),
     PRIMARY KEY(driver_id)
     );
     
      insert into persons
 values('A01','Richard','srinivas nagar'),('A02','Pradeep','rajaji nagar'),('A03','smith','ashok nagar'),('A04','venu','N R colony'),('A05','john','hanumanth nagar');
 select *from persons;
 
 create table car(
 reg_num varchar(30),
 model char(30),
 year int,
 primary key(reg_num)
 );
 
 
 insert into car
    values('KA052250','indica',1990),('KA031181','lancer',1957),('KA095477','toyota',1998),('KA053408','honda',2008),('KA041702','audi',2005);
select * from car;

create table accident(
report_num int,
accident_date varchar(30),
location varchar(30),
primary key(report_num)
);

 insert into accident
    values('11','01-jan-03','mysore road'),('12','02-feb-04','south end circle'),('13','21-jan-03','bull temple road'),('14','17-feb-08','mysore road'),('15','4-mar-05','kanakpura road');
    select *from accident;
    
    create table participateds(
    driver_id varchar(30),
    reg_num varchar(30),
    report_num int,
    damage_amount int,
    primary key(driver_id,reg_num,report_num),
    foreign key (driver_id) references persons(driver_id),
    foreign key(reg_num) references car(reg_num),
    foreign key(report_num) references accident(report_num)
    );
    
 
        insert into participateds
    values('A01','KA052250',11,10000),('A02','KA053408',12,50000),('A03','KA095477',13,25000),('A04','KA031181',14,3000),('A05','KA041702',15,5000);
    select *from participateds;
    
    
    
    create table owns(
    driver_id varchar(30),
    reg_num varchar(30),
    primary key(driver_id,reg_num),
    foreign key(driver_id) references persons(driver_id),
    foreign key(reg_num) references car(reg_num)
    );
    
     insert into owns
    values('A01','KA052250'),('A02','KA053408'),('A03','KA031181'),('A04','KA095477'),('A05','KA041702');
    select *from owns;
insert into accident
 values('16','02-april-2000','basavanagudi');
 
 update participateds
 set damage_amount=25000
 where reg_num='KA053408' 
 and report_num=12;
 
 select count(distinct driver_id)cnt
 from participateds,accident
 where participateds.report_num=accident.report_num
 and accident_date like '%08';
 
  select count(participateds.report_num)cnt
 from participateds,car
 where car.reg_num=participateds.reg_num
 and car.model in('indica');
