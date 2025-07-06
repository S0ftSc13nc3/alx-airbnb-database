# Index Performance Analysis

This document explains the reasoning behind index creation, and shows the impact of those indexes on query performance.

---

## 1. Identified Columns for Indexing

We reviewed common query patterns involving the `users`, `bookings`, and `properties` tables. Based on frequent use in `WHERE`, `JOIN`, and `ORDER BY` clauses, the following columns were chosen for indexing:

- `users.email`: Often used to identify users during login.
- `bookings.user_id`: Frequently used to find all bookings made by a specific user.
- `bookings.property_id`: Used in joins between bookings and properties.
- `properties.location`: Used when filtering properties by area.
- `bookings.start_date`: Used to filter or sort bookings by date.

---

## 2. Indexes Created

The following indexes were created to improve query performance:

```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
