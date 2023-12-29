create database AirBnb;

use AirBnb;

show tables;

#1-Import both Listings & Booking
select * from lisitings l ;

select * from bookings b ;

#2-Write a query to show names from Listings table 
select name from bookings b inner join lisitings l on b.id=l.listing_id ;

#3-Write a query to fetch total listings from the listings table 
select * from lisitings l ;

#4-Write a query to fetch total listing_id from the booking_details table 
select sum(listing_id) from lisitings l ;

#5-Write a query to fetch host ids from listings table 
select host_id from bookings b inner join lisitings l on b.id=l.listing_id;

#6-Write a query to fetch all unique host name from listings table
select distinct (host_name) from bookings b ;

#7-Write a query to show all unique neighbourhood_group from listings table
select distinct (neighbourhood_group) from bookings b ;

#8-Write a query to show all unique neighbourhood from listings table 
select distinct (neighbourhood) from bookings b ;

#9-Write a query to fetch unique room_type from listings tables
select distinct (room_type) from bookings b ;

#10-Write a query to show all values of Brooklyn & Manhattan from listings tables
select 

#11-Write a query to show maximum price from booking_details table
select max(price)from lisitings l ;

#12-Write a query to show minimum price fron booking_details table 
select min(price) from lisitings l ;

#13-Write a query to show average price from booking_details table
select avg(price)from lisitings l ;

#14-Write a query to show minimum value of minimum_nights from booking_details table
select min(minimum_nights) from lisitings l ;

#15-Write a query to show maximum value of minimum_nights from booking_details table
select max(minimum_nights)from lisitings l ; 

#16-Write a query to show average availability_365
select avg(availability_365) from lisitings l ;	

#17-Write a query to show id , availability_365 and all availability_365 values greater than 300
select b.id,availability_365 from bookings b inner join lisitings l on b.id=l.listing_id where availability_365>300;

#18-Write a query to show count of id where price is in between 300 to 400 
select count(b.id) from bookings b inner join lisitings l on b.id=l.listing_id where l.price between 300 and 400;

#19-Write a query to show count of id where minimum_nights spend is less than 5 
select count(b.id) from bookings b inner join lisitings l on b.id=l.listing_id where minimum_nights<5;

#20-Write a query to show count where minimum_nights spend is greater than 100 
select count(minimum_nights) from  lisitings l where minimum_nights>100;

#21-Write a query to show all data of listings & booking_details
select * from bookings b inner join lisitings l on b.id=l.listing_id;

#22-Write a query to show host name and price 
select host_name,price from bookings b inner join lisitings l on b.id=l.listing_id;

#23-Write a query to show room_type and price
select room_type,price from bookings b inner join lisitings l on b.id=l.listing_id;

#24-Write a query to show neighbourhood_group & minimum_nights spend
select neighbourhood_group,minimum_nights from bookings b inner join lisitings l on b.id=l.listing_id;

#25-Write a query to show neighbourhood & availability_365
select neighbourhood,availability_365 from bookings b inner join lisitings l on b.id=l.listing_id;

#26-Write a query to show total price by neighbourhood_group
select sum(price),neighbourhood_group from bookings b inner join lisitings l on b.id=l.listing_id group by neighbourhood_group; 

#27- Write a query to show maximum price by neighbourhood_group
select max(price),neighbourhood_group from bookings b  inner join lisitings l on b.id=l.listing_id group by neighbourhood_group; 

#28-Write a query to show maximum night spend by neighbourhood_group 
select max(minimum_nights),neighbourhood_group from bookings b inner join lisitings l on b.id=l.listing_id group by neighbourhood_group

select * from lisitings l ;
select * from bookings b ;

#29-Write a query to show maximum reviews_per_month spend by neighbourhood 
select max(reviews_per_month),neighbourhood from bookings b inner join lisitings l on b.id=l.listing_id group by neighbourhood; 

