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
cls
echo The Time is up!
pause
cls
echo Thank you for using this software.
pause
goto Web
goto Exit

:Web
start http://www.notepadcodes.webs.com

:Exit
Exit
goto Exit