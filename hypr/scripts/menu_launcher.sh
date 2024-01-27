#!/usr/bin/env bash

## Copyright (C) 2023 Ticks <ticks.cc@gmail.com>
##
## Start Launcher Script
##

dir="${HOME}/.config/rofi"
menu_style="${dir}/launcher.rasi"

rofi -show drun -theme ${menu_style} 2>/dev/null
