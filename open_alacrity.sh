#!/bin/bash

# Instructions
name=$(echo $0 | sed 's/.*\///')
if [ $# -ne 1 ]; then
echo "
This script does this:

# launch an app if it isn't launched yet, 
# focus the app if it is launched but not focused,
# minimize the app if it is focused. 

Usage: $name app

Example: 

$name gcalctool
"
exit 1

fi

tool1=$(which xdotool)
tool2=$(which wmctrl)

if [ -z $tool1 ]; then
    echo "Xdotool is needed, do you want to install it now? [Y/n]"
    read a 
    if [[ $a == "Y" || $a == "y" || $a = "" ]]; then
        sudo apt-get install xdotool
    else
        echo "Exiting then..."
        exit 1
    fi
fi

if [ -z $tool2 ]; then
    echo "Wmctrl is needed, do you want to install it now? [Y/n]"
    read a 
    if [[ $a == "Y" || $a == "y" || $a = "" ]]; then
        sudo apt-get install wmctrl
    else
        echo "Exiting then..."
        exit 1
    fi
fi


# Check if the app is running
pid=$(pidof $1)
# If it isn't launched, then launch
if [ -z $pid ]; then
    $1 
    exit 0
else  

# If it is launched then check if it is focused
foc=$(xdotool getactivewindow getwindowpid)

    if [[ $pid == $foc ]]; then
        # if it is focused, then minimize
        xdotool getactivewindow windowminimize
        exit 0

    else
        # if it isn't focused then get focus
        wmctrl -x -R $1
        exit 0

    fi
fi

exit 0
