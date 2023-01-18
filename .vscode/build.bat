echo off

REM remove unnecessary assemblies
DEL /Q .\Libraries\*.*

REM remove obj cache
DEL /Q .\.vscode\obj\*.*

REM build dll
dotnet build .vscode
rem moving file
DEL "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod" /q
move .\Libraries\*.dll "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod"
copy ModInfo.json "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod"
rem start "C:\Program Files (x86)\Steam\steamapps\common\Stardeus\Stardeus.exe"