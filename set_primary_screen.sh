#!/bin/bash

xrandr | grep -i "HDMI1 connected" > /dev/null 
if [ $? -eq 0 ]; then 
 xrandr --output HDMI1 --primary
fi
xrandr | grep -i "HDMI3 connected" > /dev/null 
if [ $? -eq 0 ]; then 
 xrandr --output HDMI3 --primary
fi



