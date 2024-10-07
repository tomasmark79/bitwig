#!/bin/bash
# Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)
# This file registers the mouse buttons for Bitwig Studio

# Check if a key parameter is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <key>"
  exit 1
fi

KEY=$1

# Get window information using xwininfo
WINDOW_INFO=$(xwininfo -root -tree | grep "com.bitwig.BitwigStudio")

# Extract window ID from the information
WINDOW_ID=$(echo "$WINDOW_INFO" | awk '{print $1}')

# If Bitwig Studio window is found
if [ ! -z "$WINDOW_ID" ]; then
  # Get the window name
  WINDOW_NAME=$(xdotool getwindowname $WINDOW_ID)

  # Check if the window name contains "Bitwig Studio"
  if [[ "$WINDOW_NAME" == *"Bitwig Studio"* ]]; then
    # Activate Bitwig Studio
    xdotool windowactivate --sync $WINDOW_ID
    # Send the specified key to Bitwig Studio
    xdotool key --window $WINDOW_ID $KEY
  fi
fi