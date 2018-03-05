@REM @Author: Kristinita
@REM @Date:   2018-03-04 17:48:14
@REM @Last Modified by:   Kristinita
@REM Modified time: 2018-03-05 08:22:34
@rem If/else exitcode:
@REM https://stackoverflow.com/a/36897449/5951529
@echo off
set OK=true
setlocal EnableDelayedExpansion
FOR /R %%i IN (*.html) DO (
	tidy -mq --wrap 0 %%i
	IF "!ERRORLEVEL!"=="0" (
		@REM Split filename from filepath
		@REM https://stackoverflow.com/a/9253018/5951529
		echo %%~nxi is valid!
	) ELSE (
	@rem Exclamation mark as literal:
	@rem https://stackoverflow.com/a/3288632/5951529
	echo You have problems in %%~nxi. Please, correct them^^!
	set OK=false
	)
)
echo %OK%
%OK%
rem IF "!OK!"=="0" (
rem 	echo %ERRORLEVEL% & exit /b 0
rem 	) ELSE (
rem 	echo %ERRORLEVEL% & exit /b 1
rem 	)
