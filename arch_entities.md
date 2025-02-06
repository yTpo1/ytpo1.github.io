# Entities

**Definition**:
Entities are objects that have a distinct identity that runs through time and different states. They are defined by their identity rather than their attributes.

**Characteristics**:
* **Unique Identity**: Each entity has a unique identifier that distinguishes it from other entities.
* **State and Behavior**: Entities have attributes (state) and methods (behavior) that define their properties and actions.
* **Lifespan**: Entities typically have a longer lifespan and are often persisted in a database.

Example:
```cs
public class Order
{
    public int Id { get; set; }
    public string ProductName { get; set; }
    public int Quantity { get; set; }
    public decimal Price { get; set; }

    public decimal GetTotalPrice()
    {
        return Quantity * Price;
    }
}
```
