#!/bin/bash
keyboard_ids=$(xinput list | grep -i 'keyboard' | grep -o 'id=[0-9]*' | grep -o '[0-9]*')
shift_pressed=false
for keyboard_id in $keyboard_ids; do
    echo "Získávám stav klávesnice s ID: $keyboard_id"
    if xinput query-state "$keyboard_id" | grep -q 'key\[50\]=down\|key\[62\]=down'; then
        ./key_sender.sh shift+r
        shift_pressed=true
        break
    fi
done
if [ "$shift_pressed" = false ]; then
    if ! xdotool getwindowfocus getwindowname | grep -q 'Shift_L\|Shift_R'; then
        #./key_sender.sh space
    fi
fi