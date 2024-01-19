# WinUpdater

WinUpdater is a PowerShell script designed to streamline the installation of Windows updates, providing you with a detailed log file of the updates that were installed.

## Features
- **Effortless Installation:** The script simplifies the process of installing Windows updates through PowerShell.
- **Detailed Log:** Generates a log file containing information about the updates that were installed.
- **Automation:** Set up a Task in Task Scheduler to automate the update installation process.
- **Reboot Handling:** The script can automatically reboot the computer if required by an update.

## Getting Started

### Prerequisites
Ensure you have PowerShell installed on your Windows system.

### Usage
1. Download the `WinUpdater.ps1` script.
2. Open PowerShell with administrator privileges.
3. Navigate to the directory where the script is located.
4. Run the script using the command:
   ```.\WinUpdater.ps1```
## Automation with Task Scheduler
- Extract the Code to ```C:\scripts```.
- Open Task Scheduler and click on Import ```Task```.
- Browse C:\scripts and select ```WinUpdater.xml```.

## Important Note

Make sure to review the generated log file for any potential issues or errors during the update installation.
## Contribution

Contributions are welcome! If you have any improvements or suggestions, feel free to open an issue or create a pull request.

## License

This project is licensed under the GPL-3.0 License.

Happy updating!

#gg
