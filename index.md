---
title: Tech notes
---

## Programming and CS Concepts

Data:
* [Data Structures](./data_structures.md)
* [Algorithms](./algorithms.md)
* [Character Encoding](./character_encoding.md)
* [Date Standards. ISO 8601, UTC](./date_standads.md)
* [Serialization and Deserialization](./serialization_deserialization.md)

* Abstraction.
    * Levels of abstraction
    * Abstracting complexity behind simple interfaces.

### Clean Code
* [Naming](./cc_naming.md)
* [Functions](./cc_functions.md)
* ch 6. Objects and Data structures
* [ch 7. Exceptions](./cc_exceptions.md)
* ch 9. Unit tests
* [ch 10. Classes](./cc_classes.md)
* General
    * G25: Replace magic numbers with named constants
    * broken windows: They used the metaphor of broken windows.3 A building with broken windows looks like nobody cares about it. So other people stop caring. They allow more windows to become broken. Eventually they actively break them. They despoil the facade with graffiti and allow garbage to collect. One broken window starts the process toward decay.
    * The Boy Scout Rule: Leave the campground cleaner than you found it.
        * If we all checked-in our code a little cleaner than when we checked it out, the code simply could not rot. The cleanup doesn’t have to be something big. Change one variable name for the better, break up one function that’s a little too large, eliminate one small bit of duplication, clean up one composite if statement.
    * G23: Prefer Polymorphism to If/Else or Switch/Case


