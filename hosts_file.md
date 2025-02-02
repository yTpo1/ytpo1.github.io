# 'hosts' file

The hosts file is a plain text file used by an operating system to map hostnames to IP addresses. It is a simple way to manually define the IP address associated with a particular domain name, bypassing the need for a DNS lookup. The hosts file is typically used for local network configurations, testing and development purposes.

Location:
* On Windows: C:\Windows\System32\drivers\etc\hosts
* On Linux: /etc/hosts

Format:
* Each line in the hosts file contains an IP address followed by one or more hostnames
* Lines starting with `#` are comments and are ignored by the system

Usage:
* The hosts file is consulted before DNS queries, so entries in the the hosts file take precedence over DNS
* It can be used to block access to certain websites by mapping their domain names to 127.0.0.1 (localhost)
* It is useful for testing and development by mapping domain names to local or test server IP addresses