@echo off
# Detects if docker is installed
echo detecting docker
docker-compose --version >nul 2>&1 && (
    goto end
) || (
    goto Install
)

:Install
echo Docker is not installed.
set /p stop= If you would not like to install docker, press ctrl+c now..
cd %userprofile%\Downloads
del "Docker Desktop Installer.exe"
powershell curl https://desktop.docker.com/win/stable/Docker%20Desktop%20Installer.exe
"Docker Desktop Installer.exe"
goto Delete


:end
echo Docker was already installed!
sleep 3
goto Delete

:Delete
