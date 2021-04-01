#!/bin/bash
#**************************************************************************
#*	Date:		18.03.2021							 																	    
#*	Name:		Moritz Baldauf													   										
#*	Hardware:	Raspberry Pi 3B+                                            
#*            RAK2013                                                     
#*            RAK2245                                                     
#*	Function: Establishes a connection trough sudo pppd call gprs.
#*            The Message log is written in log.txt. 
#*            If connection is built successful. 							
#*													   																							  
#**************************************************************************

sudo pppd call gprs > log.txt &
#The Connection is established the message is written in log.txt
sleep 5
#Wait for 5 Seconds to make sure the connection is finished
status=$(grep -oh "status\s=\s0x[[:digit:]]" log.txt)
#Check if there is a status=s0x0 in log.txt and if so, we write it in $status
if [[ -z $status ]]; then 
#Check if there is something written in $status
#If it is empty the connection went wrong
        echo "Fehler beim Verbindungsaufbau"
        echo "1"
else
#If there is something written in $status then the connection is successful
        echo "Verbindung aufgebaut"
        echo "0"
fi




