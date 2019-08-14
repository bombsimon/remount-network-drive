# Mount network drive

I got tired of the fact that every time I reboot my computer I have to remount
my network drive(s) again. It's not a big deal to just double click on the icon
but I often don't notice this until a program I'm using is trying to access
files on the drive which may make the program behave odd.

## Installation

The installation is currently manual. If you don't want to change anything copy
`MountDrive.ps1` to `%ProgramData%\PS1\ReMountDrive.ps1`. Copy `MountDrive.bat`
to `%ProgramData%\Microsoft\Windows\Start Menu\Programs\StartUp` to run it on
boot.

## Resources

* [Microsoft Execution Policy](https:/go.microsoft.com/fwlink/?LinkID=135170)
