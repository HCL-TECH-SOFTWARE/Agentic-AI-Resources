-- CUSTOMER SENTIMENT ANALYSIS DATABASE

DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customer_feedback;
DROP TABLE IF EXISTS support_tickets;
DROP TABLE IF EXISTS surveys;

--------------------------------------------------
-- PRODUCTS
--------------------------------------------------

CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    launch_date TEXT
);

INSERT INTO products VALUES
('P101','CloudDrive Storage','Cloud Services','2025-01-10'),
('P102','SecureMail Pro','Communication','2025-03-05'),
('P103','DataAnalytics Hub','Analytics','2025-05-18'),
('P104','TaskFlow Pro','Productivity','2025-07-22'),
('P105','NetworkShield','Security','2025-09-10'),
('P106','InsightAI','AI & Machine Learning','2025-11-30');

--------------------------------------------------
-- CUSTOMER REVIEWS
--------------------------------------------------

CREATE TABLE customer_feedback (
    feedback_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    feedback_text TEXT,
    rating_score INTEGER,
    feedback_channel TEXT,
    timestamp TEXT
);

INSERT INTO customer_feedback VALUES
('F001','C201','P101','The storage platform is very fast and reliable. Upload speeds are great.',5,'review','2026-02-01T10:20:00Z'),
('F002','C202','P101','File sharing works well but the interface is confusing.',3,'review','2026-02-02T11:15:00Z'),
('F003','C203','P101','Sync feature keeps failing during large uploads.',2,'review','2026-02-03T12:40:00Z'),
('F004','C204','P102','Email encryption feature is excellent and easy to use.',5,'review','2026-02-04T13:30:00Z'),
('F005','C205','P102','Spam filter is not catching many unwanted emails.',2,'review','2026-02-04T14:20:00Z'),
('F006','C206','P102','Overall good email service but mobile notifications are delayed.',3,'review','2026-02-05T09:15:00Z'),
('F007','C207','P103','The analytics dashboards are powerful and very useful.',5,'review','2026-02-06T08:10:00Z'),
('F008','C208','P103','Reports take too long to load when datasets are large.',2,'review','2026-02-06T11:55:00Z'),
('F009','C209','P103','Great features but documentation could be better.',3,'review','2026-02-07T10:05:00Z'),

-- TREND + REPETITION DATA
('F010','C216','P101','Upload speed has become slower in the last few days.',2,'review','2026-02-10T09:00:00Z'),
('F011','C217','P101','Still facing sync failures even after retrying multiple times.',1,'review','2026-02-11T10:15:00Z'),
('F012','C218','P101','The platform was good earlier but now performance is degrading.',2,'review','2026-02-12T11:30:00Z'),
('F013','C219','P102','Spam filter seems improved recently, fewer junk emails now.',4,'review','2026-02-10T12:45:00Z'),
('F014','C220','P102','Encryption is great but search functionality is slow.',3,'review','2026-02-11T13:20:00Z'),
('F015','C221','P103','Dashboard performance improved after latest update.',4,'review','2026-02-10T14:10:00Z'),
('F016','C222','P103','Still some lag when handling large datasets but better than before.',3,'review','2026-02-11T15:25:00Z'),

-- EXPANDED FEEDBACK — NEW PRODUCTS
('F017','C230','P104','TaskFlow is a game changer for our remote team coordination.',5,'review','2026-02-13T09:00:00Z'),
('F018','C231','P104','Calendar sync with Google Workspace keeps breaking every few days.',2,'review','2026-02-13T10:30:00Z'),
('F019','C232','P104','The Kanban view is clean and intuitive. Deadline reminders are great.',4,'review','2026-02-14T08:50:00Z'),
('F020','C233','P104','Bulk task import from CSV is broken — throws a parsing error.',1,'chat','2026-02-14T11:20:00Z'),
('F021','C234','P105','NetworkShield caught three intrusion attempts in our first week.',5,'review','2026-02-15T09:10:00Z'),
('F022','C235','P105','False positive alerts are blocking legitimate API traffic.',2,'review','2026-02-15T11:45:00Z'),
('F023','C236','P105','Dashboard gives a very clear view of threat categories. Love it.',5,'review','2026-02-16T10:00:00Z'),
('F024','C237','P105','Alert noise is too high — needs better tuning out of the box.',3,'social_media','2026-02-16T13:30:00Z'),
('F025','C238','P106','InsightAI model accuracy improved significantly after fine-tuning.',5,'review','2026-02-17T08:30:00Z'),
('F026','C239','P106','Retraining pipeline documentation is lacking. Took hours to configure.',2,'review','2026-02-17T10:15:00Z'),
('F027','C240','P106','Batch inference is blazing fast and the API is well-structured.',5,'review','2026-02-18T09:40:00Z'),
('F028','C241','P106','Feature importance outputs are sometimes inconsistent across runs.',3,'email','2026-02-18T14:00:00Z'),

-- EXPANDED FEEDBACK — EXISTING PRODUCTS (CONTINUED TRENDS)
('F029','C242','P101','Sync issue finally resolved after contacting support. Happy now.',4,'review','2026-02-19T09:00:00Z'),
('F030','C243','P101','Storage pricing is competitive but the free tier limits are too low.',3,'social_media','2026-02-20T11:00:00Z'),
('F031','C244','P102','New mobile push notifications work perfectly now.',5,'review','2026-02-21T08:00:00Z'),
('F032','C245','P102','Email threading still has occasional display glitches on Android.',3,'chat','2026-02-21T10:45:00Z'),
('F033','C246','P103','CSV export on filtered views is still broken for large reports.',1,'review','2026-02-22T09:00:00Z'),
('F034','C247','P103','Scheduled reports now deliver on time consistently.',4,'review','2026-02-23T14:30:00Z');

