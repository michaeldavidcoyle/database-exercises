USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
# Modify your first query to order by first name. The first result should be Irena Reutenauer and the last result should be Vidya Demeyer.
# Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Boguraev.
# Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Vidya Quittner.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;
# Contrary to what the exercise says, first result is Irena Bisiani, last is Vidya Peac when ordering by first name.
# Order by first and last name gives Irena Acton first but Vidya Zweizig last.
# Ordering by last name and then first name still returns Irena Acton first but Maya Zyda last.

# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE (
            first_name = 'Irena'
        OR first_name = 'Vidya'
        OR first_name = 'Maya'
    )
  AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';