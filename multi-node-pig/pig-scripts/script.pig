-- Load the data
data = LOAD '${data_link}' USING PigStorage(';') AS (
    year:int, 
    month:int, 
    day:int, 
    flight_number:chararray, 
    departure_airport:chararray, 
    arrival_airport:chararray, 
    distance:int
);

-- Display the loaded data
 DUMP data;

---------------------------------- Filter departing flights ----------------------------------

-- Command to use: pig -param departure_airport_param=IND -param data_link='${data_link}'
-- Use ${parameter_name} to specify parameter location

-- departing_flights = FILTER data BY departure_airport == '${departure_airport_param}';

-- Count the number of departing flights
-- departing_flights_count = FOREACH (GROUP departing_flights ALL) GENERATE COUNT($1) AS flight_count;
-- DUMP departing_flights_count;

---------------------------------- Count flights per departure airport ----------------------------------

-- Command to use: pig -param data_link=/data/flight.csv /pig-scripts/script.pig

-- Group data by departure airport
-- grouped_data = GROUP data BY departure_airport;

-- Calculate the number of flights for each departure airport
-- flights_count = FOREACH grouped_data GENERATE group AS departure_airport, COUNT($1) AS flight_count;

-- DUMP flights_count;

---------------------------------- Calculate total distance traveled ----------------------------------

-- Command to use: pig -param data_link=/data/flight.csv /pig-scripts/script.pig

-- Group all data together
-- grouped_data = GROUP data ALL;

-- Calculate the total distance traveled by all flights
-- total_distance = FOREACH grouped_data GENERATE SUM(data.distance) AS total_distance;

-- DUMP total_distance;

---------------------------------- Filter flights by airport and year ----------------------------------

-- Command to use: pig -param data_link=/data/flight.csv -param year_param=2008 -param departure_airport_param=ISP /pig-scripts/script.pig

-- Filter flights by specified departure airport and year
-- filtered_results = FILTER data BY (departure_airport == '${departure_airport_param}') AND (year == $year_param);

-- Group filtered flights to prepare for counting
-- grouped_flights = GROUP filtered_results ALL;

-- Count the number of departing flights
-- departing_flights_count = FOREACH grouped_flights GENERATE COUNT(filtered_results) AS flight_count;

-- DUMP departing_flights_count;

---------------------------------- Count flights per arrival airport ----------------------------------

-- Command to use: pig -param data_link=/data/flight.csv /pig-scripts/script.pig

-- Group data by arrival airport
-- grouped_data = GROUP data BY arrival_airport;

-- Calculate the number of flights for each arrival airport
-- flights_count = FOREACH grouped_data GENERATE group AS departure_airport, COUNT($1) AS flight_count;

-- DUMP flights_count;

---------------------------------- Calculate maximum distance ----------------------------------

-- Command to use: pig -param data_link=/user/cloudera/tp_ping_inHdfs/flight.csv script.pig

-- Group all data
-- grouped_data = GROUP data ALL;

-- Calculate the maximum distance traveled
-- max_distance = FOREACH grouped_data GENERATE MAX(data.distance) AS max_distance;

-- DUMP max_distance;