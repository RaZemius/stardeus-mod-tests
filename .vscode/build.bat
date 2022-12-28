echo off

REM remove unnecessary assemblies
DEL /Q .\Libraries\*.*

REM remove obj cache
DEL /Q .\.vscode\obj\*.*

REM build dll
dotnet build .vscode
rem moving file
move .\Libraries\*.dll "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod"
copy ModInfo.json "C:\Users\fadee\AppData\LocalLow\Kodo Linija\Stardeus\Mods\newmod"
