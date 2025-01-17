To solve this issue, avoid using non-deterministic functions in the WHERE clause unless that is truly intended behavior.  If you need to sample rows randomly, use a more controlled approach such as:

```sql
SELECT * FROM employees ORDER BY RAND() LIMIT 10; -- Randomly select 10 rows.
```

This uses the `ORDER BY RAND()` to randomize the rows before limiting the selection to the desired number.  This is more predictable than using `RAND()` in the `WHERE` clause because the database executes the order and limit operations consistently.  Alternatively use a deterministic function or a separate random number generating process to ensure consistent query results.