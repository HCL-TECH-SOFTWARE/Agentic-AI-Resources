DROP TABLE IF EXISTS TICKET_CATEGORIES;

CREATE TABLE TICKET_CATEGORIES (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    description TEXT
);

INSERT INTO TICKET_CATEGORIES (category_id, category_name, description) VALUES
('CAT001', 'General Inquiry', 'Tickets related to general questions or information requests.'),
('CAT002', 'Technical Support', 'Tickets for technical issues or support requests.'),
('CAT003', 'Billing Issues', 'Tickets concerning billing and payment problems.'),
('CAT004', 'Feature Request', 'Tickets suggesting new features or improvements.'),
('CAT005', 'Account Management', 'Tickets related to account settings and management.'),
('CAT006', 'Feedback', 'Tickets providing feedback on products or services.'),
('CAT007', 'Complaint', 'Tickets lodging complaints about services or products.'),
('CAT008', 'Order Status', 'Tickets inquiring about the status of orders.'),
('CAT009', 'Cancellation Request', 'Tickets requesting cancellation of services or orders.'),
('CAT010', 'General', 'Tickets that do not fit into any other category.');