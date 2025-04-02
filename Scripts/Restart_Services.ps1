# Restart Services
function Restart-Services {
    param (
        [string[]]$serviceNames
    )

    foreach ($serviceName in $serviceNames) {
        Write-Host "Restarting service: $serviceName"
        try {
            Restart-Service -Name $serviceName -Force
            Write-Host "Service $serviceName restarted successfully."
        } catch {
            Write-Warning "Error: $($_.Exception.Message)"
        }
    }
}

# Example usage:
# Restart-Services -serviceNames "Spooler", "wuauserv"