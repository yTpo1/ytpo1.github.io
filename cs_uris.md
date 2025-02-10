# C#. URIs, URLs...
Working with URLs and URIs in C# is straightforward thanks to `System.Uri` class, which provides a robust way to handle and manipulate URIs.

Creating a URI:
```cs
Uri uri = new Uri("https://www.example.com/path?query=123");
Console.WriteLine(uri.AbsoluteUri); // Output: https://www.example.com/path?query=123
```

Parsing a URI and accessing its components:
```cs
Uri uri = new Uri("https://www.example.com/path?query=123#fragment");
Console.WriteLine(uri.Scheme); // Output: https
Console.WriteLine(uri.Host); // Output: www.example.com
Console.WriteLine(uri.Port); // Output: 8080
Console.WriteLine(uri.AbsolutePath); // Output: /path
Console.WriteLine(uri.Query); // Output: ?query=123
Console.WriteLine(uri.Fragment); // Output: #fragment
```

Combining URIs: Combine a base URI with a relative URI
```cs
Uri baseUri = new Uri("https://www.example.com");
Uri relativeUri = new Uri("path/page.html", UriKind.Relative);
Uri combinedUri = new Uri(baseUri, relativeUri);

Console.WriteLine(combinedUri.AbsoluteUri); // Output: https://www.example.com/path/page.html
```

Modifying URIs: to do...  
Validating URIs: to do...  