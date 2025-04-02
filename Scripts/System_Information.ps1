# Get System Information
function Get-SystemInfo {
    Write-Host "System Information:"
    Write-Host "--------------------"
    Write-Host "Computer Name: $(hostname)"
    Write-Host "Operating System: $(Get-WmiObject Win32_OperatingSystem | Select-Object -ExpandProperty Caption)"
    Write-Host "OS Version: $(Get-WmiObject Win32_OperatingSystem | Select-Object -ExpandProperty Version)"
    Write-Host "Manufacturer: $(Get-WmiObject Win32_ComputerSystem | Select-Object -ExpandProperty Manufacturer)"
    Write-Host "Model: $(Get-WmiObject Win32_ComputerSystem | Select-Object -ExpandProperty Model)"
    Write-Host "Total Physical Memory: $((Get-WmiObject Win32_OperatingSystem | Select-Object -ExpandProperty TotalVisibleMemorySize) / 1GB) GB"
    Write-Host "Processor: $(Get-WmiObject Win32_Processor | Select-Object -ExpandProperty Name)"

    Write-Host "Network Adapters:"
    Get-NetAdapter | Select-Object Name, InterfaceDescription, Status
}

Get-SystemInfo