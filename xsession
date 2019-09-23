export GTK_IM_MODULE=fcitx
export QT_IM_MODE=fcitx
export XMODIFIERS=@im=fcitx
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
light-locker &
volumeicon &

exec i3
