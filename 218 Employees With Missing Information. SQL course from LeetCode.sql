# Write your MySQL query statement below
WITH Employee2 AS(
SELECT
    employee_id
FROM
    Employees
    
UNION
SELECT
    employee_id
FROM
    Salaries
)

SELECT
    E2.employee_id
FROM
    Employee2 E2
    LEFT JOIN
        Employees E1
    ON E2.employee_id = E1.employee_id
        LEFT JOIN
            Salaries S
        ON E2.employee_id = S.employee_id
WHERE
    E1.employee_id IS NULL
    OR S.employee_id IS NULL
ORDER BY
    E2.employee_id;