# SQL Joins Queries

This folder contains advanced SQL queries using different types of joins to retrieve related data across multiple tables in the Airbnb database.

## File: joins_queries.sql

### 1. INNER JOIN
Retrieves all bookings along with the users who made those bookings.

### 2. LEFT JOIN
Retrieves all properties and their reviews, including properties that have not yet received any reviews.

### 3. FULL OUTER JOIN
Retrieves all users and all bookings, even when:
- a user has no bookings, or
- a booking is not associated with a valid user.

# Subqueries

This file contains examples of both correlated and non-correlated subqueries.

- **Non-correlated subquery:** Finds properties where the average review rating is greater than 4.0.
- **Correlated subquery:** Finds users who have made more than 3 bookings by counting bookings linked to each user.

Queries are located in `subqueries.sql`.

