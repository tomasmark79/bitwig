#!/bin/bash
WINDOW_ID=$(xdotool search --name "Bitwig Studio")
if [ ! -z "$WINDOW_ID" ]; then
  xdotool windowactivate --sync $WINDOW_ID
  xdotool key --window $WINDOW_ID space
fi
