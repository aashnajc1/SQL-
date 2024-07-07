/* For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem. */

select concat(pa.first_name, " ", pa.last_name) as patient_name,
ad.diagnosis, concat(do.first_name, " ", do.last_name) as doctor_name 
from patients as pa join admissions as ad 
on pa.patient_id = ad.patient_id
join doctors as do 
on ad.attending_doctor_id = do.doctor_id;
