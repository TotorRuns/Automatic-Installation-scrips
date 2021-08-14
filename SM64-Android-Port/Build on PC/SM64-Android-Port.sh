#!/bin/bash
if # Enter thing is basically redundant now, this would never work, but something breaks if it's removed
    test -f "SM64-Android-Port.sh"
then
    echo "File exists!"
else
    cp SM64-Android-Port.sh ~/SM64-Android-Port.sh
    echo "Fixed an issue, make sure that the file
is run from your home directory next time!"
    chmod +x ~/SM64-Android-Port.sh
    ~/SM64-Android-Port.sh
fi

echo "Installing dependencies...."

echo "Need your username in order to tell what command to use,
please type your username, if it's incorrect, it could break the code
(we won't steal it, you can see the source code)"

read username # Reads keyboard input from the user and saves it to the "username" variable

if $username != "root"; then                                                          # If the username is not root...
    sudo apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386 -y # Use sudo!
else
    if $username == "root"; then                                                     # If the username is root...
        apt install build-essential git python3 libglew-dev:i386 libsdl2-dev:i386 -y # Don't use sudo!
    fi
fi

echo "Done installing dependencies."

echo "Which branch of the port do you want?"
echo "master"
echo "Barely any differences, just the vanilla game."
echo ""
echo "sm64ex"
echo "Master branch of sm64ex, basically the vanilla game with a lot of modifications to allow modding."
echo ""
echo "sm64ex_nightly"
echo "Nightly branch of sm64ex, same as last one, but with the latest code, and more modding capabilities (use this one for custom models!)"
read branchToUse # Reds keyboard input and saves it to the "branchToUse" variable.

if
    $branchToUse = "master"
then
    git clone --recursive https://github.com/VDavid003/sm64-port-android-base
else
    if
        $branchToUse = "sm64ex"
    then
        git clone --recursive https://github.com/VDavid003/sm64-port-android-base/tree/sm64ex
    else
        if
            $branchToUse = "sm64ex_nightly"
        then
            echo "Cloning...."
            git clone --recursive https://github.com/VDavid003/sm64-port-android-bae/tree/sm64ex_nightly
            echo "Done!"
        fi
    fi
fi
cd sm64-port-android-base

echo "Which baserom do you have?"
echo "(type "us", "jp", "eu", or "sh" (USA, Japanese, PAL, and Shindou versions respectively)"
read gameVersion
echo "Copying $gameVersion ROM to the port directory..."
cp baserom.$gameVersion.z64 ./app/jni/src/baserom.$gameVersion.z64
./getSDL.sh

# Building

echo "How many CPU cores do you have? (PUTTING ANYTHING THAT ISNT A NUMBER WILL BREAK THE SCRIPT!!!!!)"

read cores

cd app/jni/src
make --jobs $cores
cd ../../..

# Done building, compiling it into an APK

./gradlew assembleDebug

# Done, showing the user their accompishments :)

cd ./app/build/outputs/apk/debug/

ls
