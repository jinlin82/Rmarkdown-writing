@echo off
for /f "usebackq tokens=2,*" %%A in (`%SystemRoot%\System32\reg.exe query HKCU\Environment /v PATH`) do set my_user_path=%%B
echo. && echo User Path: && echo --------------------------------------
for %%a in ("%my_user_path:;=" "%") do echo %%a

for /f "usebackq tokens=2,*" %%A in (`%SystemRoot%\System32\reg.exe query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v PATH`) do set system_path=%%B
echo. && echo System Path: && echo --------------------------------------
for %%a in ("%system_path:;=" "%") do echo %%a

echo.
pause
