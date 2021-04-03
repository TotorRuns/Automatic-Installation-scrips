#Please place before running the script the baserom.us.z64 in the home directory!

#Install dependencies

sudo apt update && sudo apt upgrade
sudo apt install build-essential git python3 libglew-dev libsdl2-dev

#Clone the github repository

git clone https://github.com/djoslin0/sm64ex-coop.git

#Move the baserom.us.z64 into the cloned directory

cp baserom.us.z64 ~/sm64ex-coop

#Build

cd sm64ex-coop && make DISCORDRPC=1

