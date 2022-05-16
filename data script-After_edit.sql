use trainstationdb;
insert into employee(e_id,salary,E_FNAME,E_LNAME,ADDRESS,GENDER,PH_NUMBER)
values

(2,250,"Ahmed","suraysiry","Yanbu","M","966445767"),
(3,250,"Fahad","alfarshooti","Yanbu","M","96688654"),
(4,250,"Abdulhadi","alotaibi","Dammam","M","966203457"),
(5,250,"Fatima","AlYsef","Qassim","F","966853457"),
(6,250,"Zahraa","Alamri","Riyadh","F","966733457");
alter table passenger auto_increment = 100;
insert into passenger(SEAT_NO,P_NAME,PH_NUMBER,GENDER,Employee_E_id)
values
-- (203,"Ali",966343535,"M",1),
-- (204,"Ahmed",96663805,"M",1),
-- (205,"Fatimah",96643769,"F",1),
-- (206,"Samirah",966343534,"F",2),
-- (207,"Abdulah",966478930,"M",2),
-- (208,"Mustafa",96698567,"M",2),
-- (209,"Mohamed",966748394,"M",3),
-- (210,"Sofia",96682934,"F",3),
(203,"John",966342835,"M",1),
(204,"Chris",96695805,"M",1),
(205,"Joliah",96639769,"F",1),
(206,"Dena",966327534,"F",2),
(207,"Abduljabar",966485930,"M",2),
(208,"Murtada",96690267,"M",2),
(209,"Yassen",966742394,"M",3),
(203,"Zainab",96682444,"F",3),
(204,"Yasser",966343572,"M",1),
(205,"Amjad",96663645,"M",1),
(206,"Zahraa",966977692,"F",1),
(207,"Samiah",966483294,"F",2),
(208,"Abbas",966388930,"M",2),
(209,"Malik",966943567,"M",2),
(203,"Mohamed",966748754,"M",3),
(204,"Salma",96682374,"F",3),
(205,"Salim",966343577,"M",1),
(206,"Saleem",96663885,"M",1),
(207,"Fay",96643039,"F",1),
(208,"Sozan",966343734,"F",2),
(209,"Abdulhamid",966476330,"M",2),
(203,"Mahmod",966985624,"M",2),
(204,"Majed",966748244,"M",3),
(205,"Ruqaiyah",96693934,"F",3),
(206,"Ali",966346035,"M",1),
(207,"Eslam",96683805,"M",1),
(208,"Fadelah",96642469,"F",1),
(209,"Reem",966385524,"F",2),
(203,"Abdulah",966409930,"M",2),
(204,"Lafi",96693467,"M",2),
(205,"Motaz",966723394,"M",3),
(206,"Metha",96682985,"F",3),
(207,"Maytham",966712394,"M",3),
(208,"Layla",96682995,"F",3);

drop table station;
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
("Wind-1",200),
("Wind-2",200),
("Wind-3",200),
("Wind-4",201),
("Wind-5",201),
("Wind-6",202),
("Wind-7",202),
("Wind-8",202),
("Wind-9",203),
("Wind-10",203),
("Wind-11",203),
("Wind-12",204),
("Wind-13",204),
("Wind-14",204);

drop table class;
SET FOREIGN_KEY_CHECKS=0; -- to disable them
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them
alter table class add Class_name varchar(100) not null default 'ECONOMY';
ALTER TABLE class modify column CLASS_ID INT PRIMARY KEY AUTO_INCREMENT first;
insert into class(NO_OF_SEAT,Class_name,train_TRAIN_ID,train_STATION_STATION_ID)
values 
(50,'BUSINESS',200,200),
(200,'ECONOMY',200,200),
(150,'FIRST',200,200),
(50,'BUSINESS',201,200),
(200,'ECONOMY',201,200),
(150,'FIRST',201,200),
(50,'BUSINESS',202,200),
(200,'ECONOMY',202,200),
(150,'FIRST',202,200),
(50,'BUSINESS',203,201),
(200,'ECONOMY',203,201),
(150,'FIRST',203,201),
(50,'BUSINESS',204,201),
(200,'ECONOMY',204,201),
(150,'FIRST',204,201),
(50,'BUSINESS',205,202),
(200,'ECONOMY',205,202),
(150,'FIRST',205,202),
(50,'BUSINESS',206,202),
(200,'ECONOMY',206,202),
(150,'FIRST',206,202),
(50,'BUSINESS',207,202),
(200,'ECONOMY',207,202),
(150,'FIRST',207,202),
(50,'BUSINESS',208,203),
(200,'ECONOMY',208,203),
(150,'FIRST',208,203),
(50,'BUSINESS',209,203),
(200,'ECONOMY',209,203),
(150,'FIRST',209,203),
(50,'BUSINESS',210,203),
(200,'ECONOMY',210,203),
(150,'FIRST',210,203),
(50,'BUSINESS',211,204),
(200,'ECONOMY',211,204),
(150,'FIRST',211,204),
(50,'BUSINESS',212,204),
(200,'ECONOMY',212,204),
(150,'FIRST',212,204),
(50,'BUSINESS',213,204),
(200,'ECONOMY',213,204),
(150,'FIRST',213,204);

