#!/bin/sh
echo "get opnvpnClient"
wget https://github.com/alexfmanihuruk/openvpn-install/client/wordpres.ovpn

echo "Connect to vpn server (Observium)"
openvpn --config  wordpres.opvn & 
