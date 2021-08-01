@echo off
:Start
title timer
color EC
echo Type in an amount of time (Seconds)
set /p time=

color CE
:loop
cls
ping localhost -n 2 >nul
set /a time=%time%-1
echo %time%
if %time% EQU 0 goto Timesup
goto loop

:Timesup
title Time Is Up!

ping localhost -n 2 >nul

ping localhost -n 2 >nul

color 5F

echo You have 20 seconds before Windows Will shut down!

ping localhost -n 20 >nul


ping localhost -n 2 >nul

ping localhost -n 2 >nul


ping localhost -n 1 >nul


ping localhost -n 1 >nul


ping localhost -n 1 >nul


@echo off
Shutdown.exe -s -t 10
cls
msg * byee