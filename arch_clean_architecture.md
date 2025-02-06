# Clean Architecture

Clean Architecture, introduced by Robert C. Martin (Uncle Bob), is a software design philosophy that emphasizes the `separation of concerns` and the `independence of the business logic from external systems`. The goal is to create a system that is easy to maintain, test and extend over time.

![Clean Architecture](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg "Clean Architecture")

**Key Concepts**
1. **Separation of Concerns**: Clean Architecture divides the system into layers, each with a specific responsibility. This separation helps to manage complexity and makes the system easier to understand and maintain.
2. **Dependency Rule**: The core principle of Clean Architecture is that `dependencies should point inward`. Inner layers should not depend on outer layers. This ensures that `the core business logic is independent of external concerns` like databases, user interfaces, and frameworks.
3. **Layers**: Clean Architecture typically consists of the following layers:
    * **Entities**: Represent the core business objects and encapsulate business rules.
    * **Use Cases (or Interactors)**: Contain application-specific besiness rules and orchestrate the flow of data to and from the entities.
    * **Interface Adapters** Convert data from the format most convenient for the use cases and entities to the format most convenient for external systems (e.g., controllers, presenters, gateways).
    * **Frameworks and Drivers**: Contain the details of external systems such as databases, web frameworks, and user interfaces.
4. **Independence**: The architecture ensures that the core business logic is independent of:
    * **Frameworks**: The business logic does not depend on any specific framework, making it easier to switch frameworks if needed.
    * **UI**: The user interface can be changed without affecting the business logic.
    * **Database**: The database can be swapped out without affecting the business logic.
    * **External Agencies**: External systems and services can be replaced without affecting the business logic.


Practical example:
* [C#](./cs_clean_architecture.md)

Clean Architecture helps create a maintainable, testable, and scalable system by organizing code into well-defined layers and ensuring that the core business logic remains independent of external concerns. This approach promotes a clear separation of concerns and makes it easier to adapt to changing requirements and technologies.

**Extracts for the Uncle Bob article**
[src](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)

Objective: separation of concerns

Separation of concerns is achieved by: dividing the software into layers. At least one layer for business rules, and another for interfaces.

Result is a system that is:
1. **Independent of Frameworks**. The architecture does not depend on the existence of some library of feature laden software. This allows you to use such frameworks as tools, rather than having to cram your system into their limited constraints.
2. **Testable**. The business rules can be tested without the UI, Database, Web Server, or any other external element.
3. **Independent of UI**. The UI can change easily, without changing the rest of the system. A Web UI could be replaced with a console UI, for example, without changing the business rules.
4. **Independent of Database**. You can swap out Oracle or SQL Server, for Mongo, BigTable, CouchDB, or something else. Your business rules are not bound to the database.
5. **Independent of any external agency**. In fact your business rules simply don’t know anything at all about the outside world.

The Dependency Rule: Source code dependencies can only point inwards. Nothing in an inner circle can know anything at all about something in an outer circle. In particular, the name of something declared in an outer circle must not be mentioned by the code in the an inner circle. That includes, functions, classes. variables, or any other named software entity.

As you move inwards the level of abstraction increases. The outermost circle is low level concrete detail. As you move inwards the software grows more abstract, and encapsulates higher level policies. The inner most circle is the most general.

For example, many database frameworks return a convenient data format in response to a query. We might call this a RowStructure. We don’t want to pass that row structure inwards across a boundary. That would violate The Dependency Rule because it would force an inner circle to know something about an outer circle.

More concrete (detailed) versions of Clean Architecture:
* Hexagonal Architecture (a.k.a. Ports and Adapters)
* [Onion Architecture](./arch_onion_architecture.md)
* Screaming Architecture
* DCI
* BCE
