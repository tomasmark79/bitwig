# Bitwig Transport Control Script

This script activates the Bitwig Studio window and simulates pressing the space bar to start or stop the transport. It is particularly useful when a plugin window is in focus, as the space bar may not work in that case.

## Requirements

- [xdotool](https://github.com/jordansissel/xdotool): A tool to simulate window and keyboard interactions.
- [Yabridge](https://github.com/robbert-vdh/yabridge): A modern and transparent way to use Windows VST plugins on Linux.

To install `xdotool` on Ubuntu or any Debian-based system:

```bash
sudo apt install xdotool
```

## Usage

The script searches for the window named "Bitwig Studio," activates it, and simulates a space bar press to start/stop playback.

```bash
#!/bin/bash
WINDOW_ID=$(xdotool search --name "Bitwig Studio")
if [ ! -z "$WINDOW_ID" ]; then
  xdotool windowactivate --sync $WINDOW_ID
  xdotool key --window $WINDOW_ID space
fi
```

### Steps:

1. Make sure `xdotool` is installed.
2. Save the script to a file, e.g., `bitwig-transport.sh`.
3. Make the script executable:

```bash
chmod +x bitwig-transport.sh
```

4. Run the script:

```bash
./bitwig-transport.sh
```

### Recommended: Assign to a Global Shortcut

This script is designed to be triggered by a global keyboard shortcut, especially useful when Bitwig is running and a plugin window is focused. Without this script, pressing the space bar may not function as expected to control playback when a plugin has focus.

In KDE Plasma, for example, you can set up a global shortcut to run this script:

1. Open System Settings > Shortcuts > Custom Shortcuts.
2. Add a new custom shortcut and point it to the `bitwig-transport.sh` script.
3. Assign your preferred key combination.

## License

This is free and unencumbered software released into the public domain under [The Unlicense](https://unlicense.org/).

## Ideas

Welcome.

