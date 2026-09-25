@echo off
setlocal ENABLEDELAYEDEXPANSION

set source_file= %~2
set destination_folder="%~1"

echo %destination_folder%

if %source_file:~-4%==.txt goto :file_good
echo The file does not have the .txt extension. 
echo Pick a file with the .txt extension.

goto end
:file_good
echo Getting links from %source_file%
set list=
for /F "tokens=*" %%L in (%source_file%) do set list=!list! %%L

yt-dlp.exe --paths %destination_folder% --js-runtime node -x --audio-format vorbis %list%

goto end


:end