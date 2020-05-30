# Spacemacs + EXWM = Emacs Windows Manager

Due to popular demand I'm uploading the Emacs Windows Manager procedure

This documents the procedure for using Emacs as a windows manager. 

# How To Install

I will presume you have Emacs installed. If not do so. I recommend version 26 +

(Optional) I love spacemacs - its the best of both Emacs and VI. Backup your .emacs.d folder and remove / backup .emacs if it exists. Follow the instructions in the link below to install.

https://www.spacemacs.org/

# Install EXWM.

The link below will give instructions how to install EXWM. I highly recommend the "Install from source" option in the user manual

# Install / User guide : https://github.com/ch11ng/exwm/wiki

EXWM : https://github.com/ch11ng/exwm

XELB : https://github.com/ch11ng/xelb

# Optional Configurations. 

The following two functions I have added to my init.el file. It forces Emacs to open in full screen, and also uses Xrandr to activate my external display.

(require 'exwm-randr)
  (setq exwm-randr-workspace-output-plist '(0 "HDMI1"))
  (add-hook 'exwm-randr-screen-change-hook
            (lambda ()
              (start-process-shell-command
               "xrandr" nil "xrandr --output HDMI1  --mode 1920x1080 --right-of eDP1")))
  (exwm-randr-enable)


(set-frame-parameter nil 'fullscreen 'fullboth)



# Set as a window manager

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


# Quirks / odd behavuiour I've noticed  

I have a laptop with a dual intel/nvidia GPU installed. Bumblebee had to be manually started

sudo systemctl start bumblebeed

Wireless access didnt start initially.

running nmtui from a terminal fixed this.









