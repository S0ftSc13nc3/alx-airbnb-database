# Optimization Report

## Initial Query

The initial query joins `bookings`, `users`, `properties`, and `payments` tables to retrieve comprehensive booking information.

## Performance Analysis

Using `EXPLAIN QUERY PLAN`, the query showed full table scans on `bookings` and `payments`, leading to slower execution as the dataset grew.

## Optimization Steps

- Created indexes on foreign key columns:
  - `bookings.user_id`
  - `bookings.property_id`
  - `payments.booking_id`

- These indexes significantly improved join performance by enabling index seeks rather than full scans.

## Results

Post-optimization, the query execution time dropped noticeably, and the query plan reflected the use of indexes on join columns.
