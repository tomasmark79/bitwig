# BTCS

##### bitwig-transport-control-script

---

#### preamble
is a project that was originally created as an effort to solve problems with keyboard control of Bitwig Studio when the user has an active GUI of some third-party plugin open. Many plugins prevent keyboard input from being forwarded to Bitwig Studio, so it is not possible, for example, to call keyboard shortcuts if the plugin window is active and the user is focused on this window.
I tried using the global OS hotkeys initially and that works pretty well if only one key is used as the global hotkey. Otherwise, when the global shortcut is composed of several keys, the response to these actions is unsatisfactory.
As another option, how to control Bitwig Studio under all circumstances, was to try hacking into the MIDI channel and controlling the MIDI sequences directly. But that's something I haven't been able to do yet, and I'm not sure that the effort put into developing something like this will be worthwhile in the end.

---

#### success
Finally, I came up with the idea of ​​using a 🖱️ mouse with side buttons that every user has available. 🐁🍒🫐

💥 **It is very intuitive and addictive!** 💥

And as it turns out, not only is it great, but it's also perfectly user-friendly and I got used to it immediately. Come with me and see how I came up with it. And in case you have any other interesting idea, don't hesitate to send it to me!

---

#### Important note

For the Logit3ch G305, and many more mice it is also possible to use the 6th mouse button thanks to the Logit3ch software, where you can assign any key combination to the number 6 button and save this configuration in the mouse memory. 
    
Some manufacturers including Logite3ch also allow other buttons to be mapped. In that case, you don't need this project and just simply map your own keystrokes for your mouse. **In case you have a mouse that does not support hardware storage of keyboard shortcuts with its internal memory, the following project will come in handy. The advantage of using a project is that if you change the mouse, you will still be functional.**

#### mouse layout

![bitwig-button-transport-mouse-buttons-map](https://github.com/user-attachments/assets/58d5145c-df24-419e-b162-d2ffdc2ada4b)

#### Keystrokes
<img width="123" alt="image" src="https://github.com/user-attachments/assets/1d697483-211b-4ee4-b1c3-f63c5516d836">

 - Button 4(b:8) toggle **Play/Stop** from arranger start (key spacebar)
   
 - Button 5(b:9) toggle **Play/Stop** from arranger cursor (key alt+p)

 - Button 6 - used mouse memory to reproduce keystroke

<img width="54" alt="image" src="https://github.com/user-attachments/assets/d215452d-6229-4111-b9e7-30695817c846">

 - Ctrl + Button 5(b:9) toggle **Arm** from arranger start (key control+u)
 
 - Shift + Button 5(b:9) toggle **Solo** from arranger start (key shift+s)
   
 - Alt + Button 5(b:9) toggle **Mute** from arranger cursor (key alt+w)
 
reserved for future

 - Ctrl + Button 4(b:8) toggle **??** from arranger start (key control+??)
 
 - Shift + Button 4(b:8) toggle **??** from arranger start (key shift+??)
   
 - Alt + Button 4(b:8) toggle **??** from arranger cursor (key alt+??)

note: be aware please that mouse buttons 4 and 5 are represented in my Linux OS as b:8 and b:9 in xbindkeys process

#### recomendation

"I'm using KDE Plasma, and I have both start and stop scripts managed by global keyboard shortcuts, which is very useful for switching between Bitwig and other applications, such as browsers, where side mouse buttons can also be useful."

---

#### installation and requirements

`Any Linux with X11 window server is required`

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

#### project files description

###### you will want to edit

File `.xbindkeysrc_bitwig` is responsible for definition od shortcuts at high level.
File `toggle_parser.sh` is shell script responsible for specific shortcuts behavior.

###### you won't need to edit

File `start_environment.sh` is shell script responsible for monitoring events from devices.
File `stop_environment.sh` will stop all operations in memory.
File `key_sender.sh` is shell script responsible for sending commands to Bitwig Studio window.

#### start service
**for start the service just run the file `./start_environment.sh`**

#### stop service
`./stop_environment.sh`



#### issues

 If your mouse side buttons are not reacting you will need to check if Xorg is registering clicks to these buttons. Check the ID of each of these buttons and rewrite them in file `.xbindkeysrc_bitwig`.

---
#daw #bitwig #transport #spacebar #daw #midi #mouse #buttons


