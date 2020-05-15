SetEnv -uap PATH %%"%cd%"

@echo off
for /f "usebackq tokens=2,*" %%A in (`%SystemRoot%\System32\reg.exe query HKCU\Environment /v PATH`) do set my_user_path=%%B
echo. && echo User Path: && echo --------------------------------------
for %%a in ("%my_user_path:;=" "%") do echo %%a

echo.
pause
