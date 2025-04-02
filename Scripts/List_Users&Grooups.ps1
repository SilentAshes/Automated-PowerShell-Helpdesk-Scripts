# List Local Users and Groups
function Get-LocalUsersAndGroups {
    Write-Host "Local Users:"
    Write-Host "--------------------"
    Get-LocalUser | Select-Object Name, Enabled

    Write-Host "Local Groups:"
    Write-Host "--------------------"
    Get-LocalGroup | Select-Object Name, Description
}

Get-LocalUsersAndGroups