This folder contains various bat files to help you automate your projects. 

Config.ini: This ini contains various key/value pairs for the bats to use
	ProjectFolder: This represents the folder your Uproject is sitting in. default=FSD
	ContentFolder: This represents the folder inside content which your mod is in. default=NA
	UnrealPakLocation: This represents the folder that UnrealPak.exe. default=C:\Program Files (x86)\UE_4.25\Engine\Binaries\Win64

RebuildProject.bat: Run this as administrator to download the submodules and create a link for the DRGLib folder inside
UpdateModules.bat: Run this to update each of the submodules, for when a patch comes out
MakeDefaultConfig.bat: Run this to reset all the options in config.bat
