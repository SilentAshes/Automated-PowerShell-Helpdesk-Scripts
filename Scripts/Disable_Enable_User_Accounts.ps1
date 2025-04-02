# Disable User Account
function Disable-UserAccount {
    param (
        [string]$UserName
    )

    try {
        Set-LocalUser -Name $UserName -Enabled $false -ErrorAction Stop
        Write-Host "User '$UserName' disabled successfully."
    } catch {
        Write-Warning "Failed to disable user '$UserName': $($_.Exception.Message)"
    }
}

# Enable User Account
function Enable-UserAccount {
    param (
        [string]$UserName
    )

    try {
        Set-LocalUser -Name $UserName -Enabled $true -ErrorAction Stop
        Write-Host "User '$UserName' enabled successfully."
    } catch {
        Write-Warning "Failed to enable user '$UserName': $($_.Exception.Message)"
    }
}

# Example Usage:
# Disable-UserAccount -UserName "ExistingUser"
# Enable-UserAccount -UserName "ExistingUser"