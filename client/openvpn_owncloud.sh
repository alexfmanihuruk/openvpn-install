#!/bin/sh
echo "get opnvpnClient"
wget https://raw.githubusercontent.com/alexfmanihuruk/openvpn-install/master/client/owncloud.ovpn

echo "Connect to vpn server (Observium)"
openvpn --config  owncloud.ovpn & 
