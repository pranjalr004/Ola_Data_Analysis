-- 1. Retrieve all successful bookings.
select * from bookings where Booking_status='Success';
select * from bookings;

-- 2. Find the average ride distance for each vehicle type:
select vehicle_type,avg(ride_distance) as avg_distance from bookings
group by vehicle_type;

-- 3. Get the total number of cancelled rides by customers:
select count(*) from bookings WHERE Booking_Status='Canceled by Customer';

-- 4. List the top 5 customers who booked the highest number of rides.
create view Top_5_Customers AS 
select customer_id,count(booking_id) as total_rides from bookings
group by customer_id
order by total_rides desc limit 5;

select * from Top_5_Customers;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:

select count(*) from bookings where canceled_rides_by_driver='Personal & Car related issue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

select MAX(Driver_Ratings) as max_rating,min(Driver_Ratings) as min_rating from bookings where vehicle_type='Prime Sedan';
select * from bookings;

-- 7. Retrieve all rides where payment was made using UPI:

select * from bookings where payment_method='UPI';

-- 8. Find the average customer rating per vehicle type:

select vehicle_type,avg(Customer_rating) as avg_customer_rating from bookings GROUP BY vehicle_type;

-- 9. Calculate the total booking value of rides completed successfully:

select sum(booking_value) as total_successful_value from bookings WHERE
booking_status='Success';

-- 10. List all incomplete rides along with the reason:

select booking_id,incomplete_rides_reason from bookings WHERE
incomplete_rides='Yes';
select * from bookings;