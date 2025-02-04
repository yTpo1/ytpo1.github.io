# Manual Management (using GUI)

.net 8 app deployment example:
1. Publish the Application:
    * In Visual Studio right-click on the project in Solution Explorer and select `Publish`.
    * Choose a publish target. For IIS, select Folder and specify a path where the published files will be stored.
    * Click `Publish` to generate the publish files.
2. Configure IIS:
    * Open the IIS Manager (inetmgr).
    * Right-click on `Sites` and select `Add Website`.
    * Configure the site:
        * **Site Name**
        * **Physical Path**
        * **Binding**
3. Set Application Pool:
    * Select the newly created time
    * Click on `Basic Settings` and ensure the Application Pool is set to use `No Managed Code` or the appropriate .NET CLR version.
4. Configure Folder Permissions:
    * Ensure the IIS user (e.g., IIS_IUSRS) has read and execute permissions on the published folder.