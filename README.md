# Automated-PowerShell-Helpdesk-Scripts

This repository contains a collection of PowerShell scripts designed to automate various Windows administration tasks commonly encountered in helpdesk environments.

## Scripts Included

* **Add_Remove_Usr_From_Group.ps1:** Adds or removes users from local groups.
    * Example: `.\Add_Remove_Usr_From_Group.ps1 -UserName "ExistingUser" -GroupName "Administrators" -Action "Add"`
* **Check_Disk_Space.ps1:** Checks the available disk space on local drives.
* **Check_ERROR_Logs.ps1:** Checks the Application and System event logs for error entries.
* **Check_Firewall_Rules.ps1:** Lists enabled firewall rules.
* **Clear_Temp.ps1:** Clears temporary files from user temp directories.
* **Copy_Shared_Folders.ps1:** Copies folders and files from a network share to a local workstation.
    * Example: `.\Copy_Shared_Folders.ps1 -sourcePath "\\server\share" -destinationPath "C:\local"`
* **Create_User_Accounts.ps1:** Creates new local user accounts with specified settings.
    * Example: `.\Create_User_Accounts.ps1 -UserName "NewUser" -Password "P@$$wOrd123" -FullName "New User" -Description "Test User" -Group "Administrators"`
* **Disable_Enable_User_Accounts.ps1:** Enables or disables local user accounts.
    * Example: `.\Disable_Enable_User_Accounts.ps1 -UserName "ExistingUser" -Action "Disable"`
* **Export_User_&_GroupMembership_2_CSV.ps1:** Exports a CSV file listing local users and their group memberships.
    * Example: `.\Export_User_&_GroupMembership_2_CSV.ps1 -CsvFilePath "C:\Users\PC\Desktop\UserGroups.csv"`
* **Fix_Connectivity_Issues.ps1:** Diagnoses and resolves common network connectivity problems (IP renewal, DNS flush, adapter restart).
    * Example: `.\Fix_Connectivity_Issues.ps1 -flushDNS`
* **List_Users_&Groups.ps1:** Lists local users and groups.
* **Reset_User_Passwords.ps1:** Resets local user passwords.
    * Example: `.\Reset_User_Passwords.ps1 -UserName "ExistingUser" -NewPassword "NewP@$$wOrd456"`
* **Restart_Services.ps1:** Restarts specified Windows services.
    * Example: `.\Restart_Services.ps1 -serviceNames "Spooler", "wuauserv"`
* **System_Information.ps1:** Retrieves and displays system information.
* **View_Installed_Software.ps1:** Lists installed software and their versions.

## Usage

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/SilentAshes/Automated-PowerShell-Helpdesk-Scripts.git
    ```
2.  **Navigate to the Script Directory:**
    ```bash
    cd Automated-PowerShell-Helpdesk-Scripts
    ```
3.  **Run the Scripts:**
    * Open PowerShell as an administrator.
    * Navigate to the script's location.
    * Execute the script (e.g., `.\Create_User_Accounts.ps1`).

## Important Notes

* **Administrator Privileges:** Many scripts require administrator privileges. Ensure you run PowerShell as an administrator.
* **Customization:** Modify the scripts to match your specific environment (paths, registry keys, application names, etc.).
* **Testing:** Thoroughly test the scripts in a non-production environment before using them in production.
* **Error Handling:** It is highly encouraged to add try catch blocks to these scripts to handle any errors that may arise.
* **Parameters:** See the script descriptions above for example parameter usage.
* **Security:** Be extremely cautious when handling user accounts, passwords, and registry modifications.

## Contributing

Feel free to contribute to this repository by submitting pull requests. If you find any issues or have suggestions for improvements, please open an issue.

## License

This Repo Is Licensed Under The MIT License [License]
