--Problem Statement--
--You have been asked to find the job titles of the highest-paid employees.
--Expected Output--
--Your output should include the highest-paid title or multiple titles with the same salary.
/*
Tables: Worker, title
Worker:
| Field Name      | Data Type  |                     
| --------------- | ---------- |                       
| worker_id       | int        |
| first_name      | varchar    |
| last_name       | varchar    |
| salary          | int        |
| joining_date    | datetime   |
| department      | varchar    |

Title:
| Field Name      | Data Type  |
| --------------- | ---------- |
| worker_ref_id   | int        |
| worker_title    | varchar    |
| affected_from   | datetime   |
*/

--Solution

SELECT worker_title AS best_paid_title
FROM title
JOIN worker ON worker_id = worker_ref_id
WHERE salary = (SELECT MAX(salary) FROM worker)
ORDER BY worker_title;
