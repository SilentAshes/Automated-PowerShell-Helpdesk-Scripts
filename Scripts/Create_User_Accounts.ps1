# Create User Account
function New-UserAccount {
    param (
        [string]$UserName,
        [SecureString]$Password,
        [string]$FullName,
        [string]$Description,
        [string]$Group = "Users", # Default group
        [switch]$PasswordNeverExpires,
        [switch]$PasswordChangeRequired
    )

    try {
        # Create the user account
        New-LocalUser -Name $UserName -Password $Password -FullName $FullName -Description $Description -ErrorAction Stop

        # Add user to the specified group
        Add-LocalGroupMember -Group $Group -Member $UserName -ErrorAction Stop

        # Set password options
        if ($PasswordNeverExpires) {
            Set-LocalUser -Name $UserName -PasswordNeverExpires $true -ErrorAction Stop
        }
        if (-not $PasswordChangeRequired) {
            Set-LocalUser -Name $UserName -PasswordChangeRequired $false -ErrorAction Stop
        }

        Write-Host "User '$UserName' created successfully."

    } catch {
        Write-Warning "Failed to create user '$UserName': $($_.Exception.Message)"
    }
}


# Example Usage:
# Create-UserAccount -UserName "NewUser" -Password "P@$$wOrd123" -FullName "New User" -Description "Test User" -Group "Administrators" -PasswordNeverExpires -PasswordChangeRequired