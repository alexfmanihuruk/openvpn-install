#!/bin/sh
echo "get opnvpnClient"
wget https://github.com/alexfmanihuruk/openvpn-install/client/owncloud.ovpn

echo "Connect to vpn server (Observium)"
openvpn --config  owncloud.opvn & 
