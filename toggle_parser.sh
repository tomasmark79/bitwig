#!/bin/bash
# Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)
# This file registers the mouse buttons for Bitwig Studio

# It is required to have alternated key same as the target alternate key in Bitwig Studio!
# That means Alt + Mouse Button is required to have defined Alt + AnyKey in Bitwig Studio, etc.

if [ -z "$1" ]; then
    notify-send "toogle_parser usage: $0 <mbutton>"
    exit 1
fi

MBUTTON=$1

SHIFT_PRESSED=false
CONTROL_PRESSED=false
ALT_PRESSED=false

keyboard_ids=$(xinput list | grep -i 'keyboard' | grep -o 'id=[0-9]*' | grep -o '[0-9]*')

for keyboard_id in $keyboard_ids; do
    echo "Getting keyboard state with ID: $keyboard_id"

    # shift down
    if xinput query-state "$keyboard_id" | grep -q 'key\[50\]=down\|key\[62\]=down'; then
        SHIFT_PRESSED=true
        if [ "$MBUTTON" == "b8" ]; then
            ./key_sender.sh shift+r
            break
        fi
        if [ "$MBUTTON" == "b9" ]; then
            ./key_sender.sh shift+r
            break
        fi
    fi

    # control down
    if xinput query-state "$keyboard_id" | grep -q 'key\[37\]=down'; then
        CONTROL_PRESSED=true
        if [ "$MBUTTON" == "b8" ]; then
            ./key_sender.sh shift+r
            break
        fi
        if [ "$MBUTTON" == "b9" ]; then
            ./key_sender.sh shift+r
            break
        fi
    fi

    # alt down
    if xinput query-state "$keyboard_id" | grep -q 'key\[64\]=down'; then
        ALT_PRESSED=true
        if [ "$MBUTTON" == "b8" ]; then
            ./key_sender.sh alt+w
            break
        fi
        if [ "$MBUTTON" == "b9" ]; then
            ./key_sender.sh alt+s
            break
        fi
    fi
done

# solo mouse buttons pressed

if [ "$SHIFT_PRESSED" = false -a "$CONTROL_PRESSED" = false -a "$ALT_PRESSED" = false ]; then
    if ! xdotool getwindowfocus getwindowname | grep -q 'Alt_L' && ! xdotool getwindowfocus getwindowname | grep -q 'Shift_L'; then
        if [ "$MBUTTON" == "b8" ]; then
            ./key_sender.sh alt+p
        fi
        if [ "$MBUTTON" == "b9" ]; then
            ./key_sender.sh space
        fi
    fi
fi