#30-Write a query to show maximum price by room type 
select max(l.price),room_type from bookings b inner join lisitings l on b.id=l.listing_id group by room_type;

#31-Write a query to show average number_of_reviews by room_type 
select avg(number_of_reviews),room_type from bookings b inner join lisitings l on b.id=l.listing_id group by room_type;

#32- Write a query to show average price by room type 
select avg(l.price),room_type from bookings b inner join lisitings l on b.id=l.listing_id group by room_type;

#33-Write a query to show average night spend by room type
select avg(minimum_nights),room_type from bookings b inner join lisitings l on b.id=l.listing_id group by room_type;

#34-Write a query to show average price by room type but average price is less than 100
select avg(l.price),room_type from bookings b inner join lisitings l on b.id=l.listing_id group by room_type having  avg(l.price)<100 ; 

#35-Write a query to show average night by neighbourhood and average_nights is greater than 5 
select avg(minimum_nights),neighbourhood from bookings b inner join lisitings l on b.id=l.listing_id group by neighbourhood having avg(minimum_nights)>5;

#36-Write a query to show all data from listings where price is greater than 200 using sub-query. 
select * from lisitings l  where l.price>200;

#37-Write a query to show all values from booking_details table where host id is 314941 using sub-query. 
select * from bookings b where host_id = 314941;

#38-Find all pairs of id having the same host id, each pair coming once only
select * from 

select count(*),host_id from bookings b group by host_id having count(*)>1; 

select count(*),host_id from bookings b  group by host_id;
#39-Write an sql query to show fetch all records that have the term cozy in name
select * from bookings b where name like '%cozy%';

#40-Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group 
select l.price,host_id,neighbourhood_group from bookings b inner join lisitings l on b.id=l.listing_id where neighbourhood_group='manhattan' ;

#41-Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100 
select b.id,host_name,neighbourhood,l.price from bookings b inner join lisitings l on b.id=l.listing_id where neighbourhood in ("upper west side","williamsburg") and price>100; 


#42-Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant 
select b.id,host_name,neighbourhood,l.price from bookings b inner join lisitings l on b.id=l.listing_id where host_name='Elise' and neighbourhood='bedford-stuyvesant';

#43-Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select host_name,availability_365,minimum_nights from bookings b inner join lisitings l on b.id=l.listing_id where availability_365>100 and minimum_nights>100;

#44-Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but show only that records where number of reviews are 500+ and review per month is 5+ 
select b.id,host_name,number_of_reviews,reviews_per_month from bookings b inner join lisitings l on b.id=l.listing_id where number_of_reviews>500 and reviews_per_month>5;

select * from bookings b ;

select * from lisitings l ;

#45-Write a query to show neighbourhood_group which have most total number of review
select neighbourhood_group,max(number_of_reviews) from bookings b inner join lisitings l on b.id=l.listing_id group by neighbourhood_group;

#46-Write a query to show host name which have most cheaper total price
select host_name,sum(l.price)  from bookings b inner join lisitings l on b.id=l.listing_id group by host_name order by l.price asc limit 1;

#correct answer
select host_name,min(l.price)  from lisitings l inner join bookings b on listing_id=b.id group by host_name order by min(l.price) asc ; 

select * from bookings b ;

#47-Write a query to show host name which have most costly total price 
select host_name,sum(l.price)from bookings b inner join lisitings l on b.id=l.listing_id group by host_name order by l.price desc limit 1 ;

#48-Write a query to show host name which have max price using sub-query 
select host_name from bookings b inner join lisitings l on  b.id=l.listing_id  

#49-Write a query to show neighbourhood_group where price is less than 100
select neighbourhood_group,l.price from bookings b inner join lisitings l on b.id=l.listing_id where l.price<100;

select * from bookings b ;
select * from lisitings l ;

#50-Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price. 
select max(l.price),avg(availability_365),room_type from bookings b inner join lisitings l on b.id=l.listing_id group by room_type order by max(l.price)asc  ;  