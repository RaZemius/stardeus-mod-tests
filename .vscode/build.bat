echo off

REM remove unnecessary assemblies
DEL /Q .\Libraries\*.*

REM remove obj cache
DEL /Q .\.vscode\obj\*.*

REM build dll
dotnet build .vscode
rem moving file
DEL "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod" /S /q
xcopy .\Libraries "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod\Libraries\" /e
copy ModInfo.json "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod\"
xcopy .\Graphics "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod\Graphics\" /e
xcopy .\translations "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod\translations\" /e
xcopy .\Definitions "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod\Defenitions\" /e 
xcopy .\config "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod\config\" /e
rem start "C:\Program Files (x86)\Steam\steamapps\common\Stardeus\Stardeus.exe"