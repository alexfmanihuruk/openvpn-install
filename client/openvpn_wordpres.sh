#!/bin/sh
echo "get opnvpnClient"
wget https://raw.githubusercontent.com/alexfmanihuruk/openvpn-install/master/vpnfile/wordpres.ovpn

echo "Connect to vpn server (Observium)"
openvpn --config  wordpres.ovpn & 

echo "\n"
echo "\n"

echo "Install snmpd.."
apt -y install snmpd

echo "Get snmpd.conf"
wget https://raw.githubusercontent.com/alexfmanihuruk/openvpn-install/master/confd/wordpres/snmpd.conf

mv snmpd.conf /etc/snmp/
echo "Restart snmpd"
service snmpd restart

