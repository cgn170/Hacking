#|/bin/bash 
#
# Small script to increase power signal in wireless cards, only works if you have a wireless card with 1 watt of power or more, very useful for packet injection attacks.
#
# @cgn170
#
sudo ifconfig $1 down
sudo iw reg set US
sudo ifconfig $1 up
sudo iwconfig $1 txpower 30
