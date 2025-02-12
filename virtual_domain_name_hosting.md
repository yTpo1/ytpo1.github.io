# Virtual Hosting (virtual domain name hosting)

When a hostname is provided, multiple websites can be hosted on the same server through a process known as virtual hosting. This allows a single server to serve different websites, enabling efficient resource use and cost savings. Here’s how it works:

#### Key Concepts of Virtual Hosting
1. **IP Address vs. Hostname:**
    * Each website can be accessed through its unique hostname (e.g., www.example.com, www.anotherexample.com), but they can share the same IP address. This is made possible by the Domain Name System (DNS), which translates hostnames into IP addresses.
2. **Types of Virtual Hosting:**
    * **Name-Based Virtual Hosting:**
        * The server uses the hostname in the HTTP request to determine which website to serve. This is the most common method and allows multiple hostnames to resolve to the same IP address.
    * **IP-Based Virtual Hosting:**
        * Each website is assigned a unique IP address. This method is less common due to the scarcity of available IPv4 addresses but is still used in certain scenarios.
3. **Web Server Configuration:**
    * Web servers (like Apache, Nginx, etc.) are configured to recognize different hostnames and serve the corresponding website content. This is done through configuration files that map hostnames to specific directories or files on the server.

#### Example Scenario
Imagine a server with the IP address 192.168.1.1. You can host multiple websites like this:
* www.example.com → Directory: /var/www/example
* www.anotherexample.com → Directory: /var/www/anotherexample

When a user enters www.example.com in their browser, the request is sent to 192.168.1.1, and the web server checks the hostname. It then serves the content from /var/www/example.

# Source
Poe the AI