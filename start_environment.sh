#!/bin/bash
# Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)
# This file registers the mouse buttons for Bitwig Studio

# Change to the directory where the script is located
cd "$(dirname "$0")"

# Notify
notify-send "Starting transport control environment..."

# Kill all xbindkeys and xbindkeys-show processes if they are running
pkill -x xbindkeys 2>/dev/null
pkill -x xbindkeys-show 2>/dev/null

# Start xbindkeys with the specified configuration file
xbindkeys -f .xbindkeysrc_bitwig