# LINQ

## IQueryable vs IEnumerable
**Is there a difference between using IQueryable and IEnumerable when running LINQ methods on a data object?**

Yes, there is. The main difference lies in how and when the query is executed, as well as performance implications.

* **IQueryable**:
    * **Deferred Execution**: IQueryable supports deferred execution, meaning the query is not executed until you enumerate over teh results.
    * **Query Translation**: IQueryable is designed to work with data sources that support query translation, such as databases. The LINQ query is translated into the native query language of the data source (e.g., SQL for a database)
    * **Performance**: Because the query is translated and executed on the data source, it can be more efficient, especially for large datasets. The data source can optimize the query and return only the necessary data.
* **IEnumerable**:
    * **Immediate Execution**: IEnumerable does not support deferred execution. When you call a LINQ method on a IEnumerable, the query is executed immediately.
    * **In-Memory Processing**: IEnumerable works with in-memory collections. The entire dataset is loaded into memory, and the LINQ query is executed on the in-memory data.
    * **Performance**: For large datasets, using IEnumerable can be less efficient because the entire dataset is loaded into memory before the query is executed.

Use `IQueryable` when working with data sources that support query translation and deferred execution, such as databases. This allows for more efficient querying and better performance for large datasets. 