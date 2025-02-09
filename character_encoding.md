# Character Encoding

Character encoding is a system that pairs each character in a character set with a specific numeric value (code pint) that can be used to represent the character in digital form. THis allows text to be stored, transmitted, and rendered consistently.

**Common Character Encodings**:
* **ASCII**: A code unit in ASCII consists of 7 bits; It represents 128 characters, including English letters, digits, and control characters. LImited to basic English text.
* **UTF-8**: A code unit in UTF-8, EBCDIC and GB 18030 consists of 8 bits; It is backward-compatible with ASCII and is the most widely used encoding on the web.

The most popular character encoding on the World Wide Web is UTF-8, which is used in 98.2% of surveyed web sites, as of May 2024. [src](https://en.wikipedia.org/wiki/Character_encoding)

**Specifying Character Encoding in HTML**
To ensure that your web pages are displayed correctly, you should specify the character encoding in your HTML documents.
```html
<html>
    <head>
        <meta charset="UTF-8">
    </head>
</html>
```

**Character Encoding in HTTP Headers**
The character encoding can also be specified in the HTTP headers sent by the server. This is done using the `Content-Type` header:
```
Content-Type: text/html; charset=UTF-8
```

**Handling character Encoding in .NET**
In .NET, you can specify the character encoding when reading or writing text files, handling HTTP responses, working with streams. For example, when writing a response in an ASP.NET Core application:
```cs
public IActionResult GetExample()
{
    var content = "Hello world!";
    return Content(content, "text/plain", Encoding.UTF8)
}
```

**Common Issues:**
* **Mojibake**: Garbled text that appears when text is decoded using the wrong character encoding.