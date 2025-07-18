-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.user_id,
    bookings.start_date,
    bookings.end_date,
    users.name AS user_name,
    users.email AS user_email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews
SELECT
    properties.id,
    properties.name,
    reviews.id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON reviews.property_id = properties.id;



-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Note: If using MySQL (which doesn't support FULL OUTER JOIN), use a LEFT JOIN + RIGHT JOIN + UNION
SELECT
    users.id AS user_id,
    users.name AS user_name,
    users.email AS user_email,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id

UNION

SELECT
    users.id AS user_id,
    users.name AS user_name,
    users.email AS user_email,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date
FROM bookings
LEFT JOIN users ON bookings.user_id = users.id;
