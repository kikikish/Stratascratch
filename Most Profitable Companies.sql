--Problem Statement
--Find the 3 most profitable companies in the entire world.
--Expected Output
--Output the result along with the corresponding company name.Sort the result based on profits in descending order.
/*
Table: forbes_global_2010_2014:

| Field           | Data Type  |
| --------------- | ---------- |
| company         | varchar    |
| sector          | varchar    |
| industry        | varchar    |
| continent       | varchar    |
| country         | varchar    |
| marketvalue     | float      |
| sales           | float      |
| profits         | float      |
| assets          | float      |
| rank            | int        |
| forbeswebpage   | varchar    |
*/

--Solution:

SELECT company, SUM(profits)
FROM forbes_global_2010_2014
GROUP BY company, profits
ORDER BY profits DESC
LIMIT 3;
