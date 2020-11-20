@echo off

REM Detects if docker is installed

docker-compose --version >nul 2>&1 && (
    goto Bot
) || (
    goto Install
)

REM change cd location to install location\config if moving this file
:Bot
cd config
docker-compose pull
docker-compose up -d
echo Started!
sleep 3
goto EOF

:Install
echo Docker is not installed.
set /p stop= If you would not like to install docker, press ctrl+c now..
cd %userprofile%\Downloads
del "Docker Desktop Installer.exe"
powershell curl https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe
"Docker Desktop Installer.exe"
