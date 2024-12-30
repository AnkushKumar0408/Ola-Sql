-- Reltrieve all successfull Bookings

-- create view Successful_Bookings AS
-- select * from bookingolaa
-- where Booking_Status = 'Success';

-- Select * from  Successful_Bookings

-- Another 



-- find the average ride distance for each vehicle type

-- create view Avg_Ride_Distance_VehicleWise As
-- select Vehicle_Type, avg(Ride_Distance)
-- as avg_distance from bookingolaa
-- group by Vehicle_Type;

-- select * from Avg_Ride_Distance_VehicleWise;

-- Get the total number of cancle rides by customers

-- create view cancle_rides_by_customers As
-- select COUNT(*) from bookingolaa where Booking_Status = 'Canceled by Customer';

-- List the top 5 customers who booked the highest number of rides

-- create view top_customers as
-- select Customer_ID, Count(Booking_ID) as total_rides
-- from bookingolaa
-- group by Customer_ID
-- order by total_rides DESC Limit 5; 

-- get the number of rides cancled by driver due to personal and car related issue 

-- create view cancle_by_driver_due_to_personalAndCarRelated_issue as
-- select count(*) from bookingolaa where Canceled_Rides_by_Driver = 'Personal & Car related issue';  

-- Find the maximum and minimum driver rating for prime sedan bookings

-- create view maxAndMinPrimeSedanRating as
-- select max(Driver_Ratings) as max_rating,
-- min(Driver_Ratings) as min_rating
-- from bookingolaa 
-- where Vehicle_Type = 'Prime Sedan';

-- Retrieve all rides where payment was made using UPI

-- create view UPI_Payment as
-- select * from bookingolaa where Payment_Method = 'UPI'; 

-- find the average customer rating per vehicle type

-- create view avg_Customer_Rating as
-- select Vehicle_Type, avg(Customer_Rating) as avg_Customer_Rating
-- from bookingolaa
-- group by Vehicle_Type; 

-- calculate the total booking value of rides completed successfully

-- create view total_Success_Value as
-- select sum(Booking_Value) as total_Successful_value
-- from bookingolaa
-- where Booking_Status = 'Success'; 

-- List all incomplete rides along with the reason

-- create view Incomplete_Rides as
-- select Booking_ID, Incomplete_Rides_Reason
-- from bookingolaa
-- where Incomplete_Rides = 'Yes';