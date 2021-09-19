export GTK_IM_MODULE=fcitx
export QT_IM_MODE=fcitx
export XMODIFIERS=@im=fcitx

eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrdb ~/.Xresources
fcitx-autostart
feh --bg-scale ~/picture/hiryu.jpg 
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
setxkbmap -layout jp
xinput disable AlpsPS/2\ ALPS\ GlidePoint
urxvtd -o -f

compton &
fcitx &
numlockx &
clipit &
nm-applet &
volumeicon &

#exec i3
exec cinnamon-session
