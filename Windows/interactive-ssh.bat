@echo off
cd /d %~dp0

powershell.exe -ExecutionPolicy Unrestricted -File ".\interactive-ssh.ps1"

exit 0