#!/usr/bin/env bash

# GNOME/DBus env for cron
UID_NUM="$(id -u)"
export DISPLAY="${DISPLAY:-:0}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$UID_NUM}"
export DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=/run/user/$UID_NUM/bus}"

# If the session bus is not ready (before GNOME login), then exit
[ -S "$XDG_RUNTIME_DIR/bus" ] || exit 0

# Neon-wallpapers
WALLPAPERS=(
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon10.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon11.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon12.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon13.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon14.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon15.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon16.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon17.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon18.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon19.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon1.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon20.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon2.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon3.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon4.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon5.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon6.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon7.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon8.jpg"
	"$HOME/.local/share/backgrounds/2025-12-09-11-31-55-neon9.jpg"
)

# Read/Write the value in wall_index
STATE="$HOME/.local/state/auto-neon/wall_index"
[[ -f "$STATE" ]] && idx=$(<"$STATE") || idx=0
(( idx = (idx + 1) % ${#WALLPAPERS[@]} ))
echo "$idx" > "$STATE"

# Set my wallpaper
URI="file://${WALLPAPERS[$idx]}"
gsettings set org.gnome.desktop.background picture-uri "$URI"
gsettings set org.gnome.desktop.background picture-uri-dark "$URI"
gsettings set org.gnome.desktop.background picture-options 'zoom'
