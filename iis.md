# IIS (Internet Information Services)

## Sites
**Scope**: Sites define the entry points and structure of web applications.

Each site is identified by a unique combination of a binding (IP address, port and optionally a host header).

**Configuration**: Configured with settings related to how the site is accessed and served.

## Application Pools
**Scope**: Provide isolated execution environments for web applications.

**Configuration**: Configured with settings related to the execution environment and resource management.

Application pools in Internet Information Services (IIS) are a fundamental feature that provide a way to isolate web applications for better security, reliability, and availability. Each application pool runs its own set of worker processes (w3wp.exe), which means that applications in different pools do not affect each other.

**A worker process**: in the context of IIS is an instance of w3wp.exe executable that handles web requests for a specific application pool. Worker processes are responsible for processing incoming HTTP requests, executing web applications, and returning responses to clients. Each application pool in IIS run its own set of worker processes, proving isolation and improving the reliability and security of web applications

**w3wp.exe**: stands for "World WIde Web Worker Process" and is the executable file for the worker process in IIS. It is responsible for handling web requests and executing web application hosted on IIS.

### Configuration parameters

* **Identity**: (Access to files and folders)

By default, IIS runs under the application pool identity called `ApplicationPoolIdentity`. This is a built-in, least-privileged account that is unique to each application pool. It provides a more secure and isolated environment for web applications.

When an application pool is created, it is assigned the `ApplicationPoolIdentity` by default. This identity has limited permissions, which helps to minimize the potential impact of security vulnerabilities.

**Ensuring access to folders**
To Ensure that IIS has access to a folder, you should grant permissions to the `IIS_IUSRS` group. This group includes the application pool identities that IIS uses to run web applications. By granting the necessary permission to this group, you ensure that IIS can read from and write to the folder as needed.

Programmatically change group permissions on a folder, using powershell:
```powershell
# Define variables
$folderPath = "C:\folder1\folder2"
$group = "IIS_IUSRS"

# Get the folder's ACL (Access Control List)
$acl = = Get-Acl $folderPath

# Define the permission rule
$permissions = [System.Security.AccessControl.FileSystemRIghts]::Read, `
                [System.Security.AccessControl.FileSystemRIghts]::ReadAndExecute `
                [System.Security.AccessControl.FileSystemRIghts]::ListDirectory

# Sets the inheritance and propagation flags to ensure the permissions apply to the folder and its contents
$inheritanceFlags = [System.Security.AccessControl.InheritanceFlags]::ContainerInherit, `
                    [System.Security.AccessControl.InheritanceFlags]::ObjectInherit

$propagationFlags = [System.Security.AccessControl.PropagationFlags]::None

$accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($group, $permissions, $inheritanceFlags, $propagationFlags, "Allow")

# Add the permission rule to the ACL
$acl.SetAccessRule($accessRule)

# Apply the updated ACL to the folder
Set-Acl $folderPath $acl

Write-Output "Permissions for the group '$group' have been set on the folder '$folderPath'."
```

* **.NET CRL Version**: No Managed Code setting

The `No Managed Code` setting in IIS refers to an application pool configuration where the application pool does not load the .NET runtime. This setting is used for applications that do not require the .NET runtime, such as static websites or application written in other programming languages like PHP or classic ASP or .NET core.

When you set the application pool to `No Managed Code` IIS will not attempt to load the .NET runtime, which can improve performance and reduce resource usage for the non-.NET applications.

ASP.NET Core runs in a separate process and manages the runtime. ASP.NET Core doesn't rely on loading the desktop CLR (.NET CLR). The Core Common Language Runtime (CoreCLR) for .NET Core is booted to host the app in the worker process. Setting the .NET CLR version to `No Managed Code` is optional but recommended. [src](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/iis/?view=aspnetcore-3.1)

https://stackoverflow.com/questions/40862032/iis-application-pools-clr-v4-0-vs-no-managed-code


## Execution environment for .NET applications
When hosting a .NET 8 application in IIS, you need to install the .NET 8 Hosting Bundle to ensure that your IIS server can properly run and manage .NET applications. The .NET Hosting Bundle includes several important components:
* [.NET Runtime](./dotnet_runtime.md): THe runtime is necessary to execute the .NET applications. It includes the .NET libraries and the Common Language Runtime (CLR) that your application depends on.
hosting bundle .net core 8
* **ASP.NET Core Module (ANCM)**: This module allows IIS to work as a reverse proxy server, forwarding requests to your .NET application running in the Kestrel web server. It ensures that IIS can manage the application lifecycle, including starting and stopping the application.



