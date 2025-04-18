USE database01;

SELECT 
    (COALESCE(SUM(b.nights), 0) / COUNT(r.id)) * 100 AS occupancy_percentage
FROM 
    rooms r
LEFT JOIN 
    bookings b ON r.id = b.room_id AND b.booking_date = '2023-10-01'; 