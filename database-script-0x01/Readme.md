# Database Schema - Airbnb Clone

This folder contains the SQL script that defines the database schema for the Airbnb clone project.

## Files

- `schema.sql`: Contains the SQL `CREATE TABLE` statements used to set up the core database tables.

## Tables Created

- **User** – Stores user details like ID, name, and email.
- **Owner** – Stores property owner information.
- **Property** – Links each property to an address and owner.
- **PropertyAmenity** – A join table linking properties to their amenities (e.g. Wi-Fi, Pool).
- **Booking** – Tracks property bookings by users.

## How to Use

1. Connect to your SQL database (e.g. MySQL, PostgreSQL).
2. Run the commands in `schema.sql`.
3. All tables will be created with the appropriate primary and foreign key constraints.
4. Indexes are also included for better performance on search queries.

