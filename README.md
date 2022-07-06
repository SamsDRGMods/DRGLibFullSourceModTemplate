# DRGLibFullSourceModTemplate
This repo includes a submodule for DRGLib, so that it automatically includes the full source of DRGLib. This does mean you may have extra clutter, so if you'd prefer a cleaner approach, check out [the DRGLib devkit](https://github.com/SamsDRGMods/DRGLibDevkitFiles).

It is based off of the [FSD template](https://github.com/DRG-Modding/FSD-Template) as well, so it includes the headers and plugins from that project

## Using this template
1. Clone the repository/create your own repo using this as a template(And clone)
2. Run Automation/RebuildProject.bat (This .bat will download the current version of DRGLib, then link it into the FSD uproject
3. When editing your project: **DO NOT EDIT ANYTHING IN Content\DRGLib**. Any changes you make there will **not** be sent back to the main DRGLib repository[^1], and so this may result in crashes/make it difficult to update your project

You've successfully setup your project to use DRGLib! If you need to update your project to a newer version of DRGLib, just run Automation/UpdateModules.bat . I'll do my best to keep DRGLib backwards compatible, but I am mearly a mortal dwarf. Updating should usually only be needed if you want to access a new feature of DRGLib. 

[^1]: Ok so that's not *technically* true if you have permissions to commit straight to DRGLib's repo, but you don't so boo hoo for you
