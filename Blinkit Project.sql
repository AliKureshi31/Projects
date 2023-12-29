create database blinkit;

use blinkit;

show tables;

#1. Import Data from table Grocery Sales using the provided CSV File.
select * from sql_blinkit_project sbp ;

#2Write an SQL query to show all Item_Identifier 
select Item_Identifier from sql_blinkit_project sbp ;

#3Write an SQL query to show count of total Item_Identifier. 
select count(Item_Identifier) from sql_blinkit_project sbp ;

#4Write an SQL query to show maximum Item Weight
select max(Item_Weight)from sql_blinkit_project sbp ;

#5Write an SQL query to show minimum Item Weight
select min(Item_Weight) from sql_blinkit_project sbp ;

#6Write an SQL query to show average Item_Weight
select avg(Item_Weight) from sql_blinkit_project sbp ;

#7Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat. 
select count(Item_Fat_Content) from sql_blinkit_project sbp where Item_Fat_Content='Low Fat';

#8Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular. 
select count(Item_Fat_Content) from sql_blinkit_project sbp where Item_Fat_Content ='Regular';

#9Write an SQL query to show maximum Item_MRP 
select max(Item_MRP) from sql_blinkit_project sbp ;

#10Write an SQL query to show minimum Item_MRP
select min(Item_MRP)from sql_blinkit_project sbp ;

#11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200
select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from sql_blinkit_project sbp where Item_MRP >200;

#12Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat 
select max(Item_MRP) from sql_blinkit_project sbp where Item_Fat_Content ='Low Fat';

#13Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat 
select min(Item_MRP) from sql_blinkit_project sbp where Item_Fat_Content ='Low Fat';

#14Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100 
select * from sql_blinkit_project sbp where Item_MRP between 50 and 100;

#15Write an SQL query to show ALL UNIQUE value of Item_Fat_Content 
select distinct(Item_Fat_Content) from sql_blinkit_project sbp ;

#16Write an SQL query to show ALL UNIQUE value of Item_Type
select distinct(Item_Type) from sql_blinkit_project sbp ;

#17Write an SQL query to show ALL DATA in descending ORDER by Item MRP 
select * from sql_blinkit_project sbp order by Item_MRP desc ;

#18Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales 
select * from sql_blinkit_project sbp order by Item_Outlet_Sales asc ;

#19Write an SQL query to show ALL DATA in ascending by Item_Type
select * from sql_blinkit_project sbp order by Item_Type asc;

#20Write an SQL query to show DATA of item_type dairy & Meat 
select * from sql_blinkit_project sbp where Item_Type in ('Dairy','Meat');

#21Write an SQL query to show ALL UNIQUE value of Outlet_Size
select distinct(Outlet_Size) from sql_blinkit_project sbp ;

#22Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
select distinct(Outlet_Location_Type) from sql_blinkit_project sbp ;

#23Write an SQL query to show ALL UNIQUE value of Outlet_Type 
select distinct(Outlet_Type) from sql_blinkit_project sbp ;

#24Write an SQL query to show count of number of items by Item_Type and order it in descending order 
select Item_Type, count(Item_Identifier)No_Of_Item from sql_blinkit_project sbp group by Item_Type order by No_Of_Item desc;

#25Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select Outlet_Size , count(Item_Identifier)No_Of_Item from sql_blinkit_project sbp group by Outlet_Size order by No_Of_Item asc; 

#26Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order. 
select Outlet_Type,count(Item_Identifier)No_Of_Item from sql_blinkit_project sbp group by Outlet_Size order by Outlet_Type desc ;

#27Write an SQL query to show count of items by Outlet_Location_Type and order it in descending order
select Outlet_Location_Type,count(Item_Identifier)No_Of_Item from sql_blinkit_project sbp group by Outlet_Location_Type order by No_Of_Item desc;

#28Write an SQL query to show maximum MRP by Item_Type 
select Item_Type,max(Item_MRP) from sql_blinkit_project sbp group by Item_Type ;

#29Write an SQL query to show minimum MRP by Item_Type 
select Item_Type,min(Item_MRP) from sql_blinkit_project sbp group by Item_Type ;

