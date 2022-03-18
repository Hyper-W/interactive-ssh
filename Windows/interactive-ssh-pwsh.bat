@echo off
cd /d %~dp0

pwsh.exe -File ".\interactive-ssh.ps1"

exit 0