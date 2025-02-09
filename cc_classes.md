# Classes

* [Class organization in C#](./cc_class_organisation_csharp.md)

* [Naming](./cc_naming.md###Class-Names)

* Encapsulation
    * Keep variables and utility functions private. Use protected sometimes, for example to be able to unit-test it.

* Classes should be small.
    * We measure classes by counting responsibilities
    * Naming is probably the first way of helping determine class size. If we cannot derive a concise name for a class, then it’s likely too large. The more ambiguous the class name, the more likely it has too many responsibilities. For example, class names including weasel words like Processor or Manager or Super often hint at unfortunate aggregation of responsibilities.
    * We should also be able to write a brief description of the class in about 25 words, without using the words “if,” “and,” “or,” or “but.”
    * The Single Responsibility Principle (SRP) states that a class or module should have one, and only one, reason to change. This principle gives us both a definition of responsibility, and a guidelines for class size. Classes should have one responsibility—one reason to change.
    * Trying to identify responsibilities (reasons to change) often helps us recognize and create better abstractions in our code

* Cohesion
    * Strive to write classes with few instance variables and watch out for variables that are used by few methods.
    * When classes lose cohesion, split them!

* Organizing for change
    * In a clean system we organize our classes so as to reduce the risk of change.
    * Open-Closed Principle (OCP): Classes should be open for extension but closed for modification.
    * Dependency Inversion Principle (DIP): our classes should depend upon abstractions, not on concrete details.
        * Use `Dependency Injection`, depend on Interfaces and Abstractions rather than concrete implementations.
        * Decoupling.
        * Dependencies upon concrete details create challenges for testing our system.

Best practices:
* Third party APIs.
wrapping third-party APIs is a best practice. When you wrap a third-party API, you minimize your dependencies upon it: You can choose to move to a different library in the future without much penalty. Wrapping also makes it easier to mock out third-party calls when you are testing your own code.

One final advantage of wrapping is that you aren’t tied to a particular vendor’s API design choices. You can define an API that you feel comfortable with. In the preceding example, we defined a single exception type for port device failure and found that we could write much cleaner code.

Bibliography:
* Robert Martin - Clean Code - A Handbook of Agile Software Craftsmanship - 2008.