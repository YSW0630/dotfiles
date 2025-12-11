#!/usr/bin/env bash

# GNOME/DBus env for cron
UID_NUM="$(id -u)"
export DISPLAY="${DISPLAY:-:0}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$UID_NUM}"
export DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=/run/user/$UID_NUM/bus}"

# If the session bus is not ready (before GNOME login), then exit
[ -S "$XDG_RUNTIME_DIR/bus" ] || exit 0

# Neon-wallpapers
WALLPAPERS=( "$HOME/.local/share/backgrounds/"*neon*.jpg )

# Read/Write the value in wall_index
STATE="$HOME/.local/state/auto-neon/wall_index"
mkdir -p "$(dirname "$STATE")"

[[ -f "$STATE" ]] && idx=$(<"$STATE") || idx=0
(( idx = (idx + 1) % ${#WALLPAPERS[@]} ))
echo "$idx" > "$STATE"

# Set my wallpaper
URI="file://${WALLPAPERS[$idx]}"
gsettings set org.gnome.desktop.background picture-uri "$URI"
gsettings set org.gnome.desktop.background picture-uri-dark "$URI"
gsettings set org.gnome.desktop.background picture-options 'zoom'
