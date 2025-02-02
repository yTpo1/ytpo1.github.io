# Sockets

In the context of computer networking, a socket is an endpoint for communication between two machines. It is a combination of an IP address and a port number, which together uniquely identify a network connection. Sockets are used to establish and manage connections for data exchange over a network.

Some Key points about sockets:
1. Types of Sockets:
    * **Stream Sockets (TCP)**: These provide a reliable, connection-oriented communication [channel](). Data is transmitted in a continuous [stream](./stream.md), and the connection is maintained until explicitly terminated. TCP (Transmission Control Protocol) is commonly used for stream sockets.
    * **Datagram Sockets (UDP)**: These provide a connectionless communication channel. Data is transmitted in discrete packets called datagrams, and there is no guarantee of delivery, order, or integrity. UDP (User Datagram Protocol) is commonly used for datagram sockets.
2. **Socket Programming**: Sockets are used in network programming to create client-server applications. A server socket listens for incoming connections, while a client socket initiates a connection to the server.
3. **Socket API**: Most programming languages provide a socket API to create and manage sockets. For example, in C#, you can use the System.Net.Sockets namespace to work with sockets.