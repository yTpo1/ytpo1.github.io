# Programmatically Managing IIS

Programmability. Scripting. Powershell scripts to create a IIS websites, services, binding, shut them down

Create app pool and website:
```powershell
# Define variables
$siteName = "WebsiteName"
$sitePath = "C:\Users\name\..."
$appPoolName = "WebAppPoolName"
$port = 8081

## ------------------------------------------------------------------
## Import the WebAdministration module
## ------------------------------------------------------------------

[System.Reflection.Assembly]::LoadFrom("C:\windows\system32\inetsrv\Microsoft.Web.Administration.dll")

Add-PSSnapin WebAdministration -ErrorAction SilentlyContinue #Legacy
Import-Module WebAdministration -ErrorAction SilentlyContinue

# Check if the module is imported successfully
if (Get-Module -Name WebAdministration) {
    Write-Output "WebAdministration module imported successfully."
} else {
    Write-Error "Failed to import WebAdministration module."
}

## ------------------------------------------------------------------
## Create pool and website
## ------------------------------------------------------------------

# Create a new application pool if it doesn't exist
$iis = New-Object Microsoft.Web.Administration.ServerManager
if (-not ($iis.ApplicationPools[$appPoolName])) {
    $appPool = $iis.ApplicationPools.Add($appPoolName)

    # Set pool configuration parameters
    $appPool.ManagedRuntimeVersion = "" # .NET CLR version = "No Managed Code"

    $iis.CommitChanges()
    Write-Output "Application pool '$appPoolName' created successfully."
} else {
    Write-Output "Application pool '$appPoolName' already exists."
}

# Create a new website
New-Website -Name $siteName -PhysicalPath $sitePath -ApplicationPool $appPoolName -Port $port
```

Extra info:
* https://weblog.west-wind.com/posts/2017/may/25/automating-iis-feature-installation-with-powershell