#30Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order
select Outlet_Establishment_Year,min(Item_MRP) from sql_blinkit_project sbp group by Outlet_Establishment_Year order by Item_MRP  desc;

#31Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order
select Outlet_Establishment_Year,max(Item_MRP) from sql_blinkit_project sbp group by Outlet_Establishment_Year order by Item_MRP desc;

#32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order. 
select Outlet_Size,avg(Item_MRP) from sql_blinkit_project sbp group by Outlet_Size order by Item_MRP desc;

#33Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
select Outlet_Type,avg(Item_MRP) from sql_blinkit_project sbp group by Outlet_Type order by Item_MRP asc;

#34Write an SQL query to show maximum MRP by Outlet_Type 
select Outlet_Type,max(Item_MRP) from sql_blinkit_project sbp group by Outlet_Type order by Item_MRP asc;

#35Write an SQL query to show maximum Item_Weight by Item_Type 
select Item_Type,max(Item_Weight) from sql_blinkit_project sbp group by Item_Type order by Item_Weight ;

#36Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select Outlet_Establishment_Year,max(Item_Weight) from sql_blinkit_project sbp group by Outlet_Establishment_Year order by Item_Weight ;

#37Write an SQL query to show minimum Item_Weight by Outlet_Type 
select  Outlet_Type , min(Item_Weight)min_weight from sql_blinkit_project sbp  GROUP BY Outlet_Type ORDER BY min_weight desc; 

#38Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
select  Outlet_Location_Type,avg(Item_Weight) Average_weight from sql_blinkit_project sbp  group by Outlet_Location_Type order by Average_weight desc; 

#39Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
select Item_Type,max(Item_Outlet_Sales) from sql_blinkit_project sbp group by Item_Type order by Item_Outlet_Sales asc;

#40Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
select Item_Type,min(Item_Outlet_Sales) from sql_blinkit_project sbp group by Item_Type order by Item_Outlet_Sales desc;

#41Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 
select Outlet_Establishment_Year,min(Item_Outlet_Sales) from sql_blinkit_project sbp group by Outlet_Establishment_Year order by Item_Outlet_Sales asc;

#42Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
select Outlet_Establishment_Year,max(Item_Outlet_Sales) from sql_blinkit_project sbp group by Outlet_Establishment_Year order by Item_Outlet_Sales ;

#43Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order 
select Outlet_Size,avg(Item_Outlet_Sales) from sql_blinkit_project sbp group by Outlet_Size order by Item_Outlet_Sales ;

#44Write an SQL query to show average Item_Outlet_Sales by Outlet_Type 
select Outlet_Type,avg(Item_Outlet_Sales) from sql_blinkit_project sbp group by Outlet_Type order by Item_Outlet_Sales ;

#45Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
select Outlet_Type,max(Item_Outlet_Sales) from sql_blinkit_project sbp group by Outlet_Type order by Item_Outlet_Sales ;

#46Write an SQL query to show total Item_Outlet_Sales by Item_Type
select Item_Type,sum(Item_Outlet_Sales) from sql_blinkit_project sbp group by Item_Type order by Item_Outlet_Sales ;

#47Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
select Item_Fat_Content,sum(Item_Outlet_Sales) from sql_blinkit_project sbp group by Item_Fat_Content order by Item_Outlet_Sales ;

#48Write an SQL query to show maximum Item_Visibility by Item_Type 
select Item_Type,max(Item_Visibility) from sql_blinkit_project sbp group by Item_Type order by Item_Visibility ;

#49Write an SQL query to show Minimum Item_Visibility by Item_Type
select Item_Type,min(Item_Visibility) from sql_blinkit_project sbp group by Item_Type order by Item_Visibility ;

#50Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
select Item_Type,sum(Item_Outlet_Sales) from sql_blinkit_project sbp where Outlet_Location_Type ='Tier 1' group by Item_Type order by Item_Outlet_Sales;

#51Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF 
select Item_Type,sum(Item_Outlet_Sales) from sql_blinkit_project sbp where Item_Fat_Content in ('Low Fat','LF') group by Item_Type order by Item_Outlet_Sales ;