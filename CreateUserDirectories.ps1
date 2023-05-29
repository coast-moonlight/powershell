# Import the Active Directory module and connect to the server
Import-Module ActiveDirectory
$server = "<AD_SERVER>"
$search_base = "<SEARCH_BASE>"
$users = Get-ADUser -Filter * -SearchBase $search_base -Server $server

# Loop through each user and create their directory if it doesn't exist
foreach ($user in $users) {

  # Extract the first name and last name from the user's Name property
  $firstName = $user.GivenName.ToLower()
  $lastName = $user.Surname.ToLower()

  # Construct the directory path using the prefix, first name, and last name
  $dir_path = "$dir_prefix\$firstName.$lastName"

  # Check if the directory already exists
  if (!(Test-Path $dir_path)) {

    # Create directory with inheritance disabled and new owner set
    New-Item -ItemType Directory -Path $dir_path
    icacls $dir_path /grant:r "$($user.SamAccountName):(OI)(CI)F"
    icacls $dir_path /grant:r "SYSTEM:(OI)(CI)F"
    icacls $dir_path /grant:r "FILEMGR:(OI)(CI)F" /setowner "FILEMGR"

    # Write a message indicating that the directory was created
    Write-Host "Created directory for $($user.Name) at $dir_path"
  } 
  else {
    # Write a message indicating that the directory already exists
    Write-Host "Directory for $($user.Name) at $dir_path already exists"
  }
}








