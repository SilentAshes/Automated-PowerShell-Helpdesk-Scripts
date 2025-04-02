# Check Event Logs for Errors
function Get-EventLogErrors {
    $eventLogs = @("Application", "System") # Add or remove logs as needed
    foreach ($log in $eventLogs) {
        Write-Host "Event Log: $log"
        Write-Host "--------------------"
        Get-EventLog -LogName $log -EntryType Error -Newest 10 | Format-List
    }
}

Get-EventLogErrors