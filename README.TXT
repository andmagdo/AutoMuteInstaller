INSTALL DOCKER BEFORE DOING THIS!!!

Docker-compose will be able to pull files, but WILL NOT RUN CORRECTLY IF YOU DO NOT EDIT
THE .env FILE IN {installation}\CONFIG.
Make sure to change these variables in .env to allow the bot to run:
DISCORD_BOT_TOKEN=Nx... 
GALACTUS_HOST= https://127.0.0.1:69420
GALACTUS_EXTERNAL_PORT=69420

We have provided a script to run Docker automatically, you will find it as DefaultRun.bat

In the case that you want to run this manually, the commands are as follows:

1) cd {installation}\config 

This puts the terminal in the right position for creating the container.

2) docker-compose pull 

This will download most recent version of dependencies.

3) docker-compose up [-d]

This will start the bot in the terminal; Use the -d to run in the background.
