# Entity-Relationship Diagram Requirements

This document outlines the entities, attributes, and relationships used in the ER diagram for the Airbnb clone backend.

## Entities and Attributes

### User
- id (PK)
- name
- email
- password
- created_at

### Property
- id (PK)
- owner_id (FK to User.id)
- title
- description
- location
- price_per_night
- created_at

### Booking
- id (PK)
- user_id (FK to User.id)
- property_id (FK to Property.id)
- check_in
- check_out
- total_price
- created_at

### Review
- id (PK)
- user_id (FK to User.id)
- property_id (FK to Property.id)
- rating
- comment
- created_at

### Payment
- id (PK)
- booking_id (FK to Booking.id)
- amount
- payment_method
- status
- created_at

## Relationships

- One User can own many Properties (1:N)
- One User can make many Bookings (1:N)
- One Property can have many Bookings (1:N)
- One Booking has one Payment (1:1)
- One User can leave many Reviews (1:N)
- One Property can receive many Reviews (1:N)

## Diagram

The ER diagram visualizing this structure is saved as `airbnb-er-diagram.drawio` and `airbnb-er-diagram.png` in this directory.
