SELECT * FROM hotel;

SELECT COUNT(Booking_ID) from hotel;

SELECT DISTINCT(type_of_meal_plan),
COUNT(type_of_meal_plan) 
FROM hotel
GROUP BY type_of_meal_plan;

SELECT round(avg(avg_price_per_room),2) as avg_price_per_room from hotel where no_of_children>=1;

SELECT COUNT(Booking_id) from hotel
WHERE arrival_date LIKE "%2018%";

SELECT DISTINCT(room_type_reserved), COUNT(room_type_reserved) 
from hotel
GROUP BY room_type_reserved 
ORDER BY count(room_type_reserved) DESC ;

SELECT COUNT(no_of_weekend_nights) from hotel 
WHERE no_of_weekend_nights>0;

SELECT MAX(lead_time), MIN(lead_time) from hotel;

SELECT distinct(market_segment_type),COUNT(market_segment_type) as most_common_booking_type from hotel
GROUP BY market_segment_type
ORDER BY market_segment_type DESC;

SELECT COUNT(booking_status) from hotel
WHERE booking_status="Confirmed";

SELECT sum(no_of_children) as childrencount, sum(no_of_adults) as adultcount from hotel;

SELECT SUM(no_of_weekend_nights) as total_weekend_nights,
AVG(no_of_weekend_nights) as avg_weekend_nights
from hotel WHERE no_of_children>0;

SELECT MONTHNAME(STR_TO_DATE(arrival_date, '%Y-%m-%d')) AS Month_name, 
count(booking_ID) as total_reservations from hotel 
where arrival_date like "%2018%"
GROUP BY Month_name;

SELECT room_type_reserved,
AVG(no_of_weekend_nights + no_of_week_nights) AS avg_total_nights,
AVG(no_of_weekend_nights) AS avg_weekend_nights,
AVG(no_of_week_nights) AS avg_weekday_nights
FROM 
    hotel
GROUP BY 
    room_type_reserved;

SELECT room_type_reserved, COUNT(booking_id) as total_reservations, 
avg(avg_price_per_room) as avgprice
FROM hotel
where no_of_children>0
GROUP BY room_type_reserved
ORDER BY total_reservations DESC;

SELECT market_segment_type, round(avg(avg_price_per_room),2) as avgprice
FROM hotel
GROUP BY market_segment_type
ORDER BY avgprice DESC;
