@echo off
echo Installing clean_temp.exe to startup folder...
copy "%~dp0dist\clean_temp.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
echo Done.
pause
