Read-Host "Press any key to install Python-3.11.0"
Start-Sleep -Seconds 1
START https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe
Write-Host "Finding Python Install File"
Start-Sleep -Seconds 5
Powershell -c "Set-ExecutionPolicy Unrestricted"
clear
cd ".."
cd ".."
$name = ((Get-WMIObject -ClassName Win32_ComputerSystem).Username).Split('\')[1]
cd "C:\Users\$name\Downloads"
Start-Process "python-3.11.0-amd64.exe"