--------------------------------------------------
-- SUPPORT TICKETS
--------------------------------------------------

CREATE TABLE support_tickets (
    ticket_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    issue_category TEXT,
    ticket_text TEXT,
    resolution_status TEXT,
    timestamp TEXT
);

INSERT INTO support_tickets VALUES
('T1001','C203','P101','sync_issue','File sync keeps failing when uploading large folders','OPEN','2026-02-03T12:50:00Z'),
('T1002','C205','P102','spam_filter_issue','Spam filter not blocking promotional emails','RESOLVED','2026-02-04T15:00:00Z'),
('T1003','C210','P103','performance_issue','Dashboard loading very slowly','OPEN','2026-02-06T13:00:00Z'),
('T1004','C211','P101','ui_confusion','Users struggling to locate sharing options','OPEN','2026-02-02T12:30:00Z'),

-- ADDITIONAL RECURRING ISSUES
('T1005','C223','P101','sync_issue','Sync fails consistently for large files','OPEN','2026-02-11T16:00:00Z'),
('T1006','C224','P101','performance_issue','Upload speed significantly slower than before','OPEN','2026-02-12T17:10:00Z'),
('T1007','C225','P102','search_issue','Email search takes too long to return results','OPEN','2026-02-11T18:20:00Z'),
('T1008','C226','P103','performance_issue','Improved but still slow under heavy load','RESOLVED','2026-02-12T19:30:00Z'),

-- EXPANDED TICKETS — NEW PRODUCTS
('T1009','C231','P104','sync_issue','Calendar sync with Google Workspace fails after token refresh','OPEN','2026-02-13T11:00:00Z'),
('T1010','C233','P104','import_error','Bulk CSV task import returns parsing error on all file sizes','OPEN','2026-02-14T12:00:00Z'),
('T1011','C235','P105','false_positive','Legitimate internal API calls flagged as threats by IDS policy','OPEN','2026-02-15T12:30:00Z'),
('T1012','C237','P105','alert_tuning','Alert volume too high, no severity grouping in default config','OPEN','2026-02-16T14:00:00Z'),
('T1013','C239','P106','pipeline_config','Retraining pipeline fails silently with no error output to logs','OPEN','2026-02-17T10:45:00Z'),
('T1014','C241','P106','inconsistency','Feature importance scores differ between identical inference runs','OPEN','2026-02-18T15:00:00Z'),

-- EXPANDED TICKETS — EXISTING PRODUCTS (CONTINUED)
('T1015','C244','P102','mobile_issue','Push notifications not delivered on iOS 17 after recent update','OPEN','2026-02-20T09:30:00Z'),
('T1016','C245','P102','display_glitch','Email threading view broken on Android — conversations mixed up','OPEN','2026-02-21T11:00:00Z'),
('T1017','C246','P103','export_failure','CSV export hangs indefinitely on filtered datasets over 50k rows','OPEN','2026-02-22T09:20:00Z'),
('T1018','C243','P101','billing_issue','Free tier storage quota not resetting after downgrade','OPEN','2026-02-20T13:00:00Z');

--------------------------------------------------
-- SURVEYS
--------------------------------------------------

CREATE TABLE surveys (
    survey_id TEXT PRIMARY KEY,
    customer_id TEXT,
    product_id TEXT,
    satisfaction_score INTEGER,
    survey_comment TEXT,
    timestamp TEXT
);

INSERT INTO surveys VALUES
('S5001','C212','P101',4,'Overall satisfied but UI needs improvement','2026-02-08T10:00:00Z'),
('S5002','C213','P102',2,'Spam filtering needs serious improvement','2026-02-08T11:10:00Z'),
('S5003','C214','P103',5,'Analytics tools are extremely powerful','2026-02-08T12:15:00Z'),
('S5004','C215','P103',3,'Good features but performance needs optimization','2026-02-08T13:40:00Z'),

-- TREND SIGNALS
('S5005','C227','P101',2,'Performance issues are getting worse','2026-02-12T10:10:00Z'),
('S5006','C228','P102',4,'Overall better experience recently','2026-02-12T11:20:00Z'),
('S5007','C229','P103',4,'Noticeable improvements in dashboard speed','2026-02-12T12:30:00Z'),

-- EXPANDED SURVEY DATA
('S5008','C230','P104',5,'TaskFlow has completely replaced our old PM tool','2026-02-18T09:00:00Z'),
('S5009','C231','P104',3,'Useful but recurring sync issues with third-party calendars','2026-02-18T10:15:00Z'),
('S5010','C232','P105',5,'NetworkShield blocked multiple intrusion attempts seamlessly','2026-02-19T11:30:00Z'),
('S5011','C233','P105',2,'False positives are blocking legitimate internal traffic','2026-02-19T13:00:00Z'),
('S5012','C234','P106',5,'InsightAI predictions have been impressively accurate','2026-02-20T08:45:00Z'),
('S5013','C235','P106',3,'Model retraining pipeline is hard to configure without docs','2026-02-20T10:20:00Z'),
('S5014','C236','P101',3,'Storage is reliable but pricing feels high for the tier','2026-02-22T14:00:00Z'),
('S5015','C237','P102',4,'Mobile app improvements are very noticeable this month','2026-02-23T09:30:00Z'),
('S5016','C238','P103',2,'Export to CSV still fails on filtered datasets','2026-02-24T11:10:00Z'),
('S5017','C239','P104',4,'Kanban view is excellent, timeline view needs work','2026-02-25T12:00:00Z'),
('S5018','C240','P105',4,'Vulnerability scanner is thorough and well-reported','2026-02-26T09:00:00Z'),
('S5019','C241','P106',5,'Batch inference jobs now run 3x faster after the update','2026-02-27T14:30:00Z');