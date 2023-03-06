#!/bin/bash

# Define the filename containing the list of allowed IP addresses
ALLOWED_IPS_FILE="allowed_ips.txt"

# Loop through the list of IP addresses and add them to the allowed hosts list
while read -r IP_ADDRESS; do
  iptables -A INPUT -p tcp --dport 8080 -s "$IP_ADDRESS" -j ACCEPT
done < "$ALLOWED_IPS_FILE"

# Drop all other incoming connections to port 8080
iptables -A INPUT -p tcp --dport 8080 -j DROP
