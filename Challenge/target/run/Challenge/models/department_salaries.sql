
  
  create view "dev"."main"."department_salaries__dbt_tmp" as (
    SELECT
  department,
  SUM(salary) AS total_salary
FROM
  "dev"."main"."employees"
GROUP BY
  department
  );
