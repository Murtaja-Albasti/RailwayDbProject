use trainstationdb;
insert into employee(e_id,salary,E_FNAME,E_LNAME,ADDRESS,GENDER,PH_NUMBER)
values

(2,250,"Ahmed","suraysiry","Yanbu","M","966445767"),
(3,250,"Fahad","alfarshooti","Yanbu","M","96635654"),
(4,250,"Abdulhadi","alotaibi","Dammam","M","966853457"),
(5,250,"Fatima","AlYsef","Qassim","F","966853457"),
(6,250,"Zahraa","Alamri","Riyadh","F","966853457")
;
alter table passenger auto_increment = 100;
insert into passenger(SEAT_NO,P_NAME,PH_NUMBER,GENDER,Employee_E_id)
values
(203,"Ali",966343535,"M",1),
(204,"Ahmed",96663805,"M",1),
(205,"Fatimah",96643769,"F",1),
(206,"Samirah",966343534,"F",2),
(207,"Abdulah",966478930,"M",2),
(208,"Mustafa",96698567,"M",3),
(209,"Mohamed",966748394,"M",3),
(210,"Sofia",96682934,"F",4);
alter table station modify STATION_ID int not null auto_increment;
alter table station auto_increment = 200;
insert into station (NO_OF_PLATFORM,NO_OF_LINES, STATION_NAME)
values
(5 , 12 , "North of Jeddah"),
(2 , 8 , "Dammam train Station"),
(8 , 8 , "center of Riyadh"),
(12 , 20 , "center of Makkah"),
(5 , 12 , "Madinah Station");
drop table train;
alter table train modify TRAIN_ID int not null auto_increment;
alter table train auto_increment = 200;
insert into train (TRN_NAME,STATION_STATION_ID)
values 
("Wind-1",1),
("Wind-2",1),
("Wind-3",1),
("Wind-4",2),
("Wind-5",2),
("Wind-6",3),
("Wind-7",3),
("Wind-8",3),
("Wind-9",4),
("Wind-10",4),
("Wind-11",4),
("Wind-12",5),
("Wind-13",5),
("Wind-14",5);

alter table class modify CLASS_CLASS_ID int not null auto_increment;
alter table class auto_increment = 200;
insert into class(CLASS_ID,JOURNY_DATE,NO_OF_SEAT,TRAIN_TRAIN_ID)
values 
(2,'2022-5-23',200,1),
(3,'2022-5-20',200,1),
(4,'2022-2-13',150,2),
(5,'2022-2-12',150,2),
(6,'2022-8-5',170,3),
(7,'2022-8-3',170,3),
(8,'2022-7-1',250,4),
(9,'2022-5-10',200,5),
(10,'2022-11-1',180,6),
(11,'2022-11-3',180,6),
(12,'2022-11-5',180,6),
(13,'2022-10-15',230,7),
(14,'2022-10-12',230,7),
(15,'2022-1-27',100,8),
(16,'2022-5-30',100,8),
(17,'2022-6-20',130,9),
(18,'2022-6-21',130,9),
(19,'2022-6-22',130,9),
(20,'2022-6-23',130,9),
(21,'2022-8-17',200,10),
(22,'2022-2-12',230,11),
(23,'2022-2-13',230,11),
(24,'2022-1-23',170,12),
(25,'2022-1-23',170,12),
(26,'2022-9-10',200,13),
(27,'2022-12-29',250,14),
(28,'2022-5-29',250,14);

alter table ticket modify TICKET_NO int not null auto_increment;
alter table ticket auto_increment = 200;

insert into ticket (SOURCE,DESTINATION,CLASS_CLASS_ID,CLASS_TRAIN_TRAIN_ID)
values 
("Makkah","Riyadh",1,1),
("Makkah","Dammam",2,1),
("Makkah","Qassim",3,1),
("Makkah","Yanbu",4,2),
("Makkah","Jeddah",5,2),
("Makkah","Buraidh",6,3),
("Makkah","Jordan",7,3),
("Makkah","Qatar",8,4),
("Makkah","Jubail",9,5),
("Jeddah","Riyadh",10,6),
("Jeddah","Dammam",11,6),
("Jeddah","Qassim",12,6),
("Jeddah","Makkah",13,7),
("Jeddah","Buraidh",14,7),
("Jeddah","Jordan",15,8),
("Jeddah","Qatar",16,8),
("Jeddah","Jubail",17,9),
("Dammam","Riyadh",18,9),
("Dammam","Jeddah",19,9),
("Dammam","Qassim",20,9),
("Dammam","Makkah",21,10),
("Dammam","Buraidh",22,11),
("Madinah","Jordan",23,11),
("Madinah","Qatar",24,12),
("Madinah","Jubail",25,12),
("Riyadh","Makkah",26,13),
("Riyadh","Jeddah",27,14),
("Riyadh","Madinah",28,14);

insert into time (MOV_TIME,REF_NO,ARR_TIME,STATION_STATION_ID,TRAIN_TRAIN_ID)
values
 (time(now()),30000,time(now()+1000),1,1),
 (time(now()),30100,time(now()+1000),1,2),
 (time(now()),30150,time(now()+1000),1,3),
 (time(now()),30200,time(now()+1000),2,4),
 (time(now()),30250,time(now()+1000),2,5),
 (time(now()),30300,time(now()+1000),3,6),
 (time(now()),30350,time(now()+1000),3,7),
 (time(now()),30400,time(now()+1000),3,8),
 (time(now()),30450,time(now()+1000),4,9),
 (time(now()),30500,time(now()+1000),4,10),
 (time(now()),30550,time(now()+1000),4,11),
 (time(now()),30600,time(now()+1000),5,12),
 (time(now()),30650,time(now()+1000),5,13),
 (time(now()),30700,time(now()+1000),5,14);
 
 -- All Lines Below is for show the tables --
 
 select E_FNAME , E_LNAME , GENDER as Male_EMP , salary
 from employee 
 where GENDER ='M' and salary < (select min(salary) from employee where GENDER = 'F');
 
 
 select P_NAME , GENDER , Employee_E_id from passenger 
 where Employee_E_id = 2;
 
 
 
 select STATION_NAME, NO_OF_LINES, NO_OF_PLATFORM
 from station
 where NO_OF_LINES >= 10 ;
 
 
 select TRAIN_ID, TRN_NAME,STATION_STATION_ID 
 from train
 where not STATION_STATION_ID = 5;


select TRAIN_TRAIN_ID, TRN_NAME, CLASS_ID
from class inner join train on class.TRAIN_TRAIN_ID = train.TRAIN_ID;



select employee.E_FNAME as 'EMP_Name',employee.PH_NUMBER as 'PH_Number' , employee.GENDER as 'E_Gender', P_NAME as 'Passenger_name'
from employee join passenger on employee.E_id = passenger.Employee_E_id;



select employee.E_FNAME, employee.PH_NUMBER,employee.GENDER, passenger.P_NAME
from employee join passenger on employee.E_id = passenger.Employee_E_id and employee.PH_NUMBER like'___8%';




select TRN_NAME,class.NO_OF_SEAT,JOURNY_DATE
from train join class on train.TRAIN_ID = class.TRAIN_TRAIN_ID and JOURNY_DATE like '%06%';


