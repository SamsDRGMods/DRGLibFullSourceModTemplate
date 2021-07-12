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

rem change the current directory to the bat location
pushd %~dp0

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

echo downloading submodule
git submodule update --init

echo making symbolic link
rmdir "%cd%\%ProjectFolder%\Content\DRGLib"
del "%cd%\%ProjectFolder%\Content\DRGLib"
mklink /d "%cd%\%ProjectFolder%\Content\DRGLib" "%cd%\DRGLibModule\DRGLib UE project\Content\DRGLib"

pause
