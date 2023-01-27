# Number of Rides based on membership
SELECT
	member_casual,
    COUNT(member_casual)
FROM
	modified_tripdata
GROUP BY
	member_casual;

# Number of Rides based of Day of week (member)
SELECT 
	Weekend_Weekday,
    COUNT(Weekend_Weekday) AS number_of_rides
FROM 
	modified_tripdata
WHERE
	member_casual = 'member'
GROUP BY 
	Weekend_Weekday;
    

# Number of Rides based of Day of week (casual)
SELECT 
	Weekend_Weekday,
    COUNT(Weekend_Weekday) AS number_of_rides
FROM 
	modified_tripdata
WHERE
	member_casual = 'casual'
GROUP BY 
	Weekend_Weekday;

# Average ride length based on membership
SELECT 
	member_casual,
    AVG(ride_length) / 60 AS average_ride_length_min
FROM 
	modified_tripdata
GROUP BY 
	member_casual;

# Scateredness of ride lengths (member)
SELECT 
	ride_id,
    ride_length
FROM 
	modified_tripdata
WHERE
	member_casual = 'member';
    
# Scateredness of ride lengths (casual)
SELECT 
	ride_id,
    ride_length
FROM 
	modified_tripdata
WHERE
	member_casual = 'casual'


