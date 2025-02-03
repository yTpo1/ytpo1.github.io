# Unit Test Naming Conventions

### Descriptive Names Style
Use descriptive names that clearly state what the test is verifying.
Format: MethodName_StateUnderTest_ExpectedBehavior

Example:
```cs
[TestMethod]
public void Add_TwoPositiveNumbers_ReturnsPositiveSum()
{
    // Arrange ...
    // Act
    int result = calc.Add(a, b);
    // Assert
}
```

### Arrange-Act-Assert Pattern
Reflect the three phases of a unit test: Arrange, Act and Assert
Example:
```cs
[TestMethod]
public void CalculateTotalPrice_WithValidItems_ReturnsCorrectTotal()
{
    // Arrange
    var cart = new ShoppingCart();
    cart.AddItem(new Item { Price = 10 });
    cart.AddItem(new Item { Price = 20 });

    // Act
    int total = cart.CalculateTotalPrice();
    
    // Assert
    Assert.AreEqual(30, total);
}
```

### Behavior-Driven Development (BDD) style

Format: GivenState_WhenAction_ThenExpectedResult
Example:
```cs
[TestMethod]
public void GivenValidItems_WhenCalculateTotalPrice_ThenReturnsCorrectTotal()
{
    // Arrange
    var cart = new ShoppingCart();
    cart.AddItem(new Item { Price = 10 });
    cart.AddItem(new Item { Price = 20 });

    // Act
    int total = cart.CalculateTotalPrice();
    
    // Assert
    Assert.AreEqual(30, total);
}
```

### 
Alternatives:
* MethodName_WhenX_ReturnsY
* MethodName_X_ShouldY
* MethodName_X_ShouldBeY
* MethodName_X_ThenY

Format when testing exceptions:
* MethodName_OnException_ThrowsParticularException