@echo off
title ProcessList - By ThatGuyVR
color 0A

:menu
cls
echo ==========================================
echo          ProcessList - By ThatGuyVR
echo ==========================================
echo.
echo Select an operation:
echo.
echo 1. List All Running Processes
echo 2. Exit
echo.
set /p choice=Enter your choice (1-2): 

if "%choice%"=="1" goto list
if "%choice%"=="2" exit
goto menu

:list
cls
echo Listing all running processes...
echo.
tasklist > ProcessList.txt
echo Process list saved to ProcessList.txt
echo.
pause
goto menu
