set LOGFILE=%SystemDrive%\gcpw_package_script.log
echo Installing GCPW using Google supplied script >> %LOGFILE%
echo Executing "PowerShell.exe -ExecutionPolicy Bypass -File .\GCPW\gcpwinstall.ps1" >> %LOGFILE%
PowerShell.exe -ExecutionPolicy Bypass -File gcpwinstall.ps1 >> %LOGFILE%
echo Installing Chocolatey >> %LOGFILE%
echo Executing "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" >> %LOGFILE%
PowerShell.exe Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%