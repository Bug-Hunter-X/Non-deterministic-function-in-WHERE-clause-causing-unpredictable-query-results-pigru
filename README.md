# Non-Deterministic Function in SQL WHERE Clause

This repository demonstrates a subtle SQL bug caused by using a non-deterministic function within the WHERE clause of a query.  Non-deterministic functions, such as `RAND()` in many database systems, produce different results even with the same input. When used in a WHERE clause, this can lead to inconsistent query results and unpredictable behavior due to database query optimization.

The `bug.sql` file contains the problematic query.  The `bugSolution.sql` demonstrates a corrected version, ensuring consistent and predictable results.