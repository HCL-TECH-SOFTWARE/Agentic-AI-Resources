-- Copyright 2026 HCL America, Inc.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

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