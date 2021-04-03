#Please place baserom.us.z64 to the home directory

#Install dependencies

sudo apt update && sudo apt upgrade
sudo apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386

#Clone the repository

git clone https://github.com/djoslin0/sm64ex-coop.git

#Copy Paste

cp baserom.us.z64 ~/sm64ex-coop

#Make

cd sm64ex-coop && make TARGET_BITS=32 DISCORDRPS=1
