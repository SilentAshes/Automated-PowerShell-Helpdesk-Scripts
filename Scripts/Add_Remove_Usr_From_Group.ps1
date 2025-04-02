# Add User to Group
function Add-UserToGroup {
    param (
        [string]$UserName,
        [string]$GroupName
    )

    try {
        Add-LocalGroupMember -Group $GroupName -Member $UserName -ErrorAction Stop
        Write-Host "User '$UserName' added to group '$GroupName' successfully."
    } catch {
        Write-Warning "Failed to add user '$UserName' to group '$GroupName': $($_.Exception.Message)"
    }
}

# Remove User from Group
function Remove-UserFromGroup {
    param (
        [string]$UserName,
        [string]$GroupName
    )

    try {
        Remove-LocalGroupMember -Group $GroupName -Member $UserName -ErrorAction Stop
        Write-Host "User '$UserName' removed from group '$GroupName' successfully."
    } catch {
        Write-Warning "Failed to remove user '$UserName' from group '$GroupName': $($_.Exception.Message)"
    }
}

# Example Usage:
# Add-UserToGroup -UserName "ExistingUser" -GroupName "Administrators"
# Remove-UserFromGroup -UserName "ExistingUser" -GroupName "Administrators"