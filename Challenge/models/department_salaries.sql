SELECT
  department,
  SUM(salary) AS total_salary
FROM
  {{ ref('employees') }}
GROUP BY
  department
