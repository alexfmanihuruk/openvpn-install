#!/bin/sh
for i in `more userlistvpn.txt `
  do
   echo "Create vpn for $i"

   echo "1\n$i\n" | ./openvpn-install.sh
  done


