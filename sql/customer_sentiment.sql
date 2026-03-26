-- Customer Sentiment Analysis Dataset

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customer_feedback;
DROP TABLE IF EXISTS support_tickets;
DROP TABLE IF EXISTS surveys;

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    launch_date TEXT
);

CREATE TABLE customer_feedback (
    feedback_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    feedback_text TEXT,
    rating_score INTEGER,
    feedback_channel TEXT,
    timestamp TEXT
);

CREATE TABLE support_tickets (
    ticket_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    issue_category TEXT,
    ticket_text TEXT,
    resolution_status TEXT,
    timestamp TEXT
);

CREATE TABLE surveys (
    survey_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    satisfaction_score INTEGER,
    survey_comment TEXT,
    timestamp TEXT
);


-- PRODUCTS

INSERT INTO products VALUES
('P101','CloudDrive Storage','Cloud Services','2025-01-10'),
('P102','SecureMail Pro','Communication','2025-03-05'),
('P103','DataAnalytics Hub','Analytics','2025-05-18');


-- CUSTOMER REVIEWS

INSERT INTO customer_feedback VALUES
('F001','C201','P101','The storage platform is very fast and reliable. Upload speeds are great.',5,'review','2026-02-01T10:20:00Z'),
('F002','C202','P101','File sharing works well but the interface is confusing.',3,'review','2026-02-02T11:15:00Z'),
('F003','C203','P101','Sync feature keeps failing during large uploads.',2,'review','2026-02-03T12:40:00Z'),
('F004','C204','P102','Email encryption feature is excellent and easy to use.',5,'review','2026-02-04T13:30:00Z'),
('F005','C205','P102','Spam filter is not catching many unwanted emails.',2,'review','2026-02-04T14:20:00Z'),
('F006','C206','P102','Overall good email service but mobile notifications are delayed.',3,'review','2026-02-05T09:15:00Z'),
('F007','C207','P103','The analytics dashboards are powerful and very useful.',5,'review','2026-02-06T08:10:00Z'),
('F008','C208','P103','Reports take too long to load when datasets are large.',2,'review','2026-02-06T11:55:00Z'),
('F009','C209','P103','Great features but documentation could be better.',3,'review','2026-02-07T10:05:00Z');


-- SUPPORT TICKETS

INSERT INTO support_tickets VALUES
('T1001','C203','P101','sync_issue','File sync keeps failing when uploading large folders','OPEN','2026-02-03T12:50:00Z'),
('T1002','C205','P102','spam_filter_issue','Spam filter not blocking promotional emails','RESOLVED','2026-02-04T15:00:00Z'),
('T1003','C210','P103','performance_issue','Dashboard loading very slowly','OPEN','2026-02-06T13:00:00Z'),
('T1004','C211','P101','ui_confusion','Users struggling to locate sharing options','OPEN','2026-02-02T12:30:00Z');


-- SURVEY RESPONSES

INSERT INTO surveys VALUES
('S5001','C212','P101',4,'Overall satisfied but UI needs improvement','2026-02-08T10:00:00Z'),
('S5002','C213','P102',2,'Spam filtering needs serious improvement','2026-02-08T11:10:00Z'),
('S5003','C214','P103',5,'Analytics tools are extremely powerful','2026-02-08T12:15:00Z'),
('S5004','C215','P103',3,'Good features but performance needs optimization','2026-02-08T13:40:00Z');