# Exceptions
Chapter 7: Error Handling

Error Handling should not obscure logic. Business logic should not mix with Error Handling logic. Both should be separate.

* Use **exceptions** rather than Returning error codes
* Provide context with Exceptions. Create informative messages that relay the intent of the operation that failed. Mention the operation that failed and the type of failure.
* Often a single exception class is fine for a particular area of code. The information sent with the exception can distinguish the errors. Use different classes only if there are times when you want to catch one exception and allow the other one to pass through.
* Don't return `Null`
    * When we return null, we are essentially creating work for ourselves and foisting problems upon our callers. All it takes is one missing null check to send an application spinning out of control.
    * If you are tempted to return null from a method, consider throwing an exception or returning a SPECIAL CASE object instead
    * Use `String.Empty`, `Guid.Empty`, `Enumerable.Empty<T>()`
* Don't pass `Null`
    * In most programming languages there is no good way to deal with a null that is passed by a caller accidentally. Because this is the case, the rational approach is to forbid passing null by default. When you do, you can code with the knowledge that a null in an argument list is an indication of a problem, and end up with far fewer careless mistakes.

Bibliography:
* Robert Martin - Clean Code - A Handbook of Agile Software Craftsmanship - 2008.