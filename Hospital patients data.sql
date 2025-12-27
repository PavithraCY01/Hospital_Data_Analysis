select * from patient
select count(*) as total_visits from patient;
select department, count(*) as total_visit from patient group by department
select doctor, count(*) as total_visit from patient group by doctor order by total_visit desc
select count(*) as total_high_severity_cases from patient where severity = 'High';
select patient_name, diagnosis, severity from patient where severity = 'High';
select admission_status, count(*) as No_of_patients from patient group by admission_status
update patient set visit_date = STR_TO_DATE(visit_date, '%m/%d/%Y')
ALTER TABLE patient MODIFY COLUMN visit_date DATETIME;
select count(*) as No_of_patients,visit_date from patient group by visit_date order by visit_date desc
select patient_id,patient_name,age from patient order by age desc limit 5
select department, count(*) as No_of_patients_Admitted from patient where admission_status = 'Admitted' group by department
select diagnosis, count(*) as No_of_patients from patient group by diagnosis order by No_of_patients desc
select gender, count(*) from patient group by gender
SELECT patient_id, patient_name, COUNT(*) AS visits FROM patient GROUP BY patient_id, patient_name HAVING COUNT(*) > 1;
select department, severity, count(*) from patient where severity = 'High' group by department order by count(*) desc
select patient_id,patient_name,department,diagnosis from patient where department = 'Cardiology' order by patient_id