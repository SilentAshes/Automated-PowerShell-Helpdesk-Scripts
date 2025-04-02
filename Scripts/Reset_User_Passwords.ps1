# Reset User Password
function Reset-UserPassword {
    param (
        [string]$UserName,
        [SecureString]$NewPassword,
        [switch]$PasswordNeverExpires,
        [switch]$PasswordChangeRequired
    )

    try {
        Set-LocalUser -Name $UserName -Password $NewPassword -ErrorAction Stop

        if ($PasswordNeverExpires) {
            Set-LocalUser -Name $UserName -PasswordNeverExpires $true -ErrorAction Stop
        }
        if (-not $PasswordChangeRequired) {
            Set-LocalUser -Name $UserName -PasswordChangeRequired $false -ErrorAction Stop
        }

        Write-Host "Password for user '$UserName' reset successfully."

    } catch {
        Write-Warning "Failed to reset password for user '$UserName': $($_.Exception.Message)"
    }
}

# Example Usage:
# Reset-UserPassword -UserName "ExistingUser" -NewPassword "NewP@$$wOrd456" -PasswordNeverExpires -PasswordChangeRequired