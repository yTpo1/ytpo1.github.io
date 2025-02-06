# JSON in C#

Additional:
* [Working with JSON in C#](./cs_json.md)

### Serialization
```cs
using System.Text.Json;

var person = new Person { Name = "John", Age = 30 };
string jsonString = JsonSerializer.Serialize(person);
Console.WriteLine(jsonString); // Output: {"Name":"John","Age":30 }
```

### Deserialization
```cs
using System.Text.Json;

string jsonString = "{\"Name\":\"John\",\"Age\":30 }";
var person = JsonSerializer.Deserialize<Person>(jsonString);
Console.WriteLine(person.Name); // Output: John
```

## JsonProperty Attribute

The `[JsonProperty("name")]` attribute is part of the JSON library and is used to control the serialization and deserialization of JSON data in C#. This attribute is applied to a property in a class to specify how it should be mapped to a JSON property.

This attribute is particularly useful when the JSON property names do nto math the C# property names, or when you want to control the JSON output format.


## ASP.NET (targeting .NET Framework) and ASP.NET Core
JSON Libraries
1. ASP.NET (targeting .NET Framework)
    * **Newtonsoft.Json (JSON.NET)**: This is the most commonly used library for JSON serialization and deserialization in ASP.NET applications targeting the .NET Framework. It provides a rich set of features and is highly configurable.
2. ASP.NET Core
    * **System.Text.Json**: Starting with .NET Core 3.0, System.Text.Json is the default JSON library for ASP.NET Core. It is a high-performance, low-overhead library that is part of the .NET runtime.
    * **Newtonsoft.Json (JSON.NET)**: Can also be used if required


## Is the .ToString() method on a object serialization?
No, calling the .ToString method on an anonymous object like `new { bla = "asdf" }` does not perform serialization. Instead, it returns a string representation of the object's type and property values. This string representation is primarily intended for debugging purposes and is not a proper serialization format like JSON or XML.
