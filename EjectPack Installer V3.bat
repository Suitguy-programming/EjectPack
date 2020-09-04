@echo off
Title ResourcePack - Installer - V3 - Made by Suitguy
color 2
mode con lines=3 cols=67
del %appdata%\.minecraft\resourcepacks\EjectPack.zip
bitsadmin /transfer mydownloadjob /download /priority FOREGROUND "https://example.com/texturepacklink.txt" "%cd%\texturepacklink.txt"
set /p Build=<texturepacklink.txt
echo %Build%
bitsadmin /transfer mydownloadjob /download /priority FOREGROUND "%Build%" "%appdata%\.minecraft\resourcepacks\ResourcePack.zip"
del %cd%\linkejectpack.txt
Msg * "Installation Done!" 
exit
                                           