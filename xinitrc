#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

session=${2:-i3}

case $session in
    i3|i3-ne				  ) exec i3 -c /home/paul/.config/i3/neutral-config;;
    i3-bh							) exec i3 -c /home/paul/.config/i3/black-hole-config;;
    i3-pr							) exec i3 -c /home/paul/.config/i3/purple-config;;
		i3-bl							) exec i3 -c /home/paul/.config/i3/blue-ghosts-config;;
    # No known session, try to run it as command
    *                 ) exec $2;;
esac


twm &
xclock -geometry 50x50-1+1 &
xterm -geometry 80x50+494+51 &
xterm -geometry 80x20+494-0 &
exec xterm -geometry 80x66+0+0 -name login
