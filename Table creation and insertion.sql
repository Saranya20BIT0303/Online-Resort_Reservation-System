--Creating Tables

create table Room( 
Room_no number(10) constraint room_pk primary key, 
Rate number(10), 
Type varchar(30) 
); 

create table Resort( 
Name varchar(50), 
Resort_Id varchar(30) constraint resort_pk primary key, 
Address varchar(50), 
Room_no constraint Resort_rno_fk references Room(Room_no) 
); 

create table Workers( 
Name varchar(50), 
Workers_Id varchar(30) constraint Worker_pk primary key, 
Address varchar(50), 
Resort_Id constraint Workers_rid_fk references Resort(Resort_Id) 
); 

create table Guest( 
Guest_Name varchar(30), 
Guest_Id varchar(10) constraint Guest_pk primary key, 
Address varchar(50), 
Check_In_Date date, 
Check_Out_Date date, 
Room_no constraint Guest_rno_fk references Room(Room_no) 
); 

create table Bills( 
Bill_No varchar(10) constraint bills_pk primary key, 
Amount number(10), 
Bill_Date date, 
Paying_Method varchar(30), 
Guest_Id constraint bills_Gid_fk references Guest(Guest_Id) 
); 

create table Food( 
Food_Id varchar(30) constraint food_pk primary key, 
Type varchar(30), 
Rate number(10) 
); 

create table Facilities( 
Facility_Id varchar(30) constraint facility_pk primary key, 
Type varchar(30), 
Rate number(10) 
); 

create table Orders( 
Order_Date date, 
Time Timestamp(0), 
Quantity varchar(30), 
Guest_Id constraint Orders_Gid_fk references Guest(Guest_Id), 
Food_Id constraint Orders_fid_fk references Food(Food_Id) 
); 

create table Uses( 
Guest_Id constraint Uses_Gid_fk references Guest(Guest_Id), 
Facility_Id constraint Uses_fid_fk references Facilities(Facility_Id) 
); 

create table Resort_Phone_No( 
Phone_no number(10), 
Resort_Id constraint Resortphno_Rid_fk references Resort(Resort_Id) 
);

create table Workers_Phone_No( 
Phone_no number(10), 
Workers_Id constraint Workersphno_wid_fk references Workers(Workers_Id) 
); 

create table Guest_Phone_No( 
Phone_no number(10), 
Guest_Id constraint Guestphno_Gid_fk references Guest(Guest_Id) 
);

--Inserting values

insert into Room values('101',5000,'single'); 
insert into Room values('102',4000,'double'); 
insert into Room values('201',5100,'large'); 
insert into Room values('202',4000,'single'); 

insert into Resort values('VGP Golden Beach Resort','VGP1001', 'Injambakkam Chennai Tamil Nadu',101); 
insert into Resort values('Green Cocount Resort', 'GCR2201','Mahabalipuram Muttukadu Chennai Tamil Nadu',102); 
insert into Resort values('VGP Golden Beach Resort2','VGP1002', 'Injambakkam Chennai Tamil Nadu',101); 
insert into Resort values('Green Cocount Resort2','GCR2101', 'Mahabalipuram Muttukadu Chennai Tamil Nadu',102);

insert into Workers values('Karthi',01,'vallarstreet vellore','VGP1001'); 
insert into Workers values('kala',02,'Madamstreet vellore','VGP1001'); 
insert into Workers values('Ramesh',03,'kannanstreet chennai','GCR2201'); 
insert into Workers values('Ranjini',04,'kamalastreet chennai','GCR2201'); 


insert into Guest values('Ezhilarasi',1001,'annastreet chennai',to_date('2021 04 10','YYYY MM DD'),to_date('2021 04 20','YYYY MM DD'),'202'); 
insert into Guest values('Abretha',1002,'Nadustreet chennai',to_date('2020 06 10 ','YYYY MM DD'),to_date('2020 06 20','YYYY MM DD'),'201'); 
insert into Guest values('Saranya',1003,'Savadistreet chennai',to_date('2020 07 10','YYYY MM DD'),to_date('2020 07 20','YYYY MM DD'),'202'); 
insert into Guest values('Punitha',1004,'Mariyammanstreet vellore', to_date('2020 10 10','YYYY MM DD'),to_date('2020 10 20','YYYY MM DD'),'101'); 


insert into Bills values('234',6000,to_date('2020 04 12','YYYY MM DD'),'Credit Card','1001'); 
insert into Bills values('254',5500,to_date('2020 06 19','YYYY MM DD'),'Cash','1002'); 
insert into Bills values('334',4000,to_date('2020 07 20','YYYY MM DD'),'Debit Card','1003'); 
insert into Bills values('253',4700,to_date('2020 10 20','YYYY MM DD'),'Debit Card','1004'); 

insert into Facilities values('F100','Swimming Pool',400); 
insert into Facilities values('F110','outdoor restaurant',500); 
insert into Facilities values('F200','outdoor restaurant',520); 
insert into Facilities values('F210','Swimming Pool',600); 

insert into Food values('V1','VEG',200); 
insert into Food values('NV1','NON VEG',300); 
insert into Food values('V2','VEG',250); 
insert into Food values('NV2','NON VEG',200); 


insert into Orders values(to_date('2020 04 15','YYYY MM DD'),to_timestamp('8:00:00','HH24:MI:SS'),'1','1001','V1'); 
insert into Orders values(to_date('2020 06 10','YYYY MM DD'),to_timestamp('9:00:00','HH24:MI:SS'),'1','1002','NV1');

insert into Guest_Phone_No values(2345678192,'1001'); 
insert into Guest_Phone_No values(7745878192,'1002'); 
insert into Guest_Phone_No values(3342678192,'1003'); 
insert into Guest_Phone_No values(9048678195,'1004'); 

insert into Resort_Phone_No values(2178234677,'VGP1001'); 
insert into Resort_Phone_No values(9758364679,'VGP1001'); 
insert into Resort_Phone_No values(4178534672,'GCR2201'); 
insert into Resort_Phone_No values(9078634672,'GCR2201'); 

insert into Workers_Phone_No values(2170934677,01); 
insert into Workers_Phone_No values(9753964679,02); 
insert into Workers_Phone_No values(4176934672,03); 
insert into Workers_Phone_No values(9048734672,04);
