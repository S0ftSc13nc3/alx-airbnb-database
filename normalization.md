# Normalization to 3NF

This document explains how the database schema for the Airbnb clone was normalized to Third Normal Form (3NF).

## Step 1: First Normal Form (1NF)
- Ensured each table has a primary key.
- All attributes have atomic values (no lists or sets).
- Removed repeating groups and multi-valued fields.

## Step 2: Second Normal Form (2NF)
- Removed partial dependencies:
  - For tables with composite keys (if any), ensured all non-key attributes depend on the full primary key.
  - For example, if we had a table with a composite key (user_id, property_id), attributes like `user_email` or `property_title` were moved to separate tables.

## Step 3: Third Normal Form (3NF)
- Removed transitive dependencies:
  - Moved `user_email` from `Booking` to the `User` table.
  - Moved `property_location` from `Booking` to the `Property` table.
- Ensured that non-key attributes only depend on the primary key, not other non-key attributes.

## Final Tables Overview

### User
- id (PK)
- name
- email
- password
- created_at

### Property
- id (PK)
- owner_id (FK to User)
- title
- description
- location
- price_per_night

### Booking
- id (PK)
- user_id (FK to User)
- property_id (FK to Property)
- check_in
- check_out
- total_price

### Review
- id (PK)
- user_id (FK)
- property_id (FK)
- rating
- comment

### Payment
- id (PK)
- booking_id (FK)
- amount
- status

## Conclusion

The database now satisfies 3NF. Each table has minimal redundancy, better data integrity, and a clear structure for handling updates and queries efficiently.
