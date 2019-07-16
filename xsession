export GTK_IM_MODULE=fcitx
export QT_IM_MODE=fcitx
export XMODIFIERS=@im=fcitx
xrdb ~/.Xresources
fcitx-autostart
~/.fehbg
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
urxvtd -o -f

numlockx &
clipit &
nm-applet &
light-locker &
volumeicon &

exec i3
