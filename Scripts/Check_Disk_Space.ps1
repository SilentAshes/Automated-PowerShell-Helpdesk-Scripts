# Check Disk Space
function Get-DiskSpace {
    Get-WmiObject Win32_LogicalDisk | Where-Object {$_.DriveType -eq 3} | Select-Object DeviceID, @{Name="FreeSpace (GB)";Expression={[math]::Round($_.FreeSpace/1GB, 2)}}, @{Name="Size (GB)";Expression={[math]::Round($_.Size/1GB, 2)}}
}

Get-DiskSpace