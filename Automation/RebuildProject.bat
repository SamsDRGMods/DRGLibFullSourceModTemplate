@echo off

echo Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% == 0 (
	echo Success: Administrative permissions confirmed.
) else (
	echo Failure: Current permissions inadequate.
	pause
	exit
)

:: change the current directory to the bat location
pushd %~dp0

::make default config
if not(exist config.ini) do (
	call MakeDefaultConfig.bat
)

::Find variables in config.ini
for /f "tokens=1,2 delims==" %%g in (config.ini) do (
	if %%g==ProjectFolder set ProjectFolder=%%h
)

pushd "%cd%\.."

::verify project folder exists
if exist "%ProjectFolder%\" (
	echo found project folder
) else (
	echo unable to find project folder "%ProjectFolder%\". Please edit config.ini
	pause
	exit
)

echo downloading submodules
git submodule update --init

echo making symbolic link
rmdir "%ProjectFolder%\Content\DRGLib"
del "%ProjectFolder%\Content\DRGLib"
mklink /d "%ProjectFolder%\Content\DRGLib" "%cd%\DRGLibModule\DRGLib UE project\Content\DRGLib"

pause
