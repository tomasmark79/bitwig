#!/bin/bash
# Tomas Mark (tomas@digitalspace.name)
# https://github.com/tomasmark79/bitwig-transport-control-script
# This script is a part of the Bitwig Transport Control Script

WINDOW_ID=$(xdotool search --name "Bitwig Studio")

# If Bitwig Studio
if [ ! -z "$WINDOW_ID" ]; then
  # Get the window name
  WINDOW_NAME=$(xdotool getwindowname $WINDOW_ID)

  # Check if the window name contains "Bitwig Studio"
  if [[ "$WINDOW_NAME" == *"Bitwig Studio"* ]]; then
    # Activate Bitwig Studio
    xdotool windowactivate --sync $WINDOW_ID
    # Send space key to Bitwig Studio
    xdotool key --window $WINDOW_ID space
  fi
fi