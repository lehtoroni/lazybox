#!/bin/bash

# This script parses an IP address from a text file (see below)
# and opens an SSH connection with port forwards to it.

# Example of the file:

# 
# === ComputerHostname ===
# timestamp: Sun May 09 2021 00:15:02 GMT+0300 (Eastern European Summer Time)
# ip: xx.xxx.xxx.xxx
# 

ssh_user="roni"
ip_file="~/Dropbox/ip.txt"

IP="$(cut -d' ' -f2 <<< $(sed '4q;d' ${ip_file}))"
echo "Home ip: $IP"

# (see if you need all of the forwarded ports)
ssh ${ssh_user}@${IP} -p 2022 -L 3306:localhost:3306 -L 8081:localhost:80 -L 5901:localhost:5901 -L 3389:localhost:3389 -4
