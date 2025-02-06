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

(Concepts?)

Data:
* [Serialization and Deserialization](./serialization_deserialization.md)

### Clean Code
* [Coding principles](./coding_principles.md)
    * [DRY](http://wiki.c2.com/?DontRepeatYourself)
    * KISS
    * [Single Responsibility Principle (SRP)](./single_responsibility_principle.md)
    * Open Closed Principle (OCP)


Best practices:
* Third party APIs.
wrapping third-party APIs is a best practice. When you wrap a third-party API, you minimize your dependencies upon it: You can choose to move to a different library in the future without much penalty. Wrapping also makes it easier to mock out third-party calls when you are testing your own code.

One final advantage of wrapping is that you aren’t tied to a particular vendor’s API design choices. You can define an API that you feel comfortable with. In the preceding example, we defined a single exception type for port device failure and found that we could write much cleaner code.

Code:
* ch 3. Functions
* ch 6. Objects and Data structures
* [ch 7. Exceptions](./cc_exceptions.md)
* ch 9. Unit tests
* [ch 10. Classes](./cc_classes.md)

* https://gist.github.com/cedrickchee/55ecfbaac643bf0c24da6874bf4feb08
* https://gist.github.com/wojteklu/73c6914cc446146b8b533c0988cf8d29

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
Prerequisites:
* [.NET SDK](./dotnet_sdk.md)
* [.NET Runtime](./dotnet_runtime.md)

Language features:
* [Automatically implemented properties](./cs_auto_implemented_properties.md)

Misc:
* [Working with JSON](./cs_json.md)
* [Serialization and Deserialization](./cs_serialization_deserialization.md)
* Clean code: [Class organization in C#](./cc_class_organisation_csharp.md)
    * https://www.webdevtutor.net/blog/c-sharp-class-structure-best-practices

WebApps:
* Dependency Injection
* Logging & Audit
* (Security) Authentication, authorization, claims
* [Configuration](./cs_web_configuration.md)
* routing
* HttpClient
    * [HTTP request message](./cs_httpclient_http_message.md)

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
    * Hotkeys
    * [Snippets](./ide_vs_snippets.md)
* [VS Code](./ide_vscode.md)
    * [Hotkeys](./ide_vscode.md##hotkeys)
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
    * [Authentication / Authorization - JWT Token](./http_auth_jwt.md)
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
    * [Firewall in Linux](./linux_firewall.md)
* Client - Server (architecture?)
* Certificates, hosting
* ['hosts' file](./hosts_file.md)
* proxy
* [JWT (JSON Web Token)](./jwt.md)

#### Web servers

A web server serves HTML web pages and other files via HTTP to clients like web browsers. The major web servers can be interfaced with programs to serve dynamic content (web applications). [[1]](https://wiki.archlinux.org/title/List_of_applications/Internet#Web_servers)

* nginx
* [apache](./web_server_apache.md)
* [IIS](./iis.md)
    * [Manual Management (using GUI)](./iis_manual_management.md)
    * [Programmatically managing IIS](./iis_scripting.md)
    * urlrewrite

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
* [grep](./grep.md)
* chmod 744
* [pandoc](./pandoc.md)
* pass
* rsync

## Linux System
* [Tiling window manager. "i3"](./i3.md)
* [Program launchers. "rofi", "morc_menu"](./rofi.md)
* [systemd systemctl](./linux_systemd.md)
* [Firewall](./linux_firewall.md)
* package manager
    * pacman

Terminal, shell:
* [ST terminal](./st.md)
* [zsh shell](./zsh.md)

## Windows System
* Event Viewer
* Remote Desktop Connection
* [Manage certificates. certmgr](./windows_certmgr.md)
* [MS SQL Server](./ms_sql_server.md)
    * installation
* [IIS](./iis.md)
    * installation
* Windows Powershell ISE
* Chocolatey (package manager for Windows)
* linux subsystem installation
* docker installation
* to do...

## Security. Encryption. Decryption
* [SSH Protocol](./ssh_protocol.md)
* SSH Keys
    * [SSH agent](./ssh_agent.md)
* OpenSSH

## Other
* [markdown](./markdown.md)
* [Software developers library](./library.md)

## Glossary
* [stub](./stub.md)
