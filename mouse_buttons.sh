#!/bin/bash
# Tomas Mark (tomas@digitalspace.name)
# https://github.com/tomasmark79/bitwig-transport-control-script
# This script is a part of the Bitwig Transport Control Script

ln -s ~/dev/bash/bitwig/.xbindkeysrc ~/.xbindkeysrc

# kill all xbindkeys and xbindkeys-show
killall xbindkeys 2>/dev/null
killall xbindkeys-show 2>/dev/null

# start xbindkeys
xbindkeys -f ~/.xbindkeysrc




