# Retrieves the operating system information
$os = Get-WmiObject -Class Win32_OperatingSystem

# Retrieves the computer name
$computerName = Get-WmiObject -Class Win32_ComputerSystem

# Retrieves the processor information
$processor = Get-WmiObject -Class Win32_Processor

# Displays the system information
Write-Host "Operating System: $($os.Caption)"
Write-Host "Computer Name: $($computerName.Name)"
Write-Host "Processor: $($processor.Name)"
