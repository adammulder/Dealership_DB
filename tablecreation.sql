CREATE TABLE "Cars" (
  "car_id" SERIAL,
  "make" VARCHAR(100),
  "model" VARCHAR(100),
  "color" VARCHAR(100),
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Salesperson" (
  "sales_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("sales_id")
);

CREATE TABLE "Mechanics" (
  "mech_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  PRIMARY KEY ("mech_id")
);

CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "billing_info" VARCHAR(150),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Service_Ticket" (
  "s_ticket_id" SERIAL,
  "car_id" Integer,
  "customer_id" Integer,
  "parts_id" Integer,
  "mech_id" Integer,
  "cost" NUMERIC(10,2),
  "date" DATE,
  PRIMARY KEY ("s_ticket_id"),
  CONSTRAINT "FK_Service_Ticket.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "Cars"("car_id"),
  CONSTRAINT "FK_Service_Ticket.mech_id"
    FOREIGN KEY ("mech_id")
      REFERENCES "Mechanics"("mech_id"),
  CONSTRAINT "FK_Service_Ticket.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id")
);

CREATE TABLE "Service_History" (
  "history_id" SERIAL,
  "car_id" Integer,
  "s_ticket_id" Integer,
  PRIMARY KEY ("history_id"),
  CONSTRAINT "FK_Service_History.s_ticket_id"
    FOREIGN KEY ("s_ticket_id")
      REFERENCES "Service_Ticket"("s_ticket_id"),
  CONSTRAINT "FK_Service_History.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "Cars"("car_id")
);

CREATE TABLE "Parts" (
  "parts_id" SERIAL,
  "part" VARCHAR(150),
  "amount" NUMERIC(5,2),
  PRIMARY KEY ("parts_id")
);

CREATE TABLE "Invoice" (
  "invoice_id" SERIAL,
  "car_id" Integer,
  "sales_id" Integer,
  "customer_id" Integer,
  "sales_price" NUMERIC(10,2),
  "sales_date" DATE,
  PRIMARY KEY ("invoice_id"),
  CONSTRAINT "FK_Invoice.sales_id"
    FOREIGN KEY ("sales_id")
      REFERENCES "Salesperson"("sales_id"),
  CONSTRAINT "FK_Invoice.customer_id"
    FOREIGN KEY ("customer_id")
      REFERENCES "Customer"("customer_id"),
  CONSTRAINT "FK_Invoice.car_id"
    FOREIGN KEY ("car_id")
      REFERENCES "Cars"("car_id")
);

