# DNS (Domain Name System)

DNS (Domain Name System) is a hierarchical and decentralized naming system used to translate human-readable domain names (like www.example.com) into IP addresses (like 192.0.2.1) that computers use to identify each other on the network. DNS is essential for the functioning of the internet, as it allows users to access websites and other resources using easy-to-=remember domain names instead of numerical IP addresses.

Key Components of DNS:
1. **Domain Names**: Human-readable addresses (e.g., www.example.com) that are easier to remember than IP addresses
2. **IP Addresses**: Numerical addresses (e.g., 192.0.2.1) used by computers to identify and communicate with each other on the network
3. **DNS Servers**: Specialized servers that store DNS records and respond to DNS queries. There are several types of DNS servers:
    * **Root Name Servers**: The top-level DNS servers that direct queries to the appropriate top-level domain (TLD) servers
    * **TLD Name Servers**: Servers responsible for top-level domains (e.g., .com, .org) that direct queries to the appropriate authoritative name servers
    * **Authoritative Name Servers**: Servers that contain the actual DNS records for specific domains
    * **Recursive Resolvers**: Servers that handle DNS queries from clients, recursively querying other DNS servers to resolve the domain name
4. **DNS Records**: Entries in the DNS database that provide information about domain names and their corresponding IP Addresses.
    * **A Record**: Maps a domain name to an IPv4 address
    * **AAAA Record**: Maps a domain name to an IPv6 address
    * **CNAME Record**: Maps a domain name to another domain name (alias)
    * **MX Record**: Specifies the mail servers for a domain
    * **TXT Record**: Stores arbitrary text data, often used for verification and security purposes

### How DNS Works
1. **DNS Query**: When a user enters a domain name in their web browser, a DNS query is initiated to resolve the domain name to an IP address
2. **Recursive Resolution**: The query is sent to a recursive resolver, which checks its cache for the requested domain name. If the records is not cached, the resolver queries the root name servers
3. **Root and TLD Servers**: The root name servers direct the query to the appropriate TLD name servers, which in turn direct the query to the authoritative name servers for the domain
4. **Authoritative Response**: The authoritative name servers provide the IP address for the requested domain name
5. **Caching**: The recursive resolver caches the DNS record to speed up the future queries for the same domain.
6. **Response to Client**: The IP address is returned to the user's device, allowing the web browser to establish a connection to the web server and load the website

https://en.wikipedia.org/wiki/Domain_Name_System