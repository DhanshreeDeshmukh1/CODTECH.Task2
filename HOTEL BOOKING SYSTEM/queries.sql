--INSERTING VALUES INTO ROOMS TABLE
INSERT INTO "rooms" ('room_number','room_type','capacity','price_per_night','status')
VALUES  ('101', 'Single', 1, 1000.00, 'Available'),
        ('102', 'Double', 2, 1500.00, 'Occupied'),
        ('103', 'Suite', 4, 3000.00, 'Available'),
        ('104', 'Single', 1, 1000.00, 'Maintenance'),
        ('105', 'Double', 2, 1500.00, 'Available'),
        ('106', 'Suite', 4, 3500.00, 'Available'),
        ('107', 'Single', 1, 1200.00, 'Occupied'),
        ('108', 'Double', 2, 1800.00, 'Available'),
        ('109', 'Suite', 3, 2500.00, 'Occupied'),
        ('110', 'Single', 1, 1100.00, 'Available');

--INSERTING VALUES INTO CUSTOMERS TABLE
INSERT INTO "customers" ('first_name','last_name','email','phone_number','address')
VALUES  ('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, City, Country'),
        ('Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Elm St, City, Country'),
        ('Alice', 'Johnson', 'alice.johnson@example.com', '3456789012', '789 Oak St, City, Country'),
        ('Bob', 'Brown', 'bob.brown@example.com', '4567890123', '101 Pine St, City, Country'),
        ('Carol', 'Davis', 'carol.davis@example.com', '5678901234', '202 Maple St, City, Country'),
        ('Eve', 'Miller', 'eve.miller@example.com', '6789012345', '303 Birch St, City, Country'),
        ('Frank', 'Wilson', 'frank.wilson@example.com', '7890123456', '404 Cedar St, City, Country'),
        ('Grace', 'Moore', 'grace.moore@example.com', '8901234567', '505 Walnut St, City, Country'),
        ('Hank', 'Taylor', 'hank.taylor@example.com', '9012345678', '606 Spruce St, City, Country'),
        ('Ivy', 'Anderson', 'ivy.anderson@example.com', '0123456789', '707 Fir St, City, Country');

--INSERTING VALUES INTO RESERVATIONS TABLE
INSERT INTO "reservations" ('room_id','customer_id','check_in_date','check_out_date','number_of_guests','total_price', 'reservation_status')
VALUES  (1,1 ,'2024-05-15', '2024-06-20', 1, 5000.00, 'Confirmed'),
        (2,2 ,'2024-05-16', '2024-06-18', 2, 3000.00, 'Confirmed'),
        (3, 3, '2024-05-17', '2024-06-21', 4, 12000.00, 'Cancelled'),
        (4, 4,'2024-05-18', '2024-06-22', 2, 6000.00, 'Confirmed'),
        (5, 5,'2024-05-19', '2024-06-20', 1, 1200.00, 'Checked Out'),
        (6, 6, '2024-05-20', '2024-06-25', 2, 9000.00, 'Confirmed'),
        (7, 7,'2024-05-21', '2024-06-23', 3, 5000.00, 'Confirmed'),
        (8, 8, '2024-05-22', '2024-06-24', 1, 2200.00, 'Confirmed'),
        (9, 9, '2024-05-23', '2024-06-28', 4, 17500.00, 'Confirmed'),
        (10, 10, '2024-05-24', '2024-06-26', 1, 2000.00, 'Confirmed');

--INSERTING VALUES INTO PAYMENTS TABLE
INSERT INTO "payments" ('reservation_id','payment_date','amount','payment_method')
VALUES  (1, '2024-06-10', 5000.00, 'Credit Card'),
        (2, '2024-06-11', 3000.00, 'Cash'),
        (3, '2024-06-12', 12000.00, 'Credit Card'),
        (4, '2024-06-13', 6000.00, 'Online'),
        (5, '2024-06-14', 1200.00, 'Credit Card'),
        (6, '2024-06-15', 9000.00, 'Credit Card'),
        (7, '2024-06-16', 5000.00, 'Cash'),
        (8, '2024-06-17', 2200.00, 'Online'),
        (9, '2024-06-18', 17500.00, 'Credit Card'),
        (10, '2024-06-19', 2000.00, 'Cash');

--SELECTING VALUES FROM ROOMS TABLES
SELECT * FROM "rooms";

--SELECTING VALUES FROM CUSTOMERS TABLES
SELECT * FROM "customers";

--SELECTING VALUES FROM RESERVATIONS TABLES
SELECT * FROM "reservations";

--SELECTING VALUES FROM PAYMENTS TABLES
SELECT * FROM "payments";

--FIND ROOM AVAILABLITY GIVEN DATE RANGE
SELECT "id","room_number","room_type", "capacity", "price_per_night"
FROM "rooms"
WHERE "id"  IN (
    SELECT "room_id"
    FROM "reservations"
    WHERE "check_out_date" >= "2024-06-17"
)
AND "status" = "Available";

--UPDATE ROOM TABLE
UPDATE "rooms"
SET "status" = "Occupied"
WHERE "id" = 2;

--UPDATE RESERVATION DETAILS
UPDATE "reservations"
SET "check_out_date" = "2024-07-02", "number_of_guests" = 3, "total_price" = 3000.00
WHERE "id" = 1;

--CANCEL RESERVATION
BEGIN TRANSACTION;
UPDATE "reservations"
SET "reservation_status" = "Cancelled"
WHERE "id" = 4;

UPDATE "rooms"
SET "status" = "Available"
WHERE "id" = (SELECT "room_id" FROM "reservations" WHERE "id" = 4);
COMMIT;













