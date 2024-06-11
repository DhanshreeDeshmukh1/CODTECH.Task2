--CREATING ROOMS TABLE
CREATE TABLE "rooms" (
    "id" INTEGER PRIMARY KEY ,
    "room_number" TEXT NOT NULL UNIQUE,
    "room_type" TEXT NOT NULL,
    "capacity" INTEGER NOT NULL,
    "price_per_night" DECIMAL(10, 2) NOT NULL,
    "status" TEXT NOT NULL
);

--CREATING CUSTOMERS TABLE
CREATE TABLE "customers" (
    "id" INTEGER PRIMARY KEY ,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "email" TEXT NOT NULL UNIQUE,
    "phone_number" TEXT,
    "address" TEXT
);

--CREATING RESERVATION TABLE
CREATE TABLE "reservations" (
    "id" INTEGER PRIMARY KEY ,
    "room_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "check_in_date" DATE NOT NULL,
    "check_out_date" DATE NOT NULL,
    "number_of_guests" INT NOT NULL,
    "total_price" DECIMAL(10, 2) NOT NULL,
    "reservation_status" VARCHAR(20) NOT NULL,
    FOREIGN KEY ("room_id") REFERENCES "rooms"("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);

--CREATING PAYMENTS TABLE
CREATE TABLE "payments" (
    "id" INTEGER PRIMARY KEY ,
    "reservation_id" INTEGER NOT NULL,
    "payment_date" DATE NOT NULL,
    "amount" DECIMAL(10, 2) NOT NULL,
    "payment_method" TEXT NOT NULL,
    FOREIGN KEY ("reservation_id") REFERENCES "reservations"("id")
);
