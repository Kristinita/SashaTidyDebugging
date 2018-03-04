@echo off
cd output
FOR %%i IN (*.html) DO echo %%i & tidy -mq --wrap 0 %%i