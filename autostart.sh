#!/usr/bin/env bash
  
# ▬▬▬.◙.▬▬▬
# ═▂▄▄▓▄▄▂
# ◢◤ █▀▀████▄▄▄▄▄▄◢◤
# █▄ █ :) ██▀▀▀▀▀▀▀╬
# ◥█████◤
# ══╩══╩══
#        
# Um bspwmrc personalizado para o gerenciador de janelas bspwm.
# https://github.com/baskerville/sxhkd
# https://github.com/baskerville/bspwm

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal

#### SET TECLADO ####
keybLayout=$(setxkbmap -v | awk -F "+" '/symbols/ {print $2}')

if [ $keybLayout = "be" ]; then
  run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc-azerty &
else
  run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
fi

#### SET WALLPAPER ####
bash ~/.fehbg &

xsetroot -cursor_name left_ptr &

#### PICOM ####
picom --config $HOME/.config/bspwm/picom.conf &

#### PROGRAMS ####

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

blueberry-tray &
numlockx on &

run volumeicon &
run xfce4-power-manager &
run nm-applet &

run caffeine &
run discord &
run plank &

#### POLYBAR ####
$HOME/.config/polybar/launch.sh &
