# Database Schema

This folder contains the SQL schema definition for the Airbnb clone project. The schema is written to support core functionalities such as user management, property listings, bookings, reviews, and payments.

## File

- **schema.sql** – Contains `CREATE TABLE` statements for all main entities with appropriate data types, primary and foreign key constraints, and indexes for performance optimization.

## Tables Overview

### 1. users
Stores registered users with fields for name, email, password, and timestamps.

### 2. properties
Stores listings posted by users. Each property references an owner (user).

### 3. bookings
Tracks bookings made by users for specific properties, including check-in and check-out dates.

### 4. reviews
Allows users to review properties. Includes rating and optional comments.

### 5. payments
Stores payment details for each booking, including method, status, and amount.

## Indexes

Indexes are added on frequently queried columns like:
- `users.email`
- `properties.location`
- `bookings.check_in`
- `reviews.rating`

These indexes help speed up SELECT queries on these fields.

## How to Use

To create the schema in a PostgreSQL database:

```bash
psql -U your_username -d your_database -f database-schema/schema.sql
