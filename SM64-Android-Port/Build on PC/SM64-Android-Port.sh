#!/bin/bash
if
    test -f "~/SM64-Android-Port.sh"
then
    echo "The file is in the home directory, proceeding."

else
    if
        test -f "SM64-Android-Port.sh"
    then
        cp SM64-Android-Port.sh ~/SM64-Android-Port.sh
        echo "Fixed an issue, make sure that the file
is run from your home directory next time!"
        chmod +x ~/SM64-Android-Port.sh
        ~/SM64-Android-Port.sh

    else
        echo "Couldn't find the file in the home directory or the current directory!
                    Please make sure that you didn't rename the file and try again."
    fi
fi
