
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )


COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
COLOR 07
COLOR 70
cls

COLOR 4F

@echo off
echo ===================================================================================                                                                       
echo 
echo You just got hacked. Im very sorry for your PC, but for you this in nothing!
echo 
echo ===================================================================================
PAUSE
