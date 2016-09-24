#!/bin/bash

# figure out whichg screens are connected
#xrandr | grep ' connected'

# set the primary screen
sudo xrandr --output HDMI1 --primary
