#!/bin/bash
keyboard_ids=$(xinput list | grep -i 'keyboard' | grep -o 'id=[0-9]*' | grep -o '[0-9]*')
alt_pressed=false
for keyboard_id in $keyboard_ids; do
    echo "Získávám stav klávesnice s ID: $keyboard_id"
    if xinput query-state "$keyboard_id" | grep -q 'key\[64\]=down'; then
        ./key_sender.sh alt+w
        alt_pressed=true
        break
    fi
done
if [ "$alt_pressed" = false ]; then
    if ! xdotool getwindowfocus getwindowname | grep -q 'Alt_L'; then
        ./key_sender.sh alt+p
    fi
fi