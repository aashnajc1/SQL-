/* display the first name, last name and number of duplicate patients based on their first name and last name.

Ex: A patient with an identical name can be considered a duplicate. */

select first_name, last_name, count(patient_id) as num_of_duplcaites
from patients
group by first_name, last_name
having count(patient_id) > 1;
