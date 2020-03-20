@ECHO OFF

if [%1]==[] (
	start "" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\"
	goto:eof
)

call datetime

echo cd /d %%cd%% > onceTemp.tmp
echo start "" cmd /c start "" %* >> onceTemp.tmp
echo start "" cmd /c del "%%~dp0once%now%.bat" >> onceTemp.tmp
move onceTemp.tmp "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\once%now%.bat" > nul
echo.Concluido!
goto:eof

@ECHO ON