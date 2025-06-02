@echo off
:: Check for admin rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: Dynamically get user's Temp path
set "USER_TEMP=%TEMP%"
set "LOCAL_TEMP=%USERPROFILE%\AppData\Local\Temp"

:: Delete user-specific Temp
del /f /s /q "%LOCAL_TEMP%\*"
rd /s /q "%LOCAL_TEMP%"
md "%LOCAL_TEMP%"

:: Delete system-wide Temp and Prefetch
del /f /s /q "C:\Windows\Temp\*"
del /f /s /q "C:\Windows\Prefetch\*"
rd /s /q "C:\Windows\Temp"
rd /s /q "C:\Windows\Prefetch"
md "C:\Windows\Temp"
md "C:\Windows\Prefetch"

exit
