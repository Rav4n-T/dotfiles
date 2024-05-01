#!/usr/bin/bash

#start swwww
swww query || swww init

#figure out which waybar theme is set
THEMEIS=$(readlink -f ~/.config/waybar/style.css | cut -d '-' -f2)

#show the correct wallpapper based on the theme
if [ $THEMEIS == "dark.css" ]; then
  swww img --resize crop -o HDMI-A-1  ~/Pictures/wallpaper/tes5.jpg
  swww img  -o DP-2  ~/Pictures/wallpaper/tes7.jpg
else
  swww img --resize crop -o HDMI-A-1 ~/Pictures/wallpaper/test2.jpg
  swww img -o DP-2 ~/Pictures/wallpaper/test1.jpg
fi
