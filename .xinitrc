#emacs stuff
xsetroot -solid "#000000"
#adjust the next line for dual screens or comment out
xrandr --output HDMI-1 --mode 1920x1080 --left-of eDP-1 --mode 1920x1080 --dpi 118
exec emacs
