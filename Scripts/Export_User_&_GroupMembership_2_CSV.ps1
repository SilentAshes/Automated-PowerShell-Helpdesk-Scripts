# Export User and Group Membership to CSV
function Export-UserGroupMembership {
    param (
        [string]$CsvFilePath
    )

    try {
        $users = Get-LocalUser | Select-Object Name, Enabled

        $userGroups = foreach ($user in $users) {
            $groups = Get-LocalGroupMember -Name $user.Name | Select-Object Name
            [PSCustomObject]@{
                UserName = $user.Name
                Enabled  = $user.Enabled
                Groups   = ($groups.Name -join "; ") # Join group names with semicolon
            }
        }

        $userGroups | Export-Csv -Path $CsvFilePath -NoTypeInformation -ErrorAction Stop
        Write-Host "User and group membership exported to '$CsvFilePath' successfully."

    } catch {
        Write-Warning "Failed to export user and group membership: $($_.Exception.Message)"
    }
}

# Example Usage:
# Export-UserGroupMembership -CsvFilePath "C:\Users\PC\Desktop\UserGroups.csv"