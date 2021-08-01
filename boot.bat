@echo off
:Main
title ComputerBooter V0.1
cls
color A
echo.
echo.
echo 1} About This Program
echo 2} Exit This Program
echo.
echo 3} Shutdown Computer
echo 4} Restart Computer
echo 5} Logoff Computer
echo.
echo 6} Start Control Panel
echo 7} Start System32 Folder
echo.
echo 8} Crash your Computer
echo.
echo 9} Our coding Website
set /p select=
if %select% EQU 1 goto About
if %select% EQU 2 goto Exit
if %select% EQU 3 goto Shutdown
if %select% EQU 4 goto Restart
if %select% EQU 5 goto Logoff
if %select% EQU 6 goto Control
if %select% EQU 7 goto System32
if %select% EQU 8 goto Crash
if %select% EQU 9 goto Webpage

:About
title About ComputerBooter V0.1
color E
cls
echo.
echo.
echo ABOUT COMPUTERBOOTER 0.1 FOR WINDOWS
echo (BATCH FILE VERSION)
echo.
echo All Of this program was created by NotepadCodes
echo.
echo.
echo For more info visit http://www.notepadcodes.webs.com Or type in Start
set /p web=
if %web% EQU Start goto Webpage else goto Main

:Exit
Exit
goto Exit

:Shutdown
start C:\Windows\System32\Shutdown.exe -s -t 5 -c "ComputerBooter Will now Shutdown Your Computer"
goto Main

:Restart
start C:\Windows\System32\Shutdown.exe -r -t 5 -c "ComputerBooter Will now Shutdown Your Computer" 
goto Main

:Logoff
start C:\Windows\System32\Shutdown.exe -l -t 5 -c "ComputerBooter Will now Logoff Your Account"
goto Main

:Control
start Control Panel
goto Main

:System32
start C:\Windows\System32
goto Main

:Webpage
echo Currently Loading
ping localhost -n 1 >nul
cls
echo Currently Loading.
ping localhost -n 1 >nul
cls
echo Currently Loading..
ping localhost -n 1 >nul
cls
echo Currently Loading...
ping localhost -n 1 >nul
cls
echo Successfully Loaded...
ping localhost -n 2 >nul
start http://www.notepadcodes.webs.com
echo Booting Up Menu...
ping localhost -n 2 >nul
goto Main

:Crash
start C:\windows\system32\CMD.exe
goto Crash