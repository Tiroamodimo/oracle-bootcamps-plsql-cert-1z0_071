WITH max_avg_salaries AS
         (SELECT max(salary) maximum_salary, trunc(avg(salary)) average_salary, department_id
          FROM employees
          GROUP BY department_id
          )
SELECT employee_id, first_name, last_name, maximum_salary, average_salary, department_id
FROM employees e
    NATURAL JOIN max_avg_salaries;