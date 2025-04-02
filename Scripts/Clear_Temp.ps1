# Clear Temp Files
function Clear-TempFiles {
    $tempPaths = @("$env:TEMP\*", "$env:LOCALAPPDATA\Temp\*")

    foreach ($path in $tempPaths) {
        try {
            Get-ChildItem -Path $path -Force | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
            Write-Host "Temp files cleared from $path"
        } catch {
            Write-Warning "Error: $($_.Exception)"
        }
    }
}

Clear-TempFiles