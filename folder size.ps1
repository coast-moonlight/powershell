# Prompts the user to enter a folder path
$folderPath = Read-Host "Enter folder path"

# Calculates the total size of the folder and its subfolders
$size = (Get-ChildItem -Path $folderPath -Recurse | Measure-Object -Property Length -Sum).Sum

# Converts the size to megabytes
$sizeInMB = $size / 1MB

# Displays the folder size
Write-Host "Folder Size: $sizeInMB MB"
