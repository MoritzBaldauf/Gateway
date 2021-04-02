#!/bin/bash
#**************************************************************************
#   Date:       12.03.2021							 																	    
#   Name:       Moritz Baldauf													   										
#   Hardware:   Raspberry PI 3B+                                            
#               RAK2013                                                     
#               RAK2245  
#
#   Function: Disconnects the ppp0 connection and                         
#             returns a Message if successful. 							             
#													   																							  
#**************************************************************************

statusvor=$(ps -A | grep pppd)
if [[ -z $statusvor ]]; then
        echo "Keine Verbindung vorhanden"
        exit;
else
        sudo systemctl stop rak-pppd
        sleep 1
fi

statusnach=$(ps -A | grep pppd)
if [[ -z $statusnach ]]; then
        echo "Internetverbindung wurde beendet"
        echo "0"
else
        echo "Internetverbindung konnte nicht beendet werden"
        echo "1"
fi
