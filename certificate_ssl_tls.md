# What is an SSL/TLS Certificate?
* **Definition:** An SSL (Secure Sockets Layer) or TLS (Transport Layer Security) certificate is a digital certificate that authenticates the identity of a website and enables an encrypted connection between the web server and the user's browser.
* **Purpose:** Certificates ensure that data transmitted between the user and the server is secure and that the website is genuine, helping to establish trust.

* When a website is hosted, the SSL/TLS certificate must be installed on the web server. This allows the server to establish secure connections using HTTPS.
* **Domain Validation:** To obtain a certificate, the domain owner must prove ownership of the domain. This is typically done through a validation process by the certificate authority (CA).

#### Types of Certificate Validation:
* **Domain Validated (DV):** Basic validation; verifies ownership of the domain.
* **Organization Validated (OV):** Includes verification of the organization behind the website.
* **Extended Validation (EV):** Provides the highest level of assurance, requiring extensive verification of the organization.

#### Connection to Routing
* **Secure Routing:** When a user enters a URL starting with https://, the browser requests a secure connection to the server. The server presents its SSL/TLS certificate during the connection process.
* **SSL Handshake:** This process involves the browser and server exchanging cryptographic keys to establish a secure session. The certificate is used to authenticate the server's identity, ensuring that the user is connecting to the intended website and not an imposter.
* **Trust Chain:** Certificates are issued by trusted certificate authorities (CAs). Browsers come preloaded with a list of trusted CAs. If the certificate is valid and signed by a trusted CA, the browser establishes a secure connection.

# Source
Poe the AI