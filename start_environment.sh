#!/bin/bash
# Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)
# This file registers the mouse buttons for Bitwig Studio

# Check if the source file exists before creating a symbolic link
if [ -f ~/dev/bash/bitwig/.xbindkeysrc_bitwig ]; then
    ln -sf ~/dev/bash/bitwig/.xbindkeysrc_bitwig ~/.xbindkeysrc_bitwig
else
    echo "Source file ~/dev/bash/bitwig/.xbindkeysrc_bitwig does not exist."
    exit 1
fi

# Kill all xbindkeys and xbindkeys-show processes if they are running
pkill -x xbindkeys 2>/dev/null
pkill -x xbindkeys-show 2>/dev/null

# Start xbindkeys with the specified configuration file
xbindkeys -f ~/.xbindkeysrc_bitwig