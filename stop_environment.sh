#!/bin/bash
# Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)
# This file registers the mouse buttons for Bitwig Studio

# Kill all xbindkeys and xbindkeys-show processes if they are running
pkill -x xbindkeys 2>/dev/null
pkill -x xbindkeys-show 2>/dev/null