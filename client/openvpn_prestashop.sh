#!/bin/sh
echo "get opnvpnClient"
wget https://github.com/alexfmanihuruk/openvpn-install/client/prestashop.ovpn

echo "Connect to vpn server (Observium)"
sudo openvpn --config  prestashop.opvn & 
