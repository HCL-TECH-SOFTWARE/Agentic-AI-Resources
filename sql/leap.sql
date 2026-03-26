-- Drop the table if it already exists to ensure a clean start.
DROP TABLE IF EXISTS TechFlowProducts;

-- Create the TechFlow Products table
CREATE TABLE [TechFlowProducts]
(
    [ID] INTEGER PRIMARY KEY,
    [Series] TEXT,
    [Model] TEXT,
    [SKU] TEXT,
    [ReleaseDate] TEXT,
    [WarrantyPeriod] TEXT,
    [PriceUSD] TEXT,
    [KeySpecs] TEXT,
    [Status] TEXT
);

-- Begin a transaction for efficient data insertion
BEGIN TRANSACTION;

-- Insert Business Laptop Series
INSERT INTO TechFlowProducts (ID, Series, Model, SKU, ReleaseDate, WarrantyPeriod, PriceUSD, KeySpecs, Status) VALUES
(1, 'TechFlow ProBook Series', 'ProBook 15X', 'TF-PB15X-001', '2023-03-15', '3 years', '$899', 'Intel i5-12400, 16GB RAM, 512GB SSD', 'Active'),
(2, 'TechFlow ProBook Series', 'ProBook 15X Pro', 'TF-PB15X-002', '2023-03-15', '3 years', '$1,299', 'Intel i7-12700, 32GB RAM, 1TB SSD', 'Active'),
(3, 'TechFlow ProBook Series', 'ProBook 13U', 'TF-PB13U-001', '2023-08-01', '3 years', '$749', 'Intel i5-1235U, 8GB RAM, 256GB SSD', 'Active'),
(4, 'TechFlow ProBook Series', 'ProBook 13U Plus', 'TF-PB13U-002', '2023-08-01', '3 years', '$999', 'Intel i7-1255U, 16GB RAM, 512GB SSD', 'Active');

-- Insert Gaming Laptop Series
INSERT INTO TechFlowProducts (ID, Series, Model, SKU, ReleaseDate, WarrantyPeriod, PriceUSD, KeySpecs, Status) VALUES
(5, 'TechFlow GameMax Series', 'GameMax 15G', 'TF-GM15G-001', '2023-05-20', '2 years', '$1,599', 'Intel i7-12700H, RTX 3060, 16GB RAM, 512GB SSD', 'Active'),
(6, 'TechFlow GameMax Series', 'GameMax 15G Elite', 'TF-GM15G-002', '2023-05-20', '2 years', '$2,199', 'Intel i9-12900H, RTX 3070, 32GB RAM, 1TB SSD', 'Active'),
(7, 'TechFlow GameMax Series', 'GameMax 17X', 'TF-GM17X-001', '2023-09-10', '2 years', '$2,799', 'Intel i9-12900H, RTX 3080, 32GB RAM, 2TB SSD', 'Active');

-- Insert Legacy Products
INSERT INTO TechFlowProducts (ID, Series, Model, SKU, ReleaseDate, WarrantyPeriod, PriceUSD, KeySpecs, Status) VALUES
(8, 'Legacy Products', 'ProBook 14L', 'TF-PB14L-001', '2021-11-15', '3 years', '$699', 'N/A', 'Discontinued'),
(9, 'Legacy Products', 'GameMax 15F', 'TF-GM15F-001', '2022-02-28', '2 years', '$1,399', 'N/A', 'Discontinued');

-- Commit the transaction
COMMIT;
