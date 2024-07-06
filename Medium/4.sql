/*Show all columns for patient_id 542's most recent admission_date.*/

select * from admissions
where patient_id = 542
group by patient_id
having admission_date = max(admission_date);

select * from admissions
where patient_id = 542
and 
admission_date = 
( select max(admission_date) from admissions 
 where patient_id = 542);

select * from admissions
where patient_id = 542
order by admission_date desc limit 1;
