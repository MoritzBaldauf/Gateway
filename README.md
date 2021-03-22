Adapted Version of the https://github.com/RAKWireless/rak_common_for_gateway for the usage of the RAK2013 and the RAK2245 together. 

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
sudo systemctl disable rak-pppd
sudo reboot
sudo ifconfig wlan0 down 
sudo ./connect 
sudo systemctl stop ttn-gateway
sudo systemctl start ttn-gateway
