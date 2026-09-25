@echo off

set game_folder=My %~1 Car
if %~1==Winter goto :audio_check
if %~1==Summer goto :audio_check
goto :invalid
:audio_check
echo Game folder set to: %~1
set audio_folder=%~2
if %~2==CD1 goto :correct
if %~2==CD2 goto :correct
if %~2==CD3 goto :correct
if %~2==Radio goto :correct
goto :invalid

:correct
echo Audio folder set to: %~2
set full_path="C:/Program Files (x86)/Steam/steamapps/common/%game_folder%/%audio_folder%"


if not exist %3 (echo The file %3 does not exist.
goto :end
)

goto :music_links

:invalid
echo The path does not exist, %1 has to be either Summer or Winter, for My Summer Car and My Winter Car respectively. %2 has to be either CD1, CD2, CD3 or Radio. Input is case sensitive.

:music_links
echo Music links source file set to: %3

call Process_music_links.bat %full_path% %3
call Rename_files.bat %full_path%


:end