@echo off
REM Démarre la base template esx LUFFYDEV
REM Rejoignez le Discord pour plus d'informations : https://discord.gg/3hnuZn5RC8
REM Chemin vers FXServer.exe (modifiez si nécessaire)
set FXSERVER_PATH=C:\Users\Shadow\Desktop\luffydev_template_esx\FXServer.exe

REM Chemin vers le dossier de ressources
set RESOURCES_PATH=%~dp0resources

REM Chemin vers le fichier de configuration
set CONFIG_PATH=%~dp0server.cfg

REM Lancer le serveur
echo Demarrage du serveur...
"%FXSERVER_PATH%" +exec "%CONFIG_PATH%"

pause