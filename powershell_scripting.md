# Powershell scripting

Useful tools:
* Windows Powershell ISE
    * The Intellisense in the editor and the command windows gives you live property values on the commands an even live objects

## Loading Assemblies

To import the `Microsoft.Web.Administration` assembly directly in your PowerShell script, you can use the `[System.Reflection.Assembly]::LoadFrom` method. This method loads the specified assembly from a file path. The `Microsoft.Web.Administration` assembly is typicall located in the C:\Windows\System32\inetsrv directory.

The `Add-PSSnapin` cmdlet is used to add snap-ins to the current PowerSHell session. However, in newer versions of PowerSHell (starting with PowerShell 3.0), the use of snap-ins has been largely replaced by modules. The WebAdministration module should be imported using `Import-Module` instead of `Add-PSSnapin`.

## misc

`$PSVersionTable`: powershell version