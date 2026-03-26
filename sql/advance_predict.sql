-- Drop table if exists
DROP TABLE IF EXISTS SalesData;

-- Create Sales Data table
CREATE TABLE SalesData (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Date TEXT,
    ProductName TEXT,
    Region TEXT,
    SalesAmount REAL
);

BEGIN TRANSACTION;

INSERT INTO SalesData (Date, ProductName, Region, SalesAmount) VALUES
('2026-02-20','Laptop','India',52000),
('2026-02-21','Laptop','India',54000),
('2026-02-22','Laptop','India',53000),
('2026-02-23','Laptop','India',55000),
('2026-02-24','Laptop','India',58000),

('2026-02-20','Mobile','India',30000),
('2026-02-21','Mobile','India',32000),
('2026-02-22','Mobile','India',31000),
('2026-02-23','Mobile','India',33000),
('2026-02-24','Mobile','India',35000),

('2026-02-20','Tablet','USA',20000),
('2026-02-21','Tablet','USA',21000),
('2026-02-22','Tablet','USA',22000),
('2026-02-23','Tablet','USA',24000),
('2026-02-24','Tablet','USA',25000),

('2026-02-25','Laptop','India',60000),
('2026-02-26','Laptop','India',62000),
('2026-02-27','Laptop','India',61000),

('2026-02-25','Mobile','India',36000),
('2026-02-26','Mobile','India',37000),
('2026-02-27','Mobile','India',38000),

('2026-02-25','Tablet','USA',26000),
('2026-02-26','Tablet','USA',27000),
('2026-02-27','Tablet','USA',29000);

COMMIT;