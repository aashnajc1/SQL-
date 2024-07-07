/* For each doctor, display their id, full name, and the first and last admission date they attended */

select d.doctor_id, concat(d.first_name, " ", d.last_name) as full_name, 
max(a.admission_date) as first_admission_date,
min(a.admission_date) as last_admission_date 
from 
admissions as a 
join 
doctors as d 
on 
a.attending_doctor_id = d.doctor_id
group by doctor_id;
