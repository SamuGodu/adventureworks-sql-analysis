# Exercises Part 3
## Grouping and Aggregating Data
### In this part, we will cover subqueries (i.e. queries nested within queries), operators like UNION and INTERSECT, and common table expressions (CTEs).

### Note: To write correct queries, you should first familiarize yourself with data stored in the relevant tables.

#### Exercise 16: Select employees with their current pay rate
This is new ground for me, we have to create a second query in the first 'WHERE' clause to identify the Rates linked to the most recent date. Did not consider it at the beginning.

#### Exercise 17: Select the minimum, average, and maximum pay rates
This exercise required to apply the same concept as before by adding multiple queries within inside the primary query. In this scenario, had to apply the 'WHERE' function after the'FROM' to create a temporary table. In that temporary table, it used a third query to get the latest Rate Change date using the 'MAX' Aggregate function from the Rate change date field.

#### Exercise 18: Select employee IDs with their out-of-office hours
Utilized the 'UNION' keyword to combine both tables. This way, we make sure to not repeate Employees that pass both conditions.

#### Exercise 19: Select employee IDs with certain job titles and departments
The INTERSECT operator finds the common output of the two queries – that is, it will output only the  IDs of employees that fulfill the WHERE clause conditions of both queries.

#### Exercise 20: List sales reps and marketing managers with their departments
Query joins the Employee, EmployeeDepartmentHistory and Department table with multiple joins. Then used the 'WHERE' clause to add the condition regarding the job titles.