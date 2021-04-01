#!/bin/bash
#**************************************************************************
#   Date:     12.03.2021							 																	    
#   Name:     Moritz Baldauf													   										
#   Hardware: Raspberry PI 3B+                                            
#             RAK2013                                                     
#             RAK2245                                                     
#   Function: Disconnects the ppp0 connection and                         
#             returns a Message if successful. 							             
#													   																							  
#**************************************************************************
sudo killall pppd 
echo Connection closed 
