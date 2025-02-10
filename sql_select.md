# SQL. SELECT

## `GROUP BY` clause
The `GROUP BY` clause is used to group rows that have the same values in specified columns into summary rows. It is often used in conjunction with aggregate functions such as `COUNT`, `SUM`, `AVG`, `MAX`, AND `MIN` to perform operations on each group of rows.

**Purpose**:
* **Grouping Data**: It allows you to group rows that share a common value in one or more columns.
* **Aggregating Data**: It enables you to perform aggregate calculation on each group, such as summing values or counting rows.

```sql
SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1;
```

**Example**
Consider a table named `Order` with the following columns:
* `OrderID`: unique identifier for each order
* `CustomerID`: Identifier for the customer who placed the order
* `OrderAmount`: The amount of the order

|OrderID|CustomerID|OrderAmount|
|---|---|---|
|1|1|100|
|2|2|200|
|3|1|150|
|4|3|300|
|5|2|250|

To find the total order amount for each customer, you can used the `GROUP BY` clause with the `SUM` aggregate function:
```sql
SELECT CustomerId, SUM(OrderAmount) As TotalOrderAmount
FROM Orders
GROUP BY CustomerId;
```

|CustomerID|TotalOrderAmount|
|---|---|
|1|250|
|2|450|
|3|300|

Explanation of `GROUP BY CustomerId`: Groups the results by `CustomerId`, so the `SUM` function is applied to each group of the rows with the same `CustomerID`.

The `GROUP BY` clause is essential for summarizing data and generating reports in SQL.