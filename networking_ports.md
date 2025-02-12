# Port

A port is a numerical identifier in networking used to specify a particular process or service on a device. It allows multiple services or applications to run on the same IP address by directing incoming data to the appropriate application based on the port number. Here’s a detailed explanation:

#### Key Characteristics of Ports
1. **Numerical Identifier:**
    * Ports are represented by numbers ranging from 0 to 65535. They are categorized into three main ranges:
        * **Well-Known Ports (0-1023):** Reserved for commonly used protocols, e.g.:
            * HTTP on port 80
            * HTTPS on port 443
            * FTP on port 21
            * SSH on port 22
    * **Registered Ports (1024-49151):** Used by software applications that are not as common as those using well-known ports but still need to be recognized (e.g., Microsoft SQL Server uses port 1433).
    * **Dynamic/Private Ports (49152-65535):** Typically used for dynamic assignment by applications, especially for client-side communication.
2. **Role in Networking:**
    * Ports act as communication endpoints for each service running on a networked device. When data packets arrive at a device's IP address, the port number helps determine which application or service should handle the data.
3. **TCP and UDP:**
    * Ports can be associated with either the Transmission Control Protocol (TCP) or the User Datagram Protocol (UDP).
        * TCP Ports: Used for connection-oriented communication, ensuring reliable data transmission.
        * UDP Ports: Used for connectionless communication, suitable for applications where speed is more critical than reliability (e.g., streaming).

#### Example of Port Usage
* **Web Server:** When you access a website, your browser typically communicates with a web server on port 80 (HTTP) or port 443 (HTTPS). The server listens on these ports for incoming requests and responds accordingly.
* **Email Server:** An email client might connect to a mail server on port 25 (SMTP) for sending emails or port 143 (IMAP) for retrieving emails.

#### Summary
A port is a crucial component in networking, enabling multiple applications to communicate over the same IP address by directing traffic to the appropriate service based on the port number. Understanding ports is essential for network configuration, security, and troubleshooting.

#### Well-known Ports
https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers

* 7 - Echo Protocol
* 20 - File Transfer Protocol (FTP) data transfer
* 21 - File Transfer Protocol (FTP) control (command)
* 22 - Secure Shell (SSH), secure logins, file transfers (scp, sftp) and port forwarding
* 25 - Simple Mail Transfer Protocol (SMTP), used for email routing between mail servers
* 80 - Hypertext Transfer Protocol (HTTP) uses TCP in versions 1.x and 2. HTTP/3 uses QUIC, a transport protocol on top of UDP.
* 109 - Post Office Protocol, version 2 (POP2)
* 110 - Post Office Protocol, version 3 (POP3)
* 143 - Internet Message Access Protocol (IMAP), management of electronic mail messages on a server
* 220 - Internet Message Access Protocol (IMAP), version 3
* 443 - Hypertext Transfer Protocol Secure (HTTPS) uses TCP in versions 1.x and 2. HTTP/3 uses QUIC, a transport protocol on top of UDP. 

# Source
Poe the AI