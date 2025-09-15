# This is a code challenge for Datacoves

"Set up dbt locally on your computer. Initialize a dbt project and push it to github. You can use Motherduck as a database to make things simple. Load data there using a dbt seed."

This Challenge is based on the following seed :

| employee_id | first_name | last_name | department  | salary |
|-------------|------------|-----------|-------------|--------|
| 1           | John       | Doe       | Engineering | 80000  |
| 2           | Jane       | Smith     | Marketing   | 75000  |
| 3           | Peter      | Jones     | Engineering | 90000  |
| 4           | Lisa       | Ray       | Sales       | 85000  |

The Log section points to the tests and modeling done based on the following .sql file

´´´
SELECT
  department,
  SUM(salary) AS total_salary
FROM
  {{ ref('employees') }}
GROUP BY
  department

´´´
