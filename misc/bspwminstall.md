# How to install bspwm on Ubuntu 20.04 

###### updated : 3 November 2020

##### Note : Donot blindly copy the commands otherwise very bad things will happen.

##### Step 1 : Installing [bspwm](https://github.com/baskerville/bspwm) either by installing from the debian repository or by [building it from source](https://github.com/baskerville/bspwm/wiki#from-source) .I will be using the debian repository for installation
Run the following commands. Use `sudo` if you are not root

`
apt-get update && apt update
`

`
apt install bspwm
`

You should get a prompt like this :

![alt text](https://github.com/Nova-Striker/mydotfiles/blob/main/pictures/pic-1.png?raw=true)


See carefully that the dependencies like `bspwm lemonbar libxcb-ewmh2 sxhkd xdo` are automatically installed so you dont have to install these manually. Keep in mind though that if you are building from [source](https://github.com/baskerville/bspwm/wiki#dependencies) , you would need to install these dependencies manually either  from debian repository or by building them from source

------

##### Step 2 : Configuring bspwm and sxhkd

Now the bspwm file was downloaded into your system and in almost all cases, the files are found in `~/usr/share/doc/bspwm`

In this folder , there are example config files that you can use. Or if you want , you can make your config files from scratch.
I will be using the examples configs to wrap it up faster


From `~/usr/share/doc/bspwm/examples` we will copy the `bspwmrc` and `sxkdrc` to `~/.config` directory

First make two directories (`bspwm` and `sxhkd`) in your `.config` folder.

Use :

`mkdir ~/.config/bspwm && mkdir ~/.config/sxhkd`

Next copy the `bspwmrc` and `sxhkdrc` in `~/usr/share/doc/bspwm/examples` to your `.config` directory using the following commands 

`cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm`

`cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd`

------

##### Step 3 : Making executables and firing up bspwm

Normally , the `bspwmrc` file that you copied just now should be an executable. You can check if its an executable or not from the [this SO post](https://stackoverflow.com/questions/10319652/check-if-a-file-is-executable) or if you have a file manager like `vifm` or `ranger` then , placing the cursor on `bspwmrc` file should highlight it in `green` colour (which means that its an executable and you can proceed to the next step) 

See this:

![alt text](https://github.com/Nova-Striker/mydotfiles/blob/main/pictures/pic-2.png?raw=true)

------


##### Step 4 : Modifying the `.sxhkdrc` so that you can open some apps after logging into bspwm.

If you did the above steps correctly , you should see something like this in your `sxhkdrc`

![alt text](https://github.com/Nova-Striker/mydotfiles/blob/main/pictures/pic-3.png?raw=true)

Even if you have not got that , you can just copy the example `sxhkdrc` from here:

```
#
# wm independent hotkeys
#

# terminal emulator
super + Return
	urxvt

# program launcher
super + @space
	dmenu_run

# make sxhkd reload its configuration files:
super + Escape
	pkill -USR1 -x sxhkd

#
# bspwm hotkeys
#

# quit/restart bspwm
super + alt + {q,r}
	bspc {quit,wm -r}

# close and kill
super + {_,shift + }w
	bspc node -{c,k}

# alternate between the tiled and monocle layout
super + m
	bspc desktop -l next

# send the newest marked node to the newest preselected node
super + y
	bspc node newest.marked.local -n newest.!automatic.local

# swap the current node and the biggest node
super + g
	bspc node -s biggest

#
# state/flags
#

# set the window state
super + {t,shift + t,s,f}
	bspc node -t {tiled,pseudo_tiled,floating,fullscreen}

# set the node flags
super + ctrl + {m,x,y,z}
	bspc node -g {marked,locked,sticky,private}

#
# focus/swap
#

# focus the node in the given direction
super + {_,shift + }{h,j,k,l}
	bspc node -{f,s} {west,south,north,east}

# focus the node for the given path jump
super + {p,b,comma,period}
	bspc node -f @{parent,brother,first,second}

# focus the next/previous node in the current desktop
super + {_,shift + }c
	bspc node -f {next,prev}.local

# focus the next/previous desktop in the current monitor
super + bracket{left,right}
	bspc desktop -f {prev,next}.local

# focus the last node/desktop
super + {grave,Tab}
	bspc {node,desktop} -f last

# focus the older or newer node in the focus history
super + {o,i}
	bspc wm -h off; \
	bspc node {older,newer} -f; \
	bspc wm -h on

# focus or send to the given desktop
super + {_,shift + }{1-9,0}
	bspc {desktop -f,node -d} '^{1-9,10}'

#
# preselect
#

# preselect the direction
super + ctrl + {h,j,k,l}
	bspc node -p {west,south,north,east}

# preselect the ratio
super + ctrl + {1-9}
	bspc node -o 0.{1-9}

# cancel the preselection for the focused node
super + ctrl + space
	bspc node -p cancel

# cancel the preselection for the focused desktop
super + ctrl + shift + space
	bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel

#
# move/resize
#

# expand a window by moving one of its side outward
super + alt + {h,j,k,l}
	bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}

# contract a window by moving one of its side inward
super + alt + shift + {h,j,k,l}
	bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}

# move a floating window
super + {Left,Down,Up,Right}
	bspc node -v {-20 0,0 20,0 -20,20 0}
```

Now change the default `urxvt` terminal to the terminal of your choice. I will set `super + Return` to my default `gnome-terminal`.

Modify the first few lines of your `sxhkdrc` to the following:


```
# terminal emulator
super + Return
	gnome-terminal	
```

You can also add your keybindings for opening web browser. 

-------

##### Step 5 : Putting bspwm in your `.xsession` or `.Xsession` or `xsessionrc` or `.xinit` file.

*Note 1* : Focus on the **`or`** in the heading. That means to do the following steps in only one file not all :-)

*Note 2*  : Check if you have any the files in the heading in your `home` directory. In my case I didn't have them so I had to make them.

Making these files are simple. Just `touch .xsessionrc` .

Edit the file and put the following lines in it :

```
#!/bin/bash
exec bspwm
```

*Note 3* : I got my `bspwm` running by adding the above lines in `.xsessionrc` . It may be possible that in your case you have to add the lines in `.xsession` or any other file mentioned in the heading.

---------

##### Step 6 : Making the `xsession` file executable

First `cd` to your home directory where you have the file you created/modied in Step 5. 

Then open the terminal and enter the following :

```chmod +x  .xsessionrc```

Note : I created a `.xsessionrc` file. If you have used any other file in Step 5 , then make it executable instead !


**Logut and login again and you will be greeted with a black screen.**


Use the keybinding you added in Step 4 to open up the terminal and install essentials like `polybar` , `picom` etc



##### Sources: 
https://dev.to/l04db4l4nc3r/bspwm-a-bare-bones-window-manager-44di

https://www.maths.cam.ac.uk/computing/linux/X/xsession

https://github.com/baskerville/bspwm/wiki

https://wiki.archlinux.org/index.php/bspwm

