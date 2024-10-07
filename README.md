# Bitwig Transport Control Script
# Forget the spacebar. The king is dead. Long live the Side Mouse Button.

- This project will help you focus on creating in Bitwig Studio on Linux and experience a truly amazing Bitwig experience.
- The project focuses on controlling the transport layer using the mouse and possibly other global keyboard shortcuts in Linux.
- The project also solves the ongoing problems with stolen **SPACEBAR key control** when window focus is within child plug-ins window. Very often scenario not only in Linux! This problem will simply disappear, because you will have the most comfortable option of Play/Stop transport control.
- It is also a very interesting experience that you can call Play even if you are outside the work window or activity. Starting the transport control will show you the window back.

# What is it about?
This script activates the Bitwig Studio window and simulates pressing the desired shortcuts to him.

# My control layout
 
 You may modify to your preference when you understand how this scripts works.

- Mouse Forward Button:  **Play/Stop transport (toggle spacebar).**
- Mouse Backward Button: **Play transport while the button is pressed down; Stop when released up.**
- Alt + Mouse Forward Button: **Solo / UnSolo Track (toggle Alt+s)** 
- Alt + Mouse Backward Button: **Mute / UnMute Track (toggle Alt+w)**

## Video overview

https://github.com/user-attachments/assets/fdb544d6-87c5-4a18-b5f6-9b458d08bc19

https://github.com/user-attachments/assets/e7ff335d-3596-4ca7-b877-27b0e742fe06

## Todo

 - use other shortcuts for frequently used functions
 - use midi transport on connected midi controller as the next possibility to control transport

# Guide 
Here's a step-by-step guide on how to set up and use the two scripts (`key_sender.sh` and `prepare_environment.sh`) for controlling the transport (play/stop) in Bitwig Studio using mouse buttons in a Linux environment with Xorg.

### Prerequisites:
1. You must have the following utilities installed:
   - **`xbindkeys`**: For binding mouse buttons to actions.
   - **`xdotool`**: For simulating key presses and window activation.
   
   To install these, run:
   ```bash
   sudo apt-get install xbindkeys xdotool
   ```

2. Ensure that you are running a Linux distribution with the **Xorg** window system.

### Script Setup:

1. **Download or create the necessary files:**

   Create a directory for the scripts. For this guide, we will assume it's located at `~/dev/bash/bitwig/`.

   ```bash
   mkdir -p ~/dev/bash/bitwig
   cd ~/dev/bash/bitwig
   ```

2. **File 1: `key_sender.sh`**

   This script will find and activate the Bitwig Studio window and send a "space" key press to start/stop the transport.

   Make it executable:

   ```bash
   chmod +x key_sender.sh
   ```

3. **File 2: `prepare_environment.sh`**

   This script sets up the environment by configuring xbindkeys to listen for mouse button presses and trigger the transport control.

   Make it executable:

   ```bash
   chmod +x prepare_environment.sh
   ```

4. **File 3: `.xbindkeysrc_bitwig`**

   This is the xbindkeys configuration file. It registers mouse buttons 8 and 9 to trigger the transport control.

### Running the Scripts:

1. **Prepare the environment:**

   Run the `prepare_environment.sh` script to set up xbindkeys with the correct configuration.

   ```bash
   ~/dev/bash/bitwig/prepare_environment.sh
   ```

   This will create a symbolic link to `.xbindkeysrc_bitwig` in your home directory and start `xbindkeys`, which will listen for mouse button presses.

2. **Trigger the transport control:**

   Now, when you press mouse button 8 or 9, the script will activate the Bitwig Studio window (if it's running) and send the "space" key, which toggles the transport play/stop function.

### Making xbindkeys Run at Startup (Optional):

To ensure `xbindkeys` runs automatically when you start your system, you can add the following line to your session autostart script or set it as a startup application in your desktop environment:

```bash
~/dev/bash/bitwig/prepare_environment.sh
```

### Troubleshooting:

- If the mouse buttons 8 and 9 don't seem to trigger anything, make sure that your mouse has those buttons and that they are being correctly detected by `xbindkeys`. You can check this by running:
- 
  ```bash
  xbindkeys --key
  ```

  or

  ```bash
  xev
  ```
  
  Press the mouse buttons to see if they are recognized.
  
- If Bitwig Studio is not responding to the script, ensure that the window name and ID are correctly fetched by `xwininfo` and `xdotool`. You can manually check the output with:
- 
  ```bash
  xwininfo -root -tree | grep "com.bitwig.BitwigStudio"
  ```
nofrustration
This setup allows you to easily control Bitwig Studio's transport using additional mouse buttons in a Linux environment.

## License

MIT License

Copyright (c) 2024 Tomas Mark (tomas@digitalspace.name)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

bitwig spacebar plugin daw mouse frustrated
