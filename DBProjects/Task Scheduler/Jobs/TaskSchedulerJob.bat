@ECHO OFF
SET current_dir=%~dp0
SET script_name=TaskSchedulerJobScript.sql
SET sqlscript_path= %current_dir%%script_name%
SET server_name=SRGT-GBARUNIC\SQLEXPRESS --CHANGE
SET db_name=LoggingDB
SET username=sys_admin --CHANGE
SET pwd=getiGor13 --CHANGE
SQLCMD -U %username% -S %server_name% -d %db_name% -P %pwd% -i %sqlscript_path%
PAUSE
CLS
EXIT
