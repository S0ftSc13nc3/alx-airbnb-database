# Index Performance Analysis

## 1. Identified Columns for Indexing

We identified the following high-usage columns based on common query patterns (JOIN, WHERE, ORDER BY):

- `users.email`: frequently used in login or user lookups.
- `bookings.user_id`: used when retrieving all bookings made by a user.
- `bookings.property_id`: used in joins to retrieve property details per booking.
- `properties.location`: often used in filtering property searches.
- `bookings.start_date`: used for date-based filtering and sorting.

## 2. Indexes Created

The following indexes were added:

- `idx_users_email` on `users(email)`
- `idx_bookings_user_id` on `bookings(user_id)`
- `idx_bookings_property_id` on `bookings(property_id)`
- `idx_properties_location` on `properties(location)`
- `idx_bookings_start_date` on `bookings(start_date)`

See `database_index.sql` for the exact commands.

## 3. Performance Comparison

We ran the following query before and after indexing:

```sql
SELECT p.id, p.name
FROM bookings b
JOIN properties p ON b.property_id = p.id
WHERE b.start_date >= '2025-01-01'
ORDER BY b.start_date;
