# Best Practices for Organizing Classes

1. **Namespace Declarations**: Start with the namespace declaration.
2. Using directives: place using directives at the top of the file
3. Class declaration: Declare the class, including any attributes or documentation comments
4. Constants and Fields: Place constants and fields (variables) at the top fo the class
5. Properties: follow fields with properties
5. Constructors: Place constructors after properties
7. Methods: Place methods after constructors
8. Nested Types: If there are any nested types (e.g., enums, structs or classes, place them at the bottom)

```cs
using System;
using System.Collections.Generic;

namespace MyApp
{
    /// <summary>
    /// Represents a customer in the system.
    /// </summary>
    public class Customer
    {
        // Constants
        private const int DefaultAge = 18;

        // Fields
        private string _name;
        private int _age;

        // Properties
        public string Name
        {
            get { return _name; }
            set { _name = value; }
        }

        public string Age
        {
            get { return _age; }
            set { _age = value; }
        }

        // Constructors
        public Customer(string name)
        {
            _name = name;
            _age = DefaultAge;
        }

        public Customer(string name, int age)
        {
            _name = name;
            _age = age;
        }

        // Methods
        public void DisplayCustomerInfo()
        {
            // Console...
        }

        // Nested Types
        public enum CustomerType
        {
            Regular,
            Premium,
            VIP
        }
    }
}
```