# Creating a HTTP message in C#

This assumes that the HttpClient is set up

`GET` method request:
```cs
var httpRequest = new HttpRequestMessage(HttpMethod.Get, uri);

# Attach a header
httpRequest.Headers.Add("Authorization", $"Bearer {accessToken}");

HttpResponseMessage response = await _httpClient.SendAsync(httpRequest);
```

Assuming the uri is `https://api.example.com/users` and accessToken is `your-access-token` the HTTP message will look like this:
```
GET /users HTTP/1.1
Host: api.example.com
Authorization: Bearer your-access-token
```

`POST` method request:
```cs
var httpRequest = new HttpRequestMessage(HttpMethod.Post, uri);

# Attach a header
httpRequest.Headers.Add("Authorization", $"Bearer {accessToken}");

# Create the body content
var contentBody = await JsonConvert.SerializeObjectAsync(new { Username = "foo" });
var httpRequestContent = new StringContent(contentBody, Encoding.UTF8, "application/json");

# Attach the content to the body of the HTTP message
httpRequest.Content = httpRequestContent;

HttpResponseMessage response = await _httpClient.SendAsync(httpRequest);
```

Assuming the uri is `https://api.example.com/users` and accessToken is `your-access-token` the HTTP message will look like this:
```
POST /users HTTP/1.1
Host: api.example.com
Authorization: Bearer your-access-token
Content-Type: application/json; charset=utf-8
Content-Length: 20

{
    "Username": "foo"
}
```
`Content-Length`: specifies the length of the request body in bytes