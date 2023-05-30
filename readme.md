<!DOCTYPE html>
<html>
<body>
  <h1>Creating Directories for Active Directory Users</h1>
  <h3>README</h3>
  <p>Author: Basil Ugbomoiko</p>
  <p>
    This PowerShell script creates directories for each user in a specific Active Directory search base. The script sets the
    prefix for the directory path where directories will be created, retrieves the current user's account name, and then loops
    through each user in the search base to create their directory if it doesn't already exist.
  </p>
  <h2>Prerequisites</h2>
  <ul>
    <li>PowerShell must be installed on the system where the script will be run.</li>
    <li>The Active Directory module must be imported. This can be done by running the command "Import-Module ActiveDirectory"
      in PowerShell.</li>
  </ul>
  <h2>Usage</h2>
  <ol>
    <li>Open PowerShell on the system where the script will be run.</li>
    <li>Copy and paste the script into the PowerShell console.</li>
    <li>Modify the <code>$server</code> and <code>$search_base</code> variables to match your Active Directory environment.</li>
    <li>Modify the <code>$dir_prefix</code> variable to specify the directory path prefix where directories will be created.</li>
    <li>Run the script by pressing the Enter key. The script will loop through each user in the search base and create their
      directory if it doesn't already exist.</li>
    <li>Review the output in the console to confirm that the directories were created successfully.</li>
  </ol>
  <h2>Customization</h2>
  <ul>
    <li><code>$server</code>: Modify this variable to specify the domain controller for your Active Directory environment.</li>
    <li><code>$search_base</code>: Modify this variable to specify the search base where the users are located in your Active
      Directory environment.</li>
    <li><code>$dir_prefix</code>: Modify this variable to specify the directory path prefix where directories will be created.
      You can change the folder name, the location, and the structure of the directory path to match your environment.</li>
    <li>Permissions: If you need to customize the permissions on the directories, you can modify the <code>icacls</code>
      commands in the script to grant or revoke access to specific users or groups.</li>
  </ul>
  <h2>Notes</h2>
  <ul>
    <li>The script uses the <code>takeown</code> command to take ownership of the directories before setting the permissions.
      This is necessary because the owner of the directory must have the "Full Control" permission in order to set permissions
      for other users.</li>
    <li>The script sets the owner and permissions for the current user, the user whose directory is being created, and the
      "SYSTEM" and "FILEMGR" built-in accounts. You may need to modify the permissions depending on your environment and
      security requirements.</li>
    <li>If a directory already exists for a user, the script will skip that user and move on to the next one.</li>
  </ul>
  <h2>Limitations</h2>
  <ul>
    <li>This script only creates directories for users in a specific search base. If you need to create directories for users
      in multiple search bases, you will need to modify the script accordingly.</li>
    <li>This script does not handle errors or exceptions that may occur during the directory creation process. If an error
      occurs, the script will terminate and no directories will be created.</li>
  </ul>
  <h2>Disclaimer</h2>
  <ul>
    <li>This script is provided as-is, without warranty of any kind, express or implied. Use at your own risk.</li>
    <li>Test the script in a non-production environment before running it in a production environment.</li>
    <li>Always back up your data before running any script that makes changes to your system.</li>
  </ul>
</body>
</html>
