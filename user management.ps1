# Retrieves all local user accounts on the system
$users = Get-LocalUser

# Iterates over each user and displays their properties
foreach ($user in $users) {
    Write-Host "Username: $($user.Name)"
    Write-Host "Full Name: $($user.FullName)"
    Write-Host "Description: $($user.Description)"
    Write-Host "-----"
}