* https://gist.github.com/cedrickchee/55ecfbaac643bf0c24da6874bf4feb08
* https://gist.github.com/wojteklu/73c6914cc446146b8b533c0988cf8d29
* [Coding principles](./coding_principles.md)
    * [DRY](http://wiki.c2.com/?DontRepeatYourself)
    * KISS
    * [Single Responsibility Principle (SRP)](./single_responsibility_principle.md)
    * Open Closed Principle (OCP)

Takes time but saves more than it takes

### Architecture
* [Clean Architecture](./arch_clean_architecture.md)
    * [Onion Architecture](./arch_onion_architecture.md)

Web:
* REST
* Microservices

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

## C# Language and the .NET Framework

Prerequisites:
* [C# Language](./cs_language.md)
* [.NET Framework](./dotnet_framework.md)
    * [.NET Runtime](./dotnet_runtime.md)
    * [ASP.NET](./cs_aspdotnet.md)
* [.NET SDK](./dotnet_sdk.md)
* [Relationship Between C# and .NET](./cs_relationship_cs_dotnet.md)

C# Language Features:
* Classes
    * Polymorphism
    * Generics
    * Clean code: [Class organization in C#](./cc_class_organisation_csharp.md)
        * https://www.webdevtutor.net/blog/c-sharp-class-structure-best-practices
* [Automatically implemented properties](./cs_auto_implemented_properties.md)
* Exceptions

C# Language and the .NET Framework:
* [Attributes](./cs_attributes.md)

Types and Collections:
* Value Types
    * enum
    * struct
    * tuple
* Reference types
    * array
    * string
    * class
    * interface
    * [Collections](./cs_collections.md)
        * IEnumerable
        * List
        * Dictionary
        * HashSet
        * NameValueCollection
        * Queue
        * Stack
* [Dates and time: Datetime](./cs_dates_and_time.md)


Data:
* [LINQ](./cs_linq.md)
* [Working with JSON. Serialization and Deserialization](./cs_json.md)
* Entity Framework

Unit testing:
* xUnit
* [Naming conventions](./cs_unittest_naming.md)
* Fluent Assertions
* AutoFixture
* [Mocking](./cs_mocking.md)

Networking:
* [URIs, URLs...](./cs_uris.md)
* HttpClient
    * [HTTP request message](./cs_httpclient_http_message.md)

Security: https://learn.microsoft.com/en-us/dotnet/standard/security/
* https://learn.microsoft.com/en-us/dotnet/standard/security/cryptography-model

### Web Apps and ASP.NET

**WebApplicationBuilder - minimal hosting model introduced with .NET 6**
The `WebApplicationBuilder` class provides a streamlined way to configure and build a web application. It combines the functionality of the traditional `Startup` class and `Program` class into a single, cohesive setup.

```cs
var builder = WebApplication.CreateBuilder(args); // This line initializes a new `WebApplicationBuilder` instance, which sets up the application's configuration, logging, and services.
```

Key Responsibilities / Step-by-Step Explanation:
1. **Configuration**: Sets up configuration sources (e.g., appsettings.json, environment variables)
2. **Logging**: Configures logging providers and settings
3. **Dependency Injection (DI)**: Registers services with the DI container
    * Register Services
        * Services are registered with the DI container using `builder.Services.AddScoped`, `builder.Services.AddTransient` and `builder.Services.AddSingleton`
    * Add HTTP Clients
        * HTTP clients are registered using `builder.Services.AddHttpClient`
    * Add Controllers and Swagger
        * Controllers and Swagger/OpenAPI are configured using `builder.Services.AddControllers` and `builder.Services.AddSwaggerGen`
    * Configure Authentication and Authorization
        * JWT authentication and authorization policies are configured using the `builder.Services.AddAuthentication` and `builder.Services.AddAuthorization`
4. **Builds the Application**:
    * `var app = builder.Build();`: This line builds the `WebApplication` instance, which is used to configure the middleware pipeline and run the application
4. **[Middleware Pipeline](./aspdotnet_middleware_pipeline.md)**: Configures the middleware pipeline for handling HTTP requests
    * Middleware components such as Serilog request logging, `CORS`, authentication, and authorization are added to the pipeline.
    * **Authentication, and Authorization**: [app.UseAuthentication()](./aspdotnet_appuseauthentication.md) and [app.UseAuthorization()](./aspdotnet_appuseauthorization.md) are middleware components that are used to handle authentication and authorization in the request processing pipeline. These middleware components are essential for securing your application by ensuring that only authenticated and authorized users can access certain resources.
    * **Routing**: Routing middleware is responsible for mapping incoming HTTP requests to the appropriate endpoint (controller action, etc) based on teh URL and HTTP method.
        * `app.MapControllers()`: Maps attribute-routed controllers. This method is used to map controller actions that have route attributes defined on them.
5. **Runs the Application**: 
    * `app.Run()`: This line starts the web application and begins listening for incoming HTTP requests.

* Dependency Injection
* Logging & Audit
* (Security) Authentication, authorization, claims
* [Configuration](./cs_web_configuration.md)
* routing

### JavaScript
* [Javascript](./javascript.md)
* TypeScript
* [Node.js](./nodejs.md)
    * [npm, npx](./npm_npx.md)
* React
    * Next.js
* ESLint

### Web
* [HTML](./html.md)
* [CSS](./css.md)

## IDEs, code editors, etc
* Visual Studio
    * [Hotkeys](./ide_vs_hotkeys.md)
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
* [Internet Protocol (IP)](./protocol_ip.md)

Routing and hosting:
* [IP Address](./ip_address.md)
* [Ports](./networking_ports.md)
* [Virtual Hosting](./virtual_domain_name_hosting.md)
* ['hosts' file](./hosts_file.md)

Other:
* [Stream](./stream.md)
* [Sockets](./sockets.md)
    * [Socket Exhaustion](./socket_exhaustion.md)
* Firewall
* Client - Server (architecture?)
* Certificates
    * Public key certificate (also known as a digital certificate or identity certificate)
        * [TLS/SSL server certificate (SSL/TLS)](./certificate_ssl_tls.md)
    * certificate authority (CA)
* hosting
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

Other:
* [SQL language](./sql_language.md)

## Command line tools
* [Basic shell commands](shell_commands.md)
* git
    * basics
    * [next steps](./git_next.md)

* chmod 744
* [pandoc](./pandoc.md)
* pass
* rsync
* scp

Searching files, directories:
* [sed](./sed.md)
* awk
* [grep](./grep.md)
* find

## Linux Desktop
* [Tiling window manager. "i3"](./i3.md)
* Status bar "i3blocks"
* [Program launchers. "rofi", "morc_menu"](./rofi.md)

## Linux System
* [System Information commands](./linux_system_information_commands.md)
* [systemd systemctl](./linux_systemd.md)
* [Environment Variables. Linux](./environment_variables.md##linux)
* [Firewall configuration and management](./linux_firewall.md)
* Package Managers
    * pacman
* [Current locale and language settings](./linux_locale_and_language.md)
* [Location of the executable files](./linux_location_of_executable_files.md)

shell, terminal, terminal multiplexer:
* bash shell
* [zsh shell](./zsh.md)
* [ST terminal](./st.md)
* find a normal terminal, for example Alacritty
* [tmux](./tmux.md)

### Scripting
* [bash scripting](./bash_scripting.md)
* [zsh scripting](./zsh_scripting.md)

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
    * Initial system install script
* linux subsystem installation
* docker installation
* [Environment Variables. Windows](./environment_variables.md##windows)
* to do...

### Scripting
* [Powershell scripting](./powershell_scripting.md)

## Security. Encryption. Decryption
* [SSH Protocol](./ssh_protocol.md)
* SSH Keys
    * [SSH agent](./ssh_agent.md)
* OpenSSH
* GPG

## Other
* [markdown](./markdown.md)
* [Software developers library](./library.md)

## Glossary
* [stub](./stub.md)