alter table ticket modify TICKET_NO int not null auto_increment;
alter table ticket auto_increment = 200;

insert into ticket (SOURCE,DESTINATION,CLASS_CLASS_ID,train_TRAIN_ID,train_STATION_STATION_ID,passenger_p_id)
values 
-- ("Makkah","Riyadh",1,200,200,108),
("Makkah","Dammam",2,200,200,109),
("Makkah","Qassim",3,200,200),
("Makkah","Yanbu",4,201,200),
("Makkah","Jeddah",5,201,200),
("Makkah","Buraidh",6,201,200),
("Makkah","Jordan",7,202,200),
("Makkah","Qatar",8,202,200),
("Makkah","Jubail",9,202,200),
("Jeddah","Riyadh",10,203,201),
("Jeddah","Dammam",11,203,201),
("Jeddah","Qassim",12,203,201),
("Jeddah","Makkah",13,204,201),
("Jeddah","Buraidh",14,204,201),
("Jeddah","Jordan",15,204,201),
("Jeddah","Qatar",16,205,202),
("Jeddah","Jubail",17,205,202),
("Dammam","Riyadh",18,205,202),
("Dammam","Jeddah",19,206,202),
("Dammam","Qassim",20,206,202),
("Dammam","Makkah",21,206,202),
("Dammam","Buraidh",22,207,202),
("Madinah","Jordan",23,207,202),
("Madinah","Qatar",24,207,202),
("Madinah","Jubail",25,208,203),
("Riyadh","Makkah",26,208,203),
("Riyadh","Jeddah",27,208,203),
("Riyadh","Madinah",28,209,203),
("Jeddah","Jordan",29,209,203),
("Jeddah","Qatar",30,209,203),
("Jeddah","Jubail",31,210,203),
("Dammam","Riyadh",32,210,203),
("Dammam","Jeddah",33,210,203),
("Dammam","Qassim",34,211,204),
("Dammam","Makkah",35,211,204),
("Dammam","Buraidh",36,211,204),
("Madinah","Jordan",37,212,204),
("Madinah","Qatar",38,212,204),
("Madinah","Jubail",39,212,204),
("Riyadh","Makkah",40,213,204),
("Riyadh","Jeddah",41,213,204),
("Riyadh","Madinah",42,213,204);

insert into time (MOV_TIME,REF_NO,ARR_TIME,STATION_STATION_ID,TRAIN_TRAIN_ID)
values
 (time(now()+5),30000,time(now()+1000),200,200),
 (time(now()+5),30100,time(now()+1000),200,201),
 (time(now()+5),30150,time(now()+1000),200,202),
 (time(now()+5),30200,time(now()+1000),201,203),
 (time(now()+5),30250,time(now()+1000),201,204),
 (time(now()+6),30300,time(now()+1000),202,205),
 (time(now()+6),30350,time(now()+1000),202,206),
 (time(now()+6),30400,time(now()+1000),202,207),
 (time(now()+6),30450,time(now()+1000),203,208),
 (time(now()+7),30500,time(now()+1000),203,209),
 (time(now()+7),30550,time(now()+1000),203,210),
 (time(now()+7),30600,time(now()+1000),204,211),
 (time(now()+7),30650,time(now()+1000),204,212),
 (time(now()+7),30700,time(now()+1000),204,213);
 
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



select employee.E_FNAME as 'EMP_Name',employee.PH_NUMBER as 'PH_Number' , employee.GENDER as 'E_Gender', P_NAME as 'Passenger_name',passenger.PH_NUMBER as 'PassengerPH'
from employee join passenger on employee.E_id = passenger.Employee_E_id;



select employee.E_FNAME, employee.PH_NUMBER,employee.GENDER, passenger.P_NAME
from employee join passenger on employee.E_id = passenger.Employee_E_id and employee.PH_NUMBER like'___8%';




select TRN_NAME,class.NO_OF_SEAT
from train join class on train.TRAIN_ID = class.TRAIN_TRAIN_ID;


