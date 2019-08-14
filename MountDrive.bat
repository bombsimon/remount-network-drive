@echo off

rem Change ExecutionPolicy
PowerShell -Command "Set-ExecutionPolicy -Scope CurrentUser Unrestricted" >> "%TEMP%\StartupLog.txt" 2>&1

rem Trigger the PowerShell script to re-mount drivers.
set ScriptDir="%ProgramData%\PS1\ReMountDrive.ps1"
PowerShell -File "%ScriptDir%" >> "%TEMP%\StartupLog.txt" 2>&1
