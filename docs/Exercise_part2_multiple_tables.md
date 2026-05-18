# Exercises Part 2
## Multiple table queries
### In this part, we will use JOINs to combine data from multiple tables.

### Note: To write correct queries, you should first familiarize yourself with data stored in the relevant tables.

#### Exercise 6: Select employees and their departments
Used the 'JOIN' function. When using the 'ON' keyword, should first add the field from the table in the 'FROM' part which will be equal to the field in the 'JOIN' table.

#### Exercise 7: Select female employees’ job titles and dates of department change
Always remember the 'ON' keyword after the 'JOIN' function. Also, the order is as follows:

FROM
JOIN
ON
WHERE
GROUP BY
HAVING
SELECT
ORDER BY

#### Exercise 8: Select job titles per department
Used the 'DISTINCT' function to avoid duplicates and furthermore added the Count's used to see how many positions there are for each JobTitle.

#### Exercise 9: Select employees with their departments and shifts
Theirs no specific order when doing joins, the KEY rule is a table alias must already exist before you use it an use the 'ON' keyword.

#### Exercise 10: Select employees hired after 2010 with their departments and shifts
After the 'AND' keyword, I can avoid adding a second pair of 'WHERE' function.