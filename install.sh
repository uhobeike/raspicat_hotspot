#!/bin/bash -e
sudo apt-get install -y dnsmasq hostapd network-manager
git clone https://github.com/oblique/create_ap
cd create_ap
make install
cd -
cp $(find `pwd` -name raspicat_hotspot.sh) $HOME/raspicat_hotspot.sh
sudo ln -s $(find `pwd` -name raspicat_hotspot.service) /etc/systemd/system/raspicat_hotspot.service
sudo systemctl enable raspicat_hotspot.service
sudo systemctl start raspicat_hotspot.service