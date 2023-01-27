CREATE TABLE modified_tripdata
SELECT
	DISTINCT(ride_id), 
    rideable_type, 
    CAST(started_at AS datetime) as started_at, 
    CAST(ended_at AS datetime) as ended_at, 
    member_casual, 
    start_station_name,
    end_station_name,
    TIMEDIFF(ended_at, started_at) as ride_length,
    DAYNAME(started_at) AS Weekend_Weekday
FROM tripdata
