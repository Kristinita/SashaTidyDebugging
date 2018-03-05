@REM @Author: Kristinita
@REM @Date:   2018-03-04 17:48:14
@REM @Last Modified by:   Kristinita
@REM Modified time: 2018-03-05 09:59:40
@rem If/else exitcode:
@REM https://stackoverflow.com/a/36897449/5951529
@echo off
set VALIDALL=true
@REM Correct ERRORLEVEL in IF/ELSE
@REM https://stackoverflow.com/a/4368104/5951529
setlocal EnableDelayedExpansion
FOR /R %%f IN (*.html) DO (
	tidy -mq --wrap 0 %%f
	IF "!ERRORLEVEL!"=="0" (
		@REM Split filename from filepath
		@REM https://stackoverflow.com/a/9253018/5951529
		echo %%~nxf is VALIDALL!
	) ELSE (
	@rem Exclamation mark as literal:
	@rem https://stackoverflow.com/a/3288632/5951529
	echo You have problems in %%~nxf. Please, correct them^^!
	set VALIDALL=false
	)
)
echo %VALIDALL%
%VALIDALL%