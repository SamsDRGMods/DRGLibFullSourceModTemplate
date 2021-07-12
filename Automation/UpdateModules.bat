@echo off

pushd %~dp0
pushd "%cd%\.."
echo updating submodules
git submodule update --remote
echo done
pause