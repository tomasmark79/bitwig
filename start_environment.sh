#!/bin/bash
# Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)
# Change to the directory where the script is located
cd "$(dirname "$0")"
pkill -x xbindkeys 2>/dev/null
pkill -x xbindkeys-show 2>/dev/null
xbindkeys -v -f .xbindkeysrc_bitwig &
if [ $? -eq 0 ]; then
  notify-send "BTCS started successfully"
else
  notify-send "Failed to start BTCS - check the configuration file .xbindkeysrc_bitwig"
fi
# End of file
