/*pre requisite */ 
show databases;
create database if not exists Patient_Diagnosis_Report;
use Patient_Diagnosis_Report;
show tables;
/* 1. Write a query to create a patients table with the date, patient ID, patient name, age, 
weight, gender, location, phone number, disease, doctor name, and doctor ID fields */
CREATE TABLE Patient_Diagnosis_Report.patients (
 date DATE NOT NULL,
 pid varchar(45) NOT NULL,
 p_name varchar(45) NOT NULL,
 age INT NOT NULL,
 weight INT NOT NULL,
 gender varchar(45) NOT NULL,
 location varchar(45) NOT NULL,
 phone_no INT NOT NULL,
 disease varchar(45) NOT NULL,
 doctor_name varchar(45) NOT NULL,
 doctor_id INT NOT NULL,
 PRIMARY KEY(pid));
 
/* 2. Write a query to insert values into the patients table */
INSERT INTO Patient_Diagnosis_Report.patients 
(date,pid,p_name,age,weight,gender,location,phone_no,disease,doctor_name,doctor_id) 
VALUES 
('2019-06-15','AP2021','Sarath','67','76','Male','chennai','5462829','Cardiac','Mohan','21'),
('2019-02-13','AP2022','John','62','80','Male','banglore','1234731','Cancer','Suraj','22'),
('2018-01-08','AP2023','Henry','43','65','Male','Kerala','9028320','Liver','Mehta','23'),
('2020-02-04','AP2024','Carl','56','72','Female','Mumbai','9293829','Asthma','Karthik','24'),
('2017-09-15','AP2025','Shikar','55','71','Male','Delhi','7821281','Cardiac','Mohan','21'),
('2018-07-22','AP2026','Piysuh','47','59','Male','Haryana','8912819','Cancer','Suraj','22'),
('2017-03-25','AP2027','Stephen','69','55','Male','Gujarat','8888211','Liver','Mehta','23'),
('2019-04-22','AP2028','Aaron','75','53','Male','Banglore','9012192','Asthma','Karthik','24');

 /* now select to see that has been inserted or not. */
select * from Patient_Diagnosis_Report.patients;
/* 3. Write a query to display the total number of patients in the table. */
select count(*) as total_number_of_patients from Patient_Diagnosis_Report.patients;

/* 4. Write a query to display the patient ID, patient name, gender, and disease of the 
oldest (age) patient */
select pid, p_name, gender, disease, max(age) as max_age from Patient_Diagnosis_Report.patients;
/* 5. Write a query to display patient id and patient name with the current date. */
select pid, p_name, now() as curent_date from Patient_Diagnosis_Report.patients;
/* 6. Write a query to display the doctor’s name in uppercase.*/
select UCASE(doctor_name) as upperCase_Doctor_name from 
Patient_Diagnosis_Report.patients; 
/* 7. Write a query to display the patient’s name along with the length of their name. */
select p_name, length(p_name) as length_of_patient_name from 
Patient_Diagnosis_Report.patients;
/* 8. Write a query to display the patient’s name, and the gender of the patient must be mentioned as M or F.*/
select p_name, mid(gender,1,1) as Gender from 
Patient_Diagnosis_Report.patients;

/* 9. Write a query to combine the names of the patient and the doctor in a new column.*/
select p_name, doctor_name, concat(p_name, ' ', doctor_name) as patient_doctor_name from
Patient_Diagnosis_Report.patients;

/* 10. Write a query to display the patients’ age along with the logarithmic value (base 10) of their age. */
select age,log10(age) as log_age from 
Patient_Diagnosis_Report.patients;

/* 11. Write a query to extract the year from the given date in a separate column.*/
select *, year(date) as year_extraction from
Patient_Diagnosis_Report.patients;

/* 12. 	Write a query to return NULL if the patient’s name and doctor’s name 
are similar else returns the patient’s name. */
select nullif(p_name,doctor_name) as conditional_name  from 
Patient_Diagnosis_Report.patients;

/* 13. Write a query to return Yes if the patient’s age is greater than 40 else return No. */
select age,if(age>40,'Yes','No') as agegreater_40 from 
Patient_Diagnosis_Report.patients;

/* 14. Write a query to display the doctor’s duplicate name from the table. */
select doctor_name,count(*) occurences from 
Patient_Diagnosis_Report.patients 
GROUP BY 
doctor_name 
HAVING COUNT(*)>1;
