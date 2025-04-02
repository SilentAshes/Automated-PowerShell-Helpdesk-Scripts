$sourcePath = "\\YourServer\SharedFolder"
$destinationPath = "C:\Local\Destination"

# Create the destination directory if it doesn't exist
if (!(Test-Path -Path $destinationPath)) {
    New-Item -ItemType Directory -Path $destinationPath
}

# Copy the contents (including subfolders)
Copy-Item -Path "$sourcePath\*" -Destination $destinationPath -Recurse -Force