-- Drop the table if it already exists to ensure a clean start.
DROP TABLE IF EXISTS EmployeeBenefits;

-- Create the EmployeeBenefits table.
CREATE TABLE EmployeeBenefits (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT,
    Role TEXT,
    Salary REAL,
    FamilySize INTEGER,
    Location TEXT,
    CurrentPlan TEXT,
    JoinDate TEXT
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 20 realistic employee records.
INSERT INTO EmployeeBenefits (Name, Role, Salary, FamilySize, Location, CurrentPlan, JoinDate) VALUES
('John Doe', 'Software Engineer', 85000, 3, 'New York', 'Standard Health + Retirement', '2022-03-15'),
('Sarah Johnson', 'HR Manager', 72000, 4, 'Chicago', 'Premium Health + Dental', '2021-07-01'),
('Michael Lee', 'Data Scientist', 95000, 1, 'San Francisco', 'Standard Health', '2023-01-20'),
('Priya Sharma', 'Business Analyst', 68000, 2, 'Boston', 'Basic Health', '2022-05-10'),
('David Kim', 'Product Manager', 110000, 5, 'Seattle', 'Premium Health + Retirement Boost', '2020-11-03'),
('Emily Davis', 'UX Designer', 78000, 1, 'Austin', 'Vision + Dental', '2023-02-25'),
('Carlos Rodriguez', 'DevOps Engineer', 99000, 3, 'Dallas', 'Standard Health + Dental', '2021-08-18'),
('Linda Nguyen', 'QA Tester', 64000, 2, 'Denver', 'Basic Health + Retirement', '2022-09-30'),
('Robert Brown', 'IT Support Specialist', 56000, 1, 'Atlanta', 'Basic Health', '2023-04-05'),
('Sophia Wilson', 'Marketing Lead', 87000, 4, 'Miami', 'Premium Health + Dental Bundle', '2020-06-12'),
('Amit Patel', 'AI Engineer', 120000, 2, 'San Jose', 'Premium Health + Retirement', '2021-03-14'),
('Olivia Martin', 'Operations Manager', 89000, 3, 'Portland', 'Standard Health', '2022-01-22'),
('Daniel Garcia', 'Financial Analyst', 76000, 1, 'Philadelphia', 'Basic Health + Retirement', '2021-12-09'),
('Emma Thompson', 'Legal Advisor', 105000, 2, 'Washington DC', 'Premium Health + Vision', '2020-09-17'),
('William Harris', 'Cloud Architect', 130000, 5, 'Houston', 'Premium Health + Dental + Retirement', '2019-11-28'),
('Isabella Martinez', 'Sales Executive', 67000, 2, 'Phoenix', 'Standard Health + Retirement Boost', '2023-03-10'),
('James White', 'Support Engineer', 59000, 1, 'Las Vegas', 'Basic Health', '2022-07-27'),
('Mia Clark', 'Recruiter', 62000, 2, 'San Diego', 'Basic Health + Vision', '2021-04-19'),
('Benjamin Scott', 'Security Analyst', 88000, 3, 'Detroit', 'Standard Health + Dental', '2020-10-23'),
('Charlotte Lewis', 'Training Specialist', 70000, 2, 'Minneapolis', 'Basic Health', '2022-12-02');

-- Commit the transaction to save the data.
COMMIT;
