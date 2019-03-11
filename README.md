# EmacsWindowManager
Due to popular demand I'm uploading the Emacs Windows Manager procedure

This documents the procedure for using Emacs as a windows manager. 

Why ? Why would you do this ?

As with most things - because I can. And also because Emacs is incredibly usefull. I became aware I didnt need to leave Emacs for most things i do, and anything else could simply be launched from a terminal. So with that in mind I did some research and found others have allready done similiar with varying degrees of success.

http://www.howardism.org/Technical/Emacs/new-window-manager.html

I also found a project which turns Emacs into a tiling window manager along the lines of Ratpoison / I3

https://github.com/ch11ng/exwm

Ok enough waffle. How did you do it ?

As you asked so nicely I shall explain

1. Install Emacs (obviously !)

2. Create a really usefull init.el (this is the configuration file that Emacs loads when it starts). I based mine on prelude https://github.com/bbatsov/prelude/blob/master/init.el

You can also find a copy in this repository (because I'm nice like that). Copy this to the .emacs.d folder

3. Set up and install EXWM

https://github.com/ch11ng/exwm

4. Set login to multiuser

This will take you to tty1 at startup - the reasons for this will become apparent in the next few steps
systemctl set-default multi-user.target

Please note - if you use bumblebee for laptops with  dual gpu, you will need to manually start the service 
sudo systemctl start bumblebeed

5. Create an .xinitrc file 

This will launch Emacs when you type startx. I've created an example of what i use in this repository

6. startx

And thats it !





