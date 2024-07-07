/* Display the total amount of patients for each province. Order by descending. */

select pr.province_name, count(pa.patient_id) as patient_count
from 
province_names as pr join patients as pa 
on pr.province_id = pa.province_id
group by pr.province_name
order by patient_count desc;
