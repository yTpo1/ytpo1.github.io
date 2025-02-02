# Stream

In the context of programming, a stream is an abstraction that represents a sequence of data elements made available over time. Streams are used to read from or write to data sources such as files, network connections, or memory buffers. They provide a way to handle input and output operations in a consistent and efficient manner.

1. **Types of Streams**
    * **Input Streams**: Used to read data from a source. For example, reading data from a file or receiving data over a network connection.
    * **Output Streams**: Used to write data to a destination. For example, writing data to a file or sending data over a network connection.
2. **Stream Operations**:
    * **Reading**: Extracting data from an input stream
    * **Writing**: Sending data to an output stream
    * **Seeking**: Moving to a specific position within a stream (supported by some streams)
3. **Stream Classes in .NET**:
    * **FileStream**: Used for reading from and writing to files
    * **MemoryStream**: Used for reading from and writing to [memory buffers]()
    * **NetworkStream**: Used for reading from and writing to network connections
    * **BufferedStream**: Provides a buffering layer for another stream to improve the read and write performance
    * **StreamReader** and **StreamWriter**: Used for reading and writing text data


#

Input and output streams. Files, http requests, internet, databases