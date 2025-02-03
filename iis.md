# IIS

## Sites
To do...

## Application Pools

Application pools in Internet Information Services (IIS) are a fundamental feature that provide a way to isolate web applications for better security, reliability, and availability. Each application pool runs its own set of worker processes (w3wp.exe), which means that applications in different pools do not affect each other.

### No Managed Code setting

The "No Managed Code" setting in IIS refers to an application pool configuration where the application pool does not load the .NET runtime. This setting is used for applications that do not require the .NET runtime, such as static websites or application written in other programming languages like PHP or classic ASP or .NET core.

When you set the application pool to "No Managed Code" IIS will not attempt to load the .NET runtime, which can improve performance and reduce resource usage for the non-.NET applications.

ASP.NET Core runs in a separate process and manages the runtime. ASP.NET Core doesn't rely on loading the desktop CLR (.NET CLR). The Core Common Language Runtime (CoreCLR) for .NET Core is booted to host the app in the worker process. Setting the .NET CLR version to `No Managed Code` is optional but recommended. [src](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/iis/?view=aspnetcore-3.1)

https://stackoverflow.com/questions/40862032/iis-application-pools-clr-v4-0-vs-no-managed-code