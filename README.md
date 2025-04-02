# Automated-PowerShell-Helpdesk-Scripts
A collection of PowerShell scripts for automating common Windows tasks, including application installation/uninstallation, system diagnostics and file backups etc
# PowerShell Automation Scripts

This repository contains a collection of PowerShell scripts designed to automate various Windows administration tasks.

## Scripts Included

* **Install/Uninstall Applications:**
    * Scripts for silent installation and uninstallation of applications using MSI and EXE installers.
* **View Installed Software:**
    * Scripts to list installed software and their versions.
* **Copy Folders from Shared to Workstation:**
    * Script to copy folders and files from a network share to a local workstation.
* **Fix Registry Values:**
    * Script to modify specific registry values.
* **Fix Connectivity Issues:**
    * Scripts to diagnose and resolve common network connectivity problems (IP renewal, DNS flush, adapter restart).

## Usage

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/SilentAshes/Automated-PowerShell-Helpdesk-Scripts
    ```
2.  **Navigate to the Script Directory:**
    ```bash
    cd Automated-PowerShell-Helpdesk-Scripts
    ```
3.  **Run the Scripts:**
    * Open PowerShell as an administrator.
    * Navigate to the script's location.
    * Execute the script (e.g., `.\Install-Application.ps1`).

## Important Notes

* **Administrator Privileges:** Many scripts require administrator privileges. Ensure you run PowerShell as an administrator.
* **Customization:** Modify the scripts to match your specific environment (paths, registry keys, application names, etc.).
* **Testing:** Thoroughly test the scripts in a non-production environment before using them in production.
* **Product Codes (MSI Uninstall):** For MSI uninstalls, you'll need the product code (GUID). You can find this in the registry or using `Get-WmiObject Win32_Product`.
* **EXE Switches:** EXE installers and uninstallers often have different command-line switches. Consult the application's documentation.
* **OneDrive Path:** Verify that the `$env:OneDrive` variable correctly points to your OneDrive folder.
* **Network Adapter:** Ensure the correct network adapter name is used in the connectivity scripts.
* **Registry Modification:** Exercise extreme caution when modifying the registry. Incorrect changes can cause system instability.

## Contributing

Feel free to contribute to this repository by submitting pull requests. If you find any issues or have suggestions for improvements, please open an issue.

## License
MIT License 
