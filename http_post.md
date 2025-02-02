---
title: http - post
---

## Headers. Content-Type

### application/x-www-urlencoded
* **Form Data Submission**: This is typically used when submitting form data from a web page. Each key-value pair is URL-encoded and concatenated with `&`.
* **Simple Data**: suitable fo rsimple, flat data structures

Example:

> name=John&age=30&city=New+York

Usage in C# code:
```
var formData = new FormUrlEncodedContent(new[]{
    new KeyValuePair<string, string>("name", "John"),
    new KeyValuePair<string, string>("age", "30"),
    new KeyValuePair<string, string>("city", "New York")
});

var httpRequest = new HttpRequestMessage(HttpMethod.Post, "https://example.com/api")
{
    Content = formData
};
```

### application/json
* **Complex Data Structures**: Ideal for sending complex, nested data structures.
* **API Communication**: Commonly used in RESTful APIs for both requests and responses.
* **Readability**: JSON is more human-readable and easier to debug.

Usage in C# code:
```
var jsonData = JsonConvert.SerializeObject(new
{
    name = "John",
    age = 30,
    city = "New York"
});

var httpRequest = new HttpRequestMessage(HttpMethod.Post, "https://example.com/api")
{
    Content = new StringContent(jsonData, Encoding.UTF8, "application/json")
}
```

## Headers. Authorization