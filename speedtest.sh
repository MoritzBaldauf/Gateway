#!/bin/bash
#*****************************************************************************
#* Date: 18.03.2021
#* Name: Moritz Baldauf
#* Hardware: Raspberry Pi 3B+
#*           RAK2013
#*           RAK2245
#*
#* Function: Tests the speed of the Connection through ppp0
#*           If the installation for the file is still needed
#*   Check https://sbcguides.com/internet-speed-test-on-raspberry-pi/
#*****************************************************************************

if ! [ -d "/home/pi/fast_linux_arm" ]; then
#Check if the files are installed then run speed test
        fast
else
        echo "Please install the missing files"
#If files are not installed give Error message
fi
