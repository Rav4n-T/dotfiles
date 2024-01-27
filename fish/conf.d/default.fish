set -x HOME /home/Rav4n

set -x PATH ~/.local/share/go/bin $PATH

# Theme
set -x XCURSOR_THEME "volantes"
set -x XCURSOR_SIZE 14
set -x GDK_BACKEND "wayland,x11"

# XDG Specifications
set -x XDG_CURRENT_DESKTOP "Hyprland"
set -x XDG_SESSION_TYPE "wayland"
set -x XDG_SESSION_DESKTOP "Hyprland"

# QT
set -x QT_QPA_PLATFORM "wayland;xcb"
set -x QT_WAYLAND_DISABLE_WINDOWDECORATION 1
set -x QT_QPA_PLATFORMTHEME "qt5ct"

# other
set -x LC_ALL "en_US.UTF-8"
set -x LANG "zh_CN.UTF-8"
set -x LANGUAGE "zh_CN:en_US"

# fcitx5
set -x GTK_IM_MODULE "fcitx"
set -x QT_IM_MODULE "fcitx"
set -x XMODIFIERS "@im=fcitx"

set -x LIBSEAT_BACKEND "logind"

# nodejs
# set -x NODE_OPTIONS "--openssl-legacy-provider"
