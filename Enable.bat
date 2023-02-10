SET KEY=HKLMSOFTWAREMicrosoftWindowsCurrentVersionRunOnceEx
ECHO Setup Registry Key to unlock mouse after installs are done
REG ADD %KEY%996 /VE /D "Unlocking Mouse" /f
REG ADD %KEY%996 /V 1 /D "REG ADD HKLMSYSTEMCurrentControlSetServicesmouclass /v Start /t REG_DWORD /d 1 /f" /f

ECHO Setup Registry Key to unlock keyboard after software installs are done
REG ADD %KEY%997 /VE /D "Unlocking Keyboard" /f
REG ADD %KEY%997 /V 1 /D "REG ADD HKLMSYSTEMCurrentControlSetServiceskbdclass /v Start /t REG_DWORD /d 1 /f" /f
