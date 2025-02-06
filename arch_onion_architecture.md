# Onion Architecture

Onion Architecture is a software architectural patterns that emphasizes the **separation of concerns** and **dependency inversion**. 

**Layers of Onion Architecture**
1. **Core (Domain) Layer**: Contains the business logic and domain entities. This layer is independent of any other layers and does not depend on external libraries or frameworks.
2. **Application Layer**: Contains application-specific logic, such as use cases and services. This layer coordinates the flow of data between the domain and outer layers.
3. **Infrastructure Layer**: Contains implementations for external concerns, such as data access, messaging, and other services. This layer depends on the application and domain layers.
4. **Presentation Layer**: Contains the user interface and API controllers. This layer depends on teh application layer and interacts with the user or external systems.


**Concepts related to each Layer**
1. Core (Domain) Layer
    * [Domain-Driven Design (DDD)](./arch_ddd.md)
    * [What is the relationship between DDD and "Onion Architecture"?](./arch_ddd_vs_onion.md)
    * -----------------
    * Interfaces
    * [Entities](./arch_entities.md): Objects with a unique identity, state and behavior
    * Value Objects
    * Aggregates
2. Application Layer
    * Services
3. Infrastructure Layer
    * Repositories
    * Data Source
4. Presentation Layer
    * Controller


* https://jeffreypalermo.com/2008/07/the-onion-architecture-part-1/