# Database Performance Monitoring and Improvements

## 1. Overview

This document summarizes the process of monitoring and improving the performance of key database queries. Using query execution plans, we identify bottlenecks and implement changes to optimize response times.

---

## 2. Initial Query Analysis

We analyzed frequently used queries with `EXPLAIN ANALYZE` to understand how the database executes them.

### Example Query

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-01-31';
