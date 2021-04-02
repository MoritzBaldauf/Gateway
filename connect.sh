#!/bin/bash
#**************************************************************************
#* Date: 18.03.2021
#* Name: Moritz Baldauf
#* Hardware: Raspberry Pi 3B+
#*           RAK2013
#*           RAK2245
#*
#* Function: Establishes a connection trough sudo systemctl start rak-pppd.
#* Then we check if pppd is running, if so the if so the  connection
#* was built successfully.
#**************************************************************************
sudo systemctl start rak-pppd
#The Connection is established
sleep 1
#Wait for 1 Seconds to make sure the connection is finished
status=$(ps -A | grep pppd)
#Check if pppd is runnging
#and if so wirte it in $status
if [[ -z $status ]]; then
#Check if there is something written in $status If it is empty the
#connection was not established
        echo "Connection Error"
         echo "1"
 else
#If there is something written in $status then the connection was
#successful
        echo "Connection OK"
        echo "0"
fi





