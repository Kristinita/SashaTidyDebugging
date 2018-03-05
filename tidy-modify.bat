@REM @Author: Kristinita
@REM @Date:   2018-03-04 17:38:29
@REM @Last Modified by:   Kristinita
@REM Modified time: 2018-03-05 08:55:37
@echo off
FOR /R %%i IN (*.html) DO tidy -mq --wrap 0 %%i
@rem https://stackoverflow.com/a/4728151/5951529
@rem https://stackoverflow.com/a/334893/5951529
exit /b 0