# bitwig-transport-control-script

# preamble
is a project that was originally created as an effort to solve problems with keyboard control of Bitwig Studio when the user has an active GUI of some third-party plugin open. Many plugins prevent keyboard input from being forwarded to Bitwig Studio, so it is not possible, for example, to call keyboard shortcuts if the plugin window is active and the user is focused on this window.
I tried using the global OS hotkeys initially and that works pretty well if only one key is used as the global hotkey. Otherwise, when the global shortcut is composed of several keys, the response to these actions is unsatisfactory.
As another option, how to control Bitwig Studio under all circumstances, was to try hacking into the MIDI channel and controlling the MIDI sequences directly. But that's something I haven't been able to do yet, and I'm not sure that the effort put into developing something like this will be worthwhile in the end.

# success
**Finally, I came up with the idea of ​​using an ordinary 5-button mouse as the Bitwig Studio transport controller. And as it turns out, not only is it great, but it's also perfectly user-friendly and I got used to it immediately. Come with me and see how I came up with it. And in case you have any other interesting idea, don't hesitate to send it to me!**

## clone repository

```
sudo apt update && sudo apt install git xbindkeys xdotool -y
git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && ls -l && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x key_sender.sh
```

## you will see those files
```
Cloning into 'bitwig-transport-control-script'...
remote: Enumerating objects: 167, done.
remote: Counting objects: 100% (167/167), done.
remote: Compressing objects: 100% (139/139), done.
remote: Total 167 (delta 96), reused 71 (delta 28), pack-reused 0 (from 0)
Receiving objects: 100% (167/167), 40.99 KiB | 874.00 KiB/s, done.
Resolving deltas: 100% (96/96), done.
celkem 20
-rwxrwxr-x 1 tomas tomas  855 říj  8 00:03 key_sender.sh
-rw-rw-r-- 1 tomas tomas 1114 říj  8 00:03 LICENSE
-rw-rw-r-- 1 tomas tomas 1641 říj  8 00:03 README.md
-rwxrwxr-x 1 tomas tomas  711 říj  8 00:03 start_environment.sh
-rwxrwxr-x 1 tomas tomas  331 říj  8 00:03 stop_environment.sh
```

File `key_sender.sh` is shell script responsible for sending commands to Bitwig Studio window.

File `start_environment.sh` is shell script responsive for monitoring events from devices like a mice.

File `stop_environment.sh` will stop all operations in memory.

## Just run the
'start_environment.sh' script file and use Bitwig Studio with mouse side buttons as transport control.

## Current map of buttons
 - Mouse 5 Button: Play/Stop transport (toggle spacebar).
 - Mouse 4 Button: Play transport while the button is pressed down; Stop when released up.
 - Alt + Mouse 5 Button: Solo / UnSolo Track (toggle Alt+s)
 - Alt + Mouse 4 Button: Mute / UnMute Track (toggle Alt+w)

## Free not used buttons (available to config)
 - Ctrl + Mouse 5 Button: not defined yet
 - Ctrl + Mouse 4 Button: not defined yet
 - Shift + Mouse 5 Button: not defined yet
 - Shift + Mouse 4 Button: not defined yet









