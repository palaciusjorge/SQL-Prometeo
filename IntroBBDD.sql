'''
Ejercicio 1
'''
SELECT flight_id, status FROM flights WHERE status = 'On Time';
'''
Ejercicio 2
'''
SELECT * FROM bookings WHERE total_amount > 1000000;
'''
Ejercicio 3
'''
SELECT * FROM aircrafts_data;
'''
Ejercicio 4
'''
SELECT flight_id FROM flights WHERE aircraft_code = '733';
'''
Ejercicio 5
'''
SELECT * FROM tickets WHERE passenger_name ILIKE 'Irina%';
'''
Ejercicio 6
'''
SELECT city,
    COUNT(airport_code) AS total_airports
FROM airports_data
GROUP BY city
HAVING COUNT(airport_code) > 1;
'''
Ejercicio 7
'''
SELECT aircraft_code,
    COUNT(*) AS total_flights
FROM flights
GROUP BY aircraft_code
ORDER BY total_flights DESC;
'''
Ejercicio 8
'''
SELECT
    b.book_ref,
    COUNT(t.ticket_no) AS total_tickets
FROM bookings b
JOIN tickets t ON b.book_ref = t.book_ref
GROUP BY b.book_ref
HAVING COUNT(t.ticket_no) > 1;
'''
Ejercicio 9
'''
SELECT
    flight_id,
    scheduled_departure,
    actual_departure,
    actual_departure - scheduled_departure AS delay
FROM flights
WHERE actual_departure IS NOT NULL
  AND actual_departure - scheduled_departure > INTERVAL '1 hour';