#!/bin/bash
if
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
