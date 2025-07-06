-- Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;


-- Rank properties based on the total number of bookings (using RANK)
SELECT
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;
-- Rank properties based on the total number of bookings using RANK()
WITH property_bookings AS (
    SELECT
        property_id,
        COUNT(*) AS total_bookings
    FROM bookings
    GROUP BY property_id
)
SELECT
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM property_bookings;

