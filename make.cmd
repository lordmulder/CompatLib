@echo off
setlocal enabledelayedexpansion
cd /d "%~dp0"

if "%MSVC_PATH%"=="" (
	set "MSVC_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC"
)

if not exist "%MSVC_PATH%\Auxiliary\Build\vcvarsall.bat" (
	echo MSVC not found. Please check your MSVC_PATH and try again^^!
	pause
	goto:eof
)

for %%p in (x86,x64) do (
	call "%MSVC_PATH%\Auxiliary\Build\vcvarsall.bat" %%p
	for %%t in (Clean,Rebuild,Build) do (
		MSBuild.exe /property:Configuration=Release /property:Platform=%%p /target:%%t /verbosity:normal "%CD%\CompatLib.sln"
		if not "!ERRORLEVEL!"=="0" goto:BuildFailed
	)
)

echo.
echo Build completed successfully.
echo.
pause
goto:eof

:BuildFailed
echo.
echo Build has failed ^^!^^!^^!
echo.
pause
