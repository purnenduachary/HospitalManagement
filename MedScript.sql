drop database if exists hms;

create database hms;

use hms;
show tables;

select * from Doctors;
select * from Patients;
select * from MedicationHistory;

delete from Doctors;
delete from patients;
drop table patient;
drop table MedicationHistorys;


create table Doctor
(
   doctorId varchar(30),
   doctorName varchar(30),
   specialization ENUM('HEART','SKIN','GENERAL','KIDNEY'),
   location varchar(30),
   mobileNo varchar(20),
   isStatus ENUM('ACTIVE','INACTIVE')
);

-- AddDoctor,ShowDoctor,ShowByCategory,SearchByDoctorID 

Create Table Patient
(
    PatientId varchar(30),
    PatientName varchar(30),
    DoctorId varchar(30) REFERENCES Doctor(DoctorId),
    DateOfBirth Date
);

-- ShowPatientById, ShowPatientByDoctorId

Create Table MedicationHistory
(
    MedId varchar(30),
    PatientId varchar(30) references Patient(patientId), 
    Medicines varchar(30),
    Tests varchar(30)
);
SELECT * FROM Patients WHERE doctorId = 'HSkDS03';
select * from MedicationHistory where patientId = 'PTH608';

INSERT INTO Patients (patientId, patientName, DateOfBirth, doctorId) VALUES
-- Existing 15
('PTH600', 'Alice Johnson', '1995-05-20', 'HSkDS03'),
('PTH601', 'Ramesh Sahu', '1980-04-12', 'HSkDS01'),
('PTH602', 'Sunita Mishra', '1990-06-24', 'HSkDS01'),
('PTH603', 'Deepak Rao', '1975-01-10', 'HSkDS01'),
('PTH604', 'Priya Jena', '1982-03-08', 'HSkDS02'),
('PTH605', 'Rohit Verma', '1965-12-19', 'HSkDS02'),
('PTH606', 'Anjali Sahoo', '1970-09-05', 'HSkDS02'),
('PTH607', 'Alice Johnson', '1995-05-20', 'HSkDS03'),
('PTH608', 'Manish Thakur', '2000-10-14', 'HSkDS03'),
('PTH609', 'Sneha Ray', '1987-02-11', 'HSkDS03'),
('PTH610', 'Kavita Sharma', '1978-07-07', 'HSkDS04'),
('PTH611', 'Tarun Patel', '1983-11-22', 'HSkDS04'),
('PTH612', 'Neha Joshi', '1992-08-16', 'HSkDS04'),
('PTH613', 'Aman Mehta', '1999-09-09', 'HSkDS05'),
('PTH614', 'Pooja Singh', '1991-04-02', 'HSkDS05'),
('PTH615', 'Rahul Banerjee', '1985-12-01', 'HSkDS05'),
('PTH616', 'Bhaskar Reddy', '1981-01-25', 'HSkDS01'),
('PTH617', 'Shalini Das', '1993-03-13', 'HSkDS01'),
('PTH618', 'Uday Kiran', '1986-08-19', 'HSkDS01'),
('PTH619', 'Gayatri Panda', '1972-05-30', 'HSkDS02'),
('PTH620', 'Nikhil Das', '1968-11-08', 'HSkDS02'),
('PTH621', 'Meena Kumari', '1976-06-18', 'HSkDS02'),
('PTH622', 'Harsha Vardhan', '1990-01-02', 'HSkDS03'),
('PTH623', 'Tanya Roy', '1994-07-27', 'HSkDS03'),
('PTH624', 'Kiran Patra', '1989-09-14', 'HSkDS03'),
('PTH625', 'Saurav Ghosh', '1974-04-05', 'HSkDS04'),
('PTH626', 'Lavanya Iyer', '1988-10-10', 'HSkDS04'),
('PTH627', 'Partha Sen', '1996-12-20', 'HSkDS04'),
('PTH628', 'Ankita Nair', '1997-03-22', 'HSkDS05'),
('PTH629', 'Vikram Rathi', '1984-08-08', 'HSkDS05'),
('PTH630', 'Divya Kapoor', '1982-02-28', 'HSkDS05');


INSERT INTO MedicationHistory (MedId, PatientId, Medicines, Tests) VALUES
('MHD6001', 'PTH601', 'Paracetamol', 'Blood Test'),
('MHD6002', 'PTH602', 'Ibuprofen', 'X-Ray'),
('MHD6003', 'PTH603', 'Azithromycin', 'ECG'),
('MHD6004', 'PTH604', 'Amoxicillin', 'Urine Test'),
('MHD6005', 'PTH605', 'Cetirizine', 'Allergy Test'),
('MHD6006', 'PTH606', 'Metformin', 'Blood Sugar'),
('MHD6007', 'PTH607', 'Aspirin', 'MRI'),
('MHD6008', 'PTH608', 'Loratadine', 'CT Scan'),
('MHD6009', 'PTH609', 'Ranitidine', 'Endoscopy'),
('MHD6010', 'PTH610', 'Omeprazole', 'Thyroid Test'),
('MHD6011', 'PTH611', 'Pantoprazole', 'Liver Function Test'),
('MHD6012', 'PTH612', 'Losartan', 'Kidney Function Test'),
('MHD6013', 'PTH613', 'Atorvastatin', 'Cholesterol Test'),
('MHD6014', 'PTH614', 'Montelukast', 'Pulmonary Function Test'),
('MHD6015', 'PTH615', 'Dolo 650', 'Hemoglobin Test'),
('MHD6016', 'PTH616', 'Vitamin D3', 'Bone Density'),
('MHD6017', 'PTH617', 'Iron Folic Acid', 'CBC'),
('MHD6018', 'PTH618', 'B-Complex', 'Eye Exam'),
('MHD6019', 'PTH619', 'Calcium Tablet', 'Urinalysis'),
('MHD6020', 'PTH620', 'Levothyroxine', 'TSH Test'),
('MHD6021', 'PTH621', 'Insulin', 'HbA1c'),
('MHD6022', 'PTH622', 'Metoprolol', 'Echo Test'),
('MHD6023', 'PTH623', 'Ciprofloxacin', 'Culture Test'),
('MHD6024', 'PTH624', 'Hydroxychloroquine', 'Eye Checkup'),
('MHD6025', 'PTH625', 'Clopidogrel', 'Angiogram'),
('MHD6026', 'PTH626', 'Domperidone', 'Gastroscopy'),
('MHD6027', 'PTH627', 'Tamsulosin', 'PSA Test'),
('MHD6028', 'PTH628', 'Sitagliptin', 'Glucose Tolerance'),
('MHD6029', 'PTH629', 'Pioglitazone', 'Insulin Test'),
('MHD6030', 'PTH630', 'Erythromycin', 'Skin Biopsy');



-- ShowPatientMedicalHistory, ShowPatientTests, AddMedicalHistory