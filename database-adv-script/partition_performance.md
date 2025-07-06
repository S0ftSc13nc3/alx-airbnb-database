# Partitioning Performance Report

## Objective

We partitioned the `bookings` table by `start_date` to improve performance for date-based queries on large datasets.

---

## Partitioning Method

We used **range partitioning by year**. The table was split into separate partitions:

- `bookings_2023` for bookings in 2023
- `bookings_2024` for bookings in 2024
- `bookings_2025` for bookings in 2025

This allows the database engine to skip irrelevant partitions when filtering by `start_date`.

---

## Test Query

To compare performance, we used this query:

```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';
