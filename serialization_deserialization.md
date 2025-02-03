# Serialization and Deserialization

Use cases: 
* **Data storage**: Saving objects to files or databases.
* **Data transmission**: Sending objects over a network (e.g., APIs).
* **Caching**: Storing objects in memory for quick access.

### Serialization
Serialization is the process of converting an object or data structure into a format that can be easily stored or transmitted. Common formats include JSON, XML, and binary. The serialized data can then be saved to a file, sent over a network, or stored in a database.



Example in C# (JSON serialization):
```cs
using System.Text.Json;

var person = new Person { Name = "John", Age = 30 };
string jsonString = JsonSerializer.Serialize(person);
Console.WriteLine(jsonString); // Output: {"Name":"John","Age":30 }
```

### Deserialization
Deserialization is the reverse process of serialization. It involves converting the serialized data back into an object or data structure. This allows the data to be used in its original form after being transmitted or stored.

Example in C# (JSON deserialization):
```cs
using System.Text.Json;

string jsonString = "{\"Name\":\"John\",\"Age\":30 }";
var person = JsonSerializer.Deserialize<Person>(jsonString);
Console.WriteLine(person.Name); // Output: John
```