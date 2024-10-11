# bitwig-transport-control-script
## preamble
is a project that was originally created as an effort to solve problems with keyboard control of Bitwig Studio when the user has an active GUI of some third-party plugin open. Many plugins prevent keyboard input from being forwarded to Bitwig Studio, so it is not possible, for example, to call keyboard shortcuts if the plugin window is active and the user is focused on this window.
I tried using the global OS hotkeys initially and that works pretty well if only one key is used as the global hotkey. Otherwise, when the global shortcut is composed of several keys, the response to these actions is unsatisfactory.
As another option, how to control Bitwig Studio under all circumstances, was to try hacking into the MIDI channel and controlling the MIDI sequences directly. But that's something I haven't been able to do yet, and I'm not sure that the effort put into developing something like this will be worthwhile in the end.

## success
Finally, I came up with the idea of **​​using an ordinary 5-button** 🐁 **mouse** 🐁 as the Bitwig Studio transport controller. 🖱️🍒🫐

💥 **It is very intuitive and addictive!** 💥

And as it turns out, not only is it great, but it's also perfectly user-friendly and I got used to it immediately. Come with me and see how I came up with it. And in case you have any other interesting idea, don't hesitate to send it to me!

## requirements

`Any Linux with X11 window server`

## installation

apt
```
sudo apt update && sudo apt install git xbindkeys xdotool -y && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

dnf
```
sudo dnf install -y git xbindkeys xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

yum
```
sudo yum install -y git xbindkeys xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

pacman
```
sudo pacman -S --noconfirm git xbindkeys xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

nix-env
```
nix-env -iA nixpkgs.git nixpkgs.xbindkeys nixpkgs.xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

zypper
```
sudo zypper install -y git xbindkeys xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

emerge
```
sudo emerge git xbindkeys xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

eopg
```
sudo eopkg install -y git xbindkeys xdotool && git clone https://github.com/tomasmark79/bitwig-transport-control-script.git && cd bitwig-transport-control-script/ && chmod +x start_environment.sh && chmod +x stop_environment.sh && chmod +x toggle_parser.sh && chmod +x key_sender.sh && ls -l
```

## project files description

#### you will want to edit

File `.xbindkeysrc_bitwig` is responsible for definition od shortcuts at high level.
File `toggle_parser.sh` is shell script responsible for specific shortcuts behavior.

#### you won't need to edit

File `start_environment.sh` is shell script responsible for monitoring events from devices.
File `stop_environment.sh` will stop all operations in memory.
File `key_sender.sh` is shell script responsible for sending commands to Bitwig Studio window.

## start service
**for start the service just run the file `./start_environment.sh`**

## stop service
`./stop_environment.sh`


## project is using this default profile fit to me

note: be aware that mouse buttons 4 and 5 are represented in my Linux OS as b:8 and b:9 in xbindkeys process

 - Button 4 toggle **Play/Stop** from arranger start (key spacebar)
 - Button 5 toggle **Play/Stop** from arranger cursor (key alt+p)

 - Alt + Button 4 toggle **Solo** from arranger start (key alt+s)
 - Alt + Button 5 toggle **Mute** from arranger cursor (key alt+w)

 - Shift + Button 4 toggle **Arm** from arranger start (key shift+r)
 - Shift + Button 5 toggle **??/??** from arranger cursor (key shift+???)

 - Control + Button 4 toggle **??/??** from arranger start (key control+???)
 - Control + Button 5 toggle **??/??** from arranger cursor (key control+???)

![mouse45](https://github.com/user-attachments/assets/e479c395-9618-445c-a57c-92f1fafd8cdb)

## recomendation

"I'm using KDE Plasma, and I have both start and stop scripts managed by global keyboard shortcuts, which is very useful for switching between Bitwig and other applications, such as browsers, where side mouse buttons can also be useful."

## issues

 If your mouse side buttons are not reacting you will need to check if Xorg is registering clicks to these buttons. Check the ID of each of these buttons and rewrite them in file `.xbindkeysrc_bitwig`.

## tags

# daw #bitwig #transport #spacebar #daw #midi #mouse #buttons





