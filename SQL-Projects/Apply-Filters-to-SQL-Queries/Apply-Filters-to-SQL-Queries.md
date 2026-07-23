
# Apply Filters to SQL Queries

## Project Description

In this project, I used SQL filters to investigate potential security incidents within an organization's employee and login attempt databases. I used SQL operators such as AND, OR, and NOT, along with LIKE pattern matching, to identify suspicious login activity and retrieve employee information needed for security updates.

This project demonstrates how security professionals can use SQL queries to analyze data, investigate suspicious activity, and support security operations.

---

# Investigation Tasks

## Retrieve After Hours Failed Login Attempts

### SQL Query

```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = 0;
```

### Explanation

This query retrieves failed login attempts that occurred after normal business hours. The AND operator ensures that both conditions must be true: the login attempt occurred after 18:00 and the login attempt failed. The success value of 0 identifies unsuccessful login attempts.

---

## Retrieve Login Attempts on Specific Dates

### SQL Query

```sql
SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-09'
OR login_date = '2022-05-08';
```

### Explanation

This query retrieves login attempts that occurred on May 9, 2022, or May 8, 2022. The OR operator allows the query to return results that match either date.

---

## Retrieve Login Attempts Outside of Mexico

### SQL Query

```sql
SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';
```

### Explanation

This query identifies login attempts that did not originate from Mexico. The LIKE operator with the wildcard (%) searches for country values beginning with "MEX", including both MEX and MEXICO. The NOT operator excludes those results.

---

## Retrieve Employees in Marketing in the East Building

### SQL Query

```sql
SELECT *
FROM employees
WHERE department = 'Marketing'
AND office LIKE 'East%';
```

### Explanation

This query retrieves employees who work in the Marketing department and are located in offices within the East building. The AND operator requires both conditions to be true, while LIKE with (%) finds offices beginning with "East".

---

## Retrieve Employees in Finance or Sales

### SQL Query

```sql
SELECT *
FROM employees
WHERE department = 'Finance'
OR department = 'Sales';
```

### Explanation

This query retrieves employees who belong to either the Finance or Sales department. The OR operator allows the query to return records matching either department.

---

## Retrieve Employees Not in IT

### SQL Query

```sql
SELECT *
FROM employees
WHERE NOT department = 'Information Technology';
```

### Explanation

This query identifies employees who are not part of the Information Technology department. The NOT operator excludes IT employees and returns employees from all other departments.

---

# Summary

In this project, I used SQL filtering techniques to investigate security events and retrieve employee information. I applied AND and OR operators to filter data using multiple conditions, used LIKE for pattern matching, and used NOT to exclude specific results. These SQL skills are valuable for cybersecurity professionals performing investigations, analyzing suspicious activity, and supporting security operations.
