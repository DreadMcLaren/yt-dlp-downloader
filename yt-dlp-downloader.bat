@echo off
color 0A
echo.
echo --------------------------------------------
echo YT-DLP Downloader - Created By DreadMcLaren
echo --------------------------------------------
echo.
echo.
echo Enter the URL to download (channel, playlist, or single video):
set /p url=

set "outputPath=D:\AEW"
set "options=-f bestvideo[ext=mkv]+bestaudio[ext=m4a]/bestvideo+bestaudio/best --merge-output-format mkv --embed-subs --embed-thumbnail --add-metadata --fixup detect_or_warn"

yt-dlp.exe %options% -o "%outputPath%\%%(title)s.%%(ext)s" %url%

echo.
echo.
color 0A
echo Download has finished. Press any key to close the window.
pause >nul
