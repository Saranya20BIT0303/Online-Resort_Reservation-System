
-- ALTER TABLE - ADD Column

ALTER TABLE Workers ADD age number(3);
select * from Workers;


-- ALTER TABLE - DROP COLUMN

ALTER TABLE Workers DROP COLUMN age;
select * from Workers;


-- ALTER TABLE - ALTER/MODIFY COLUMN
-- NOT NULL CONSTRAINT

Alter table Resort modify name varchar(50) CONSTRAINT R_name not null;
Alter table Guest modify Guest_Name varchar(30) CONSTRAINT G_name not null;
select * from Guest;


-- DELETE Statement

insert into Workers values('Kathir',05,'vallar vellore','VGP1001',34);
DELETE FROM Workers WHERE age=34;
select * from Workers;


-- UPDATE Statement

UPDATE Guest SET Guest_Name ='Ezhilarasi k',Address='annastreet chennai23' WHERE Guest_Id=1001;
select * from Guest;


-- Constraint: NOT NULL on ALTER TABLE

ALTER TABLE Room MODIFY Rate number(10) not null;
Desc Room;


-- Unique

ALTER TABLE Resort ADD UNIQUE (Name);
Desc Resort;


-- Drop unique

ALTER TABLE Resort DROP CONSTRAINT Resort_uni ;
Desc Resort;

ALTER TABLE Resort ADD CONSTRAINT Resort_uni UNIQUE (Name,Address);
Desc Resort;


-- Adding PRIMARY KEY 
ALTER TABLE Workers_Phone_No ADD primary key(Phone_no); 
Desc Workers_Phone_No;

-- Droping primary key

ALTER TABLE Workers_Phone_No DROP primary key; 
Desc Workers_Phone_No;

-- Adding Foreign Key

ALTER TABLE Uses ADD CONSTRAINT Uses_Gid_fk FOREIGN KEY (Guest_Id ) REFERENCES Guest(Guest_Id); 
ALTER TABLE Uses ADD CONSTRAINT Uses_fid_fk FOREIGN KEY (Facility_Id ) REFERENCES Facilities(Facility_Id); 
Desc Uses;

-- Droping Foreign Key
 
ALTER TABLE Uses DROP CONSTRAINT Uses_Gid_fk; 
ALTER TABLE Uses DROP CONSTRAINT Uses_fid_fk; 
Desc Uses;


-- Select with where clause  ------display the resort details which have a id ‘VGP1001’.
Select * from resort where resort_id=’VGP1001’;


-- Nested query  ------display the guest_name,guest_id who is orders veg food using nested query.
Select guest_id,guest_name from guest where guest_id in(select guest_id from orders join food on orders.food_id=food.food_id where type='VEG');
