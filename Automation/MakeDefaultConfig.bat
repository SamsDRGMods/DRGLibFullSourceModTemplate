@echo off
echo making default config
copy nul config.ini
(
echo ProjectFolder=FSD
echo ContentFolder=NA
) > config.ini