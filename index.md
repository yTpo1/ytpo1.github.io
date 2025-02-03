---
title: Tech notes
---

## Programming
Scripting:
* [bash scripting](./bash_scripting.md)
* [Powershell scripting](./powershell_scripting.md)
* [zsh scripting](./zsh_scripting.md)

Web:
* [HTML](./html.md)
* [CSS](./css.md)
* [JavaScript](./javascript.md)

Data:
* [Serialization and Deserialization](./serialization_deserialization.md)

### Clean Code
* [Coding principles](./coding_principles.md)
    * [DRY](http://wiki.c2.com/?DontRepeatYourself)
    * KISS
    * [Single Responsibility Principle (SRP)](./single_responsibility_principle.md)
    * Open Closed Principle (OCP)

Code:
* [Classes](./cc_classes.md)

### Design patterns
Creational:
* Singleton
* Factory
* Builder

Structural:
* Adapter
* Facade

Behavioral:
* Strategy

### C#
* Working with JSON (files) 

WebApps:
* Dependency Injection
* Logging & Audit
* (Security) Authentication, authorization, claims
* [Configuration](./cs_web_configuration.md)
* routing

Unit testing:
* [Naming conventions](./cs_unittest_naming.md)
* Fluent Assertions
* [Mocking](./cs_mocking.md)

### JavaScript
* [Javascript](./javascript.md)
* [TypeScript]()
* [Node.js](./nodejs.md)
    * [npm, npx](./npm_npx.md)
* React
    * Next.js
* ESLint

## IDEs, code editors, etc
* Visual Studio
* [VS Code](./ide_vscode.md)
* [vim](./ide_vim.md)

## Computer Networking

Application Layer Protocols:
* [HTTP protocol](./http.md)
    * Methods
        * [POST](./http_post.md)
    * Headers
        * Bearer
    * Status Codes
    * HTTPS
* [SSH Protocol](./ssh_protocol.md)
* [DNS](./dns.md)
* FTP
* SMTP, IMAP, POP
* BitTorrent
* IRC

Transport Layer Protocols:
* TCP
* UDP

Internet layer:
* IP (v4, v6)

Other:
* [Stream](./stream.md)
* [Sockets](./sockets.md)
    * [Socket Exhaustion](./socket_exhaustion.md)
* Ports
* Firewall
* Client - Server (architecture?)
* Certificates, hosting
* ['hosts' file](./hosts_file.md)
* proxy

#### Web servers

A web server serves HTML web pages and other files via HTTP to clients like web browsers. The major web servers can be interfaced with programs to serve dynamic content (web applications). [[1]](https://wiki.archlinux.org/title/List_of_applications/Internet#Web_servers)

* nginx
* [apache](./web_server_apache.md)
* [IIS](./iis.md)
    * .net 8 deployment example
    * Programmability. Scripting. Powershell scripts to create a IIS websites, services, binding, shut them down

Other:
* Reverse proxy
* Load Balancing

## Databases
* MariaDb (MySql)
    * [Installation](./mariadb_install.md)
* [Sqlite](./sqlite.md)
* [MS SQL Server](./ms_sql_server.md)

## Command line tools
* [Basic shell commands](shell_commands.md)
* git
    * basics
    * [next steps](./git_next.md)
* [tmux](./tmux.md)
* [sed](./sed.md)
* awk
* grep
* chmod 744
* [pandoc](./pandoc.md)
* pass
* rsync

## Linux System
* [Tiling window manager. "i3"](./i3.md)
* [Program launchers. "rofi", "morc_menu"](./rofi.md)
* [systemd systemctl](./linux_systemd.md)

Terminal, shell:
* [ST terminal](./st.md)
* [zsh shell](./zsh.md)

## Windows System

* Event Viewer
* Remote Desktop Connection
* [Manage certificates. certmgr](./windows_certmgr.md)
* [MS SQL Server](./ms_sql_server.md)
* IIS
* Windows Powershell ISE
* to do...

## Security. Encryption. Decryption
* [SSH Protocol](./ssh_protocol.md)
* SSH Keys
    * [SSH agent](./ssh_agent.md)
* OpenSSH