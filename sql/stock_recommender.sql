CREATE TABLE Users (
user_id INTEGER PRIMARY KEY,
username TEXT,
country TEXT
);

CREATE TABLE Products (
product_id INTEGER PRIMARY KEY,
product_name TEXT,
category TEXT
);

CREATE TABLE Purchases (
purchase_id INTEGER PRIMARY KEY,
user_id INTEGER,
product_id INTEGER,
quantity INTEGER,
purchase_date DATE
);

INSERT INTO Users VALUES (1,'Rahul','India');
INSERT INTO Users VALUES (2,'Emma','USA');
INSERT INTO Users VALUES (3,'Li','China');
INSERT INTO Users VALUES (4,'Carlos','Brazil');

INSERT INTO Products VALUES (101,'Resistor 10k','Electronics');
INSERT INTO Products VALUES (102,'Capacitor 100uF','Electronics');
INSERT INTO Products VALUES (103,'Arduino Uno','Microcontroller');
INSERT INTO Products VALUES (104,'Temperature Sensor','Sensor');
INSERT INTO Products VALUES (105,'Voltage Regulator','Power');

INSERT INTO Purchases VALUES (1,1,101,5,'2024-01-10');
INSERT INTO Purchases VALUES (2,2,101,7,'2024-01-15');
INSERT INTO Purchases VALUES (3,3,103,2,'2024-02-05');
INSERT INTO Purchases VALUES (4,1,104,1,'2024-02-10');
INSERT INTO Purchases VALUES (5,4,101,6,'2024-03-01');
INSERT INTO Purchases VALUES (6,2,102,4,'2024-03-12');
INSERT INTO Purchases VALUES (7,3,103,3,'2024-04-05');
INSERT INTO Purchases VALUES (8,1,105,2,'2024-04-10');