Name : DHANSHREE SANJAY DESHMUKH

Company: CODTECH IT SOLUTIONS

ID : CT08DS1600

Domain : SQL

Duration : June to July 2024

Mentor : SRAVANI GOUNI

OVERVIEW Of Project

Project: Hotel Booking System

Objective:

The objective of developing a hotel booking system revolves around creating a robust database solution that optimally manages all aspects of hotel bookings and operations. This encompasses several key goals, the system should efficiently handle booking management, ensuring real-time availability of rooms, seamless reservation processes, and accurate status tracking. 

Entity and attributes:

1. rooms:
Entity Description: The Rooms entity represents the physical rooms available for booking in the hotel.

Attributes:

id: An identifier for each room, typically set as the primary key.

room_number: The unique identifier for each room, often displayed on the room door.

room_type: The category or type of room (e.g., Single, Double, Suite).

capacity: The maximum number of guests the room can accommodate.

price_per_night: The cost of booking the room for one night.

status: The current status of the room (e.g., Available, Occupied, Under Maintenance).

2. Customers:

Entity Description: The Customers entity stores information about individuals who make reservations.

Attributes:

id: A unique identifier for each customer, typically set as the primary key.

first_name: The first name of the customer.

last_name: The last name of the customer.

email: The email address of the customer, often used for communication and identification.

phone_number: The phone number of the customer.

address: The physical address of the customer.

3. Reservations:

Entity Description: The Reservations entity manages the booking details for each room.

Attributes:

id: An identifier for each reservation, typically set as the primary key.

room_id: A foreign key referencing the RoomID of the booked room.

customer_id: A foreign key referencing the CustomerID of the booking customer.

check_in_date: The date when the guest checks into the room.

check_out_date: The date when the guest checks out of the room.

number_of_guests: The number of guests included in the reservation.

total_price: The total cost of the reservation.

reservation_status: The status of the reservation (e.g., Confirmed, Cancelled).

4. Payments:
Entity Description: The Payments entity tracks the financial transactions related to reservations.

Attributes:

id: An identifier for each payment transaction, typically set as the primary key.

reservation_id: A foreign key referencing the ReservationID of the associated reservation.

payment_date: The date when the payment was made.

amount: The amount paid for the reservation.

payment_method: The method used for payment (e.g., Credit Card, Cash, Online).

![Output2](https://github.com/DhanshreeDeshmukh1/CODTECH.Task2/assets/156403286/908bf6e5-c513-4393-8d6c-ccdbdc60286a)



Usage:

Adding a Room: Insert a record into the Rooms table.

Adding a Customer: Insert a record into the Customers table.

Making a Booking: Insert a record into the Bookings table with the CustomerID and RoomNumber.

Querying Data: Use SQL queries to retrieve information such as which rooms are available for a specific date range, or which bookings were made by a particular customer.
