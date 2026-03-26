-- This SQLite script creates a table of patient medical records.
-- It is populated with 40 realistic entries, simulating data from a clinical setting.

-- Drop the table if it already exists to ensure a clean slate.
DROP TABLE IF EXISTS PatientRecords;

-- Create the PatientRecords table.
CREATE TABLE [PatientRecords]
(
    [PatientID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Age] INTEGER,
    [Gender] TEXT,
    [Condition] TEXT,
    [Symptoms] TEXT,
    [Diagnosis] TEXT,
    [Allergies] TEXT,
    [Vitals] TEXT,
    [ChronicConditions] TEXT,
    [MedicationsAlreadyTaken] TEXT,
    [TestResults] TEXT,
    [Timestamp] TEXT,
    [DoctorsNote] TEXT
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 40 realistic patient records.
INSERT INTO PatientRecords (Age, Gender, Condition, Symptoms, Diagnosis, Allergies, Vitals, ChronicConditions, MedicationsAlreadyTaken, TestResults, Timestamp, DoctorsNote) VALUES
(58, 'Male', 'Type 2 Diabetes Check-up', 'Fatigue, increased thirst', 'Uncontrolled Type 2 Diabetes', 'Penicillin', 'BP: 145/90, HR: 82, Temp: 37.0°C, O2: 98%', 'Hypertension, T2DM', 'Metformin 500mg, Telmisartan 40mg', 'HbA1c=8.1%, Fasting Glucose=155 mg/dL', '2025-06-24 10:15:00', 'Poor glycemic control. Increase Metformin to 1000mg OD. Advise lifestyle and diet modification. Follow up in 3 months.'),
(32, 'Female', 'Viral Fever', 'Fever, body ache, headache, cough', 'Viral Fever', 'None Known', 'BP: 110/70, HR: 95, Temp: 38.5°C, O2: 99%', 'None', 'Paracetamol 650mg SOS', 'CBC: Normal, Platelets=2.5L', '2025-06-24 10:45:00', 'Symptomatic treatment. Advise rest and hydration. Monitor for worsening symptoms.'),
(65, 'Female', 'Knee Pain', 'Bilateral knee pain, difficulty walking', 'Osteoarthritis', 'Sulfa drugs', 'BP: 130/80, HR: 76, Temp: 36.8°C, O2: 97%', 'Osteoarthritis', 'Occasional NSAIDs', 'X-Ray Knee: Joint space reduction noted', '2025-06-24 11:05:00', 'Start physiotherapy. Prescribe Glucosamine. Review after 6 weeks.'),
(45, 'Male', 'Acid Reflux', 'Burning sensation in chest, sour taste', 'Gastroesophageal Reflux Disease (GERD)', 'None Known', 'BP: 125/85, HR: 80, Temp: 37.1°C, O2: 98%', 'None', 'Antacids', 'Upper GI Endoscopy: Mild esophagitis', '2025-06-24 11:30:00', 'Prescribe Pantoprazole 40mg OD for 4 weeks. Advise dietary changes.'),
(28, 'Female', 'Skin Rash', 'Itchy red patches on arms and back', 'Allergic Dermatitis', 'Dust Mites', 'BP: 120/80, HR: 78, Temp: 36.9°C, O2: 99%', 'Asthma', 'Cetirizine', 'Allergy Test: Positive for dust mites', '2025-06-24 12:00:00', 'Prescribe topical steroids and recommend hypoallergenic bedding.'),
(52, 'Male', 'Follow-up Hypertension', 'None, routine check', 'Controlled Hypertension', 'None Known', 'BP: 135/85, HR: 72, Temp: 37.0°C, O2: 98%', 'Hypertension', 'Amlodipine 5mg', 'Serum Creatinine: 1.0 mg/dL', '2025-06-24 12:25:00', 'BP borderline high. Advise salt restriction. Continue current medication. Re-check in 1 month.'),
(19, 'Male', 'Acne', 'Pustules on face and back', 'Acne Vulgaris', 'None Known', 'N/A', 'None', 'None', 'N/A', '2025-06-23 09:30:00', 'Prescribe topical Clindamycin and Benzoyl Peroxide. Advise on skin hygiene.'),
(71, 'Male', 'Shortness of Breath', 'Exertional dyspnea, ankle swelling', 'Congestive Heart Failure Exacerbation', 'Ibuprofen', 'BP: 150/95, HR: 105, Temp: 37.2°C, O2: 94%', 'CHF, CKD', 'Furosemide, Ramipril', 'BNP=1200 pg/mL, ECG: LVH', '2025-06-23 09:55:00', 'Admit for diuresis and observation. Increase Furosemide dose.'),
(35, 'Female', 'Migraine', 'Pulsating unilateral headache, photophobia', 'Migraine with Aura', 'None Known', 'BP: 115/75, HR: 70, Temp: 37.0°C, O2: 99%', 'None', 'Sumatriptan as needed', 'Neurological Exam: Normal', '2025-06-23 10:20:00', 'Discuss prophylactic options due to frequency. Start Propranolol.'),
(48, 'Female', 'Menopausal Symptoms', 'Hot flashes, night sweats, irritability', 'Perimenopause', 'None Known', 'BP: 128/82, HR: 84, Temp: 37.1°C, O2: 98%', 'None', 'None', 'TSH: Normal, FSH: Elevated', '2025-06-23 11:00:00', 'Counsel on lifestyle changes. Discuss risks/benefits of Hormone Replacement Therapy.'),
(60, 'Male', 'Routine Physical', 'None', 'Healthy Adult Male', 'Shellfish', 'BP: 122/78, HR: 68, Temp: 36.9°C, O2: 99%', 'None', 'None', 'Lipid Profile: LDL=110, HDL=50; PSA=1.2 ng/mL', '2025-06-22 14:00:00', 'Excellent health. Continue healthy lifestyle. Follow up in 1 year.'),
(25, 'Female', 'Urinary Tract Infection', 'Burning micturition, increased frequency', 'Urinary Tract Infection (UTI)', 'None Known', 'BP: 110/70, HR: 88, Temp: 37.8°C, O2: 99%', 'None', 'None', 'Urine Routine: WBCs++, Nitrites+', '2025-06-22 14:30:00', 'Prescribe Nitrofurantoin for 5 days. Advise increased fluid intake.'),
(55, 'Male', 'Gout Flare-up', 'Swollen, painful right great toe', 'Acute Gouty Arthritis', 'Aspirin', 'BP: 140/88, HR: 90, Temp: 37.4°C, O2: 97%', 'Hypertension, Hyperlipidemia', 'Atorvastatin, Losartan', 'Serum Uric Acid=9.5 mg/dL', '2025-06-22 15:00:00', 'Prescribe Colchicine for acute flare. Advise low-purine diet. Consider starting Febuxostat once flare resolves.'),
(41, 'Female', 'Anemia', 'Chronic fatigue, pale skin', 'Iron Deficiency Anemia', 'None Known', 'BP: 105/65, HR: 92, Temp: 37.0°C, O2: 98%', 'None', 'None', 'CBC: Hb=9.8 g/dL, MCV=75 fL', '2025-06-22 15:45:00', 'Start oral iron supplementation. Investigate cause, order stool occult blood test.'),
(30, 'Male', 'Anxiety', 'Restlessness, panic attacks, insomnia', 'Generalized Anxiety Disorder (GAD)', 'Codeine', 'BP: 130/85, HR: 100, Temp: 37.1°C, O2: 98%', 'None', 'None', 'THC/Drug Screen: Negative', '2025-06-21 10:00:00', 'Start SSRI (Escitalopram). Refer for CBT. Short-term Propranolol for panic symptoms.'),
(68, 'Female', 'Constipation', 'Infrequent bowel movements, straining', 'Chronic Constipation', 'None Known', 'BP: 135/80, HR: 74, Temp: 36.8°C, O2: 97%', 'Hypothyroidism', 'Levothyroxine 75mcg', 'TSH: 2.5 mIU/L (stable)', '2025-06-21 10:30:00', 'Advise high-fiber diet and increased water intake. Prescribe a gentle laxative (Lactulose).'),
(22, 'Female', 'PCOS Consultation', 'Irregular periods, hirsutism', 'Polycystic Ovary Syndrome (PCOS)', 'None Known', 'BP: 120/75, HR: 80, Temp: 37.0°C, O2: 99%', 'PCOS', 'None', 'Pelvic USG: Polycystic morphology; Free Testosterone: Elevated', '2025-06-21 11:15:00', 'Start oral contraceptive pill for cycle regulation. Counsel on weight management.'),
(75, 'Male', 'Memory Loss Concern', 'Forgetting names, misplacing items', 'Mild Cognitive Impairment', 'None Known', 'BP: 140/85, HR: 70, Temp: 36.9°C, O2: 98%', 'Hypertension', 'Amlodipine', 'MoCA Score: 24/30', '2025-06-20 14:00:00', ' MCI diagnosed. No indication for medication at this stage. Schedule regular follow-ups to monitor progression. Recommend cognitive exercises.'),
(49, 'Male', 'Shoulder Injury', 'Pain and limited motion after fall', 'Rotator Cuff Strain', 'None Known', 'BP: 125/80, HR: 85, Temp: 37.0°C, O2: 99%', 'None', 'Ibuprofen', 'Shoulder MRI: Supraspinatus tendinosis', '2025-06-20 14:45:00', 'Refer to orthopedics and physiotherapy. Continue NSAIDs cautiously.'),
(38, 'Female', 'Thyroid Nodule Follow-up', 'Asymptomatic', 'Benign Thyroid Nodule', 'None Known', 'BP: 118/72, HR: 75, Temp: 36.8°C, O2: 99%', 'None', 'None', 'Thyroid Ultrasound: Stable 1.5cm nodule; TSH: 1.8 mIU/L', '2025-06-20 15:30:00', 'Reassure patient. Nodule is stable and benign. Continue annual ultrasound monitoring.'),
(80, 'Male', 'Cataract Pre-op', 'Blurry vision, glare', 'Senile Cataract', 'Sulfa drugs', 'BP: 130/75, HR: 68, Temp: 36.7°C, O2: 97%', 'Benign Prostatic Hyperplasia', 'Tamsulosin', 'Pre-op Bloods: Normal', '2025-06-19 09:45:00', 'Fit for surgery. Counsel on intraocular lens options. Cleared for cataract surgery.'),
(29, 'Male', 'Back Pain', 'Lower back pain radiating to leg', 'Sciatica', 'None Known', 'BP: 120/80, HR: 78, Temp: 37.0°C, O2: 98%', 'None', 'None', 'Straight Leg Raise Test: Positive', '2025-06-19 10:15:00', 'Likely lumbar disc herniation. Prescribe muscle relaxants and NSAIDs. Advise physiotherapy.'),
(51, 'Female', 'Asthma Review', 'Wheezing, use of rescue inhaler 3x/week', 'Partially Controlled Asthma', 'Aspirin', 'BP: 125/78, HR: 82, Temp: 37.0°C, O2: 97%', 'Asthma, GERD', 'Salbutamol inhaler', 'Spirometry: FEV1 at 75% of predicted', '2025-06-19 11:00:00', 'Step up treatment. Add an inhaled corticosteroid (Budesonide). Review inhaler technique.'),
(62, 'Male', 'Prostate Check', 'Urinary hesitancy, nocturia', 'Benign Prostatic Hyperplasia (BPH)', 'None Known', 'BP: 138/84, HR: 71, Temp: 36.9°C, O2: 98%', 'Hypertension', 'Telmisartan 40mg', 'PSA=2.8 ng/mL, DRE: Smoothly enlarged prostate', '2025-06-18 14:30:00', 'Diagnosed BPH. Start Tamsulosin 0.4mg. Follow up in 3 months to assess symptom improvement.'),
(43, 'Female', 'Carpal Tunnel', 'Numbness and tingling in thumb, index finger', 'Carpal Tunnel Syndrome', 'None Known', 'BP: 120/70, HR: 76, Temp: 36.8°C, O2: 99%', 'None', 'None', 'Phalen''s Test: Positive', '2025-06-18 15:15:00', 'Advise wrist splinting at night. Discuss ergonomic changes at work. Consider nerve conduction studies if no improvement.'),
(56, 'Female', 'Vertigo', 'Sensation of spinning, nausea', 'Benign Paroxysmal Positional Vertigo (BPPV)', 'None Known', 'BP: 130/85, HR: 90, Temp: 37.0°C, O2: 97%', 'T2DM', 'Metformin', 'Dix-Hallpike Test: Positive', '2025-06-18 16:00:00', 'Performed Epley maneuver in-office with resolution of symptoms. Advise on home exercises.'),
(33, 'Male', 'Allergic Rhinitis', 'Sneezing, runny nose, itchy eyes', 'Allergic Rhinitis', 'Pollen, Grass', 'BP: 115/75, HR: 74, Temp: 37.0°C, O2: 99%', 'None', 'Over-the-counter antihistamines', 'N/A', '2025-06-17 09:30:00', 'Prescribe a nasal steroid spray (Fluticasone) and a non-drowsy antihistamine (Fexofenadine).'),
(69, 'Male', 'Chronic Kidney Disease Follow-up', 'Fatigue', 'CKD Stage 3', 'NSAIDs', 'BP: 142/88, HR: 70, Temp: 36.9°C, O2: 97%', 'CKD, T2DM, Hypertension', 'Insulin, Ramipril, Atorvastatin', 'eGFR=45 mL/min/1.73m², Urine ACR=50 mg/g', '2025-06-17 10:15:00', 'Stable CKD. Reinforce strict BP and glycemic control. Re-check labs in 4 months.'),
(46, 'Female', 'Depression Follow-up', 'Improved mood, better sleep', 'Major Depressive Disorder (in remission)', 'None Known', 'BP: 120/80, HR: 72, Temp: 36.8°C, O2: 99%', 'MDD', 'Sertraline 100mg', 'PHQ-9 Score: 4 (Minimal symptoms)', '2025-06-17 11:00:00', 'Excellent response to treatment. Continue Sertraline at current dose. Follow up in 3 months.'),
(27, 'Male', 'Plantar Fasciitis', 'Heel pain, worse in the morning', 'Plantar Fasciitis', 'None Known', 'BP: 122/76, HR: 70, Temp: 37.0°C, O2: 99%', 'None', 'None', 'Physical Exam: Tenderness at medial calcaneal tubercle', '2025-06-16 14:00:00', 'Recommend stretching exercises, supportive footwear. Advise short course of NSAIDs.'),
(61, 'Female', 'Osteoporosis Screening', 'None', 'Screening', 'None Known', 'BP: 130/78, HR: 77, Temp: 36.9°C, O2: 98%', 'None', 'None', 'DEXA Scan: T-score = -2.7 at lumbar spine', '2025-06-16 14:45:00', 'Diagnosis of Osteoporosis. Start Alendronate weekly. Prescribe Calcium and Vitamin D supplements.'),
(39, 'Male', 'Insomnia', 'Difficulty falling and staying asleep', 'Chronic Insomnia', 'None Known', 'BP: 128/84, HR: 81, Temp: 37.1°C, O2: 98%', 'Anxiety', 'None', 'Sleep hygiene questionnaire completed', '2025-06-16 15:30:00', 'Reinforce sleep hygiene principles. Refer for CBT for Insomnia (CBT-I). Avoid prescribing sleeping pills at this stage.'),
(53, 'Female', 'Fibromyalgia', 'Widespread muscle pain, fatigue, brain fog', 'Fibromyalgia', 'Codeine, Morphine', 'BP: 125/80, HR: 85, Temp: 37.0°C, O2: 97%', 'Fibromyalgia, IBS', 'None', 'Tender Point Exam: 14/18 positive', '2025-06-13 09:30:00', 'Start low-dose Amitriptyline at night. Recommend graded exercise therapy. Set realistic expectations for management.'),
(66, 'Male', 'Hearing Loss', 'Gradual difficulty hearing conversations', 'Presbycusis', 'None Known', 'BP: 135/82, HR: 72, Temp: 36.8°C, O2: 98%', 'Hypertension', 'Lisinopril', 'Audiometry: Bilateral sensorineural hearing loss', '2025-06-13 10:15:00', 'Refer to an audiologist for hearing aid consultation.'),
(31, 'Female', 'Postpartum Check-up', 'Feeling well, some fatigue', '6-week Postpartum Follow-up', 'None Known', 'BP: 115/70, HR: 78, Temp: 37.0°C, O2: 99%', 'None', 'Prenatal vitamins', 'Edinburgh Postnatal Depression Scale: 5 (Low risk)', '2025-06-13 11:00:00', 'Normal postpartum recovery. Cleared for normal activities. Discussed contraception options.'),
(59, 'Male', 'Erectile Dysfunction', 'Inability to maintain erection', 'Erectile Dysfunction', 'None Known', 'BP: 140/85, HR: 75, Temp: 36.9°C, O2: 97%', 'T2DM, Dyslipidemia', 'Metformin, Atorvastatin', 'Testosterone: Normal', '2025-06-12 14:00:00', 'Likely due to vascular and diabetic causes. Prescribe Sildenafil as needed after counseling on use and side effects.'),
(47, 'Female', 'Gallstones', 'Right upper quadrant pain after fatty meals', 'Cholelithiasis', 'None Known', 'BP: 124/78, HR: 88, Temp: 37.2°C, O2: 98%', 'None', 'None', 'Abdominal USG: Multiple gallstones, no gallbladder wall thickening', '2025-06-12 14:45:00', 'Symptomatic cholelithiasis. Refer to general surgery for cholecystectomy consultation.'),
(36, 'Male', 'Tinea Cruris (Jock Itch)', 'Itchy, red rash in groin area', 'Tinea Cruris', 'None Known', 'N/A', 'None', 'None', 'KOH Smear: Positive for hyphae', '2025-06-12 15:30:00', 'Prescribe topical antifungal cream (Clotrimazole) for 2 weeks. Advise to keep area dry.'),
(78, 'Female', 'Shingles', 'Painful, blistering rash on one side of torso', 'Herpes Zoster (Shingles)', 'None Known', 'BP: 145/80, HR: 85, Temp: 37.5°C, O2: 96%', 'Hypertension', 'Hydrochlorothiazide', 'Clinical diagnosis', '2025-06-11 10:00:00', 'Start Valacyclovir immediately. Prescribe Gabapentin for neuropathic pain. Counsel on risk of postherpetic neuralgia.');

-- Commit the transaction to save the data.
COMMIT;
