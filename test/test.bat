chcp 65001
@echo off
@setlocal ENABLEDELAYEDEXPANSION
@set DestPath=%cd%\FilesToInstall\
@echo !DestPath!
@set var=test & echo !var!
@for /l %%i in (1,1,5) do (set var=%%i & echo !var!)

dir /ad/b %cd%

set DestPath=%cd%


for /f "delims=" %%a in ('dir /ad/b %DestPath%') do (
@echo %%a 
@echo "compressing .\FilesToInstall\%%a"
)

rem for /f "delims=、-. tokens=12-4" %%i in (!DestPath!/歌曲列表.txt) do echo %%i %%j %%k %%l
rem for /f "tokens=12-4 delims=、-." %%i in (歌曲列表.txt) do echo %%i %%j %%k %%l
for /f "tokens=2 delims=、" %%i in (歌曲列表.txt) do echo %%i


pause
