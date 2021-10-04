\c demo

SELECT *FROM flights WHERE (flights.departure_airport='KZN') AND (flights.arrival_airport='KRR')

SELECT *FROM flights WHERE (flights.scheduled_arrival - scheduled_departure = '00:25:00') AND (flights.departure_airport='VKO')

SELECT *FROM flights WHERE JOIN airports_data ON 
(flights.departure_airport = airports_data.airport_code OR flights.arrival_airport = airports_data.airport_code) 
AND (departure_airport in (select airport_code FROM airports_data)) 
AND (arrival_airport in (select airport_code FROM airports_data))
