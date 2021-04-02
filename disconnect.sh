#!/bin/bash
#**************************************************************************
#*   Date:      12.03.2021							 																	    
#*   Name:      Moritz Baldauf													   										
#*   Hardware:  Raspberry PI 3B+                                            
#*              RAK2013                                                     
#*              RAK2245  
#*
#*   Function:  Disconnects the ppp0 connection and                         
#*              returns a Message if successful. 							             
#*													   																							  
#**************************************************************************

statusvor=$(ps -A | grep pppd)
#Checks if there is a ppp connection running
if [[ -z $statusvor ]]; then
#If there is no Connection return an Error
        echo "Could not find any connection"
        exit;
else
#Else close the connection
        sudo systemctl stop rak-pppd
        sleep 1
fi

statusnach=$(ps -A | grep pppd)
#Check if there is still a Connection running
if [[ -z $statusnach ]]; then
#If not the task was succesfull
        echo "Interent Connection has been stoped"
        echo "0"
else
#If ther is still a Connection return a Error Message  
        echo "Error when trying to stop Internet Connection"
        echo "1"
fi
