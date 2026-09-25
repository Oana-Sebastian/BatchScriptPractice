@echo off
setlocal ENABLEDELAYEDEXPANSION

set dest=%~1
set count=1
for %%f in ("%dest%\*.ogg") do (
	set "filename=%%~nf"
	set "trimmed_filename=!filename:~,5!"
	
	if "!trimmed_filename!" neq "Track" (
		call :find_next_rename "%%f"
	)
)

echo Done
pause

goto :end


:find_next_rename
	
	:exists
	if exist "%dest%\Track!count!.ogg" (
		set /a count=!count!+1
		goto exists
	)

	rename "%~1" "Track!count!.ogg"
	echo Renamed "%~nx1" to Track!count!.ogg
	exit /b

:end