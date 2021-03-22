This is an Adapted Version of the https://github.com/RAKWireless/rak_common_for_gateway directory for the usage of the RAK2013 and the RAK2245 together. 

Note: The connection between RAK2245 and RAK2013 has to be as schown in Connection.png
https://github.com/MoritzBaldauf/Gateway/blob/main/Connection.png


Installation: 

sudo apt update

sudo apt install git

git clone https://github.com/MoritzBaldauf/Gateway

cd Gateway

sudo ./install.sh

cd /usr/local/rak/bin

cd lte

sudo ./ppp-creator.sh

sudo /usr/local/rak/lte/ppp-creator.sh mass.at ttyAMA0 115200

cd ..

sudo rm /opt/ttn-gateway/packet_forwarder/lora_pkt_fwd/global_conf.json

sudo cp global_conf.json /opt/ttn-gateway/packet_forwarder/lora_pkt_fwd

  //Note: global_conf.json is for the usage with the European frequencies

sudo systemctl disable rak-pppd

sudo reboot

sudo ifconfig wlan0 down 

sudo ./connect 

sudo systemctl stop ttn-gateway

sudo systemctl start ttn-gateway
