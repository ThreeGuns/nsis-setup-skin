del ".\SetupScripts\app.7z"


@rem @set destPathName="..\bqj-client-edition\release\win-unpacked"
@set destPathName=".\FilesToInstall"

rem 生成app.7z
7z.exe a ".\SetupScripts\app.7z" ".\%destPathName%\*.*"
7z.exe a ".\SetupScripts\app.7z" ".\SetupScripts\installStatistics.bat"
7z.exe a ".\SetupScripts\app.7z" ".\SetupScripts\curl-7.60.0\AMD64\*.*"

@set DestPath=%cd%\%destPathName%\
@echo off& setlocal EnableDelayedExpansion

for /f "delims=" %%a in ('dir /ad/b %DestPath%') do (
7z.exe a ".\SetupScripts\app.7z" ".\%destPathName%\%%a"
@echo "compressing .\FilesToInstall\%%a"
)