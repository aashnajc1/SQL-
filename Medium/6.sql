/* Show first_name, last_name, and the total number of admissions attended for each doctor.

Every admission has been attended by a doctor.*/

select d.first_name, d.last_name, count(a.attending_doctor_id) as admissions_total 
from admissions as a join doctors as d 
on 
a.attending_doctor_id = d.doctor_id
group by attending_doctor_id;
