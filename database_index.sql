-- Index on users.email for faster lookup (e.g., login, filtering)
CREATE INDEX idx_users_email ON users(email);

-- Index on bookings.user_id to speed up joins and filters by user
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on bookings.property_id for joins and filtering by property
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on properties.location for filtering or sorting by location
CREATE INDEX idx_properties_location ON properties(location);

-- Index on bookings.start_date to improve sorting or filtering by date
CREATE INDEX idx_bookings_start_date ON bookings(start_date);