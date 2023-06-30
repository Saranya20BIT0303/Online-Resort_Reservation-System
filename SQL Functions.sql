--AGGREGATE FUNCTIONS
--Min() 
SELECT Room_no,Rate ,MIN(Rate) FROM Room Group by Room_no,Rate ORDER by Rate;

--MAX() 
SELECT Room_no,Rate ,MAX(Rate) FROM Room Group by Room_no,Rate ORDER by Rate;

--Sum() 
SELECT SUM(Quantity) FROM Orders;

--Avg() 
SELECT AVG(Amount) FROM Bills;

--Distinct 
SELECT distinct type FROM Room;

--Date functions
SELECT * FROM Orders WHERE Order_Date='15-APR-2020';

--JOIN  --Left JOIN
SELECT Orders.Guest_Id,Orders.Quantity ,Food.Food_Id FROM Orders 
LEFT JOIN Food ON Orders.Food_Id=Food.Food_Id ORDER BY Food.Food_Id; 
SELECT Orders.Guest_Id,Orders.Quantity ,Food.Food_Id FROM Orders 

--RIGHT JOIN
SELECT Orders.Guest_Id,Orders.Quantity ,Food.Food_Id FROM Orders 
RIGHT JOIN Food ON Orders.Food_Id=Food.Food_Id ORDER BY Food.Food_Id;

--Full JOIN

display the room and resort details(Using left/right/full outer join query). 
Select r.resort_id,r.name,r.address,Ro.Room_no,Ro.type,Ro.rate from Resort r full join Room Ro on r.Room_no= Ro.Room_no;

--Inner JOIN: 

SELECT Orders.Guest_Id,Orders.Quantity,Food.Food_Id FROM Orders INNER JOIN Food ON Orders.Food_Id=Food.Food_Id;

--Group by and having --display the food type with no of types for that particular type of food. 

select type,count(type) from food group by type;

--Like clause

SELECT Room_no FROM Room WHERE Type LIKE '%single%'; 
SELECT Room_no FROM Room WHERE Type LIKE 's%'; 
SELECT Room_no FROM Room WHERE Type LIKE '%e'; 
SELECT Room_no FROM Room WHERE Type LIKE 'd%e';

