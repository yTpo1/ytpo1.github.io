# Attributes
Attributes are a feature of the C# language, but their implementation and support is provided by the .NET framework. This means that while the syntax and usage of attributes are defined by the C# language, the actual functionality and behaviour of attributes are provided by the .NET framework.

**C# Language**
* **Syntax**: The C# language defines the syntax for declaring and using attributes. THis includes how to apply attributes to various code elements (e.g., classes, methods, properties) using the brackets `[]`.

**.NET Framework**
* **Implementation**: The .NET framework provides the base `System.Attribute` class and various built-in attributes (e.g., ObsoleteAttribute, SerializableAttribute).
* **Reflection**: The .NET framework provides reflection APIs that allow you to inspect and retrieve attribute information at runtime.

Example:
```cs
using System;

[AttributeUsage(AttributeTargets.Class | AttributeTargets.Method)]
public class CustomAttribute: Attribute
{
    public string Description { get; }

    public CustomAttribute(string description)
    {
        Description = description;
    }
}

[Custom("This is a custom class attribute")]
public class MyClass
{
    [Custom("This is a custom method attribute")]
    public void MyMethod() { }
}
```