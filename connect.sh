#!/bin/bash
#**************************************************************************
#*	Date:		12.03.2021							 																	    
#*	Name:		Moritz Baldauf													   										
#*	Hardware:	Raspberry PI 3B+                                            
#*            RAK2013                                                     
#*            RAK2245                                                     
#*	Function: Establishes a connection trough sudo pppd call gprs and     
#*            returns a Message if connection is successful. 							
#*													   																							  
#**************************************************************************

sudo pppd call gprs &
echo "Connection OK"

