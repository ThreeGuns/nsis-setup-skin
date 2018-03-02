del ".\SetupScripts\app.7z"

@set destPathName="..\bqj-client-edition\release\win-unpacked"

rem 生成app.7z
7z.exe a ".\SetupScripts\app.7z" ".\%destPathName%\*.*"

@set DestPath=%cd%\%destPathName%\
@echo off& setlocal EnableDelayedExpansion

for /f "delims=" %%a in ('dir /ad/b %DestPath%') do (
7z.exe a ".\SetupScripts\app.7z" ".\%destPathName%\%%a"
@echo "compressing .\FilesToInstall\%%a"
)