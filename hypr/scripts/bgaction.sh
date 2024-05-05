#!/usr/bin/bash

#start swwww
swww query || swww init

#figure out which waybar theme is set
THEMEIS=$(readlink -f ~/.config/waybar/style.css | cut -d '-' -f2)

#show the correct wallpapper based on the theme
if [ $THEMEIS == "dark.css" ]; then
  swww img --resize crop -o DP-2  $HOME/.config/hypr/background/011_r.png
  swww img  -o HDMI-A-1  $HOME/.config/hypr/background/009.png
else
  swww img --resize crop -o DP-2 $HOME/.config/hypr/background/011_r.png
  swww img -o HDMI-A-1 $HOME/.config/hypr/background/009.png
fi
