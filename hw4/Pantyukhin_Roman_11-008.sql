\c demo

SELECT * FROM flights WHERE (flights.departure_airport='KZN') AND (flights.arrival_airport='MQF');

SELECT * FROM flights WHERE (flights.scheduled_arrival - scheduled_departure = '01:25:00') AND (flights.departure_airport='DME');

SELECT * FROM flights JOIN airports_data ON 
(flights.departure_airport = airports_data.airport_code OR flights.arrival_airport = airports_data.airport_code) 
AND (departure_airport IN (select airport_code FROM airports_data WHERE airports_data.timezone = 'Europe/Moscow')) 
AND (arrival_airport IN (select airport_code FROM airports_data WHERE airports_data.timezone = 'Europe/Moscow'));
