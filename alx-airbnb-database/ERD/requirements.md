1. Entities and Attributes

User

user_id (PK)

first_name

last_name

email

phone

password_hash

role

created_at

Property

property_id (PK)

host_id (FK → User.user_id)

title

description

address

city

country

price_per_night

property_type

created_at

Booking

booking_id (PK)

user_id (FK → User.user_id)

property_id (FK → Property.property_id)

start_date

end_date

status

total_price

created_at

Payment

payment_id (PK)

booking_id (FK → Booking.booking_id)

amount

method

status

transaction_date

Review

review_id (PK)

booking_id (FK → Booking.booking_id)

user_id (FK → User.user_id)

rating

comment

created_at

Message

message_id (PK)

sender_id (FK → User.user_id)

receiver_id (FK → User.user_id)

booking_id (FK → Booking.booking_id, optional)

content

sent_at

status

Index

index_id (PK)

property_id (FK → Property.property_id)

created_at

last_updated2. Relationships

User → Property: One user (host) can list many properties.

User → Booking: One user (guest) can make many bookings.

Property → Booking: One property can have many bookings.

Booking → Payment: One booking has exactly one payment.

Booking → Review: One booking can have one review.

User → Message: A user can send and receive many messages.

Booking → Message: A booking may have many messages (optional).

Property → Index: One property appears once in the index."C:\Users\cc balfourmall\Downloads\requirements.md Diagram.drawio"
