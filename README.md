# Bitwig Transport Control Script
# Forget the spacebar. The king is dead. Long live the Side Mouse Button.
2024 Tomas Mark (tomas@digitalspace.name)

This project will help you focus on creating in Bitwig Studio on Linux and experience a truly amazing Bitwig experience.

 - The project focuses on controlling the transport layer using the mouse and possibly other global keyboard shortcuts in Linux.
 - The project also solves the ongoing problems with stolen SPACEBAR plug-ins. This problem will simply disappear, because you will have the most comfortable option of Play/Stop transport control.



# What is it about?
This script activates the Bitwig Studio window and simulates pressing the space bar to start or stop the transport. It is particularly useful when a plugin window is in focus, as the space bar may not work in that case. Very often scenario not only in Linux!


# Magic with the mouse side button

https://github.com/user-attachments/assets/e7ff335d-3596-4ca7-b877-27b0e742fe06


# It is easy to configure

## Requirements
- [xbindkeys](https://github.com/gitGNU/gnu_xbindkeys): A tool to manage input devices buttons.
- [xdotool](https://github.com/jordansissel/xdotool): A tool to simulate window and keyboard interactions.
- [Yabridge](https://github.com/robbert-vdh/yabridge): A modern and transparent way to use Windows VST plugins on Linux.

To install `xdotool` and `xbindkeys` on Ubuntu or any Debian-based system:

```bash
sudo apt install xdotool xbindkeys
```

### Recommended: Assign to a Global Shortcut

This script is designed to be triggered by a global keyboard shortcut, especially useful when Bitwig is running and a plugin window is focused. Without this script, pressing the space bar may not function as expected to control playback when a plugin has focus.

In KDE Plasma, for example, you can set up a global shortcut to run this script:

1. Open System Settings > Shortcuts > Custom Shortcuts.
2. Add a new custom shortcut and point it to the `bitwig-transport.sh` script.
3. Assign your preferred key combination.

### Recommended: Mouse button assign

Additionally, the script can be triggered not only with a global shortcut but also through a mapped mouse button. By monitoring the mouse button down and up events, you can, for example, hold down the number 9 button to play a clip in Bitwig. This offers an alternative and flexible way to control playback without relying solely on keyboard shortcuts.

## License

This is free and unencumbered software released into the public domain under [The Unlicense](https://unlicense.org/).
