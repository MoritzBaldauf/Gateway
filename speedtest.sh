#!/bin/bash
#*****************************************************************************
#* Date: 18.03.2021
#* Name: Moritz Baldauf
#* Hardware: Raspberry Pi 3B+
#*           RAK2013
#*           RAK2245
#*
#* Function: Tests the speed of the Connection through ppp0
#*           If the installation for the files went wrong
#*   Check https://sbcguides.com/internet-speed-test-on-raspberry-pi/
#*****************************************************************************

if ! [ -d "/home/pi/fast_linux_arm" ]; then
#Check if the files are installed then run speed test
        fast

else
        echo "Installing missing files"
#If files are not installed give Error message
#and install the Files
        wget https://github.com/ddo/fast/releases/download/v0.0.4/fast_linux_arm
#get files from Github
        sudo install fast_linux_amd64 /usr/local/bin/fast
#install the Files
        echo "Files are now installed please run Speedtest again"

fi
