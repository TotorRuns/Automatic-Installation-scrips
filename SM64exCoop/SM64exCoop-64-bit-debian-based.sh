#!/bin/bash
if
    echo "Checking for US...."
    test -f "baserom.us.z64"
then
    echo "baserom.us.z64 exists.  Proceeding with installation."
    echo "Copying everything into a temporary directrory..."
    if
        test -f "/tmp/sm64exCompiling" # Tests if there is a file called that because I learned that it could screw EVERYTHING up and could realisticly happen somehow.
    then
        rm -f "/tmp/sm64exCompiling" # Deletes the file if the previous thing was true.
    else
        if
            test "/tmp/sm64exCompiling" # Tests for if the folder already exists.
        then
            echo "Temporary directory already exists!  Deleting it...."
            rm -f -r "/tmp/sm64exCompiling" # And deletes it if it does.
        else
            if
                mkdir /tmp/sm64exCompiling                                                                # Makes the directory
                cd /tmp/sm64exCompiling || echo "Something went wrong, please report the error code '1'." # 1st part: CD's into the directory       2nd part: Gives an error code if it can't cd into it (like if it doesn't exist because something went wrong with the previous code).
                cp "baserom.us.z64" "/tmp/sm64exCompiling"
            then
                echo "Done!"
            else
                echo "Something went wrong, please give error code '2'."
            fi
        fi
    fi
    echo "Upgrading files...."
    sudo apt update && sudo apt upgrade
    echo "Done."
    echo "Installing dependencies...."
    sudo apt install build-essential git python3 libglew-dev libsdl2-dev -y
    echo "Done."
    echo "Cloning GitHub repo...."
    git clone https://github.com/djoslin0/sm64ex-coop.git
    echo "Done."
    echo "Copying files...."
    cp baserom.us.z64 /tmp/sm64exCompiling/sm64ex/baserom.us.z64
    echo "Done."
    echo "Compiling (THIS WILL TAKE A WHILE)"
    cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1 VERSION=us
    mv "/tmp/sm64exCompiling/sm64ex-coop" "$HOME/sm64ex-coop" # "~" doesn't work within quotes.
