-- Insert sample users
INSERT INTO User (UserID, UserName, UserEmail) VALUES
(1, 'Lebo', 'lebo@example.com'),
(2, 'Sipho', 'sipho@example.com'),
(3, 'Amina', 'amina@example.com');

-- Insert sample owners
INSERT INTO Owner (OwnerID, OwnerName) VALUES
(1, 'John Doe'),
(2, 'Jane Smith');

-- Insert sample properties
INSERT INTO Property (PropertyID, PropertyAddress, OwnerID) VALUES
(1, '123 Main Street, Cape Town', 1),
(2, '456 Beach Road, Durban', 2),
(3, '789 Hilltop Blvd, Johannesburg', 2);

-- Insert sample amenities
INSERT INTO PropertyAmenity (PropertyID, Amenity) VALUES
(1, 'Wi-Fi'),
(1, 'Parking'),
(2, 'Pool'),
(2, 'Wi-Fi'),
(3, 'Garden');

-- Insert sample bookings
INSERT INTO Booking (BookingID, UserID, PropertyID, BookingDate, Price) VALUES
(1, 1, 1, '2025-07-01', 1200.00),
(2, 2, 2, '2025-07-05', 1500.00),
(3, 3, 3, '2025-07-10', 1000.00);
