-- This SQLite script creates a patient dataset for clinical risk analysis.
-- It is populated with 60 realistic records, including a variety of conditions and risk levels.

-- Drop the table if it already exists to ensure a clean slate.
DROP TABLE IF EXISTS PatientData;

-- Create the PatientData table with the specified columns.
CREATE TABLE [PatientData]
(
    [PatientID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Age] INTEGER,
    [Gender] TEXT,
    [Diagnosis] TEXT,
    [Symptoms] TEXT,
    [Vitals] TEXT, -- Format: 'BP: systolic/diastolic, HR: beats/min, BMI: value, Glucose: mg/dL, O2: %'
    [TestResults] TEXT, -- Format: 'HbA1c: %, LDL: mg/dL, Creatinine: mg/dL'
    [ChronicConditions] TEXT,
    [AdmissionOutcome] TEXT -- 'Discharged', 'Observation', 'Admitted to Ward', 'Admitted to ICU'
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 60 realistic patient records.
INSERT INTO PatientData (Age, Gender, Diagnosis, Symptoms, Vitals, TestResults, ChronicConditions, AdmissionOutcome) VALUES
(68, 'Male', 'Acute Coronary Syndrome', 'Chest pain, shortness of breath, diaphoresis', 'BP: 165/95, HR: 110, BMI: 31.2, Glucose: 180, O2: 94%', 'HbA1c: 7.8%, LDL: 190, Creatinine: 1.4', 'T2DM, Hypertension, Dyslipidemia', 'Admitted to ICU'),
(52, 'Female', 'Uncontrolled Hypertension', 'Headache, dizziness', 'BP: 170/100, HR: 88, BMI: 29.5, Glucose: 110, O2: 98%', 'HbA1c: 6.1%, LDL: 165, Creatinine: 1.1', 'Hypertension', 'Observation'),
(34, 'Male', 'Healthy Adult', 'Routine check-up, no symptoms', 'BP: 118/75, HR: 65, BMI: 22.1, Glucose: 85, O2: 99%', 'HbA1c: 5.4%, LDL: 110, Creatinine: 0.9', 'None', 'Discharged'),
(72, 'Male', 'COPD Exacerbation', 'Increased wheezing, productive cough, dyspnea', 'BP: 140/85, HR: 98, BMI: 24.5, Glucose: 115, O2: 89%', 'HbA1c: 6.0%, LDL: 130, Creatinine: 1.2', 'COPD, Hypertension', 'Admitted to Ward'),
(45, 'Female', 'Prediabetes', 'Fatigue, increased thirst', 'BP: 130/85, HR: 80, BMI: 33.0, Glucose: 120, O2: 97%', 'HbA1c: 6.2%, LDL: 150, Creatinine: 0.8', 'Obesity', 'Discharged'),
(59, 'Male', 'Stable Angina', 'Chest tightness on exertion', 'BP: 135/88, HR: 72, BMI: 28.1, Glucose: 140, O2: 96%', 'HbA1c: 7.1%, LDL: 125, Creatinine: 1.1', 'T2DM, CAD', 'Discharged'),
(61, 'Female', 'Asthma Flare-up', 'Wheezing, non-productive cough, chest tightness', 'BP: 128/80, HR: 92, BMI: 26.7, Glucose: 98, O2: 93%', 'HbA1c: 5.8%, LDL: 115, Creatinine: 0.7', 'Asthma', 'Observation'),
(77, 'Female', 'Congestive Heart Failure', 'Bilateral leg swelling, orthopnea, fatigue', 'BP: 110/70, HR: 105, BMI: 30.1, Glucose: 130, O2: 92%', 'HbA1c: 6.9%, LDL: 140, Creatinine: 1.8', 'CHF, T2DM, CKD', 'Admitted to Ward'),
(41, 'Male', 'Hypothyroidism', 'Weight gain, fatigue, cold intolerance', 'BP: 120/80, HR: 60, BMI: 31.5, Glucose: 90, O2: 98%', 'HbA1c: 5.6%, LDL: 155, Creatinine: 1.0', 'Hypothyroidism', 'Discharged'),
(28, 'Female', 'Anxiety Disorder', 'Palpitations, nervousness', 'BP: 135/85, HR: 115, BMI: 21.3, Glucose: 88, O2: 99%', 'HbA1c: 5.2%, LDL: 95, Creatinine: 0.6', 'Anxiety', 'Discharged'),
(81, 'Male', 'Pneumonia', 'Fever, cough with yellow sputum, confusion', 'BP: 105/65, HR: 112, BMI: 21.0, Glucose: 160, O2: 90%', 'HbA1c: 7.5%, LDL: 120, Creatinine: 1.5', 'T2DM, Dementia', 'Admitted to ICU'),
(55, 'Female', 'New Onset Type 2 Diabetes', 'Polyuria, polydipsia, unexplained weight loss', 'BP: 140/90, HR: 85, BMI: 34.2, Glucose: 250, O2: 97%', 'HbA1c: 9.5%, LDL: 180, Creatinine: 1.0', 'Hypertension, Obesity', 'Discharged'),
(66, 'Male', 'Chronic Kidney Disease', 'Fatigue, swollen ankles, nausea', 'BP: 155/92, HR: 78, BMI: 27.8, Glucose: 135, O2: 95%', 'HbA1c: 6.8%, LDL: 160, Creatinine: 3.2', 'CKD, Hypertension, T2DM', 'Admitted to Ward'),
(38, 'Female', 'Migraine', 'Severe unilateral headache, photophobia', 'BP: 125/82, HR: 80, BMI: 23.4, Glucose: 92, O2: 99%', 'HbA1c: 5.5%, LDL: 105, Creatinine: 0.7', 'Migraine', 'Discharged'),
(74, 'Female', 'Atrial Fibrillation', 'Palpitations, lightheadedness', 'BP: 115/75, HR: 130 (irregular), BMI: 28.9, Glucose: 105, O2: 96%', 'HbA1c: 6.3%, LDL: 145, Creatinine: 1.3', 'Hypertension, AFib', 'Admitted to Ward'),
(49, 'Male', 'Dyslipidemia', 'Routine screening', 'BP: 130/85, HR: 70, BMI: 29.9, Glucose: 102, O2: 98%', 'HbA1c: 5.9%, LDL: 210, Creatinine: 1.1', 'Dyslipidemia, Obesity', 'Discharged'),
(31, 'Male', 'Gastroenteritis', 'Vomiting, diarrhea', 'BP: 110/70, HR: 100, BMI: 24.0, Glucose: 80, O2: 97%', 'HbA1c: 5.3%, LDL: 112, Creatinine: 1.0', 'None', 'Observation'),
(63, 'Female', 'Osteoarthritis', 'Joint pain and stiffness in knees', 'BP: 145/88, HR: 75, BMI: 32.1, Glucose: 118, O2: 98%', 'HbA1c: 6.0%, LDL: 158, Creatinine: 0.9', 'Hypertension, Osteoarthritis', 'Discharged'),
(70, 'Male', 'Diabetic Foot Ulcer', 'Non-healing wound on foot, redness', 'BP: 150/90, HR: 90, BMI: 30.5, Glucose: 220, O2: 96%', 'HbA1c: 8.5%, LDL: 175, Creatinine: 1.6', 'T2DM, PVD, CKD', 'Admitted to Ward'),
(57, 'Female', 'Sleep Apnea', 'Snoring, daytime sleepiness, morning headaches', 'BP: 148/94, HR: 82, BMI: 35.1, Glucose: 125, O2: 94%', 'HbA1c: 6.4%, LDL: 162, Creatinine: 1.0', 'Hypertension, Obesity, Sleep Apnea', 'Discharged'),
(25, 'Male', 'Healthy Youth', 'Sports physical', 'BP: 120/78, HR: 58, BMI: 21.8, Glucose: 88, O2: 100%', 'HbA1c: 5.1%, LDL: 98, Creatinine: 0.8', 'None', 'Discharged'),
(69, 'Female', 'Anemia of Chronic Disease', 'Persistent fatigue, pallor', 'BP: 130/80, HR: 88, BMI: 25.0, Glucose: 150, O2: 97%', 'HbA1c: 7.2%, LDL: 130, Creatinine: 2.5', 'T2DM, CKD', 'Discharged'),
(76, 'Male', 'Stroke (CVA)', 'Sudden onset of left-sided weakness, facial droop', 'BP: 180/105, HR: 95, BMI: 29.0, Glucose: 170, O2: 95%', 'HbA1c: 7.9%, LDL: 185, Creatinine: 1.4', 'Hypertension, T2DM, AFib', 'Admitted to ICU'),
(50, 'Female', 'GERD', 'Heartburn, regurgitation', 'BP: 128/84, HR: 78, BMI: 28.3, Glucose: 105, O2: 98%', 'HbA1c: 5.8%, LDL: 148, Creatinine: 0.8', 'GERD', 'Discharged'),
(64, 'Male', 'Peripheral Vascular Disease', 'Claudication in both legs', 'BP: 152/90, HR: 76, BMI: 26.5, Glucose: 145, O2: 96%', 'HbA1c: 7.0%, LDL: 195, Creatinine: 1.3', 'T2DM, PVD, Hypertension', 'Discharged'),
(42, 'Female', 'Polycystic Ovary Syndrome', 'Irregular periods, hirsutism', 'BP: 122/80, HR: 75, BMI: 31.8, Glucose: 115, O2: 99%', 'HbA1c: 6.0%, LDL: 140, Creatinine: 0.7', 'PCOS, Insulin Resistance', 'Discharged'),
(79, 'Female', 'Delirium', 'Acute confusion, inattention', 'BP: 115/70, HR: 108, BMI: 20.5, Glucose: 100, O2: 93%', 'HbA1c: 6.5%, LDL: 150, Creatinine: 1.7', 'UTI, Dementia, CKD', 'Admitted to Ward'),
(53, 'Male', 'Liver Cirrhosis', 'Jaundice, ascites, fatigue', 'BP: 105/60, HR: 95, BMI: 23.1, Glucose: 85, O2: 95%', 'HbA1c: 6.1%, LDL: 90, Creatinine: 1.5', 'Cirrhosis, Hepatitis C', 'Admitted to Ward'),
(39, 'Male', 'Depression', 'Low mood, anhedonia, insomnia', 'BP: 125/85, HR: 85, BMI: 25.2, Glucose: 95, O2: 98%', 'HbA1c: 5.4%, LDL: 125, Creatinine: 1.0', 'Depression', 'Discharged'),
(67, 'Female', 'Diabetic Retinopathy', 'Blurry vision, floaters', 'BP: 145/85, HR: 80, BMI: 29.8, Glucose: 190, O2: 97%', 'HbA1c: 8.2%, LDL: 168, Creatinine: 1.3', 'T2DM, Hypertension', 'Discharged'),
(71, 'Male', 'Gout', 'Painful, swollen right great toe', 'BP: 150/92, HR: 88, BMI: 32.4, Glucose: 140, O2: 96%', 'HbA1c: 7.3%, LDL: 180, Creatinine: 1.5', 'T2DM, Gout, Hypertension, CKD', 'Discharged'),
(48, 'Female', 'Fibromyalgia', 'Widespread pain, fatigue, sleep disturbance', 'BP: 120/78, HR: 82, BMI: 26.0, Glucose: 98, O2: 98%', 'HbA1c: 5.7%, LDL: 135, Creatinine: 0.8', 'Fibromyalgia', 'Discharged'),
(75, 'Male', 'Benign Prostatic Hyperplasia', 'Urinary frequency, weak stream', 'BP: 142/88, HR: 70, BMI: 28.0, Glucose: 110, O2: 97%', 'HbA1c: 6.1%, LDL: 145, Creatinine: 1.2', 'Hypertension, BPH', 'Discharged'),
(62, 'Female', 'Rheumatoid Arthritis', 'Symmetrical joint swelling and pain in hands', 'BP: 130/82, HR: 85, BMI: 24.8, Glucose: 105, O2: 98%', 'HbA1c: 5.9%, LDL: 140, Creatinine: 0.9', 'Rheumatoid Arthritis', 'Discharged'),
(85, 'Female', 'Osteoporosis', 'Back pain, stooped posture', 'BP: 135/80, HR: 78, BMI: 22.5, Glucose: 100, O2: 96%', 'HbA1c: 5.8%, LDL: 150, Creatinine: 1.1', 'Osteoporosis, Hypertension', 'Discharged'),
(56, 'Male', 'Obstructive Sleep Apnea', 'Loud snoring, partner reports apnea episodes', 'BP: 155/95, HR: 75, BMI: 36.5, Glucose: 130, O2: 93%', 'HbA1c: 6.7%, LDL: 170, Creatinine: 1.2', 'Hypertension, Obesity, T2DM', 'Observation'),
(44, 'Female', 'Iron Deficiency Anemia', 'Fatigue, dizziness, pale skin', 'BP: 110/68, HR: 95, BMI: 22.0, Glucose: 90, O2: 98%', 'HbA1c: 5.4%, LDL: 115, Creatinine: 0.7', 'Anemia', 'Discharged'),
(68, 'Male', 'Diverticulitis', 'Left lower quadrant abdominal pain, fever', 'BP: 135/85, HR: 98, BMI: 27.2, Glucose: 125, O2: 97%', 'HbA1c: 6.5%, LDL: 160, Creatinine: 1.3', 'Diverticulosis, Hypertension', 'Admitted to Ward'),
(30, 'Female', 'Healthy Pregnancy', 'Routine 2nd trimester check-up', 'BP: 115/70, HR: 85, BMI: 25.5, Glucose: 85, O2: 99%', 'HbA1c: 5.2%, LDL: 130, Creatinine: 0.6', 'Pregnancy', 'Discharged'),
(78, 'Male', 'Parkinson''s Disease', 'Resting tremor, bradykinesia, rigidity', 'BP: 125/75, HR: 65, BMI: 24.1, Glucose: 105, O2: 97%', 'HbA1c: 6.0%, LDL: 140, Creatinine: 1.1', 'Parkinson''s Disease', 'Discharged'),
(51, 'Female', 'Menopause', 'Hot flashes, mood swings', 'BP: 138/88, HR: 80, BMI: 28.8, Glucose: 110, O2: 98%', 'HbA1c: 5.9%, LDL: 155, Creatinine: 0.9', 'Hypertension', 'Discharged'),
(65, 'Male', 'Lung Cancer', 'Persistent cough, hemoptysis, weight loss', 'BP: 130/80, HR: 92, BMI: 20.1, Glucose: 115, O2: 94%', 'HbA1c: 6.2%, LDL: 135, Creatinine: 1.2', 'Hypertension, Lung Cancer', 'Admitted to Ward'),
(47, 'Male', 'Alcoholic Hepatitis', 'Jaundice, abdominal pain, fever', 'BP: 100/60, HR: 110, BMI: 22.3, Glucose: 90, O2: 96%', 'HbA1c: 5.8%, LDL: 85, Creatinine: 1.4', 'Alcohol Use Disorder', 'Admitted to ICU'),
(58, 'Female', 'Obesity', 'Joint pain, difficulty with daily activities', 'BP: 145/92, HR: 85, BMI: 40.2, Glucose: 135, O2: 95%', 'HbA1c: 6.8%, LDL: 175, Creatinine: 1.0', 'Hypertension, T2DM, Obesity', 'Discharged'),
(73, 'Female', 'Macular Degeneration', 'Central vision loss', 'BP: 140/85, HR: 76, BMI: 26.9, Glucose: 120, O2: 97%', 'HbA1c: 6.4%, LDL: 160, Creatinine: 1.1', 'Hypertension, Macular Degeneration', 'Discharged'),
(60, 'Male', 'Post-operative Follow-up', 'Knee replacement, healing well', 'BP: 130/80, HR: 72, BMI: 29.5, Glucose: 115, O2: 98%', 'HbA1c: 6.2%, LDL: 140, Creatinine: 1.0', 'Osteoarthritis, Hypertension', 'Discharged'),
(22, 'Female', 'Eating Disorder', 'Significant weight loss, amenorrhea', 'BP: 95/60, HR: 55, BMI: 16.5, Glucose: 75, O2: 99%', 'HbA1c: 5.0%, LDL: 95, Creatinine: 0.5', 'Anorexia Nervosa', 'Admitted to Ward'),
(82, 'Male', 'Sepsis', 'Fever, hypotension, altered mental state', 'BP: 90/50, HR: 125, BMI: 23.0, Glucose: 190, O2: 88%', 'HbA1c: 7.7%, LDL: 110, Creatinine: 2.1', 'T2DM, CKD, Pneumonia', 'Admitted to ICU'),
(36, 'Female', 'Endometriosis', 'Chronic pelvic pain, dysmenorrhea', 'BP: 118/76, HR: 78, BMI: 23.8, Glucose: 92, O2: 99%', 'HbA1c: 5.6%, LDL: 120, Creatinine: 0.7', 'Endometriosis', 'Discharged'),
(67, 'Male', 'Ischemic Stroke Follow-up', 'Residual right-sided weakness', 'BP: 135/85, HR: 70, BMI: 28.4, Glucose: 130, O2: 97%', 'HbA1c: 6.9%, LDL: 115, Creatinine: 1.2', 'CVA, Hypertension, T2DM', 'Discharged');

-- Commit the transaction to save the data.
COMMIT;
