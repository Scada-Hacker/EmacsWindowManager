# Spacemacs + EXWM = Emacs Windows Manager

Due to popular demand I'm uploading the Emacs Windows Manager procedure

This documents the procedure for using Emacs as a windows manager. 

Why ? Why would you do this ?

Emacs is incredibly usefull. I became aware I dont need to leave Emacs for most things I do, and anything else could be launched from a terminal. So with that in mind I did some research and found others have done similiar with varying degrees of success

# This is my take on the procedure.

1. I will presume you have Emacs installed. If not do so. I recommend version 26 +

2. (Optional) I love spacemacs - its the best of both Emacs and VI. Backup your .emacs.d folder and remove / backup .emacs if it exists. Followw the instructions in the link below to install.

https://www.spacemacs.org/#

3. Install EXWM.The link below will give instructions how to install EXWM. I highly recommend the "Install from source" optionin the user manual

Install / User guide : https://github.com/ch11ng/exwm/wiki

EXWM : https://github.com/ch11ng/exwm

XELB : https://github.com/ch11ng/xelb

4. Set up and install EXWM

https://github.com/ch11ng/exwm

5. Optional Configurations

The following two functions I have added to my init.el file. It forces Emacs to open in full screen, and also uses Xrandr to activate my external display.

(require 'exwm-randr)
  (setq exwm-randr-workspace-output-plist '(0 "HDMI1"))
  (add-hook 'exwm-randr-screen-change-hook
            (lambda ()
              (start-process-shell-command
               "xrandr" nil "xrandr --output HDMI1  --mode 1920x1080 --right-of eDP1")))
  (exwm-randr-enable)


(set-frame-parameter nil 'fullscreen 'fullboth)



5. Set as a window manager

# For lightdm:

cd /usr/share/xsessions

create a file called exwm.desktop

add the following then save.

[Desktop Entry]
Encoding=UTF-8
Name=EXWM
Comment=Dynamic window manager
Exec=emacs
Icon=dwm
Type=XSession

# For .xinit.rc

add the following then save 

exec emacs


This will take you to tty1 at startup - the reasons for this will become apparent in the next few steps

systemctl set-default multi-user.target

Please note - if you use bumblebee for laptops with  dual gpu, you will need to manually start the service 

sudo systemctl start bumblebeed

5. Create an .xinitrc file 

This will launch Emacs when you type startx. I've created an example of what I use in this repository

6. startx

And thats it !





