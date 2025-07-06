-- performance_check_and_fix.sql
-- Step 1: Analyze performance of key queries with EXPLAIN ANALYZE

-- 1. Query bookings by start_date range
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-01-01' AND '2025-01-31';

-- 2. Join bookings with users filtered by start_date
EXPLAIN ANALYZE
SELECT b.id, b.start_date, u.name, u.email
FROM bookings b
JOIN users u ON b.user_id = u.id
WHERE b.start_date >= '2025-06-01';

-- 3. Get properties without reviews (LEFT JOIN)
EXPLAIN ANALYZE
SELECT p.id, p.name, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
WHERE r.rating IS NULL;

-- Step 2: Create indexes to improve query performance

CREATE INDEX IF NOT EXISTS idx_bookings_start_date ON bookings(start_date);
CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);
CREATE INDEX IF NOT EXISTS idx_reviews_property_id ON reviews(property_id);
