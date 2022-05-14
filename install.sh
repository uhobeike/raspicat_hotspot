#!/bin/bash -e
sudo apt-get install -y dnsmasq hostapd network-manager
git clone https://github.com/oblique/create_ap
cd create_ap
make install
cd -
cp $(find `pwd` -name raspicat_hotspot.sh) $HOME/raspicat_hotspot.sh