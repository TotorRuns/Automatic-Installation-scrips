#!/bin/bash
if
    echo "Checking for US...."
    test -f "baserom.us.z64"
then
    echo "baserom.us.z64 exists.  Proceeding with installation."
    echo "Upgrading files...."
    sudo apt update && sudo apt upgrade
    echo "Done."
    echo "Installing dependencies...."
    sudo apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386 -y
    echo "Done."
    echo "Cloning GitHub repo...."
    git clone https://github.com/djoslin0/sm64ex-coop.git
    echo "Done."
    echo "Copying files...."
    cp baserom.us.z64 ~/sm64ex-coop
    echo "Done."
    echo "Compiling (THIS WILL TAKE A WHILE)"
    cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1

else
    if
        echo "baserom.us.z64 doesn't exist, checking for JP...."
        test -f "baserom.jp.z64"
    then
        echo "baserom.jp.z64 exits.  Proceeding with installation."
        echo "Upgrading files...."
        sudo apt update && sudo apt upgrade
        echo "Done."
        echo "Installing dependencies...."
        sudo apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386 -y
        echo "Done."
        echo "Cloning GitHub repo...."
        git clone https://github.com/djoslin0/sm64ex-coop.git
        echo "Done."
        echo "Copying files...."
        cp baserom.jp.z64 ~/sm64ex-coop
        echo "Done."
        echo "Compiling (THIS WILL TAKE A WHILE)"
        cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1

    else
        if
            echo "baserom.jp.z64 doesn't exist, checking for PAL...."
            test -f "baserom.eu.z64"
        then
            echo "baserom.eu.z64 exists.  Proceeding with installation."
            echo "Upgrading files...."
            sudo apt update && sudo apt upgrade
            echo "Done."
            echo "Installing dependencies...."
            sudo apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386 -y
            echo "Done."
            echo "Cloning GitHub repo...."
            git clone https://github.com/djoslin0/sm64ex-coop.git
            echo "Done."
            echo "Copying files...."
            cp baserom.eu.z64 ~/sm64ex-coop
            echo "Done."
            echo "Compiling (THIS WILL TAKE A WHILE)"
            cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1

        else
            if
                echo "baserom.eu.z64 doesn't exist, checking for JP-V2"
                test -f "baserom.sh.z64"
            then
                echo "baserom.sh.z64 exists. Proceeding with installation."
                echo "Upgrading files...."
                sudo apt update && sudo apt upgrade
                echo "Done."
                echo "Installing dependencies...."
                sudo apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386 -y
                echo "Done."
                echo "Cloning GitHub repo...."
                git clone https://github.com/djoslin0/sm64ex-coop.git
                echo "Done."
                echo "Copying files...."
                cp baserom.sh.z64 ~/sm64ex-coop
                echo "Done."
                echo "Compiling (THIS WILL TAKE A WHILE)"
                cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1

            else
                echo 'You have no baseroms in the directory!
Legally obtain a dump of Super Mario 64, and name it
"baserom.*Game Version*.z64".  Then run this script again.'
            fi
        fi
    fi
fi