else
    if
        echo "baserom.us.z64 doesn't exist, checking for JP...."
        test -f "baserom.jp.z64"
    then
        echo "baserom.jp.z64 exits.  Proceeding with installation."
        if
            test -f "/tmp/sm64exCompiling" # Tests if there is a file called that because I learned that it could screw EVERYTHING up and could realisticly happen somehow.
        then
            rm -f "/tmp/sm64exCompiling" # Deletes the file if the previous thing was true.
        else
            if
                test "/tmp/sm64exCompiling" # Tests for if the folder already exists.
            then
                echo "Temporary directory already exists!  Deleting it...."
                rm -f -r "/tmp/sm64exCompiling" # And deletes it if it does.
            else
                if
                    mkdir /tmp/sm64exCompiling                                                                # Makes the directory
                    cd /tmp/sm64exCompiling || echo "Something went wrong, please report the error code '1'." # 1st part: CD's into the directory       2nd part: Gives an error code if it can't cd into it (like if it doesn't exist because something went wrong with the previous code).
                    cp "baserom.jp.z64" "/tmp/sm64exCompiling"
                then
                    echo "Done!"
                else
                    echo "Something went wrong, please give error code '2'."
                fi
            fi
        fi
        echo "Upgrading files...."
        sudo apt update && sudo apt upgrade
        echo "Done."
        echo "Installing dependencies...."
        sudo apt install build-essential git python3 libglew-dev libsdl2-dev -y
        echo "Done."
        echo "Cloning GitHub repo...."
        git clone https://github.com/djoslin0/sm64ex-coop.git
        echo "Done."
        echo "Copying files...."
        cp baserom.jp.z64 /tmp/sm64ex-coop/baserom.jp.z64
        echo "Done."
        echo "Compiling (THIS WILL TAKE A WHILE)"
        cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1 VERSION=jp
        mv "/tmp/sm64exCompiling/sm64ex-coop" "$HOME/sm64ex-coop" # "~" doesn't work within quotes.
    else
        if
            echo "baserom.jp.z64 doesn't exist, checking for PAL...."
            test -f "baserom.eu.z64"
        then
            echo "baserom.eu.z64 exists.  Proceeding with installation."
            if
                test -f "/tmp/sm64exCompiling" # Tests if there is a file called that because I learned that it could screw EVERYTHING up and could realisticly happen somehow.
            then
                rm -f "/tmp/sm64exCompiling" # Deletes the file if the previous thing was true.
            else
                if
                    test "/tmp/sm64exCompiling" # Tests for if the folder already exists.
                then
                    echo "Temporary directory already exists!  Deleting it...."
                    rm -f -r "/tmp/sm64exCompiling" # And deletes it if it does.
                else
                    if
                        mkdir /tmp/sm64exCompiling                                                                # Makes the directory
                        cd /tmp/sm64exCompiling || echo "Something went wrong, please report the error code '1'." # 1st part: CD's into the directory       2nd part: Gives an error code if it can't cd into it (like if it doesn't exist because something went wrong with the previous code).
                        cp "baserom.eu.z64" "/tmp/sm64exCompiling"
                    then
                        echo "Done!"
                    else
                        echo "Something went wrong, please give error code '2'."
                    fi
                fi
            fi
            echo "Upgrading files...."
            sudo apt update && sudo apt upgrade
            echo "Done."
            echo "Installing dependencies...."
            sudo apt install build-essential git python3 libglew-dev libsdl2-dev -y
            echo "Done."
            echo "Cloning GitHub repo...."
            git clone https://github.com/djoslin0/sm64ex-coop.git
            echo "Done."
            echo "Copying files...."
            cp baserom.eu.z64 /tmp/sm64exCompiling/sm64ex-coop/baserom.eu.z64
            echo "Done."
            echo "Compiling (THIS WILL TAKE A WHILE)"
            cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1 VERSION=eu
            mv "/tmp/sm64exCompiling/sm64ex-coop" "$HOME/sm64ex-coop" # "~" doesn't work within quotes.
        else
            if
                echo "baserom.eu.z64 doesn't exist, checking for JP-V2"
                test -f "baserom.sh.z64"
            then
                echo "baserom.sh.z64 exists. Proceeding with installation."
                if
                    test -f "/tmp/sm64exCompiling" # Tests if there is a file called that because I learned that it could screw EVERYTHING up and could realisticly happen somehow.
                then
                    rm -f "/tmp/sm64exCompiling" # Deletes the file if the previous thing was true.
                else
                    if
                        test "/tmp/sm64exCompiling" # Tests for if the folder already exists.
                    then
                        echo "Temporary directory already exists!  Deleting it...."
                        rm -f -r "/tmp/sm64exCompiling" # And deletes it if it does.
                    else
                        if
                            mkdir /tmp/sm64exCompiling                                                                # Makes the directory
                            cd /tmp/sm64exCompiling || echo "Something went wrong, please report the error code '1'." # 1st part: CD's into the directory       2nd part: Gives an error code if it can't cd into it (like if it doesn't exist because something went wrong with the previous code).
                            cp "baserom.sh.z64" "/tmp/sm64exCompiling"
                        then
                            echo "Done!"
                        else
                            echo "Something went wrong, please give error code '2'."
                        fi
                    fi
                fi
                echo "Upgrading files...."
                sudo apt update && sudo apt upgrade
                echo "Done."
                echo "Installing dependencies...."
                sudo apt install build-essential git python3 libglew-dev libsdl2-dev -y
                echo "Done."
                echo "Cloning GitHub repo...."
                git clone https://github.com/djoslin0/sm64ex-coop.git
                echo "Done."
                echo "Copying files...."
                cp baserom.sh.z64 /tmp/sm64exCompiling/sm64ex-coop/baserom.sh.z64
                echo "Done."
                echo "Compiling (THIS WILL TAKE A WHILE)"
                cd sm64ex-coop && make TARGET_BITS=64 DISCORDRPC=1 VERSION=sh
                mv "/tmp/sm64exCompiling/sm64ex-coop" "$HOME/sm64ex-coop" # "~" doesn't work within quotes.
            else
                echo 'You have no baseroms in the directory!
Legally obtain a dump of Super Mario 64, and name it
"baserom.*Game Version*.z64".  Then run this script again.'
            fi
        fi
    fi
fi
rm -f -r /tmp/sm64exCompiling
