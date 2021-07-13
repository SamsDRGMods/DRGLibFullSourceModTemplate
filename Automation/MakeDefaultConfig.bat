@echo off
echo making default config
copy nul config.ini
(
echo ProjectFolder=FSD
echo ContentFolder=NA
echo C:\Program Files (x86)\UE_4.25\Engine\Binaries\Win64
) > Config.ini